DROP TABLE IF EXISTS buibid.mediaton_tot_annahme_resultat;
CREATE TABLE buibid.mediaton_tot_annahme_resultat(angenommen INT, abgelehnt INT) COMMENT 'Die Schweizer Bevölkerung ist ablehnend gegenüber einer Initiative/Referendum, wenn die Medienberichterstattung mehrheitlich ablehnend ist';

-- Alle Resultate mit negativer Berichterstattung und bei denen das Volk die Wahl angenommen hat
SELECT COUNT(*) FROM buibid.mediaton_tot_annahme WHERE mediaton_tot < 0 and annahme = 1; -- 8

-- Korrelation ziwschen der Berichterstattung und der Annahme durch das Volk
SELECT CORR(mediaton_tot, annahme) FROM buibid.mediaton_tot_annahme; -- 0.667 -> starke Korrelation

-- Alle Resultate mit negativer Berichterstattung und bei denen das Volk die Wahl abgelehnt hat
SELECT COUNT(*) FROM buibid.mediaton_tot_annahme WHERE mediaton_tot < 0 and annahme = 0; -- 38

INSERT INTO TABLE buibid.mediaton_tot_annahme_resultat VALUES(8, 38);
