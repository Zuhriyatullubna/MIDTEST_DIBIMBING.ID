-- create database
create database midtes;

-- create tables
CREATE TABLE input_table (
    id SERIAL PRIMARY KEY,
    num INTEGER
);

INSERT INTO input_table (num) VALUES (1);
INSERT INTO input_table (num) VALUES (1);
INSERT INTO input_table (num) VALUES (1);
INSERT INTO input_table (num) VALUES (2);
INSERT INTO input_table (num) VALUES (1);
INSERT INTO input_table (num) VALUES (2);
INSERT INTO input_table (num) VALUES (2);
INSERT INTO input_table (num) VALUES (1);

WITH consecutive_counts AS (
    SELECT
        num,
        id,
        LEAD(num) OVER (ORDER BY id) AS next_num,
        LAG(num) OVER (ORDER BY id) AS prev_num
    FROM input_table
)

SELECT DISTINCT num
FROM consecutive_counts
WHERE num = next_num AND num = prev_num
ORDER BY num;

