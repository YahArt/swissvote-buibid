-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.fragestellung3_h1_inserate_annahme;
CREATE TABLE buibid.fragestellung3_h1_inserate_annahme(datum TIMESTAMP, titel_kurz_d STRING, inserate_ja INT, inserate_nein INT, annahme INT) COMMENT 'Es gibt einen Zusammenhang zwischen dem Ja-Anteil der Abstimmungsresultate und der Anzahl des Ja-Anteils an Inseraten in Printmedien.';

INSERT INTO TABLE buibid.fragestellung3_h1_inserate_annahme SELECT * FROM buibid.import_inserate_annahme;

SELECT CORR(inserate_ja, annahme) FROM buibid.fragestellung3_h1_inserate_annahme WHERE annahme = 1;

SELECT CORR(inserate_nein, annahme) FROM buibid.fragestellung3_h1_inserate_annahme WHERE annahme = 0; 