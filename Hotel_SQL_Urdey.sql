CREATE TABLE ���������� (
���_���������� INT NOT NULL,
������� VARCHAR(25) NOT NULL,
��� VARCHAR(25) NOT NULL,
��_������� VARCHAR(25) NOT NULL,
����_���������� DATETIME NOT NULL,
������ VARCHAR(25) NOT NULL,
���_������ INT NOT NULL,
��������_����� MONEY NOT NULL,
CONSTRAINT ����������_���������_���� PRIMARY KEY  (���_����������),
CONSTRAINT ������_���������� FOREIGN KEY (���_������)
REFERENCES ������ (���_������)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

CREATE TABLE ������(
���_������ INT NOT NULL,
������ VARCHAR(50) NOT NULL,
CONSTRAINT ������_���������_���� PRIMARY KEY  (���_������)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

CREATE TABLE ������ (
���_������ INT NOT NULL,
�������� VARCHAR(25) NOT NULL,
���_������� INT NOT NULL,
CONSTRAINT ������_���������_���� PRIMARY KEY (���_������),
CONSTRAINT ��������_������_������ FOREIGN KEY (���_�������)
REFERENCES ��������_������ (���_�������)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

CREATE TABLE ��������_������ (
���_������� INT NOT NULL,
�������� VARCHAR(25) NOT NULL,
ʳ������_���� INT NOT NULL,
ʳ������_����� INT NOT NULL,
�������_��_���� MONEY NOT NULL,
CONSTRAINT ��������_������_���������_���� PRIMARY KEY (���_�������)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

CREATE TABLE �볺��� (
���_�볺��� INT NOT NULL,
������� VARCHAR(25) NOT NULL,
��� VARCHAR(25) NOT NULL,
��_������� VARCHAR(25) NOT NULL,
����_���������� DATETIME NOT NULL,
����� VARCHAR(25) NOT NULL,
CONSTRAINT �볺���_���������_���� PRIMARY KEY (���_�볺���)
)
GO

CREATE TABLE ���������� (
���_���������� INT NOT NULL,
���_����� INT NOT NULL,
���_������ INT NOT NULL,
������� VARCHAR(25) NOT NULL,
���_�볺��� INT NOT NULL,
CONSTRAINT ����������_���������_���� PRIMARY KEY  (���_����������),
CONSTRAINT �볺���_���������� FOREIGN KEY (���_�볺���)
REFERENCES �볺��� (���_�볺���),
CONSTRAINT ����_������_���������� FOREIGN KEY (���_������)
REFERENCES ����_������ (���_������)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

CREATE TABLE ����_������ (
���_������ INT NOT NULL,
���_���������� INT NOT NULL,
���_�볺��� INT NOT NULL,
���������� DATETIME NOT NULL,
���� DATETIME NOT NULL,
³��� DATETIME NOT NULL,
���� MONEY NOT NULL,
CONSTRAINT ����_������_���������_���� PRIMARY KEY (���_������),
CONSTRAINT ����_������_������ FOREIGN KEY (���_������)
REFERENCES ������ (���_������),
CONSTRAINT ����������_����_������ FOREIGN KEY (���_����������)
REFERENCES ���������� (���_����������),
CONSTRAINT ����_������_�볺��� FOREIGN KEY (���_�볺���)
REFERENCES �볺��� (���_�볺���)
ON UPDATE CASCADE 
ON DELETE CASCADE
)
GO

INSERT INTO ���������� (���_����������, �������, ���, ��_�������, ����_����������, ������, ���_������, ��������_�����) VALUES ('101', '�����', '�����', '���������', '01.09.1972', '��������', '201', '9000')
INSERT INTO ���������� (���_����������, �������, ���, ��_�������, ����_����������, ������, ���_������, ��������_�����) VALUES ('102', '�����', '������', '��������', '23.12.1975', '���-�����', '202', '8000')
INSERT INTO ���������� (���_����������, �������, ���, ��_�������, ����_����������, ������, ���_������, ��������_�����) VALUES ('103', '�����', '�����', '���������', '03.09.1998', '������������', '203', '7000')
INSERT INTO ���������� (���_����������, �������, ���, ��_�������, ����_����������, ������, ���_������, ��������_�����) VALUES ('104', '��������', '������', '�������', '22.05.1965', '�������', '204', '6000')
INSERT INTO ���������� (���_����������, �������, ���, ��_�������, ����_����������, ������, ���_������, ��������_�����) VALUES ('105', '���������', '����', '��������', '23.07.1990', '���-���������', '205', '5000')

INSERT INTO ������ (���_������, ������) VALUES ('201', '��������')
INSERT INTO ������ (���_������, ������) VALUES ('202', '���-�����')
INSERT INTO ������ (���_������, ������) VALUES ('203', '������������')
INSERT INTO ������ (���_������, ������) VALUES ('204', '�������')
INSERT INTO ������ (���_������, ������) VALUES ('205', '���-���������')

INSERT INTO ��������_������ (���_�������, ��������, ʳ������_����, ʳ������_�����, �������_��_����) VALUES ('401', '2�', '10', '5', '600')
INSERT INTO ��������_������ (���_�������, ��������, ʳ������_����, ʳ������_�����, �������_��_����) VALUES ('402', '3�', '3', '1', '700')
INSERT INTO ��������_������ (���_�������, ��������, ʳ������_����, ʳ������_�����, �������_��_����) VALUES ('403', '4�', '4', '1', '800')

INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('301', '2�', '401')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('302', '2�', '401')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('303', '2�', '401')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('304', '2�', '401')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('305', '2�', '401')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('306', '3�', '402')
INSERT INTO ������ (���_������, ��������, ���_�������) VALUES ('307', '4�', '403')

INSERT INTO �볺��� (���_�볺���, �������, ���, ��_�������, ����_����������, �����) VALUES ('401', '�����', '���������', '����������', '25.12.1979', '���')
INSERT INTO �볺��� (���_�볺���, �������, ���, ��_�������, ����_����������, �����) VALUES ('402', '������', '�����', '����������', '29.12.1979', '���')
INSERT INTO �볺��� (���_�볺���, �������, ���, ��_�������, ����_����������, �����) VALUES ('403', '�����', '�������', '�������', '12.08.1969', 'Ƴ�')
INSERT INTO �볺��� (���_�볺���, �������, ���, ��_�������, ����_����������, �����) VALUES ('404', '�����', '����', 'ǳ��⳿���', '12.12.1970', 'Ƴ�')
INSERT INTO �볺��� (���_�볺���, �������, ���, ��_�������, ����_����������, �����) VALUES ('405', '��������', '���������', '���������', '03.04.1998', 'Ƴ�')

INSERT INTO ���������� (���_����������, ���_�����, ���_������, �������, ���_�볺���) VALUES ('501', '601', '301', '�����', '401')
INSERT INTO ���������� (���_����������, ���_�����, ���_������, �������, ���_�볺���) VALUES ('502', '602', '302', '������', '402')
INSERT INTO ���������� (���_����������, ���_�����, ���_������, �������, ���_�볺���) VALUES ('503', '603', '303', '�����', '403')
INSERT INTO ���������� (���_����������, ���_�����, ���_������, �������, ���_�볺���) VALUES ('504', '604', '304', '�����', '403')
INSERT INTO ���������� (���_����������, ���_�����, ���_������, �������, ���_�볺���) VALUES ('505', '605', '307', '��������', '404')

INSERT INTO ����_������ (���_������, ���_����������, ���_�볺���, ����������, ����, ³���, ����) VALUES ('301', '103', '401', '28.01.2019', '01.01.2019', '10.02.2019', '5400')
INSERT INTO ����_������ (���_������, ���_����������, ���_�볺���, ����������, ����, ³���, ����) VALUES ('302', '103', '402', '28.01.2019', '01.01.2019', '10.02.2019', '5400')
INSERT INTO ����_������ (���_������, ���_����������, ���_�볺���, ����������, ����, ³���, ����) VALUES ('303', '103', '403', '29.01.2019', '02.01.2019', '05.02.2019', '1800')
INSERT INTO ����_������ (���_������, ���_����������, ���_�볺���, ����������, ����, ³���, ����) VALUES ('304', '103', '404', '29.01.2019', '02.01.2019', '05.02.2019', '1800')
INSERT INTO ����_������ (���_������, ���_����������, ���_�볺���, ����������, ����, ³���, ����) VALUES ('307', '103', '405', '31.01.2019', '01.01.2019', '03.02.2019', '1600')

SELECT * FROM ���������� WHERE ��������_����� > 6000 ORDER BY ��������_�����

SELECT * FROM ���������� WHERE ������� LIKE '�_�_�'

SELECT * FROM ����_������ WHERE ³��� = '10.02.2019'

SELECT * FROM ��������_������ WHERE ���_������� IN (401, 402)

SELECT AVG(��������_�����)
FROM ����������
