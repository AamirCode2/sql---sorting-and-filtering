CREATE TABLE IF NOT EXISTS com_active (

activity_num INTEGER PRIMARY KEY,

activity TEXT NOT NULL,

type TEXT NOT NULL,

total_people REAL NOT NULL
);

INSERT INTO com_active VALUES (1, 'Potluck', 'Socialising', 23);
INSERT INTO com_active VALUES (2, 'Trivia', 'Competition', 13);
INSERT INTO com_active VALUES (3, 'Basketball game', 'Competition', 15);
INSERT INTO com_active VALUES (4, 'Neighbourhood cleanup', 'Service', 19);
INSERT INTO com_active VALUES (5, 'Garden day', 'Service', 8);
INSERT INTO com_active VALUES (6, 'City meet-up', 'Socialising', 21);

SELECT * FROM com_active;

SELECT activity, total_people FROM com_active ORDER BY total_people ASC;

SELECT activity, total_people FROM com_active ORDER BY total_people DESC;

SELECT activity, type, total_people FROM com_active ORDER BY type ASC, total_people DESC;

SELECT activity, total_people FROM com_active ORDER BY total_people DESC LIMIT 3;

SELECT activity, total_people FROM com_active ORDER BY total_people asc LIMIT 5;

SELECT type, COUNT(*) AS activity_type_count FROM com_active GROUP BY type;

SELECT type, SUM(total_people) AS total_people, AVG(total_people) as avg_total_people FROM com_active GROUP BY type;

SELECT type, AVG(total_people) AS avg_total_people
FROM com_active
GROUP BY type
HAVING AVG(total_people) >= 8.5;