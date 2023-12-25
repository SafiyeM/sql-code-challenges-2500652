-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.

-- um KundenID von Norby herauszufinden
SELECT * from Kunden
where Vorname = 'Norby';

-- letzte Reservierung von Kunden Norby -> 2022-05-23 14:30:00
SELECT * from Reservierung
where KundenID = 64;

SELECT * from Reservierung 
join Kunden 
on Reservierung.KundenID = Kunden.KundenID
where Vorname = 'Norby' and 
Reservierung.Datum > '2022-05-23';

DELETE from Reservierung
where ReservierungsID = 1962;


-- oder wenn wir Eintag nicht löschen möchten und die Einheit der Datenbank bewahren möchten
UPDATE Reservierung 
set Datum = Null 
where ReservierungsID = 1962;

