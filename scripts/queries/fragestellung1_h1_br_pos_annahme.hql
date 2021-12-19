DROP TABLE IF EXISTS buibid.fragestellung1_h1_br_pos_annahme;

CREATE TABLE buibid.fragestellung1_h1_br_pos_annahme(datum TIMESTAMP, titel_kurz_d STRING, br_pos INT, annahme INT, br_pos_annahme_ungleichheit INT) COMMENT 'Die Schweizer Bevölkerung stimmt ungleicher wie der Bundesrat ab wie früher';

-- Berechnetes Feld 'br_pos_annahme_ungleichheit' befüllen
INSERT INTO TABLE buibid.fragestellung1_h1_br_pos_annahme SELECT datum, titel_kurz_d, br_pos, annahme, ABS(br_pos - annahme) FROM import_br_pos_annahme;