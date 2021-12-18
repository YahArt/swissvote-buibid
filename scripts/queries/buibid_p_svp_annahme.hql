-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.p_svp_annahme_resultat;
CREATE TABLE buibid.p_svp_annahme_resultat(datum TIMESTAMP, titel_kurz_d STRING, p_svp INT, annahme INT, ungleichheit INT) COMMENT 'Die Schweizer Bevölkerung stimmt über die Jahre ungleicher mit den Parteiparolen der SVP ab.';

-- Alle Einträge bei denen entweder mit Ja oder mit Nein abgestimmt wurden herausfiltern
-- Anschliessend berechnetes Feld 'ungleichheit' befüllen, 0 = Übereinstimmung, 1 = Nicht übereingestimmt
INSERT INTO TABLE buibid.p_svp_annahme_resultat SELECT datum, titel_kurz_d, p_svp, annahme, ABS(p_svp - annahme) FROM buibid.p_svp_annahme WHERE (p_svp = 1 or p_svp  = 0) and (annahme = 1 or annahme = 0);