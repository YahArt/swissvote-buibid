-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.br_pos_annahme;
CREATE TABLE buibid.br_pos_annahme(datum DATE, titel_kurz_d STRING, br_pos INT, annahme INT) COMMENT 'Die Schweizer Bevölkerung stimmt ungleicher wie der Bundesrat ab wie früher' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_br_pos_annahme.csv' OVERWRITE INTO TABLE buibid.br_pos_annahme;

