-- Aktualisieren Sie die Kontak-Informationen eines Kunden.

-- Taylor Jenkins aus 27170 6th Ave., Washington, DC,
-- ist umgezogen nach 74 Pine St., New York, NY.

SELECT KundenID, Vorname, Nachname, Adresse
from Kunden
where Vorname = 'Taylor' and Nachname = 'Jenkins';

UPDATE Kunden 
set Adresse = '74 Pine St.', Stadt = 'New York', state = 'NY'
where KundenID = 26;

SELECT * from Kunden
where KundenID = 26;