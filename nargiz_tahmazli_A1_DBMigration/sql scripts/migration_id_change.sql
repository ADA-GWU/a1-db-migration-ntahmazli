ALTER TABLE STUDENTS ADD COLUMN STUDENT_ID INTEGER;

UPDATE STUDENTS SET STUDENT_ID = ST_ID;

ALTER TABLE STUDENTS DROP COLUMN ST_ID;

SELECT * FROM STUDENTS;