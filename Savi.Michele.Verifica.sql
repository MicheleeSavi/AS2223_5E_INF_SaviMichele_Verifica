CREATE TABLE STATISTICA
(
  Codice int not null primary key,
  Cognome char(20),
  AnnoNascita int,
  Altezza int,
  Peso int
);

INSERT INTO STATISTICA
VALUES
(
	1, 'Barbieri', 1980, 178, 75
);
INSERT INTO STATISTICA
VALUES
(
	2, 'Bianchi', 1985, 180, 82
);
INSERT INTO STATISTICA
VALUES
(
	3, 'Conti', 1978, 165, 68
);
INSERT INTO STATISTICA
VALUES
(
	4, 'Fontana', 2000, 177, 74
);
INSERT INTO STATISTICA
VALUES
(
	5, 'Galli', 2005, 190, 89
);
INSERT INTO STATISTICA
VALUES
(
	6, 'Mancini', 1997, 185, 87
);
INSERT INTO STATISTICA
VALUES
(
	7, 'Rossi', 2001, 187, 90
);
INSERT INTO STATISTICA
VALUES
(
	8, 'Savi', 2003, 175, 89
);
INSERT INTO STATISTICA
VALUES
(
	9, 'Benzi', 2004, 179, 80
);
INSERT INTO STATISTICA
VALUES
(
	10, 'Sanchi', 2004, 175, 60
);

ALTER TABLE Statistica
ADD Nazionalita char(20);

DELETE
FROM Statistica
WHERE Cognome = 'Galli';

UPDATE Statistica
SET AnnoNascita = 1981
WHERE Cognome = 'Conti';

UPDATE Statistica
SET Altezza = Altezza + 1;

ALTER TABLE Statistica
DROP Peso;

UPDATE Statistica
SET Nazionalita = 'ITA';

UPDATE Statistica
SET AnnoNascita = AnnoNascita + 2;
WHERE AnnoNascita < 1980;

ALTER TABLE Statistica
ADD Peso int;

ALTER TABLE Statistica
CHANGE Peso Peso float;

UPDATE Statistica
SET Peso = Altezza / 10 * 5
