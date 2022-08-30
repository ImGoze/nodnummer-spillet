Hei du, jeg trenger hjelp! #speaker:Vidar #portrait:vidar_level1
-> main


=== main === 
Jeg har vondt i brystet og er redd, hva skal jeg gjøre? #speaker:Vidar #portrait:vidar_level1 
    + [Har du noen andre symptomer?] 
        -> correct_choice0
    + [Vent og se om det blir vondere, det går sannsynligvis over] 
        -> wrong_choice0
    + [Ingenting farlig, brystsmerter er vanlig]
        -> wrong_choice1
        
        

=== wrong_choice0 === 
I mange tilfeller kan brystsmerter være helt ufarlige, men det kan være lurt å spørre litt mer for å utelukke alvorlig sykdom. Prøv igjen. #speaker:Orakel #portrait:orakel_neutral
    + [Har du noen andre symptomer?] 
        -> correct_choice0 
    + [Vent å se om det blir vondere, det går sannsynligvis over] 
        -> wrong_choice0
    + [Ingenting farlig, brystsmerter er vanlig]
        -> wrong_choice1
    
=== wrong_choice1 === 
Det er helt vanlig å få smerter i brystet i ny og ne, men det er viktig å utelukke alvorlig sykdom først! Prøv igjen. #speaker:Orakel #portrait:orakel_sad
    + [Har du noen andre symptomer?] 
        -> correct_choice0 
    + [Vent og se om det blir vondere, det går sannsynligvis over] 
        -> wrong_choice0
    + [Ingenting farlig, brystsmerter er vanlig]
        -> wrong_choice1
        
    

=== correct_choice0 === 
Jeg føler meg svimmel, er svett og kvalm. #speaker:Vidar #portrait:vidar_level1
    + [Ta smertestillende, det vil fikse smertene] 
        -> wrong_choice2
    + [Ta det med ro, ring legen hvis det blir værre] 
        -> wrong_choice3 
    + [Hvordan kjennes smerten ut?]
        -> correct_choice1
        
=== wrong_choice2 === 
Det kan være fornuftig å ta en smertestillende, men på dette tidspunktet kan vi ikke utelukke alvorlig sykdom. Velg et nytt forslag #speaker:Orakel #portrait:orakel_neutral
    + [Ta smertestillende, det vil fikse smertene] 
        -> wrong_choice2
    + [Ta det med ro, ring legen hvis det blir værre] 
        -> wrong_choice3 
    + [Hvordan kjennes smerten ut?]
        -> correct_choice1
        
    
    

=== wrong_choice3 === 
Dette kan være en god idé. Men hvis smertene er så sterke at du er svimmel, svett og kvalm bør du vurdere om det er lurt å vente. Kan du velge et annet alternativ? #speaker:Orakel #portrait:orakel_sad  
    + [Ta smertestillende, det vil fikse smertene] 
        -> wrong_choice2
    + [Ta det med ro, ring legen hvis det blir værre] 
        -> wrong_choice3 
    + [Hvordan kjennes smerten ut?]
        -> correct_choice1



=== correct_choice1 ===
Ubehagelig press, trykk, klemmende smerter midt i brystet som stråler ut mot armen. Det er så vondt. Hva skal vi gjøre? #speaker:Vidar #portrait:vidar_level1 
    + [Ring fastlegen] 
        ->wrong_choice4
    + [Ring legevakten, 116 117]
        ->wrong_choice5
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2

        
=== wrong_choice4 === 
Hadde ikke symptomene vært så tydelige, kunne det vært lurt å kontakte fastlegen/legevakten. Prøv igjen. #speaker:Orakel #portrait:orakel_sad
    + [Ring fastlegen] 
        ->wrong_choice4
    + [Ring legevakten, 116 117]
        ->wrong_choice5
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2


=== wrong_choice5 ===
Ikke optimalt å ringe legevakten, da symptomene er såpass alvorlige at man bør ringe etter øyeblikkelig hjelp. Prøv på nytt.  #speaker: Orakel #portrait: orakel_sad

    + [Ring fastlegen, hvis åpent] 
        ->wrong_choice4
    + [Ring legevakten, 116 117]
        ->wrong_choice5
    + [Ring medisinsk nødtelefon, 113]
        -> correct_choice2


=== correct_choice2 ===
Medisinsk nødtelefon. #speaker: 113 #portrait: medisinsk_telefon
    + [Vidar trenger hjelp. Han har store smerter i brystet som stråler ut mot armen]
        -> correct_choice3
    + [Kjapp dere hit, trenger hjelp]
        -> wrong_choice6
    + [Møtte en mann som trengte hjelp, dere finner han en eller annen plass] 
        -> wrong_choice7

=== wrong_choice6 ===
Dette blir uheldig. AMK vet ikke hvor "hit" er. Prøv på nytt med et annet alternativ. #speaker: Orakel #portrait: orakel_sad
    + [Vidar trenger hjelp. Han har store smerter i brystet som stråler ut mot armen]
        -> correct_choice3
    + [Kjapp dere hit, trenger hjelp]
        -> wrong_choice6
    + [Møtte en mann som trengte hjelp, dere finner han en eller annen plass] 
        -> wrong_choice7

=== wrong_choice7 
Fryktelig dårlig valg. Hjelp medmennesker! Prøv på nytt med et annet alternativ. #speaker: Orakel #portrait: orakel_sad
    + [Vidar trenger hjelp. Han har store smerter i brystet som stråler ut mot armen]
        -> correct_choice3
    + [Kjapp dere hit, trenger hjelp]
        -> wrong_choice6
    + [Møtte en mann som trengte hjelp, dere finner han en eller annen plass] 
        -> wrong_choice7
    
=== correct_choice3 ===
Jeg skal hjelpe deg. Hvor befinner pasienten seg? #speaker: 113 #portrait: medisinsk_telefon
    + [I en hule]
        -> wrong_choice8 
    + [I Storgata 1, 3. etasje]
        -> correct_choice4 
    + [Aner ikke]
        -> wrong_choice9
        
=== wrong_choice8 ===
Ikke langt fra sannheten. Men det er fortsatt vanskelig for AMK å vite hvor du er. Prøv på nytt med et annet alternativ #speaker: Orakel #portrait: orakel_neutral
    + [I en hule]
        -> wrong_choice8 
    + [I Storgata 1, 3. etasje]
        -> correct_choice4 
    + [Aner ikke]
        -> wrong_choice9

=== wrong_choice9 === 
Dette er ikke til mye hjelp. Prøv på nytt med et annet alternativ. #speaker: Orakel #portrait: orakel_sad
    + [I en hule]
        -> wrong_choice8 
    + [I Storgata 1, 3. etasje]
        -> correct_choice4 
    + [Aner ikke]
        -> wrong_choice9
        
        
=== correct_choice4 === 
Bra! #speaker: Orakel #portrait: orakel_happy
    -> avsluttende

        
=== avsluttende === 
Ambulansen er straks på stedet. Ikke legg på telefonen. #speaker: 113 #portrait: medisinsk_telefon
    -> END
    



