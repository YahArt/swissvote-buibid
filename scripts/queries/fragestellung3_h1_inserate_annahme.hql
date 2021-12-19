-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.fragestellung3_h1_inserate_annahme_resultat;
CREATE TABLE buibid.fragestellung3_h1_inserate_annahme_resultat(datum TIMESTAMP, titel_kurz_d STRING, inserate_ja INT, inserate_nein INT, annahme_ja INT, annahme_nein) COMMENT 'Es gibt einen Zusammenhang zwischen dem Ja-Anteil der Abstimmungsresultate und der Anzahl des Ja-Anteils an Inseraten in Printmedien.';

INSERT INTO TABLE buibid.fragestellung3_h1_inserate_annahme_resultat SELECT * FROM buibid.inserate_annahme;

-- SELECT CORR(inserate_ja, annahme_ja) FROM buibid.fragestellung3_h1_inserate_annahme_resultat;
-- SELECT CORR(inserate_nein, annahme_nein) FROM buibid.fragestellung3_h1_inserate_annahme_resultat;