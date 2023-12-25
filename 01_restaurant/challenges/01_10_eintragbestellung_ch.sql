-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)

SELECT * from Kunden
where Vorname = 'Loretta'; -- KundenID - 70

-- BestellungSpeise - BestellungsID -SpeiseID  
-- Bestellungen - BestellungsID - KundenID - BestellungsDatum
-- Speise - SpeiseID - Name - Preis 
-- Kunden - KundenID - Vorname - Nachname 

-- This generates me a BestellungsID
INSERT INTO Bestellungen(KundenID , BestellungsDatum )
VALUES (70, '2022-09-20 14:00:00'); 

SELECT * FROM Bestellungen
WHERE KundenID = 70; -- BestellungsID 1001

-- This shows me SpeiseID and we will use as a subquery 
SELECT SpeiseID from Speise
where name = 'House Salad'; -- SpeiseID 7


INSERT into BestellungSpeise(BestellungsID , SpeiseID)
VALUES (1001, (SELECT SpeiseID from Speise where name = 'House Salad')),
       (1001, (SELECT SpeiseID from Speise where name = 'Mini Cheeseburgers')),
       (1001, (SELECT SpeiseID from Speise where name = 'Tropical Blue Smoothie'));

SELECT * From Speise
join BestellungSpeise on Speise.SpeiseID = BestellungSpeise.SpeiseID
join Bestellungen on Bestellungen.BestellungsID = BestellungSpeise.BestellungsID
where BestellungSpeise.BestellungsID = 1001 
Order By Bestellungen.BestellungsDatum;


SELECT sum(Speise.Preis) from Speise
join BestellungSpeise on Speise.SpeiseID = BestellungSpeise.SpeiseID
where BestellungSpeise.BestellungsID = 1001;


