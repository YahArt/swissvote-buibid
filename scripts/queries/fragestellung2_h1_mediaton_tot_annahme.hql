DROP TABLE IF EXISTS buibid.fragestellung2_h1_mediaton_tot_annahme;
CREATE TABLE buibid.fragestellung2_h1_mediaton_tot_annahme_resultat(datum TIMESTAMP,titel_kurz_d STRING, mediaton_tot INT, annahme INT, gleichheit INT) COMMENT 'Die Schweizer Bevölkerung ist ablehnend gegenüber einer Initiative/Referendum, wenn die Medienberichterstattung mehrheitlich ablehnend ist';

INSERT INTO TABLE buibid.fragestellung2_h1_mediaton_tot_annahme_resultat SELECT datum, titel_kurz_d, mediaton_tot, annahme, mediaton_tot * annahme FROM buibid.import_mediaton_tot_annahme;
