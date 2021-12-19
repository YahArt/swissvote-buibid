-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.import_p_svp_p_sps_annahme;
CREATE TABLE buibid.import_p_svp_p_sps_annahme(datum TIMESTAMP, titel_kurz_d STRING, p_svp INT, p_sps INT, annahme INT, ungleichheit_svp INT, ungleichheit_sps INT) COMMENT 'Die Schweizer Bevölkerung stimmt über die Jahre ungleicher mit den Parteiparolen der SVP/SP ab.' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_p_svp_p_sps_annahme.csv' OVERWRITE INTO TABLE buibid.import_p_svp_p_sps_annahme;

