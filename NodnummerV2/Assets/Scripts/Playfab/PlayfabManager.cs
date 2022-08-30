using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using PlayFab;
using PlayFab.ClientModels;
using UnityEngine.UI;

public class PlayfabManager : MonoBehaviour
{

    public GameObject rowPrefab;
    public Transform rowsParent;

    void Start()
    {
        Login(); 
    }
    void Login()
    {
        var request = new LoginWithCustomIDRequest
        {
            CustomId = SystemInfo.deviceUniqueIdentifier,
            CreateAccount = true
        };
        PlayFabClientAPI.LoginWithCustomID(request, OnSuccess, OnError); {
        }
    }

    void OnSuccess(LoginResult result)
    {
        Debug.Log("Successful login/account create");
    }

    void OnError(PlayFabError error)
    {
        Debug.Log("Error while loggin in/creating acc");
        Debug.Log(error.GenerateErrorReport()); 
    }

    public void SendLeaderboard(int score)
    {
        var request = new UpdatePlayerStatisticsRequest {
            Statistics = new List<StatisticUpdate> {
                new StatisticUpdate {
                    StatisticName = "PlayerScore", 
                    Value = score
                }
            }
        };
        PlayFabClientAPI.UpdatePlayerStatistics(request, OnLeaderboardUpdate, OnError);
    }

    void OnLeaderboardUpdate(UpdatePlayerStatisticsResult res) {
        Debug.Log("Successfull leaderboard sent"); 
    }

    public void GetLeaderboard() {
        var request = new GetLeaderboardRequest{
            StatisticName = "PlayerScore", 
            StartPosition = 0, 
            MaxResultsCount = 10
        }; 
        PlayFabClientAPI.GetLeaderboard(request, OnLeaderboardGet, OnError);
    }

    void OnLeaderboardGet(GetLeaderboardResult res) {
        foreach(Transform item in rowsParent)
        {
            Destroy(item.gameObject);
        }
        foreach(var item in res.Leaderboard) {
            GameObject newGO = Instantiate(rowPrefab, rowsParent);
            Text[] texts = newGO.GetComponentsInChildren<Text>();
            texts[0].text = (item.Position + 1).ToString();
            texts[1].text = item.PlayFabId;
            texts[2].text = item.StatValue.ToString();


            Debug.Log(item.Position + " " + item.PlayFabId + " " + item.StatValue); 
        }
    }
}
