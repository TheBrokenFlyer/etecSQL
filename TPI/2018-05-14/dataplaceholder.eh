INSERT	INTO	tb_clients(client_username, client_name, client_birthday, client_doc, client_address, client_phone)	VALUES
	('dummy00',	'dummyClient00',	'1999-01-01',	'000000000',	'somewhere,	00',	'11900000000'),
	('dummy01',	'dummyClient01',	'1999-01-01',	'000000001',	'somewhere,	01',	'11900000001'),
	('dummy02',	'dummyClient02',	'1999-01-01',	'000000002',	'somewhere,	02',	'11900000002'),
	('dummy03',	'dummyClient03',	'1999-01-01',	'000000003',	'somewhere,	03',	'11900000003'),
	('dummy04',	'dummyClient04',	'1999-01-01',	'000000004',	'somewhere,	04',	'11900000004'),
	('dummy05',	'dummyClient05',	'1999-01-01',	'000000005',	'somewhere,	05',	'11900000005'),
	('dummy06',	'dummyClient06',	'1999-01-01',	'000000006',	'somewhere,	06',	'11900000006'),
	('dummy07',	'dummyClient07',	'1999-01-01',	'000000007',	'somewhere,	07',	'11900000007'),
	('dummy08',	'dummyClient08',	'1999-01-01',	'000000008',	'somewhere,	08',	'11900000008'),
	('dummy09',	'dummyClient09',	'1999-01-01',	'000000009',	'somewhere,	09',	'11900000009'),
	('dummy10',	'dummyClient10',	'1999-01-01',	'000000010',	'somewhere,	10',	'11900000010'),
	('dummy11',	'dummyClient11',	'1999-01-01',	'000000011',	'somewhere,	11',	'11900000011'),
	('dummy12',	'dummyClient12',	'1999-01-01',	'000000012',	'somewhere,	12',	'11900000012'),
	('dummy13',	'dummyClient13',	'1999-01-01',	'000000013',	'somewhere,	13',	'11900000013'),
	('dummy14',	'dummyClient14',	'1999-01-01',	'000000014',	'somewhere,	14',	'11900000014'),
	('dummy15',	'dummyClient15',	'1999-01-01',	'000000015',	'somewhere,	15',	'11900000015');

INSERT	INTO	tb_employees(employee_username, employee_name, employee_birthday, employee_doc, employee_address, employee_phone)	VALUES
	('dummy00_',	'dummyEmployee00',	'1999-01-01',	'000000000',	'somewhere,	00',	'11900000000'),
	('dummy01_',	'dummyEmployee01',	'1999-01-01',	'000000001',	'somewhere,	01',	'11900000001'),
	('dummy02_',	'dummyEmployee02',	'1999-01-01',	'000000002',	'somewhere,	02',	'11900000002'),
	('dummy03_',	'dummyEmployee03',	'1999-01-01',	'000000003',	'somewhere,	03',	'11900000003'),
	('dummy04_',	'dummyEmployee04',	'1999-01-01',	'000000004',	'somewhere,	04',	'11900000004'),
	('dummy05_',	'dummyEmployee05',	'1999-01-01',	'000000005',	'somewhere,	05',	'11900000005'),
	('dummy06_',	'dummyEmployee06',	'1999-01-01',	'000000006',	'somewhere,	06',	'11900000006'),
	('dummy07_',	'dummyEmployee07',	'1999-01-01',	'000000007',	'somewhere,	07',	'11900000007'),
	('dummy08_',	'dummyEmployee08',	'1999-01-01',	'000000008',	'somewhere,	08',	'11900000008'),
	('dummy09_',	'dummyEmployee09',	'1999-01-01',	'000000009',	'somewhere,	09',	'11900000009'),
	('dummy10_',	'dummyEmployee10',	'1999-01-01',	'000000010',	'somewhere,	10',	'11900000010'),
	('dummy11_',	'dummyEmployee11',	'1999-01-01',	'000000011',	'somewhere,	11',	'11900000011'),
	('dummy12_',	'dummyEmployee12',	'1999-01-01',	'000000012',	'somewhere,	12',	'11900000012'),
	('dummy13_',	'dummyEmployee13',	'1999-01-01',	'000000013',	'somewhere,	13',	'11900000013'),
	('dummy14_',	'dummyEmployee14',	'1999-01-01',	'000000014',	'somewhere,	14',	'11900000014'),
	('dummy15_',	'dummyEmployee15',	'1999-01-01',	'000000015',	'somewhere,	15',	'11900000015');

UPDATE `tb_clients` SET `client_password` = 'a0001' WHERE `tb_clients`.`id_client` = 1;
UPDATE `tb_clients` SET `client_password` = 'a0002' WHERE `tb_clients`.`id_client` = 2;
UPDATE `tb_clients` SET `client_password` = 'a0003' WHERE `tb_clients`.`id_client` = 3;
UPDATE `tb_clients` SET `client_password` = 'a0004' WHERE `tb_clients`.`id_client` = 4;
UPDATE `tb_clients` SET `client_password` = 'a0005' WHERE `tb_clients`.`id_client` = 5;
UPDATE `tb_clients` SET `client_password` = 'a0006' WHERE `tb_clients`.`id_client` = 6;
UPDATE `tb_clients` SET `client_password` = 'a0007' WHERE `tb_clients`.`id_client` = 7;
UPDATE `tb_clients` SET `client_password` = 'a0008' WHERE `tb_clients`.`id_client` = 8;
UPDATE `tb_clients` SET `client_password` = 'a0009' WHERE `tb_clients`.`id_client` = 9;
UPDATE `tb_clients` SET `client_password` = 'a0010' WHERE `tb_clients`.`id_client` = 10;
UPDATE `tb_clients` SET `client_password` = 'a0011' WHERE `tb_clients`.`id_client` = 11;
UPDATE `tb_clients` SET `client_password` = 'a0012' WHERE `tb_clients`.`id_client` = 12;
UPDATE `tb_clients` SET `client_password` = 'a0013' WHERE `tb_clients`.`id_client` = 13;
UPDATE `tb_clients` SET `client_password` = 'a0014' WHERE `tb_clients`.`id_client` = 14;
UPDATE `tb_clients` SET `client_password` = 'a0015' WHERE `tb_clients`.`id_client` = 15;

UPDATE `tb_employees` SET `employee_password` = 'a0001' WHERE `tb_employees`.`id_employee` = 1;
UPDATE `tb_employees` SET `employee_password` = 'a0002' WHERE `tb_employees`.`id_employee` = 2;
UPDATE `tb_employees` SET `employee_password` = 'a0003' WHERE `tb_employees`.`id_employee` = 3;
UPDATE `tb_employees` SET `employee_password` = 'a0004' WHERE `tb_employees`.`id_employee` = 4;
UPDATE `tb_employees` SET `employee_password` = 'a0005' WHERE `tb_employees`.`id_employee` = 5;
UPDATE `tb_employees` SET `employee_password` = 'a0006' WHERE `tb_employees`.`id_employee` = 6;
UPDATE `tb_employees` SET `employee_password` = 'a0007' WHERE `tb_employees`.`id_employee` = 7;
UPDATE `tb_employees` SET `employee_password` = 'a0008' WHERE `tb_employees`.`id_employee` = 8;
UPDATE `tb_employees` SET `employee_password` = 'a0009' WHERE `tb_employees`.`id_employee` = 9;
UPDATE `tb_employees` SET `employee_password` = 'a0010' WHERE `tb_employees`.`id_employee` = 10;
UPDATE `tb_employees` SET `employee_password` = 'a0011' WHERE `tb_employees`.`id_employee` = 11;
UPDATE `tb_employees` SET `employee_password` = 'a0012' WHERE `tb_employees`.`id_employee` = 12;
UPDATE `tb_employees` SET `employee_password` = 'a0013' WHERE `tb_employees`.`id_employee` = 13;
UPDATE `tb_employees` SET `employee_password` = 'a0014' WHERE `tb_employees`.`id_employee` = 14;
UPDATE `tb_employees` SET `employee_password` = 'a0015' WHERE `tb_employees`.`id_employee` = 15;