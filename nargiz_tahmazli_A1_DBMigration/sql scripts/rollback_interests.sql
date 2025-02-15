ALTER TABLE INTERESTS ADD COLUMN INTEREST VARCHAR(15);

INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES('1','Tennis'),('1', 'Literature'), ('1', 'Math'), ('2', 'Tennis'), ('3', 'Math'), ('3', 'Music'), ('2', 'Football'), ('1', 'Chemistry'), ('3', 'Chess');

DELETE FROM INTERESTS WHERE INTERESTS IN(SELECT INTERESTS FROM INTERESTS WHERE INTERESTS = ARRAY['Tennis,Literature,Math,Chemistry']);

DELETE FROM INTERESTS WHERE INTERESTS IN(SELECT INTERESTS FROM INTERESTS WHERE INTERESTS = ARRAY['Tennis,Football']);

DELETE FROM INTERESTS WHERE INTERESTS IN(SELECT INTERESTS FROM INTERESTS WHERE INTERESTS = ARRAY['Math,Music,Chess']);

ALTER TABLE INTERESTS DROP COLUMN INTERESTS;

SELECT * FROM INTERESTS;