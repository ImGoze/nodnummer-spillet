using UnityEngine;
using System;
using UnityEngine.Audio;

public class SFXManager : MonoBehaviour
{
    public Sound[] sounds;
    public static SFXManager instance; 

    void Awake()
    {
        if(instance == null)
        {
            instance = this;
        } else
        {
            Destroy(gameObject);
            return;
        }

        DontDestroyOnLoad(gameObject);


        foreach (Sound sound in sounds)
        {
            sound.source = gameObject.AddComponent<AudioSource>();
            sound.source.clip = sound.clip;
            sound.source.volume = sound.volume; 

        }
    }

    public void Play(string name)
    {
        Sound sound = Array.Find(sounds, sound => sound.name == name); // find appropriate sound

        //avoiding playing non existing sound
        if(sound == null)
        {
            return;
        }

        sound.source.Play(); 
    }
}

