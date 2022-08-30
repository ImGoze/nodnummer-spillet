using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static int playerScore = 0;
    PlayfabManager playfabManager;
    UIManager uiManager; 
    public static GameManager instance;
    

    private void Awake()
    {
        if(GameManager.instance != null)
        {
            Destroy(gameObject);
            return;
        }
        instance = this;

        SceneManager.sceneLoaded += LoadState;
        DontDestroyOnLoad(gameObject);

        SceneManager.sceneLoaded += OnSceneLoaded;

        //uiManager = gameObject.AddComponent<UIManager>();

    }

    private void Start()
    {
        Debug.Log("Scene: " + SceneManager.GetActiveScene().name);
        playfabManager = gameObject.AddComponent<PlayfabManager>();

        if (SceneManager.GetActiveScene().name == "Finished")
        {
            instance.playfabManager.SendLeaderboard(playerScore);
        }
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        uiManager = GameObject.Find("PlayerScoreUI").GetComponent<UIManager>();
        uiManager.updateScore(playerScore);
    }

    public void SaveState()
    {
        string save = "";
        save += playerScore.ToString() + "|";

        PlayerPrefs.SetString("SaveState", save);
    }

    public void LoadState(Scene scene, LoadSceneMode mode)
    {
        if (!PlayerPrefs.HasKey("SaveState"))
            return; 

        string[] data = PlayerPrefs.GetString("SaveState").Split('|');
        playerScore = int.Parse(data[0]);
    }

    public static void UpdateScore(int choiceAttempts)
    {
        string sceneName = SceneManager.GetActiveScene().name;

        if (sceneName == "Level1" && choiceAttempts != 0)
        {
            if (choiceAttempts <= 5)
            {
                playerScore += 1000;
            }
            else if (choiceAttempts > 5 && choiceAttempts <= 7)
            {
                playerScore += 500;
            }
            else
            {
                playerScore += 250;
            }

        }
        else if (sceneName == "Level2" && choiceAttempts != 0)
        {
            if (choiceAttempts <= 4)
            {
                playerScore += 1000;
            }
            else if (choiceAttempts > 4 && choiceAttempts <= 6)
            {
                playerScore += 500;
            }
            else
            {
                playerScore += 250;
            }
        }
        else if (sceneName == "Level3" && choiceAttempts != 0)
        {
            if (choiceAttempts <= 3)
            {
                playerScore += 1000;
            }
            else if (choiceAttempts > 3 && choiceAttempts <= 4)
            {
                playerScore += 500;
            }
            else
            {
                playerScore += 250;
            }
        }
        else if (sceneName == "Level4" && choiceAttempts != 0)
        {
            if (choiceAttempts <= 3)
            {
                playerScore += 1000;
            }
            else if (choiceAttempts > 3 && choiceAttempts <= 4)
            {
                playerScore += 500;
            }
            else
            {
                playerScore += 250;
            }
        }
        else if (sceneName == "Level5" && choiceAttempts != 0)
        {
            if (choiceAttempts <= 3)
            {
                playerScore += 1000;
            }
            else if (choiceAttempts > 3 && choiceAttempts <= 4)
            {
                playerScore += 500;
            }
            else
            {
                playerScore += 250;
            }
        }

        Debug.Log("Choice attempts " + sceneName + " " + choiceAttempts.ToString());
        Debug.Log("Din score: " + playerScore.ToString());
        instance.uiManager.updateScore(playerScore);

    }
}
