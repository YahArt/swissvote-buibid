-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.import_br_pos_annahme;
CREATE TABLE buibid.import_br_pos_annahme(datum TIMESTAMP, titel_kurz_d STRING, br_pos INT, annahme INT) COMMENT 'Die Schweizer Bevölkerung stimmt ungleicher wie der Bundesrat ab wie früher' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_br_pos_annahme.csv' OVERWRITE INTO TABLE buibid.import_br_pos_annahme;

