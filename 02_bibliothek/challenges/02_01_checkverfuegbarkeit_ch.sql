-- Finden Sie heraus wie viele Kopien von 
-- „Dracula“ im Moment verfügbar sind.

SELECT COUNT(Titel) from Buecher
where Titel = 'Dracula'; -- output: 4

SELECT Count(Titel) from Buecher
join Ausleihung on Ausleihung.BuchID = Buecher.BuchID
WHERE titel = 'Dracula' and RueckgabeDatum is null; -- output: 0

SELECT Ausleihung.BuchID from Buecher
JOIN Ausleihung ON Ausleihung.BuchID = Buecher.BuchID 
where Buecher.Titel = 'Dracula'; -- I want to learn all the BuchID of Dracula books from Ausleihung table
                                 
SELECT * from Buecher
join Ausleihung on Ausleihung.BuchID = Buecher.BuchID
where Buecher.Titel = 'Dracula' and Buecher.BuchID in(12, 73, 60);


SELECT
  (SELECT COUNT(Buecher.Titel) 
    FROM Buecher 
    WHERE Buecher.Titel = 'Dracula') - 
  (SELECT COUNT(Buecher.Titel)
    FROM Buecher 
    JOIN Ausleihung ON Buecher.BuchID = Ausleihung.BuchID 
    WHERE Buecher.Titel = 'Dracula' 
    AND Ausleihung.RueckgabeDatum IS NULL)
  AS VerfuegbareKopien; -- Output 4 


