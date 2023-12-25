-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.

-- um KundenID herauszufinden 
SELECT KundenID from Kunden
WHERE Email = 'atapley2j@kinetecoinc.com'; -- KundenID -> 92

-- the first value with subquery
INSERT into TeilnahmeJubilaeum(KundenID, AnzahlderGäste)
VALUES((SELECT KundenID from Kunden WHERE Email = 'atapley2j@kinetecoinc.com') , 4);

SELECT * from TeilnahmeJubilaeum;

-- Weiterer Kunde Registrieren 'mdomney0@wisdompets.com' mit 4 Freunden.

-- für subquery - das ergibt KundenID
SELECT KundenID from Kunden
where Email = 'mdomney0@wisdompets.com'; -- KundenID 1

INSERT into TeilnahmeJubilaeum(KundenID, AnzahlderGäste)
VALUES ((SELECT KundenID from Kunden
where Email = 'mdomney0@wisdompets.com'), 5);

-- sum of all guests
SELECT sum(AnzahlderGäste) from TeilnahmeJubilaeum; -- 9 Gäste

