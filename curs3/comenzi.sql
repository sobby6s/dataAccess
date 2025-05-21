SELECT nume, prenume, c.titlu_curs FROM `profesor` AS p LEFT JOIN didactic AS d ON p.id = d.id_prof LEFT JOIN cursuri AS c ON d.id_curs = c.id_curs WHERE id=1;
SELECT * FROM `didactic` WHERE id_curs NOT IN (SELECT id_curs FROM didactic);   --- select in select/ subinterogare
SELECT * FROM `student` WHERE id NOT IN (SELECT id_student FROM note);
SELECT id_student, COUNT(id_student) AS nr FROM `note` GROUP BY id_student HAVING nr >=2;
SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `note` AS n RIGHT JOIN student AS s ON n.id_student = s.id GROUP BY id_student HAVING nr >=2;
SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `student` AS s Left JOIN note AS n ON n.id_student = s.id GROUP BY id_student HAVING nr >=2;
(SELECT nume, prenume FROM student WHERE prenume LIKE 'ion%') UNION
(SELECT nume, prenume FROM profesor WHERE prenume LIKE 'ion%');
(SELECT nume, prenume, (CASE WHEN id>20 THEN 'student' END) AS type FROM student WHERE prenume LIKE 'ion%') UNION (SELECT nume, prenume, (CASE WHEN id<=20 THEN 'profesor' END) AS type FROM profesor WHERE prenume LIKE 'ion%');
SELECT s.nume, s.prenume, FORMAT(avg(n.valoare),1) FROM student s LEFT JOIN note n ON s.id = n.id_student WHERE s.id = 101;
SELECT s.nume, s.prenume, FORMAT(avg(n.valoare),1) AS media_totala FROM student AS s LEFT JOIN note AS n ON s.id = n.id_student GROUP BY n.id_student;
