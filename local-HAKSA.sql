CREATE TABLE 학과(
번호 NUMBER NOT NULL PRIMARY KEY,
이름 NVARCHAR2(10) NOT NULL
);

CREATE TABLE 교수(
번호 NUMBER NOT NULL PRIMARY KEY,
이름 NVARCHAR2(10) NOT NULL,
학과번호 NUMBER NOT NULL,
CONSTRAINT FK_학과번호 FOREIGN KEY(학과번호)
REFERENCES 학과(번호) ON DELETE CASCADE
);

--------------3

CREATE TABLE 학생(
번호 NUMBER NOT NULL PRIMARY KEY,
이름 NVARCHAR2(10) NOT NULL,
주소 NVARCHAR2(50),
학년 NUMBER,
키 NUMBER,
몸무게 NUMBER,
상태 NVARCHAR2(4),
입력일자 DATE,
학과번호 NUMBER NOT NULL,
CONSTRAINT FK_학과번호_학생 FOREIGN KEY(학과번호)
REFERENCES 학과(번호) ON DELETE CASCADE
);


------------------4
CREATE TABLE 과목(
번호 NUMBER NOT NULL PRIMARY KEY,
이름 NVARCHAR2(10) NOT NULL,
학점 NUMBER,
교수번호 NUMBER NOT NULL,
CONSTRAINT FK_교수번호 FOREIGN KEY(교수번호)
REFERENCES 교수(번호) ON DELETE CASCADE
);

CREATE TABLE 수강내역(
학생번호 NUMBER NOT NULL,
과목번호 NUMBER NOT NULL,
점수 NUMBER(4,1),
등급 NVARCHAR2(1),
CONSTRAINT PK_수강내역 PRIMARY KEY(학생번호,과목번호),
CONSTRAINT FK_학생번호 FOREIGN KEY(학생번호)
REFERENCES 학생(번호) ON DELETE CASCADE,
CONSTRAINT FK_과목번호 FOREIGN KEY(과목번호)
REFERENCES 과목(번호) ON DELETE CASCADE
);


-----------------5
 
INSERT INTO 학과 VALUES(1,'소프트웨어공학과');
INSERT INTO 학과 VALUES(2,'컴퓨터공학과');
INSERT INTO 학과 VALUES(3,'경영정보학과');
INSERT INTO 학과 VALUES(4,'경영학과');
INSERT INTO 학과 VALUES(5,'연극영화과');
INSERT INTO 학과 VALUES(6,'철학과');


INSERT INTO 교수 VALUES(1,'이해진',1);
INSERT INTO 교수 VALUES(2,'김정주',1);
INSERT INTO 교수 VALUES(3,'김이숙',1);
INSERT INTO 교수 VALUES(4,'이석호',2);
INSERT INTO 교수 VALUES(5,'김사부',3);
INSERT INTO 교수 VALUES(6,'장미희',5);
INSERT INTO 교수 VALUES(7,'백남영',5);
INSERT INTO 교수 VALUES(8,'김현이',5);
INSERT INTO 교수 VALUES(9,'이사부',5);

------------------------------6

INSERT INTO 과목 VALUES(1,'데이터베이스관리',3,3);
INSERT INTO 과목 VALUES(2,'데이터베이스프로그래밍',3,3);
INSERT INTO 과목 VALUES(3,'SQL활용',3,4);
INSERT INTO 과목 VALUES(4,'데이터베이스',4,5);
INSERT INTO 과목 VALUES(5,'인터넷마케팅',3,5);
INSERT INTO 과목 VALUES(6,'연기실습',2,7);
INSERT INTO 과목 VALUES(7,'영화제작실습',2,8);
INSERT INTO 과목 VALUES(8,'영화마케팅',1,9);

ALTER TABLE 과목 MODIFY 이름 NVARCHAR2(20);

------------------------------7

INSERT INTO 학생 VALUES(1,'김이향','인천 남동구',4,166,56,'재학','2005-03-01',5);
INSERT INTO 학생 VALUES(6,'박지은','서울 양천구',2,183,65,'재학','2015-02-14',3);
INSERT INTO 학생 VALUES(7,'안칠현','서울 금천구',1,178,65,'재학','2016-02-19',1);
INSERT INTO 학생 VALUES(8,'김태희','서울 구로구',1,165,45,'재학','2016-02-19',3);
INSERT INTO 학생 VALUES(9,'채영','서울 구로구',1,172,47,'재학','2016-02-19',2);
INSERT INTO 학생 VALUES(11,'영란','서울 강남구',1,162,43,'재학','2016-02-19',5);
INSERT INTO 학생 VALUES(12,'윤호','서울 감남구',1,184,66,'휴학','2016-08-10',1);
INSERT INTO 학생 VALUES(13,'보아','서울 구로구',1,162,45,'재학','2016-02-19',1);
INSERT INTO 학생 VALUES(14,'문근영','서울 강남구',1,165,45,'재학','2016-02-19',3);
INSERT INTO 학생 VALUES(3,'이세영','서울 구로구',4,NULL,NULL,'재학','2013-03-01',4);
INSERT INTO 학생 VALUES(4,'문주원','경기 부천시',3,NULL,NULL,'재학','2014-02-13',3);
INSERT INTO 학생 VALUES(5,'성춘향','서울 영등포구',3,NULL,NULL,'재학','2014-02-13',5);
INSERT INTO 학생 VALUES(10,'박수애',NULL,1,168,46,'재학','2016-02-19',2);
INSERT INTO 학생 VALUES(2,'박보검','인천 부평구',4,168,NULL,'재학','2010-03-01',6);


----------------------------------8

INSERT INTO 수강내역 VALUES (7,1,85,'B');
INSERT INTO 수강내역 VALUES (12,1,50,'F');
INSERT INTO 수강내역 VALUES (13,1,90,'A');
INSERT INTO 수강내역 VALUES (7,2,80,'B');
INSERT INTO 수강내역 VALUES (13,2,95,'A');
INSERT INTO 수강내역 VALUES (9,3,90,'A');
INSERT INTO 수강내역 VALUES (10,3,70,'C');
INSERT INTO 수강내역 VALUES (4,4,90,'A');
INSERT INTO 수강내역 VALUES (6,4,55,'F');
INSERT INTO 수강내역 VALUES (8,4,85,'B');
INSERT INTO 수강내역 VALUES (14,4,95,'A');
INSERT INTO 수강내역 VALUES (4,5,70,'C');

INSERT INTO 수강내역 VALUES (6,5,95,'A');
INSERT INTO 수강내역 VALUES (8,5,90,'A');
INSERT INTO 수강내역 VALUES (14,5,95,'A');
INSERT INTO 수강내역 VALUES (6,8,90,'A');
INSERT INTO 수강내역 VALUES (8,8,80,'B');
INSERT INTO 수강내역 VALUES (14,8,90,'A');
INSERT INTO 수강내역 VALUES (1,6,85,'B');
INSERT INTO 수강내역 VALUES (5,6,80,'B');
INSERT INTO 수강내역 VALUES (11,6,78.5,'C');
INSERT INTO 수강내역 VALUES (1,7,95,'A');
INSERT INTO 수강내역 VALUES (5,7,85,'B');
INSERT INTO 수강내역 VALUES (1,8,100,'A');



-----------------------------9
SELECT * FROM 학생;

-------------------------10
SELECT 이름,학년,주소 FROM 학생;

---------------------------11
SELECT 이름 AS 성명,
주소 AS "현재 주소지"
FROM 학생;

-----------------------------12

SELECT DISTINCT 학년 FROM 학생;

-------------------------13
SELECT * FROM 학생
WHERE 번호=1;


---------------------------------14
SELECT * FROM 학생
WHERE 키 <165;



----------------------------------15

SELECT 이름,학년,키,몸무게 FROM 학생
WHERE 키>170 AND 학년=1;



------------------------------------------16

SELECT 이름, 학년, 키, 몸무게 FROM 학생
WHERE 학년=1 OR 키>=170;


--------------------------------------17

SELECT 이름,주소,키,몸무게 FROM 학생
WHERE 몸무게 BETWEEN 45 AND 50;


-----------------------------18

SELECT 이름, 주소,키,몸무게 FROM 학생
WHERE 몸무게 >=45 AND 몸무게 <=50;

----------------------------19

SELECT 번호,이름,학년 FROM 학생
WHERE 학년 IN(2,3);

------------------------------------20

SELECT 번호,이름,학년 FROM 학생
WHERE 학년=2 OR 학년=3;


------------------------------21

SELECT * FROM 학생
WHERE 이름 LIKE '%박%';

------------------------22


SELECT * FROM 학생
WHERE (이름 LIKE '%김%') OR (이름 LIKE '%이%')OR (이름 LIKE '%박%');
---------------------------------23

SELECT * FROM 학생
WHERE (이름 LIKE '%김%') 
UNION
SELECT * FROM 학생
WHERE(이름 LIKE '%이%')
UNION
SELECT * FROM 학생
WHERE (이름 LIKE '%박%');


----------------------------24

SELECT 이름,학년,주소 FROM 학생
WHERE 주소 IS NULL;

---------------------------------------25

SELECT 이름,학년,몸무게 FROM 학생
WHERE 몸무게 IS NOT NULL;

----------------------------26

SELECT * FROM 학생
ORDER BY 이름 ASC;

-------------------------------27

SELECT 이름, 주소, 키 FROM 학생
WHERE 키 IS NOT NULL
ORDER BY 키 DESC;

------------------------------28

SELECT 이름,학년,주소,몸무게 FROM 학생
WHERE 몸무게 IS NOT NULL AND 학년=1
ORDER BY 몸무게 ASC;

---------------------------------29

SELECT 이름,학년,키,몸무게 FROM 학생
WHERE 학년=1 
ORDER BY 키 DESC, 몸무게 ASC;

----------------------------30

--이름을 가나다 순으로 정렬한 것입니다.

--------------------------------31

SELECT 이름,키,몸무게 FROM 학생 
WHERE 학년 =(SELECT 학년 FROM 학생 WHERE 이름='문주원');

------------------------------------32
SELECT * FROM 수강내역;
SELECT * FROM 학생;
SELECT * FROM 학과;
SELECT * FROM 교수;
SELECT * FROM 과목;

SELECT 이름, 학년, 키 FROM 학생
WHERE 키<(SELECT AVG(키)FROM 학생 WHERE 학과번호=1)
ORDER BY 학년 DESC;


---------------------------33

SELECT 이름, 학년, 키 FROM 학생
WHERE 학년 =(SELECT 학년 FROM 학생 WHERE 이름='김태희')
AND 키 >(SELECT 키 FROM 학생 WHERE 이름='김태희');


-------------------------34

SELECT 번호, 이름, 키 FROM 학생
WHERE 키=165;


------------------------35
SELECT COUNT(학생.이름) AS 학생수 FROM 학생
WHERE 학년 IS NOT NULL;

-------------------------------------36

SELECT COUNT(학생.번호) AS "몸무게 정보 있는수" FROM 학생
WHERE 이름 LIKE  '박%' AND 몸무게 IS NOT NULL;

--------------------------37
SELECT AVG(점수) AS 평균점수 FROM 수강내역
WHERE 과목번호=1;

--------------------38

SELECT 과목번호, AVG(점수) AS 과목평균점수 FROM 수강내역
GROUP BY 과목번호
ORDER BY 과목번호;

---------------39

SELECT 학과번호, 학년, COUNT(학생.번호) AS 인원수 , AVG(키) AS 평균키 FROM 학생
GROUP BY (학과번호,학년)
ORDER BY 학년;

-------------------40



SELECT 과목번호 , COUNT(학생번호) AS 누적학생수, AVG(점수) AS 과목평균점수
FROM 수강내역
GROUP BY 과목번호
HAVING COUNT(과목번호)>=4;

-------------------------------41

SELECT 과목번호 , COUNT(학생번호) AS 누적학생수, AVG(점수) AS 과목평균점수
FROM 수강내역
GROUP BY 과목번호
HAVING COUNT(과목번호)>=4
ORDER BY 과목평균점수 DESC;

--------------------42



SELECT 학생.번호, 학생.이름 , 학과.이름 AS 이름 FROM 학생
JOIN 학과 
ON 학과.번호 = 학생.학과번호
ORDER BY 학생.번호;

------------------------43

SELECT 교수.번호, 교수.이름, 학과.이름 AS 이름 FROM 교수
JOIN 학과
ON 교수.학과번호 = 학과.번호
ORDER BY 교수.번호;

------------------------------44

SELECT 학생.번호, 학생.이름, 학과.이름 AS 이름 FROM 학생
JOIN 학과
ON 학과.번호=학생.학과번호
WHERE 학생.이름='김이향';

-------------------------------45

SELECT 학생.학과번호, 학생.이름, 학생.키 ,학과.이름 AS 이름 FROM 학생
JOIN 학과
ON 학과.번호=학생.학과번호
WHERE 학생.키 >=180;

------------46

SELECT 학과.이름 AS 이름, 교수.이름 AS 이름, 과목.이름 AS 이름 FROM 학과
JOIN 교수
ON 학과.번호=교수.학과번호
JOIN 과목
ON 교수.번호=과목.교수번호
ORDER BY 교수.이름;

--------------------------------47

SELECT 학과.이름 AS 이름,과목.이름 AS 이름 FROM 학과
JOIN 교수
ON 학과.번호=교수.학과번호
JOIN 과목
ON 교수.번호=과목.교수번호
ORDER BY 학과.이름;

















