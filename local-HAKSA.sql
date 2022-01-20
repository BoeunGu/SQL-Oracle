CREATE TABLE �а�(
��ȣ NUMBER NOT NULL PRIMARY KEY,
�̸� NVARCHAR2(10) NOT NULL
);

CREATE TABLE ����(
��ȣ NUMBER NOT NULL PRIMARY KEY,
�̸� NVARCHAR2(10) NOT NULL,
�а���ȣ NUMBER NOT NULL,
CONSTRAINT FK_�а���ȣ FOREIGN KEY(�а���ȣ)
REFERENCES �а�(��ȣ) ON DELETE CASCADE
);

--------------3

CREATE TABLE �л�(
��ȣ NUMBER NOT NULL PRIMARY KEY,
�̸� NVARCHAR2(10) NOT NULL,
�ּ� NVARCHAR2(50),
�г� NUMBER,
Ű NUMBER,
������ NUMBER,
���� NVARCHAR2(4),
�Է����� DATE,
�а���ȣ NUMBER NOT NULL,
CONSTRAINT FK_�а���ȣ_�л� FOREIGN KEY(�а���ȣ)
REFERENCES �а�(��ȣ) ON DELETE CASCADE
);


------------------4
CREATE TABLE ����(
��ȣ NUMBER NOT NULL PRIMARY KEY,
�̸� NVARCHAR2(10) NOT NULL,
���� NUMBER,
������ȣ NUMBER NOT NULL,
CONSTRAINT FK_������ȣ FOREIGN KEY(������ȣ)
REFERENCES ����(��ȣ) ON DELETE CASCADE
);

CREATE TABLE ��������(
�л���ȣ NUMBER NOT NULL,
�����ȣ NUMBER NOT NULL,
���� NUMBER(4,1),
��� NVARCHAR2(1),
CONSTRAINT PK_�������� PRIMARY KEY(�л���ȣ,�����ȣ),
CONSTRAINT FK_�л���ȣ FOREIGN KEY(�л���ȣ)
REFERENCES �л�(��ȣ) ON DELETE CASCADE,
CONSTRAINT FK_�����ȣ FOREIGN KEY(�����ȣ)
REFERENCES ����(��ȣ) ON DELETE CASCADE
);


-----------------5
 
INSERT INTO �а� VALUES(1,'����Ʈ������а�');
INSERT INTO �а� VALUES(2,'��ǻ�Ͱ��а�');
INSERT INTO �а� VALUES(3,'�濵�����а�');
INSERT INTO �а� VALUES(4,'�濵�а�');
INSERT INTO �а� VALUES(5,'���ؿ�ȭ��');
INSERT INTO �а� VALUES(6,'ö�а�');


INSERT INTO ���� VALUES(1,'������',1);
INSERT INTO ���� VALUES(2,'������',1);
INSERT INTO ���� VALUES(3,'���̼�',1);
INSERT INTO ���� VALUES(4,'�̼�ȣ',2);
INSERT INTO ���� VALUES(5,'����',3);
INSERT INTO ���� VALUES(6,'�����',5);
INSERT INTO ���� VALUES(7,'�鳲��',5);
INSERT INTO ���� VALUES(8,'������',5);
INSERT INTO ���� VALUES(9,'�̻��',5);

------------------------------6

INSERT INTO ���� VALUES(1,'�����ͺ��̽�����',3,3);
INSERT INTO ���� VALUES(2,'�����ͺ��̽����α׷���',3,3);
INSERT INTO ���� VALUES(3,'SQLȰ��',3,4);
INSERT INTO ���� VALUES(4,'�����ͺ��̽�',4,5);
INSERT INTO ���� VALUES(5,'���ͳݸ�����',3,5);
INSERT INTO ���� VALUES(6,'����ǽ�',2,7);
INSERT INTO ���� VALUES(7,'��ȭ���۽ǽ�',2,8);
INSERT INTO ���� VALUES(8,'��ȭ������',1,9);

ALTER TABLE ���� MODIFY �̸� NVARCHAR2(20);

------------------------------7

INSERT INTO �л� VALUES(1,'������','��õ ������',4,166,56,'����','2005-03-01',5);
INSERT INTO �л� VALUES(6,'������','���� ��õ��',2,183,65,'����','2015-02-14',3);
INSERT INTO �л� VALUES(7,'��ĥ��','���� ��õ��',1,178,65,'����','2016-02-19',1);
INSERT INTO �л� VALUES(8,'������','���� ���α�',1,165,45,'����','2016-02-19',3);
INSERT INTO �л� VALUES(9,'ä��','���� ���α�',1,172,47,'����','2016-02-19',2);
INSERT INTO �л� VALUES(11,'����','���� ������',1,162,43,'����','2016-02-19',5);
INSERT INTO �л� VALUES(12,'��ȣ','���� ������',1,184,66,'����','2016-08-10',1);
INSERT INTO �л� VALUES(13,'����','���� ���α�',1,162,45,'����','2016-02-19',1);
INSERT INTO �л� VALUES(14,'���ٿ�','���� ������',1,165,45,'����','2016-02-19',3);
INSERT INTO �л� VALUES(3,'�̼���','���� ���α�',4,NULL,NULL,'����','2013-03-01',4);
INSERT INTO �л� VALUES(4,'���ֿ�','��� ��õ��',3,NULL,NULL,'����','2014-02-13',3);
INSERT INTO �л� VALUES(5,'������','���� ��������',3,NULL,NULL,'����','2014-02-13',5);
INSERT INTO �л� VALUES(10,'�ڼ���',NULL,1,168,46,'����','2016-02-19',2);
INSERT INTO �л� VALUES(2,'�ں���','��õ ����',4,168,NULL,'����','2010-03-01',6);


----------------------------------8

INSERT INTO �������� VALUES (7,1,85,'B');
INSERT INTO �������� VALUES (12,1,50,'F');
INSERT INTO �������� VALUES (13,1,90,'A');
INSERT INTO �������� VALUES (7,2,80,'B');
INSERT INTO �������� VALUES (13,2,95,'A');
INSERT INTO �������� VALUES (9,3,90,'A');
INSERT INTO �������� VALUES (10,3,70,'C');
INSERT INTO �������� VALUES (4,4,90,'A');
INSERT INTO �������� VALUES (6,4,55,'F');
INSERT INTO �������� VALUES (8,4,85,'B');
INSERT INTO �������� VALUES (14,4,95,'A');
INSERT INTO �������� VALUES (4,5,70,'C');

INSERT INTO �������� VALUES (6,5,95,'A');
INSERT INTO �������� VALUES (8,5,90,'A');
INSERT INTO �������� VALUES (14,5,95,'A');
INSERT INTO �������� VALUES (6,8,90,'A');
INSERT INTO �������� VALUES (8,8,80,'B');
INSERT INTO �������� VALUES (14,8,90,'A');
INSERT INTO �������� VALUES (1,6,85,'B');
INSERT INTO �������� VALUES (5,6,80,'B');
INSERT INTO �������� VALUES (11,6,78.5,'C');
INSERT INTO �������� VALUES (1,7,95,'A');
INSERT INTO �������� VALUES (5,7,85,'B');
INSERT INTO �������� VALUES (1,8,100,'A');



-----------------------------9
SELECT * FROM �л�;

-------------------------10
SELECT �̸�,�г�,�ּ� FROM �л�;

---------------------------11
SELECT �̸� AS ����,
�ּ� AS "���� �ּ���"
FROM �л�;

-----------------------------12

SELECT DISTINCT �г� FROM �л�;

-------------------------13
SELECT * FROM �л�
WHERE ��ȣ=1;


---------------------------------14
SELECT * FROM �л�
WHERE Ű <165;



----------------------------------15

SELECT �̸�,�г�,Ű,������ FROM �л�
WHERE Ű>170 AND �г�=1;



------------------------------------------16

SELECT �̸�, �г�, Ű, ������ FROM �л�
WHERE �г�=1 OR Ű>=170;


--------------------------------------17

SELECT �̸�,�ּ�,Ű,������ FROM �л�
WHERE ������ BETWEEN 45 AND 50;


-----------------------------18

SELECT �̸�, �ּ�,Ű,������ FROM �л�
WHERE ������ >=45 AND ������ <=50;

----------------------------19

SELECT ��ȣ,�̸�,�г� FROM �л�
WHERE �г� IN(2,3);

------------------------------------20

SELECT ��ȣ,�̸�,�г� FROM �л�
WHERE �г�=2 OR �г�=3;


------------------------------21

SELECT * FROM �л�
WHERE �̸� LIKE '%��%';

------------------------22


SELECT * FROM �л�
WHERE (�̸� LIKE '%��%') OR (�̸� LIKE '%��%')OR (�̸� LIKE '%��%');
---------------------------------23

SELECT * FROM �л�
WHERE (�̸� LIKE '%��%') 
UNION
SELECT * FROM �л�
WHERE(�̸� LIKE '%��%')
UNION
SELECT * FROM �л�
WHERE (�̸� LIKE '%��%');


----------------------------24

SELECT �̸�,�г�,�ּ� FROM �л�
WHERE �ּ� IS NULL;

---------------------------------------25

SELECT �̸�,�г�,������ FROM �л�
WHERE ������ IS NOT NULL;

----------------------------26

SELECT * FROM �л�
ORDER BY �̸� ASC;

-------------------------------27

SELECT �̸�, �ּ�, Ű FROM �л�
WHERE Ű IS NOT NULL
ORDER BY Ű DESC;

------------------------------28

SELECT �̸�,�г�,�ּ�,������ FROM �л�
WHERE ������ IS NOT NULL AND �г�=1
ORDER BY ������ ASC;

---------------------------------29

SELECT �̸�,�г�,Ű,������ FROM �л�
WHERE �г�=1 
ORDER BY Ű DESC, ������ ASC;

----------------------------30

--�̸��� ������ ������ ������ ���Դϴ�.

--------------------------------31

SELECT �̸�,Ű,������ FROM �л� 
WHERE �г� =(SELECT �г� FROM �л� WHERE �̸�='���ֿ�');

------------------------------------32
SELECT * FROM ��������;
SELECT * FROM �л�;
SELECT * FROM �а�;
SELECT * FROM ����;
SELECT * FROM ����;

SELECT �̸�, �г�, Ű FROM �л�
WHERE Ű<(SELECT AVG(Ű)FROM �л� WHERE �а���ȣ=1)
ORDER BY �г� DESC;


---------------------------33

SELECT �̸�, �г�, Ű FROM �л�
WHERE �г� =(SELECT �г� FROM �л� WHERE �̸�='������')
AND Ű >(SELECT Ű FROM �л� WHERE �̸�='������');


-------------------------34

SELECT ��ȣ, �̸�, Ű FROM �л�
WHERE Ű=165;


------------------------35
SELECT COUNT(�л�.�̸�) AS �л��� FROM �л�
WHERE �г� IS NOT NULL;

-------------------------------------36

SELECT COUNT(�л�.��ȣ) AS "������ ���� �ִ¼�" FROM �л�
WHERE �̸� LIKE  '��%' AND ������ IS NOT NULL;

--------------------------37
SELECT AVG(����) AS ������� FROM ��������
WHERE �����ȣ=1;

--------------------38

SELECT �����ȣ, AVG(����) AS ����������� FROM ��������
GROUP BY �����ȣ
ORDER BY �����ȣ;

---------------39

SELECT �а���ȣ, �г�, COUNT(�л�.��ȣ) AS �ο��� , AVG(Ű) AS ���Ű FROM �л�
GROUP BY (�а���ȣ,�г�)
ORDER BY �г�;

-------------------40



SELECT �����ȣ , COUNT(�л���ȣ) AS �����л���, AVG(����) AS �����������
FROM ��������
GROUP BY �����ȣ
HAVING COUNT(�����ȣ)>=4;

-------------------------------41

SELECT �����ȣ , COUNT(�л���ȣ) AS �����л���, AVG(����) AS �����������
FROM ��������
GROUP BY �����ȣ
HAVING COUNT(�����ȣ)>=4
ORDER BY ����������� DESC;

--------------------42



SELECT �л�.��ȣ, �л�.�̸� , �а�.�̸� AS �̸� FROM �л�
JOIN �а� 
ON �а�.��ȣ = �л�.�а���ȣ
ORDER BY �л�.��ȣ;

------------------------43

SELECT ����.��ȣ, ����.�̸�, �а�.�̸� AS �̸� FROM ����
JOIN �а�
ON ����.�а���ȣ = �а�.��ȣ
ORDER BY ����.��ȣ;

------------------------------44

SELECT �л�.��ȣ, �л�.�̸�, �а�.�̸� AS �̸� FROM �л�
JOIN �а�
ON �а�.��ȣ=�л�.�а���ȣ
WHERE �л�.�̸�='������';

-------------------------------45

SELECT �л�.�а���ȣ, �л�.�̸�, �л�.Ű ,�а�.�̸� AS �̸� FROM �л�
JOIN �а�
ON �а�.��ȣ=�л�.�а���ȣ
WHERE �л�.Ű >=180;

------------46

SELECT �а�.�̸� AS �̸�, ����.�̸� AS �̸�, ����.�̸� AS �̸� FROM �а�
JOIN ����
ON �а�.��ȣ=����.�а���ȣ
JOIN ����
ON ����.��ȣ=����.������ȣ
ORDER BY ����.�̸�;

--------------------------------47

SELECT �а�.�̸� AS �̸�,����.�̸� AS �̸� FROM �а�
JOIN ����
ON �а�.��ȣ=����.�а���ȣ
JOIN ����
ON ����.��ȣ=����.������ȣ
ORDER BY �а�.�̸�;

















