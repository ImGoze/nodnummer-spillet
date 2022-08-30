using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


/*
 * Code is based on this GitHub-repo which explains ink in depth
 * Small adjustments to fit my need
 * https://github.com/trevermock/ink-dialogue-system/tree/1-starting-point/Assets/Scripts
 */

public class DialogueManager : MonoBehaviour
{
    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private TextMeshProUGUI displayNameText;
    [SerializeField] private Animator portraitAnimator;
    [SerializeField] private GameObject GreenPortal;

    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;

    public bool dialogueIsFinished; // track if dialogue is finished, such that you cannot quit or restart a dialogue

    public int choiceAttempts;

    private TextMeshProUGUI[] choicesText;


    private Story currentStory; // ink story

    public bool dialogueIsPlaying { get; private set; }

    private static DialogueManager instance;

    private const string SPEAKER_TAG = "speaker";
    private const string PORTRAIT_TAG = "portrait";
  

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Found more than one Dialogue Manager");
        }

        instance = this;

    }

    private void Start()
    {
        dialogueIsFinished = false;
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        GreenPortal.SetActive(false);
        choiceAttempts = 0;
         
        // get all choices

        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0; 

        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }

    }

    private void Update()
    {
        if(!dialogueIsPlaying)
        {
            return; 
        }
 
        if (currentStory.currentChoices.Count == 0 && InputManager.GetInstance().GetSubmitPressed())
        {
            ContinueStory();
        }
    }

    public static DialogueManager GetInstance()
    {
        return instance; 
    }

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        if (!dialogueIsFinished) // if dialogue is not finished
        {
            currentStory = new Story(inkJSON.text);
            dialogueIsPlaying = true;
            dialoguePanel.SetActive(true);

            ContinueStory();
        }

    }

    private IEnumerator ExitDialogueMode()
    {
        
        yield return new WaitForSeconds(0.2f);
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            // set text for current dialogue line
            dialogueText.text = currentStory.Continue();
            // display choices, if any for this line
            DisplayChoices();
            // handle tags given in INK-file 
            HandleTags(currentStory.currentTags); 
        }
        else
        {
            InputManager.GetInstance().submitEnabled = false; 
            StartCoroutine(ExitDialogueMode());
            dialogueIsFinished = true;
            GreenPortal.SetActive(true);
            GameManager.UpdateScore(choiceAttempts);
            Debug.Log(choiceAttempts);
            FindObjectOfType<SFXManager>().Play("Points");
        }
    }

    private void HandleTags(List<string> currentTags)
    {
        // loop through tags and handle
        // key/val pairs
        foreach (string tag in currentTags)
        {
            string[] splitTag = tag.Split(':');

            if(splitTag.Length != 2)
            {
                Debug.LogError("Tag could not be parsed in the right way: " + tag);
            }
            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim(); 

            // handle tags
            switch (tagKey)
            {
                case SPEAKER_TAG:
                    displayNameText.text = tagValue;
                    break;
                case PORTRAIT_TAG:
                    portraitAnimator.Play(tagValue);
                    break;
                default:
                    Debug.LogWarning("Valid tag, but is not handled: " + tag);
                    break;  
            }

        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        if(currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices were given than the UI supports" + currentChoices.Count);
        }

        int index = 0; 
        // enable choices of right amount for this line of dialogue
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }
        
        for(int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false); 
        }
        StartCoroutine(SelectFirstChoice());
    }

    private IEnumerator SelectFirstChoice()
    {
    
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject); 

    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
        InputManager.GetInstance().RegisterSubmitPressed();
        choiceAttempts++; 
        ContinueStory();

    }
}
