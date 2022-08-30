using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIManager : MonoBehaviour
{
    [SerializeField]
    private TextMeshProUGUI scoreText;


    public void updateScore(int playerScore)
    {
        scoreText.text = "Poeng: " + playerScore.ToString();
    }
}
