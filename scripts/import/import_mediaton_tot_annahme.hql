-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.mediaton_tot_annahme;
CREATE TABLE buibid.mediaton_tot_annahme(datum TIMESTAMP, titel_kurz_d STRING, mediaton_tot INT, annahme INT) COMMENT 'Die Schweizer Bevölkerung ist ablehnend gegenüber einer Initiative/Referendum, wenn die Medienberichterstattung mehrheitlich ablehnend ist' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_mediaton_tot_annahme.csv' OVERWRITE INTO TABLE buibid.mediaton_tot_annahme;

