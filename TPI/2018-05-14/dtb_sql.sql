-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Maio-2018 às 01:39
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtb_sql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clients`
--

CREATE TABLE `tb_clients` (
  `id_client` int(11) NOT NULL,
  `client_username` varchar(16) DEFAULT NULL,
  `client_name` varchar(32) DEFAULT NULL,
  `client_birthday` date DEFAULT NULL,
  `client_doc` varchar(9) DEFAULT NULL,
  `client_address` varchar(128) DEFAULT NULL,
  `client_phone` varchar(11) DEFAULT NULL,
  `client_password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_clients`
--

INSERT INTO `tb_clients` (`id_client`, `client_username`, `client_name`, `client_birthday`, `client_doc`, `client_address`, `client_phone`, `client_password`) VALUES
(1, 'dummy00', 'dummyClient00', '1999-01-01', '000000000', 'somewhere,	00', '11900000000', 'a0001'),
(2, 'dummy01', 'dummyClient01', '1999-01-01', '000000001', 'somewhere,	01', '11900000001', 'a0002'),
(3, 'dummy02', 'dummyClient02', '1999-01-01', '000000002', 'somewhere,	02', '11900000002', 'a0003'),
(4, 'dummy03', 'dummyClient03', '1999-01-01', '000000003', 'somewhere,	03', '11900000003', 'a0004'),
(5, 'dummy04', 'dummyClient04', '1999-01-01', '000000004', 'somewhere,	04', '11900000004', 'a0005'),
(6, 'dummy05', 'dummyClient05', '1999-01-01', '000000005', 'somewhere,	05', '11900000005', 'a0006'),
(7, 'dummy06', 'dummyClient06', '1999-01-01', '000000006', 'somewhere,	06', '11900000006', 'a0007'),
(8, 'dummy07', 'dummyClient07', '1999-01-01', '000000007', 'somewhere,	07', '11900000007', 'a0008'),
(9, 'dummy08', 'dummyClient08', '1999-01-01', '000000008', 'somewhere,	08', '11900000008', 'a0009'),
(10, 'dummy09', 'dummyClient09', '1999-01-01', '000000009', 'somewhere,	09', '11900000009', 'a0010'),
(11, 'dummy10', 'dummyClient10', '1999-01-01', '000000010', 'somewhere,	10', '11900000010', 'a0011'),
(12, 'dummy11', 'dummyClient11', '1999-01-01', '000000011', 'somewhere,	11', '11900000011', 'a0012'),
(13, 'dummy12', 'dummyClient12', '1999-01-01', '000000012', 'somewhere,	12', '11900000012', 'a0013'),
(14, 'dummy13', 'dummyClient13', '1999-01-01', '000000013', 'somewhere,	13', '11900000013', 'a0014'),
(15, 'dummy14', 'dummyClient14', '1999-01-01', '000000014', 'somewhere,	14', '11900000014', 'a0015'),
(16, 'dummy15', 'dummyClient15', '1999-01-01', '000000015', 'somewhere,	15', '11900000015', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_employees`
--

CREATE TABLE `tb_employees` (
  `id_employee` int(11) NOT NULL,
  `employee_username` varchar(16) NOT NULL,
  `employee_name` varchar(32) DEFAULT NULL,
  `employee_birthday` date DEFAULT NULL,
  `employee_doc` varchar(9) DEFAULT NULL,
  `employee_address` varchar(128) DEFAULT NULL,
  `employee_phone` varchar(11) DEFAULT NULL,
  `employee_password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_employees`
--

INSERT INTO `tb_employees` (`id_employee`, `employee_username`, `employee_name`, `employee_birthday`, `employee_doc`, `employee_address`, `employee_phone`, `employee_password`) VALUES
(1, 'dummy00_', 'dummyEmployee00', '1999-01-01', '000000000', 'somewhere,	00', '11900000000', 'a0001'),
(2, 'dummy01_', 'dummyEmployee01', '1999-01-01', '000000001', 'somewhere,	01', '11900000001', 'a0002'),
(3, 'dummy02_', 'dummyEmployee02', '1999-01-01', '000000002', 'somewhere,	02', '11900000002', 'a0003'),
(4, 'dummy03_', 'dummyEmployee03', '1999-01-01', '000000003', 'somewhere,	03', '11900000003', 'a0004'),
(5, 'dummy04_', 'dummyEmployee04', '1999-01-01', '000000004', 'somewhere,	04', '11900000004', 'a0005'),
(6, 'dummy05_', 'dummyEmployee05', '1999-01-01', '000000005', 'somewhere,	05', '11900000005', 'a0006'),
(7, 'dummy06_', 'dummyEmployee06', '1999-01-01', '000000006', 'somewhere,	06', '11900000006', 'a0007'),
(8, 'dummy07_', 'dummyEmployee07', '1999-01-01', '000000007', 'somewhere,	07', '11900000007', 'a0008'),
(9, 'dummy08_', 'dummyEmployee08', '1999-01-01', '000000008', 'somewhere,	08', '11900000008', 'a0009'),
(10, 'dummy09_', 'dummyEmployee09', '1999-01-01', '000000009', 'somewhere,	09', '11900000009', 'a0010'),
(11, 'dummy10_', 'dummyEmployee10', '1999-01-01', '000000010', 'somewhere,	10', '11900000010', 'a0011'),
(12, 'dummy11_', 'dummyEmployee11', '1999-01-01', '000000011', 'somewhere,	11', '11900000011', 'a0012'),
(13, 'dummy12_', 'dummyEmployee12', '1999-01-01', '000000012', 'somewhere,	12', '11900000012', 'a0013'),
(14, 'dummy13_', 'dummyEmployee13', '1999-01-01', '000000013', 'somewhere,	13', '11900000013', 'a0014'),
(15, 'dummy14_', 'dummyEmployee14', '1999-01-01', '000000014', 'somewhere,	14', '11900000014', 'a0015'),
(16, 'dummy15_', 'dummyEmployee15', '1999-01-01', '000000015', 'somewhere,	15', '11900000015', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `login_type` tinyint(1) DEFAULT NULL,
  `login_username` varchar(16) NOT NULL,
  `login_password` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='login information';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_clients`
--
ALTER TABLE `tb_clients`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `employee_doc` (`client_doc`),
  ADD UNIQUE KEY `client_username` (`client_username`);

--
-- Indexes for table `tb_employees`
--
ALTER TABLE `tb_employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD UNIQUE KEY `employee_username` (`employee_username`),
  ADD UNIQUE KEY `employee_doc` (`employee_doc`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`login_username`) USING HASH,
  ADD UNIQUE KEY `id_login` (`id_login`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clients`
--
ALTER TABLE `tb_clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_employees`
--
ALTER TABLE `tb_employees`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
