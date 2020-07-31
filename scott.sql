SELECT *
FROM EMP;
DESC EMP;
DESC ENROL;
DESC SUBJECT;
--���̺� ����
create table student(
stu_no      char(9),
stu_name    varchar2(12),
stu_dept    varchar2(20),
stu_grade   number(1),
stu_class   char(1),
stu_gender  char(1),
stu_height  number(5,2),
stu_weight  number(5,2),
  constraint p_stu_no primary key(stu_no));

create table subject(
sub_no char(3),
sub_name  varchar2(30),
sub_prof  varchar2(12),
sub_grade number(1),
sub_dept  varchar2(20),
  constraint p_sub_no primary key(sub_no));

create table enrol(
sub_no    char(3),
stu_no    char(9),
enr_grade number(3),
  constraint p_course primary key(sub_no,stu_no));

insert into student values(20153075, '���Ѻ�','���',1,'C','M',177,80);
insert into student values(20153088, '���¿�','���',1,'C','F',162,50);
insert into student values(20143054, '������','���',2,'C','F',154,47);
insert into student values(20152088, '���ο�','��������',1,'C','M',188,90);
insert into student values(20142021, '�ɼ���','��������',2,'A','F',168,45);
insert into student values(20132003, '����ö','��������',3,'B','M',null,63);
insert into student values(20151062, '������','��ǻ������',1,'B','M',166,67);
insert into student values(20141007, '������','��ǻ������',2,'A','M',174,64);
insert into student values(20131001, '������','��ǻ������',3,'C','M',null,72);
insert into student values(20131025, '������','��ǻ������',3,'A','F',172,63);

insert into subject values('111','�����ͺ��̽�','���翵',2 ,'��ǻ������');
insert into subject values('110','�ڵ�����','������',2 ,'��������');
insert into subject values('109','�ڵ�ȭ����','�ڹο�',3 ,'���');
insert into subject values('101','��ǻ�Ͱ���','������',3 ,'��ǻ������');
insert into subject values('102','�����۹�','���¿�',1 ,'���');
insert into subject values('103','�������ڽ���','������',1 ,'��������');
insert into subject values('104','�ý��ۺм�����','������',3 ,'��ǻ������');
insert into subject values('105','����Ҽ���','���',1 ,'���');
insert into subject values('106','����ȸ�ν���','�ֿ���',3 ,'��������');
insert into subject values('107','CAD����ǽ�','������',2 ,'���');
insert into subject values('108','����Ʈ�������','�ǹμ�',1 ,'��ǻ������');

insert into enrol values('101','20131001','80');
insert into enrol values('104','20131001','56');
insert into enrol values('106','20132003','72');
insert into enrol values('103','20152088','45');
insert into enrol values('101','20131025','65');
insert into enrol values('104','20131025','65');
insert into enrol values('108','20151062','81');
insert into enrol values('107','20143054','41');
insert into enrol values('102','20153075','66');
insert into enrol values('105','20153075','56');
insert into enrol values('102','20153088','61');
insert into enrol values('105','20153088','78');


--�ߺ��� �����ϴ� ���
SELECT STU_DEPT
FROM STUDENT;

SELECT DISTINCT STU_DEPT
FROM STUDENT;

SELECT STU_GRADE,STU_CLASS
FROM STUDENT;

SELECT DISTINCT STU_GRADE,STU_CLASS
FROM STUDENT;

--SELEECT ()���� ������ ������ ���.
SELECT STU_NO,SUB_NO,ENR_GRADE,ENR_GRADE+10,
ENR_GRADE-10,ENR_GRADE*10,ENR_GRADE/10
FROM ENROL;

--SELECT()���� ALLIAS�����
SELECT STU_NO AS ID,STU_NAME AS NAME
FROM STUDENT;

--���� �����ڸ� �̿��ϴ� ���
SELECT * FROM STUDENT;
SELECT STU_DEPT ||'��'|| STU_NAME ||'�Դϴ�.' AS �а�����
FROM STUDENT;

SELECT 10+5
FROM DUAL;

--���ǰ˻�
SELECT * FROM STUDENT;
SELECT *
FROM STUDENT
WHERE STU_DEPT='��ǻ������';
--�������ڿ� ���� ���ǰ˻�
SELECT *
FROM STUDENT
WHERE STU_HEIGHT>=175;
--�л����̺��� ��ǻ���������� 2�г� �л����� �˻��Ͻÿ�.
SELECT *
FROM STUDENT
WHERE STU_DEPT='��ǻ������' AND STU_GRADE=2;

--�л����̺��� ü���� 60~70KG ������ �л����� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_WEIGHT>=60 AND STU_WEIGHT<=70;

--�л����̺��� �й��� 20140001~20149999�� �л����� ���϶�.
SELECT *
FROM STUDENT
WHERE STU_NO BETWEEN 20140001 AND 20149999;
--���� ���� BETWEEN �� ����ص� �ǰ� AND�� �̿��ؼ� �ι� �ᵵ �������.

--LIKE�� �̿��� �˻����
--�达���� ���� �л����� ������ ���ϵ�ī�幮�ڸ� �̿��Ͽ� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_NAME LIKE '��%';
-- % = ���ϵ�ī�幮��

--�ι�° ���ڰ� '��'�� �л��� �̸��� �˻��ϴ� ���ǹ��� �ۼ��϶�.
SELECT *
FROM STUDENT
WHERE STU_NAME LIKE '_��%';
-- _ = ���ϵ�ī�幮��

--�л����̺��� '2014' �й��� ��ΰ˻��϶�.(LIKE �Լ� �̿�)
SELECT *
FROM STUDENT
WHERE STU_NO LIKE '2014%';

--�ΰ� ó���ϴ� ���
SELECT STU_NAME,STU_HEIGHT
FROM STUDENT;
--�л����̺��� STU_HEIGHT���� �ΰ��� �л����� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_HEIGHT IS NULL;
--�ΰ��� �ƴ� �л����� ��� 'IS' �� 'IS NOT' �� �ȴ�.

--IN �� ����
SELECT *
FROM STUDENT
WHERE STU_DEPT IN('���','��������');

--�����ϴ� ���
SELECT STU_NO,STU_NAME
FROM STUDENT
ORDER BY STU_NO ASC;
-- ASC = �������� (DEFAULT(�⺻)���°� ���������̱⿡ ���� ���� �ʿ�� ����.)
SELECT STU_NO,STU_NAME
FROM STUDENT
ORDER BY 2 ;
-- DESC = ��������

--1.�л����� �Ż��� �й��� ������������ �˻��Ͻÿ�.
--2.�л����̺��� STU_WEIGHT�� -5�� �� �� TARGET���� ��Ī���� �ְ� TARGET���� �����Ͻÿ�.
--3.���� 2�� �������� ������ STU_DEPT�� TARGET�� ������ �����Ͻÿ�.
SELECT STU_NAME,STU_WEIGHT-5 AS TARGET
FROM STUDENT
ORDER BY TARGET;

SELECT STU_DEPT,STU_NAME,STU_WEIGHT-5 AS TARGET
FROM STUDENT
ORDER BY STU_DEPT,TARGET;
-- 'AS'�� �����ص� �ȴ�.

--TARGET�� �̿����� �ʰ� ���� ��.
SELECT *
FROM STUDENT
ORDER BY STU_DEPT;

--SELECT()���� �Լ� ����.
--�������Լ� [�����Լ�/�����Լ�/��¥�Լ�/��ȯ�Լ�/�Ϲ��Լ�]
SELECT ROUND(345.678),ROUND(345.678,0),ROUND(345.678,1),
ROUND(345.678,-1)
FROM DUAL;

SELECT TRUNC(345.678),TRUNC(345.678,0),TRUNC(345.678,1),
TRUNC(345.678,-1)
FROM DUAL;

SELECT CEIL(3.01),CEIL(-3.98),FLOOR(3.98),FLOOR(-3.0001)
FROM DUAL;

SELECT MOD(10,3)
FROM DUAL;

SELECT ABS(-100)
FROM DUAL;


--�������Լ����� �����Լ���?
SELECT LOWER('ABCDEFG')
FROM DUAL;

SELECT UPPER('abcdefg')
FROM DUAL;

SELECT INITCAP('abcdefg')
FROM DUAL;

SELECT CONCAT(STU_NAME,STU_NO) �̸��й�
FROM STUDENT;

SELECT * FROM EMP;

SELECT SUBSTR(ENAME,2,2)
FROM EMP;

SELECT LENGTH(ENAME) �����̸�����
FROM EMP;

SELECT LPAD(ENAME,10,'*')
FROM EMP;

SELECT RPAD(ENAME,10,'*')
FROM EMP;

--��¥�Լ�
SELECT SYSDATE+15
FROM DUAL;

SELECT MONTHS_BETWEEN(SYSDATE,HIREDATE)
FROM EMP;

SELECT ENAME,ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE))
FROM EMP;

SELECT LAST_DAY(SYSDATE)
FROM DUAL;

SELECT ROUND(SYSDATE,'MON')
FROM DUAL;

SELECT ROUND(SYSDATE+18,'MON')
FROM DUAL;

--�������Լ��� ��ȯ�Լ�
SELECT * FROM EMP;

SELECT EMPNO,ENAME,TO_CHAR(HIREDATE,'YYYY-MM-DD') �Ի���
FROM EMP;

--�����ڸ���(9)
SELECT TO_CHAR(TO_NUMBER(1234.5678),'9999,99')
FROM DUAL;

SELECT TO_CHAR(TO_NUMBER(1234.5678),'999,99')
FROM DUAL;

SELECT * FROM EMP;

SELECT ENAME, TO_CHAR(SAL,'999') SALARY
FROM EMP
WHERE SAL<1000;

--�Ϲ��Լ�
--NVL (EX: �Ʒ��� STU_HEIGHT�� NULL ���̸� 0, NULL���� �ƴϸ� STU_HEIGHT ���� �ݿ���.)
SELECT NVL(STU_HEIGHT,0)
FROM STUDENT;

SELECT * FROM EMP;

SELECT ENAME,NVL2(COMM,SAL+COMM,SAL) SALARY
FROM EMP;

SELECT NVL(NULLIF('A','A'),'�ΰ�')
FROM DUAL;

--CASE()
SELECT EMPNO,ENAME,SAL,
CASE JOB WHEN 'SALESMAN' THEN SAL*1.1
         WHEN 'CLERK' THEN SAL*1.15
         WHEN 'MANAGER' THEN SAL*1.2
         ELSE SAL
END AS �޿��λ�
FROM EMP;

--DECODE()
SELECT EMPNO,ENAME,JOB,SAL,
DECODE(JOB, 'SALESMAN',SAL*1.1,
            'CLERK',SAL*1.15,
            'MANAGER',SAL*1.2,
            SAL) AS �λ�ȱ޿�
            FROM EMP;
            
--�������̺��� �ְ������� ���������� �˻��϶�.
SELECT MAX(ENR_GRADE),MIN(ENR_GRADE)
FROM ENROL;

--�л����̺��� ������ ����ü�߰� �ְ�ü���� �˻��϶�.
SELECT MIN(STU_WEIGHT),MAX(STU_WEIGHT)
FROM STUDENT
WHERE STU_DEPT='���';