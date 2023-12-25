-- Finden Sie die Reservierung eines Kunden, 
-- dessen Namen wir nicht genau buchstabieren können.

-- Der Name hat unter anderem folgende Variationen:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- Heute ist der 14.Juni.

SELECT Kunden.Vorname, Kunden.Nachname, Reservierung.Datum, Reservierung.PartyGroesse from Reservierung 
join Kunden 
on Reservierung.KundenID = Kunden.KundenID
where Kunden.Nachname LIKE 'St%'
AND PartyGroesse = 4
ORDER by Datum DESC; 
