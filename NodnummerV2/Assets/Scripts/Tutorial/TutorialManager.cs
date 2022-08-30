using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialManager : MonoBehaviour
{
    public GameObject[] popUps;
    private int popUpIndex;


    void Update()
    {
        for (int i = 0; i < popUps.Length; i++)
        {
            if(i == popUpIndex)
            {
                popUps[i].SetActive(true);
            } else
            {
                popUps[i].SetActive(false); 
            }
            
        }

        if ((Input.GetKeyDown(KeyCode.LeftArrow)
            || Input.GetKeyDown(KeyCode.RightArrow)
            || Input.GetKeyDown(KeyCode.DownArrow)
            || Input.GetKeyDown(KeyCode.UpArrow)
            || Input.GetKeyDown(KeyCode.W)
            || Input.GetKeyDown(KeyCode.A)
            || Input.GetKeyDown(KeyCode.S)
            || Input.GetKeyDown(KeyCode.D)) && popUpIndex < 1)
        {
            popUpIndex++; 
        } else if (popUpIndex == 1)
        {
            if(Input.GetKeyDown(KeyCode.E))
            {
                popUpIndex++; 
            }
        } else if (popUpIndex == 2)
        {
            if(Input.GetKeyDown(KeyCode.Space))
            {
                popUpIndex++;
            }
        }
            
            

    }
}
