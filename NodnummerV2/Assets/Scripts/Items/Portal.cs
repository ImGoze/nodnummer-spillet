using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Portal : Collidable
{

    protected override void OnCollide(Collider2D coll)
    {
        string sceneName = SceneManager.GetActiveScene().name;
        string teleportSceneName = "";
        if (coll.name == "Player")
        {
            FindObjectOfType<SFXManager>().Play("Portal");
            if (sceneName == "Main")
            {
                teleportSceneName = "Level1";
            } else if (sceneName == "Level1")
            {
                teleportSceneName = "Level2";
            } else if (sceneName == "Level2")
            {
                teleportSceneName = "Level3";
            } else if(sceneName == "Level3")
            {
                teleportSceneName = "Level4"; 
            } else if(sceneName == "Level4")
            {
                teleportSceneName = "Level5";
            } else if(sceneName == "Level5")
            {
                teleportSceneName = "Finished";
            }
            
            UnityEngine.SceneManagement.SceneManager.LoadScene(teleportSceneName);

        }

    }
}
