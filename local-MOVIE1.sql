CREATE TABLE ��ȭ (
��ȣ VARCHAR2(3) NOT NULL  PRIMARY KEY,
�̸� VARCHAR2(30) UNIQUE,
�������� NUMBER,
����� NUMBER,
������ NUMBER,
���� NUMBER(5,2)
);

CREATE TABLE ���(
��ȣ VARCHAR2(3) NOT NULL PRIMARY KEY,
�̸� VARCHAR2(30),
��� DATE,
Ű NUMBER,
������ NUMBER,
����� VARCHAR2(30)
);


CREATE TABLE �⿬(
��ȭ��ȣ VARCHAR2(3) NOT NULL,
����ȣ VARCHAR2(3) NOT NULL,
���� VARCHAR2(1),
�� VARCHAR(30),
CONSTRAINT PK_�⿬ PRIMARY KEY(��ȭ��ȣ, ����ȣ),
CONSTRAINT FK_��ȭ��ȣ FOREIGN KEY(��ȭ��ȣ)
REFERENCES ��ȭ(��ȣ) ON DELETE CASCADE,
CONSTRAINT FK_����ȣ FOREIGN KEY(����ȣ)
REFERENCES ���(��ȣ) ON DELETE CASCADE
);

---------3
INSERT INTO "��ȭ" VALUES('1','��',2014,135748398910,17613682,8.49);
INSERT INTO "��ȭ" VALUES('2','����',1999,NULL,5820000,8.79);
INSERT INTO "��ȭ" VALUES('3','����, ���� �� ����',2012,88900208769,12319542,9.23);
INSERT INTO "��ȭ" VALUES('4','���ϵ�',2012,93665568500,12983330,7.60);
INSERT INTO "��ȭ" VALUES('5','�������� �׳�',2001,NULL,1735692,9.29);
INSERT INTO "��ȭ" VALUES('6','��ȣ��',2013,82871759300,11374610,8.97);
INSERT INTO "��ȭ" VALUES('7','�о�',2007,NULL,1710364,7.76);
INSERT INTO "��ȭ" VALUES('8','�±ر� �ֳ�����',2004,NULL,11746135,9.15);
INSERT INTO "��ȭ" VALUES('9','�ʷϹ����',1997,NULL,NULL,8.79);
INSERT INTO "��ȭ" VALUES('10','���೪�� ħ��',1996,NULL,NULL,7.67);
INSERT INTO "��ȭ" VALUES('11','���� �� ����',2008,11211235000,1706576,7.80);
INSERT INTO "��ȭ" VALUES('12','������ ����:���� ��ȯ',2003,NULL,NULL,9.36);
INSERT INTO "��ȭ" VALUES('13','�׳�',2014,NULL,NULL,8.51);
INSERT INTO "��ȭ" VALUES('14','����',2013,NULL,NULL,7.96);

------4
INSERT INTO ��� VALUES('1','�ֹν�','1962-04-27',177,70,NULL);
INSERT INTO ��� VALUES('2','���·�','1970-11-29',NULL,NULL,NULL);
INSERT INTO ��� VALUES('4','�Ѽ���','1964-11-03',178,64,'�Ӹ���');
INSERT INTO ��� VALUES('5','�۰�ȣ','1967-01-17',180,80,NULL);
INSERT INTO ��� VALUES('6','�̺���',NULL,177,72,'�̹���');
INSERT INTO ��� VALUES('7','��ȿ��',NULL,172,48,NULL);
INSERT INTO ��� VALUES('8','������','1981-10-30',174,52,NULL);
INSERT INTO ��� VALUES('10','������','1970-09-05',170,50,NULL);
INSERT INTO ��� VALUES('12','������','1976-03-25',175,65,'�ּ���');
INSERT INTO ��� VALUES('15','������',NULL,165,NULL,'���ñ�');
INSERT INTO ��� VALUES('16','�嵿��',NULL,182,68,'��ҿ�');
INSERT INTO ��� VALUES('17','������','1967-01-16',169,51,'�ѻ�');
INSERT INTO ��� VALUES('18','����',NULL,168,46,NULL);
INSERT INTO ��� VALUES('19','������',NULL,NULL,NULL,NULL);


--------5

INSERT INTO �⿬ VALUES('1','1','1','�̼���'); 
INSERT INTO �⿬ VALUES('1','2','1','��������'); 
INSERT INTO �⿬ VALUES('2','4','1','���߿�'); 
INSERT INTO �⿬ VALUES('2','1','1','�ڹ���'); 
INSERT INTO �⿬ VALUES('2','5','1','�����'); 
INSERT INTO �⿬ VALUES('3','6','1','����/�ϼ�'); 
INSERT INTO �⿬ VALUES('3','2','1','���'); 
INSERT INTO �⿬ VALUES('3','7','1','����'); 
INSERT INTO �⿬ VALUES('4','10','1','�ս�'); 
INSERT INTO �⿬ VALUES('4','8','1','������'); 
INSERT INTO �⿬ VALUES('4','19','2','���忪'); 
INSERT INTO �⿬ VALUES('5','8','1','�׳�'); 
INSERT INTO �⿬ VALUES('5','12','1','�߿�'); 
INSERT INTO �⿬ VALUES('6','5','1','�ۿ켮'); 
INSERT INTO �⿬ VALUES('7','15','1','�ǾƳ� �п� ����, �̽ž�'); 
INSERT INTO �⿬ VALUES('7','5','1','ī���� ����, ������'); 
INSERT INTO �⿬ VALUES('8','16','1','������'); 
INSERT INTO �⿬ VALUES('9','4','1','����'); 
INSERT INTO �⿬ VALUES('9','17','1','�̾�'); 
INSERT INTO �⿬ VALUES('10','4','1','����'); 
INSERT INTO �⿬ VALUES('10','17','1','����'); 
INSERT INTO �⿬ VALUES('11','18','1','�ð� �Ƴ�,����|����,���'); 
INSERT INTO �⿬ VALUES('11','19','1','��Ÿ����Ʈ, ���� ��'); 

ALTER TABLE �⿬ MODIFY �� NVARCHAR2(30);


--------------6

SELECT * FROM ��ȭ
WHERE "����">9;

---------7

SELECT �������� FROM ��ȭ
WHERE �̸� ='����';

---------8

SELECT �̸�,���� FROM ��ȭ
WHERE �̸� LIKE '%��%';

---------9

SELECT �̸�, ���� FROM ��ȭ
WHERE �̸� LIKE '%��%'
ORDER BY "��������";

--------10

SELECT �̸�, ���� FROM ��ȭ
WHERE �̸� LIKE '%�׳�%';

---------11

SELECT �̸� FROM ��ȭ 
WHERE ��ȣ IN (1,2,3);

----------12

SELECT ��ȣ FROM ��ȭ
WHERE �̸� ='��ȣ��';

----------13

SELECT ��ȣ FROM ���
WHERE �̸� ='�۰�ȣ';


----------14



SELECT ���.�̸� FROM ���,�⿬
WHERE (�⿬.��ȭ��ȣ=1 AND (���.��ȣ=�⿬.����ȣ));


-------------------15

SELECT ���.�̸� FROM ��ȭ,�⿬,���
WHERE  (�⿬.����ȣ=���.��ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ)
AND ��ȭ.�̸� ='���ϵ�';

-----------------16
SELECT ��ȭ.�̸� FROM ��ȭ,���,�⿬
WHERE (���.��ȣ=�⿬.����ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ) AND ���.�̸�='�۰�ȣ';

-----------------17
SELECT ��ȭ.�̸� FROM ��ȭ,���,�⿬
WHERE (���.��ȣ=�⿬.����ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ) AND (���.�̸�='������' 
AND �⿬.����=2);


-------------------------18

SELECT ��ȭ.�̸�, ���.�̸� FROM ���,��ȭ,�⿬
WHERE (���.��ȣ=�⿬.����ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ) AND ��ȭ.��������=2012
AND �⿬.����=1;

----------------------19




SELECT ��ȭ.��������, COUNT(*) AS �⿬��ǰ�� FROM ���,��ȭ,�⿬
WHERE (���.��ȣ=�⿬.����ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ) AND ���.�̸�='�۰�ȣ'
GROUP BY ��ȭ.��������;

-------------------------------20???

SELECT ��ȭ.�̸�, ���.�̸� FROM �⿬
JOIN ��ȭ
ON ��ȭ.��ȣ=�⿬.��ȭ��ȣ 
RIGHT JOIN ���
ON ���.��ȣ=�⿬.����ȣ
WHERE �⿬.����=1;

-----------------------------------21

SELECT ���.�̸� FROM ��ȭ
FULL OUTER JOIN �⿬
ON ��ȭ.��ȣ=�⿬.��ȭ��ȣ 
FULL OUTER JOIN ���
ON ���.��ȣ=�⿬.����ȣ
WHERE �⿬.����=1
GROUP BY ���.�̸�
HAVING COUNT(���.�̸�)>=2;


----------------------------------------22

SELECT * FROM ��ȭ;
SELECT * FROM ���;
SELECT * FROM �⿬;

SELECT ��ȭ.�̸�, 
COUNT(���.�̸�) AS "�⿬��� ��" FROM ��ȭ
FULL OUTER JOIN �⿬
ON ��ȭ.��ȣ=�⿬.��ȭ��ȣ
FULL OUTER JOIN ���
ON �⿬.����ȣ= ���.��ȣ
WHERE ��ȭ.��������=2012
GROUP BY ��ȭ.�̸�;


--------------------23
SELECT ���.�̸� FROM ���,�⿬,��ȭ
WHERE (���.��ȣ=�⿬.����ȣ AND ��ȭ.��ȣ=�⿬.��ȭ��ȣ)
AND ��ȭ.�̸� IN
(SELECT ��ȭ.�̸� FROM �⿬
FULL OUTER JOIN ��ȭ
ON ��ȭ.��ȣ=�⿬.��ȭ��ȣ
FULL OUTER JOIN ���
ON ���.��ȣ=�⿬.����ȣ
WHERE ���.�̸� ='�۰�ȣ'
) AND ���.�̸� NOT LIKE '%�۰�ȣ%';
















