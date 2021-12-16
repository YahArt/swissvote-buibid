DROP TABLE IF EXISTS buibid.br_pos_annahme_result;

CREATE TABLE buibid.br_pos_annahme_result(gleich_abgestimmt INT, ungleich_abgestimmt INT) COMMENT 'Die Schweizer Bevölkerung stimmt ungleicher wie der Bundesrat ab wie früher';


-- Herausfiltern aller relevanten Einträge mit 0 = Nein und 1 = Ja
-- Anschliessend wird der Row Count ermittelt, bei welchem die Einträge übereinstimmen -> Bundesrat hat gleich abgestimmt wie das Volk


-- Query um die Abstimmungen mit Deckungsgleichen Resultaten zu bekommen
SELECT COUNT(*) FROM br_pos_annahme WHERE (br_pos = 1 or br_pos  = 0) and (annahme = 1 or annahme = 0) and br_pos = annahme; -- 397

-- Query um die Abstimmungen mit unterschiedlichen Resultaten zu bekommen
SELECT COUNT(*) FROM br_pos_annahme WHERE (br_pos = 1 or br_pos  = 0) and (annahme = 1 or annahme = 0) and br_pos != annahme; -- 127

INSERT INTO TABLE buibid.br_pos_annahme_result VALUES(397, 127);