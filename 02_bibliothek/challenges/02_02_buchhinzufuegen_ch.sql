-- Fügen Sie folgende Bücher in die Datenbank hinzu
-- und stellen diese zum Ausleihen bereit.

-- Add the following books to the database
-- and make them available for borrowing.

/*
- Titel: Dracula  
- Autor: Bram Stoker 
- Jahr: 1897
- Neue ID: 4819277482

- Titel: Gulliver’s Travels into Several Remote Nations of the World
- Autor: Jonathan Swift
- Jahr: 1729
- Neue ID: 4899254401 */


Insert INTO Buecher(Titel, AutorIn, Erscheinungsdatum, Barcode)
VALUES('Dracula', 'Bram Stoker', 1729, 4819277482), 
      ('Gullivers Travels into Several Remote Nations of the World', 'Jonathan Swift', 1729, 4899254401 );

SELECT * from Buecher
order by BuchID desc;


