-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.inserate_ja_annahme;
CREATE TABLE buibid.inserate_ja_annahme(datum TIMESTAMP, titel_kurz_d STRING, inserate_ja INT, annahme INT) COMMENT 'Es gibt einen Zusammenhang zwischen dem Ja-Anteil der Abstimmungsresultate und der Anzahl des Ja-Anteils an Inseraten in Printmedien' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_inserate_ja_annahme.csv' OVERWRITE INTO TABLE buibid.inserate_ja_annahme;

