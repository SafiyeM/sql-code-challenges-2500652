-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

-- This query gives me 9 as SpeiseID of Quinoa Salmon Salad
SELECT SpeiseID from Speise
where Name = 'Quinoa Salmon Salad';

SELECT * from Kunden
where Vorname = 'Cleo' AND Nachname = 'Goldwater';

UPDATE Kunden
SET LieblingsGericht = 9
WHERE KundenID = 42 ;



