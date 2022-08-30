Au, au! Hjelp, hjelp! #speaker:Barn (8 år) #portrait:barn_level3
-> main

=== main === 
Jeg snublet og landet på armen min. Det gjør kjempevondt! #speaker:Barn (8 år) #portrait:barn_level3
    + [Se nærmere på armen] 
        -> correct_choice0
    + [Det blir bedre om noen timer] 
        -> wrong_choice0
    + [Be vedkommende om å ta en smertestillende tablett]
        -> wrong_choice1
        
=== wrong_choice0 === 
Det kan godt hende, men vi må først se litt nærmere på skaden! Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Se nærmere på armen] 
        -> correct_choice0
    + [Det blir bedre om noen timer] 
        -> wrong_choice0
    + [Be vedkommende om å ta en smertestillende tablett]
        -> wrong_choice1


=== wrong_choice1 === 
Det kan godt hende det hjelper, men vi må først få oversikt over omfanget av skaden! Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Se nærmere på armen] 
        -> correct_choice0
    + [Det blir bedre om noen timer] 
        -> wrong_choice0
    + [Be vedkommende om å ta en smertestillende tablett]
        -> wrong_choice1
        
=== correct_choice0 === 
'Viser armen'. Du ser lett hevelse i håndledd, ingen tydelige tegn til feilstilling i arm/håndledd . Tiltak? #speaker: Barn (8 år) #portrait: barn_level3
    + [Fortell at det går over av seg selv] 
        -> wrong_choice2
    + [Legg på noe kaldt for å dempe hevelsen] 
        -> wrong_choice3
    + [Ring etter hjelp]
        -> correct_choice1

        
=== wrong_choice2 === 
Det kan godt hende, men det er litt tidlig å si allerede nå! Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Fortell at det går over av seg selv] 
        -> wrong_choice2
    + [Legg på noe kaldt for å dempe hevelsen] 
        -> wrong_choice3
    + [Ring etter hjelp]
        -> correct_choice1


=== wrong_choice3 === 
Det kan godt hende det hjelper, men det er ikke det ideelle valget allerede nå! Prøv igjen. #speaker: Orakel #portrait: orakel_sad
    + [Fortell at det går over av seg selv] 
        -> wrong_choice2
    + [Legg på noe kaldt for å dempe hevelsen] 
        -> wrong_choice3
    + [Ring etter hjelp]
        -> correct_choice1
        

=== correct_choice1 === 
Hvem ringer du? #speaker: Barn (8 år) #portrait: barn_level3
    + [Fastlegen hvis åpent] 
        -> correct_choice2
    + [Legevakten, 116 117] 
        -> wrong_choice4
    + [Medisinsk nødtelefon, 113]
        -> wrong_choice5

=== wrong_choice4 === 
Dette hadde vært det beste alternativet om det var senere på ettermiddagen. Et alterantiv er "mer" korrekt. Prøv igjen! #speaker: Orakel #portrait: orakel_sad
    + [Fastlegen hvis åpent] 
        -> correct_choice2
    + [Legevakten, 116 117] 
        -> wrong_choice4
    + [Medisinsk nødtelefon, 113]
        -> wrong_choice5
        
=== wrong_choice5 === 
Ingenting tyder på at dette er en alvorlig skade som behøver utrykning av ambulanse. Prøv igjen! #speaker: Orakel #portrait: orakel_sad
    + [Fastlegen hvis åpent] 
        -> correct_choice2
    + [Legevakten, 116 117] 
        -> wrong_choice4
    + [Medisinsk nødtelefon, 113]
        -> wrong_choice5
        
=== correct_choice2 === 
Bra! I en slik situasjon er det riktig å ta kontakt med fastlegen innenfor åpningstiden. Er fastlegen stengt, er legevakten det riktige alternativet #speaker: Orakel #portrait: orakel_happy
    ->avsluttende
    
    
=== avsluttende === 
Bra! I en slik situasjon er det riktig å ta kontakt med fastlegen innenfor åpningstiden. Er fastlegen stengt, er legevakten det riktige alternativet #speaker: Orakel #portrait: orakel_happy

->END


