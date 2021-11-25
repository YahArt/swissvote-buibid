-- Datenbank erstellen
CREATE DATABASE IF NOT EXISTS buibid;

-- Tabelle erstellen
DROP TABLE IF EXISTS buibid.p_svp_annahme;
CREATE TABLE buibid.p_svp_annahme(datum DATE, titel_kurz_d STRING, p_svp INT, annahme INT, ungleichheit_svp INT) COMMENT 'Die Schweizer Bevölkerung stimmt über die Jahre ungleicher mit den Parteiparolen der SVP ab.' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\,' LINES TERMINATED BY '\n' TBLPROPERTIES("skip.header.line.count"="1");

-- Import von CSV Datei
LOAD DATA LOCAL INPATH '/mnt/windows/buibid/buibid_p_svp_annahme.csv' OVERWRITE INTO TABLE buibid.p_svp_annahme;

