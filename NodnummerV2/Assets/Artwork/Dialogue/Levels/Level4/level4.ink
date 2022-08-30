Au! Hjeeeeeeelp! #speaker: Barn (7 år) #portrait: barn_pirat
    -> main 

=== main === 
Jeg brant meg på håndtaket til en brannfakkel i naborommet. Au, det er vondt! #speaker: Barn (7 år) #portrait: barn_pirat
    + [Ring medisinsk nødtelefon, 113] 
        -> wrong_choice0
    + [Ring legevakten, 116 117] 
        -> wrong_choice0
    + [Avkjøl området med vann]
        -> correct_choice0
        
=== wrong_choice0 === 
Dette kan være riktig alternativ etterhvert. Men først må vi iverksette tiltak som kan hjelpe å begrense skaden. Prøv på nytt! #speaker: Orakel #portrait: orakel_sad
    + [Ring medisinsk nødtelefon, 113] 
        -> wrong_choice0
    + [Ring legevakten, 116 117] 
        -> wrong_choice0
    + [Avkjøl det brente området med vann]
        -> correct_choice0
        
=== correct_choice0 === 
Bra! Avkjøling med vann kan være med å begrense brannskaden. Hvilken temperatur skal vannet ha? #speaker: Orakel #portrait: orakel_neutral
    + [Vannet skal være så kaldt som mulig - gjerne med isbiter] 
        -> wrong_choice1
    + [Vannet skal være lunkent] 
        -> correct_choice1
    + [Vannet skal være kaldt]
        -> wrong_choice1
        
=== wrong_choice1 ===  
Det funker dårlig. Vannet skal helst være kjølig, men ikke for kaldt. Is kan skade huden ytterligere. Barn skal kjøles med lunkent vann. Prøv på nytt! #speaker: Orakel #portrait: orakel_sad
    + [Vannet skal være så kaldt som mulig - gjerne med isbiter] 
        -> wrong_choice1
    + [Vannet skal være lunkent] 
        -> correct_choice1
    + [Vannet skal være kaldt]
        -> wrong_choice1

=== correct_choice1 === 
Veldig bra! Barn skal kun skylles med lunkent vann, og her er det er barn vi hjelper. Brannskaden omfatter et svakt rødt og lite område, vil du ringe etter hjelp? #speaker: Orakel #portrait: orakel_happy
    + [Ring medisinsk nødtelefon, 113] 
        -> wrong_choice2
    + [Ring legevakten, 116 117] 
        -> wrong_choice2
    + [Behandle brannskaden selv]
        -> correct_choice2 
        
=== wrong_choice2 ===
Dette er ikke nødvendig for mindre brannskader. Men er man i tvil, er det uansett fornuftig å ringe etter hjelp/råd. Det finnes også mye god informasjon på Helsenorge.no. Prøv på nytt! #speaker: Orakel #portrait: orakel_neutral
    + [Ring medisinsk nødtelefon, 113] 
        -> wrong_choice2
    + [Ring legevakten, 116 117] 
        -> wrong_choice2
    + [Behandle brannskade selv]
        -> correct_choice2 
        
        
=== correct_choice2 === 
Bra! Mindre brannskader kan behandles hjemme. 
Se Helsenorge.no for flere råd og tips ved brannskader. Det er viktig å presisere at om man er i tvil, bør man kontakte lege. Dette er ekstra viktig om det gjelder barn #speaker: Orakel #portrait: orakel_happy

->END

