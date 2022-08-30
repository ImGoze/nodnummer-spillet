Hei! Velkommen til nødnummer-spillet. Jeg er orakelet og skal veilede deg gjennom denne reisen. #speaker: Orakel #portrait: orakel_neutral 
    -> main 
    
=== main === 
På denne reisen skal du hjelpe personer som trenger din hjelp. Jeg kommer til å bistå deg gjennom hele reisen. Jeg belønner deg best når du fatter de riktige beslutningene. #speaker: Orakel #portrait: orakel_neutral  
    + [Trenger ikke din hjelp] 
        -> continue1
    + [Jeg er ikke klar] 
        -> continue2
    + [Gå videre] 
        -> continue3
        
=== continue1 === 
Vi får se på det, hvis liv går tapt er det din skyld! For å starte, gå gjennom den grønne portalen. #speaker: Orakel #portrait: orakel_sad
    -> END
    
=== continue2 === 
Det var synd! For å starte, gå gjennom den grønne portalen. Lykke til! #speaker: Orakel #portrait: orakel_neutral
    -> END
    
=== continue3 === 
Da er det bare å si lykke til! For å starte, gå gjennom den grønne portalen. #speaker: Orakel #portrait: orakel_neutral
    -> END