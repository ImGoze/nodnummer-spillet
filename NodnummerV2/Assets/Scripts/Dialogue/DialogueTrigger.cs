using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*
 * Parts of the code is taken from this GitHub-repo which explains ink in depth
 * https://github.com/trevermock/ink-dialogue-system/tree/1-starting-point/Assets/Scripts
 */

public class DialogueTrigger : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject VisualCue;

    [Header("Visual Cue Finished Level")]
    [SerializeField] private GameObject VisualCueFinishedLevel;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    private bool playerInRange;
    private bool playerInDialougeRange; 


    private void Awake()
    {
        playerInRange = false;
        playerInDialougeRange = false; 
        VisualCue.SetActive(true);
        VisualCueFinishedLevel.SetActive(false); 
    }

    private void Update()
    {
        if(playerInRange && !DialogueManager.GetInstance().dialogueIsPlaying && !DialogueManager.GetInstance().dialogueIsFinished)
        {

            if(InputManager.GetInstance().GetInteractPressed())
            {
                VisualCue.SetActive(false);
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON); 
            }
        } 
        else
        {
            if(DialogueManager.GetInstance().dialogueIsFinished)
            {
                VisualCueFinishedLevel.SetActive(true);
            }
        }
    }

    private void OnTriggerEnter2D(Collider2D collider)
    {
        Debug.Log(playerInDialougeRange);
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true; 
        }
      
    }

    private void OnTriggerExit2D(Collider2D collider)
    {
        Debug.Log(playerInDialougeRange);
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = false;
        }



    }

}
