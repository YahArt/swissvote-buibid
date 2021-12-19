-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.fragestellung1_h2_p_svp_p_sps_annahme;
CREATE TABLE buibid.fragestellung1_h2_p_svp_p_sps_annahme(datum TIMESTAMP, titel_kurz_d STRING, p_svp INT, p_sps INT, annahme INT, p_svp_annahme_ungleichheit INT, p_sps_annahme_ungleichheit INT) COMMENT 'Die Schweizer Bevölkerung stimmt über die Jahre ungleicher mit den Parteiparolen der SVP/SP ab.';

-- Alle Einträge bei denen entweder mit Ja oder mit Nein abgestimmt wurden herausfiltern
-- Anschliessend berechnetes Feld 'ungleichheit' befüllen, 0 = Übereinstimmung, 1 = Nicht übereingestimmt
INSERT INTO TABLE buibid.fragestellung1_h2_p_svp_p_sps_annahme SELECT datum, titel_kurz_d, p_svp, p_sps, annahme, ABS(p_svp - annahme), ABS(p_sps - annahme) FROM buibid.import_p_svp_annahme;