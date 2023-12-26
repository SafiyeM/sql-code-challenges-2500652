-- Erstellen Sie eine Liste von Kundinnen/Kunden,
-- die die meisten Bestellungen abgegeben haben,
-- sodass wir ihnen einen Coupon schenken können.

-- Geben Sie die Anzahl der Bestellungen, 
-- den Vornamen, Nachnamen sowie die Email-Adresse an.


SELECT COUNT(Bestellungen.BestellungsID) as AnzahlBestellungen, Kunden.Vorname, Kunden.Nachname, Kunden.Email
FROM Bestellungen
join Kunden on Kunden.KundenID = Bestellungen.KundenID
GROUP By Bestellungen.KundenID
ORDER BY AnzahlBestellungen desc;



-- Ekstra Just for fun
SELECT 
       count(Bestellungen.BestellungsID) as AnzahlBestellungen,
       Kunden.KundenID, 
       Kunden.Vorname, 
       Kunden.Nachname, 
       Kunden.Email
from 
      Bestellungen
JOIN 
      Kunden on Kunden.KundenID = Bestellungen.KundenID
WHERE 
      Kunden.KundenID = 2;
-- Output -  AnzahlBestellungen	 KundenID	   Vorname	 Nachname	   Email
--                   14	             2	      Javier	  Dawks	   jdawks1@red30design.com



-- Just for fun 
SELECT count(Speise.Name) from Speise
Join BestellungSpeise on BestellungSpeise.SpeiseID = Speise.SpeiseID
where name = 'Handcrafted Pizza'; -- Handcrafted Pizza 193 times is ordered.
