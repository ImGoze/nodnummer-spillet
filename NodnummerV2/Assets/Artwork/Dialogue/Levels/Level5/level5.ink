Det ligger en mann på bakken, hva vil du gjøre? #speaker: Orakel  #portrait: orakel_neutral
    + [La han ligge, han er bare full og trenger å sove] 
        -> wrong_choice0 
    + [Ta kontakt med vedkommende, men vær oppmerksom på eventuelle farer]
        -> correct_choice0 
    + [Ring medisinsk nødtelefon, 113]
        -> wrong_choice1
    
=== wrong_choice0 === 
Slike ting kan vi ikke anta. Avklar om personen er bevisst. Prøv igjen!  #speaker: Orakel  #portrait: orakel_sad
    + [La han ligge, han er bare full og trenger å sove] 
        -> wrong_choice0 
    + [Ta kontakt med vedkommende, men vær oppmerksom på eventuelle farer]
        -> correct_choice0 
    + [Ring medisinsk nødtelefon, 113]
        -> wrong_choice1

=== wrong_choice1 === 
Undersøk situasjonen litt nærmere før du tar kontakt med 113. Prøv igjen!  #speaker: Orakel  #portrait: orakel_sad
    + [La han ligge, han er bare full og trenger å sove] 
        -> wrong_choice0 
    + [Ta kontakt med vedkommende, men vær oppmerksom på eventuelle farer]
        -> correct_choice0 
    + [Ring medisinsk nødtelefon, 113]
        -> wrong_choice1

=== correct_choice0 === 
Du snakker til vedkommende, men han svarer ikke. Hva vil du gjøre videre? #speaker: Orakel #portrait: orakel_neutral
    + [Rist forsiktig i skulderen og rop høyt "er du våken?"]
        -> correct_choice1
    + [Sjekk pust og puls] 
        -> wrong_choice2 
    + [Legg han i stabilt sideleie]
        -> wrong_choice3
        
=== wrong_choice2 === 
Ikke et dumt valg, men her er det en fremgangsmåte som er mer korrekt. Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Rist forsiktig i skulderen og rop høyt "er du våken?"]
        -> correct_choice1
    + [Sjekk pust og puls] 
        -> wrong_choice2 
    + [Legg han i stabilt sideleie]
        -> wrong_choice3
        
=== wrong_choice3 === 
Vi må først avklare tilstanden litt mer. En annen fremgangsmåte er mer korrekt. Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Rist forsiktig i skulderen og rop høyt "er du våken?"]
        -> correct_choice1
    + [Sjekk pust og puls] 
        -> wrong_choice2 
    + [Legg han i stabilt sideleie]
        -> wrong_choice3

=== correct_choice1 === 
Bra! Vi må forsikre oss om at personen ikke sover og er bevisst. Her får vi ingen reaksjon fra personen. Hva gjør du videre? #speaker: Orakel #portrait: orakel_happy
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2
    + [Ring legevakten, 116 117] 
        -> wrong_choice4 
    + [Koble til hjertestarter / defibrillator]
        -> wrong_choice5
        
=== wrong_choice4 === 
Her tyder alt på at personen er bevisstløs, derfor er ikke legevakten riktig alternativ. Prøv på nytt! #speaker: Orakel #portrait: orakel_sad
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2
    + [Ring legevakten, 116 117] 
        -> wrong_choice4 
    + [Koble til hjertestarter / defibrillator]
        -> wrong_choice5

=== wrong_choice5 === 
Det er anbefalt å ta kontakt med 113 før man igangsetter livreddende hjelp, slik at du får instrukser fra operatøren  på 113 om hva du skal gjøre videre. Prøv på nytt! #speaker: Orakel #portrait: orakel_sad
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2
    + [Ring legevakten, 116 117] 
        -> wrong_choice4 
    + [Koble til hjertestarter / defibrillator]
        -> wrong_choice5


=== correct_choice2 === 
Bra! Før vi gjør noe mer bør vi ringe 113 slik at vi sammen med operatøren kan gjøre undersøkelser som å sjekke pusten og deretter iverksette tiltak for å hjelpe personen. Samtidig vil 113 sende ambulanse. 
    -> avsluttende

=== avsluttende === 
Bra! Før vi gjør noe mer bør vi ringe 113 slik at vi sammen med operatøren kan gjøre undersøkelser som å sjekke pusten og deretter iverksette tiltak for å hjelpe personen. Samtidig vil 113 sende ambulanse.
    -> END