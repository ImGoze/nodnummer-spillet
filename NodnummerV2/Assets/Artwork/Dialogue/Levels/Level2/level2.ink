Hallo! Hallo! Det er noe rart som skjer med pappa. #speaker: Barn (9 år) #portrait: barn
    + [Av og til blir gamle folk rare]
        -> wrong_choice0
    + [Hva skjer med han?] 
        -> correct_choice0
    + [Det er sikkert varmen]
        -> wrong_choice1
    
=== wrong_choice0 ===
Forsåvidt sant. Men hvis du møter et barn som sier at det foregår noe rart med en forelder, bør det avklares om det er noe alvorlig først. Prøv på nytt. #speaker: Orakel #portrait: orakel_sad
    + [Av og til blir gamle folk rare]
        -> wrong_choice0
    + [Hva skjer med han?] 
        -> correct_choice0
    + [Det er sikkert varmen]
        -> wrong_choice1
        

=== wrong_choice1 ===
Det kan være, men det kan også være noe annet. Sjekk hvordan det går med han før vi trekker en slik konklusjon. Prøv på nytt #speaker: Orakel #portrait: orakel_sad
    + [Av og til blir gamle folk rare]
        -> wrong_choice0
    + [Hva skjer med han?] 
        -> correct_choice0
    + [Det er sikkert varmen]
        -> wrong_choice1
        
=== correct_choice0 === 
Han begynte plutselig å prate rart og det er vanskelig å forstå hva han sier.. Han står i hjørnet av rommet #speaker: Barn (9 år) #portrait: barn 
    + [Kommuniser med pappaen]
        -> correct_choice1 
    + [Gå videre, alt ser fint ut] 
        -> wrong_choice2
    + [Han trenger en flaske vann]
        -> wrong_choice3

        
=== wrong_choice2 ===
Avklar om det har skjedd noe med pappaen før vi forlater stedet. Prøv på nytt #speaker: Orakel #portrait: orakel_sad
    + [Kommuniser med pappaen]
        -> correct_choice1 
    + [Gå videre, alt ser fint ut] 
        -> wrong_choice2
    + [Han trenger vann]
        -> wrong_choice3


=== wrong_choice3 ===
Det kan være han mangler væske, men forsøk å ta kontakt med han først for å se hvordan det står til. Prøv på nytt #speaker: Orakel #portrait: orakel_sad
    + [Kommuniser med pappaen]
        -> correct_choice1 
    + [Gå videre, alt ser fint ut] 
        -> wrong_choice2
    + [Han trenger vann]
        -> wrong_choice3
        
=== correct_choice1 === 
 "Forsøker å snakke, men sliter med å få ut ord" #speaker: Far #portrait: old_man
    + [Be han prate, smile og løfte hendene]
        -> wrong_choice4 
    + [Ring 113] 
        -> correct_choice2
    + [Ring 116 117]
        -> wrong_choice5

        
=== wrong_choice4 === 
Siden han allerede sliter med å prate, er det mistanke om hjerneslag og videre undersøkelser trenger vi ikke nå. Hvert sekund teller. Prøv på nytt. #speaker: Orakel #portrait: orakel_neutral
    + [Be han prate, smile og løfte hendene]
        -> wrong_choice4 
    + [Ring 113] 
        -> correct_choice2
    + [Ring 116 117]
        -> wrong_choice5

=== wrong_choice5 === 
Her er det mistanke om hjerneslag. Da må vi ha øyeblikkelig hjelp. Prøv på nytt! #speaker: Orakel #portrait: orakel_sad
    + [Be han prate, smile og løfte hendene]
        -> wrong_choice4 
    + [Ring medisinsk nødtelefon, 113] 
        -> correct_choice2
    + [Ring 116 117]
        -> wrong_choice5
        

=== correct_choice2 === 
Medisinsk nødtelefon. #speaker: 113 #portrait: medisinsk_telefon
    + [Står ved en person med symptomer på hjerneslag]
        -> correct_choice3 
    + [Det er et barn her som trenger hjelp] 
        -> wrong_choice6
    + [Står ved en person som ikke klarer å prate]
        -> correct_choice3

=== wrong_choice6 === 
Det er vel ikke barnet som trenger hjelp? Prøv på nytt. #speaker: Orakel #portrait: orakel_sad
    + [Står ved en person med symptomer på hjerneslag]
        -> correct_choice3
    + [Det er et barn her som trenger hjelp] 
        -> wrong_choice6
    + [Står ved en person som ikke klarer å prate]
        -> correct_choice3


=== correct_choice3 === 
Hjelpen er på vei. Sørg for at personen holder seg i ro og bli hos pasienten #speaker: 113 #portrait: medisinsk_telefon      
    -> avsluttende
        

=== avsluttende === 
Bra! Ved mistanke om hjerneslag er rask oppdagelse og behandling avgjørende for utfallet. Det som skjer i løpet av de første timene påvirker i stor grad resultatet av behandlingen. #speaker: Orakel #portrait: orakel_happy
    -> END



