create table email_list
(
    id int primary key,
    email char (50)
);

INSERT INTO email_list 
VALUES
    (1, 'abc@gmail.com'),
    (2, 'def@gmail.com'),
    (3, 'abc@yahoo.com'),
    (4, 'abc@gmail.com');

--QUERY UNTUK OUTPUT 
SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(*) > 1;