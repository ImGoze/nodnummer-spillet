using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Chest : Collectable
{
    public Sprite emptyChest;

    protected override void OnCollect()
    {
        if(!collected)
        {
            collected = true;
            GameManager.playerScore += 100;
            GameManager.UpdateScore(0);
            FindObjectOfType<SFXManager>().Play("OpenChest");
            GetComponent<SpriteRenderer>().sprite = emptyChest;
            
        }
    }
}