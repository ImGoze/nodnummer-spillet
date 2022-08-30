using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private PlayerInputActions playerInput;
    private Rigidbody2D rb;

    [SerializeField] private float speed = 1.5f; 
    
    void Awake()
    {
        playerInput = new PlayerInputActions();
        rb = GetComponent<Rigidbody2D>(); 
    }

    void FixedUpdate()
    {
        if (DialogueManager.GetInstance().dialogueIsPlaying)
        {
            return;
        }

        Vector2 moveInput = playerInput.Movement.Move.ReadValue<Vector2>();
        rb.velocity = moveInput * speed;
    }

    private void OnEnable()
    {
        playerInput.Enable(); 
    }

    private void OnDisable()
    {
        playerInput.Disable();
    }

}
