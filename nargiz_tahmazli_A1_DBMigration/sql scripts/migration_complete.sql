ALTER TABLE STUDENTS ADD COLUMN STUDENT_ID INTEGER;

UPDATE STUDENTS SET STUDENT_ID = ST_ID;

ALTER TABLE STUDENTS DROP COLUMN ST_ID;

ALTER TABLE STUDENTS 
ALTER COLUMN ST_NAME TYPE VARCHAR(30);

ALTER TABLE STUDENTS  
ALTER COLUMN ST_LAST TYPE VARCHAR(30);

ALTER TABLE INTERESTS 
ADD COLUMN INTERESTS TEXT[15];

UPDATE INTERESTS SET INTERESTS = ARRAY['Tennis,Literature,Math,Chemistry'] WHERE STUDENT_ID = '1';

UPDATE INTERESTS SET INTERESTS = ARRAY['Tennis,Football'] WHERE STUDENT_ID = '2';

UPDATE INTERESTS SET INTERESTS = ARRAY['Math,Music,Chess'] WHERE STUDENT_ID = '3';

DELETE FROM INTERESTS WHERE INTEREST NOT IN(SELECT INTEREST FROM INTERESTS WHERE INTEREST = 'Tennis' OR INTEREST = 'Math');

DELETE FROM INTERESTS WHERE STUDENT_ID = '1' AND INTEREST = 'Math';  

ALTER TABLE INTERESTS DROP COLUMN INTEREST;

SELECT * FROM STUDENTS;

\d STUDENTS

SELECT * FROM INTERESTS;

