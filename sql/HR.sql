-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 12:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HR`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country-id` int(11) NOT NULL,
  `country-name` varchar(40) NOT NULL,
  `region-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country-id`, `country-name`, `region-id`) VALUES
(29, 'Argentina', 2),
(30, 'Australia', 3),
(31, 'Belgium', 1),
(32, 'Brazil', 2),
(33, 'Canada', 2),
(34, 'Switzerland', 1),
(35, 'China', 3),
(36, 'Germany', 1),
(37, 'Denmark', 1),
(38, 'Egypt', 4),
(39, 'France', 1),
(40, 'HongKong', 3),
(41, 'Israel', 4),
(42, 'India', 3),
(43, 'Italy', 1),
(44, 'Japan', 3),
(45, 'Kuwait', 4),
(46, 'Mexico', 2),
(47, 'Nigeria', 4),
(48, 'Netherlands', 1),
(49, 'Singapore', 3),
(50, 'United Kingdom', 1),
(51, 'United States of America', 2),
(52, 'Zambia', 4),
(53, 'Zimbabwe', 4);

-- --------------------------------------------------------

--
-- Table structure for table `deparments`
--

CREATE TABLE `deparments` (
  `department-id` int(11) NOT NULL,
  `department-name` varchar(50) NOT NULL,
  `manager-id` int(11) NOT NULL,
  `location-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deparments`
--

INSERT INTO `deparments` (`department-id`, `department-name`, `manager-id`, `location-id`) VALUES
(2, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', 0, 1700),
(130, 'Corporate Tax', 0, 1700),
(140, 'Control And Credit', 0, 1700),
(150, 'Shareholder Services', 0, 1700),
(160, 'Benefits', 0, 1700),
(170, 'Manufacturing', 0, 1700),
(180, 'Construction', 0, 1700),
(190, 'Contracting', 0, 1700),
(200, 'Operations', 0, 1700),
(210, 'IT Support', 0, 1700),
(220, 'NOC', 0, 1700),
(230, 'IT Helpdesk', 0, 1700),
(240, 'Government Sales', 0, 1700),
(250, 'Retail Sales', 0, 1700),
(260, 'Recruiting', 0, 1700),
(270, 'Payroll', 0, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee-id` int(11) NOT NULL,
  `first-name` varchar(50) NOT NULL,
  `last-name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone-number` varchar(20) NOT NULL,
  `hire-date` date NOT NULL,
  `job-id` varchar(25) NOT NULL,
  `salary` int(11) NOT NULL,
  `commission-pct` int(11) NOT NULL,
  `manager-id` int(11) NOT NULL,
  `department-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee-id`, `first-name`, `last-name`, `email`, `phone-number`, `hire-date`, `job-id`, `salary`, `commission-pct`, `manager-id`, `department-id`) VALUES
(5, 'Steven', 'King', 'SKING', '515.123.4567', '0000-00-00', 'AD_PRES', 24000, 0, 0, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '0000-00-00', 'AD_VP', 17000, 0, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '0000-00-00', 'AD_VP', 17000, 0, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '0001-03-06', 'IT_PROG', 9000, 0, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '0000-00-00', 'IT_PROG', 6000, 0, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '0000-00-00', 'IT_PROG', 4800, 0, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '0002-05-06', 'IT_PROG', 4800, 0, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '0002-07-07', 'IT_PROG', 4200, 0, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '0000-00-00', 'FI_MGR', 12000, 0, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '0000-00-00', 'FI_ACCOUNT', 9000, 0, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '0000-00-00', 'FI_ACCOUNT', 8200, 0, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '0000-00-00', 'FI_ACCOUNT', 7700, 0, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '0003-07-06', 'FI_ACCOUNT', 7800, 0, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2012-07-07', 'FI_ACCOUNT', 6900, 0, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2012-07-02', 'PU_MAN', 11000, 0, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '0000-00-00', 'PU_CLERK', 3100, 0, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '0000-00-00', 'PU_CLERK', 2900, 0, 114, 30),
(117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '0000-00-00', 'PU_CLERK', 2800, 0, 114, 30),
(118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '0000-00-00', 'PU_CLERK', 2600, 0, 114, 30),
(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '0008-10-07', 'PU_CLERK', 2500, 0, 114, 30),
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '0000-00-00', 'ST_MAN', 8000, 0, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '0004-10-05', 'ST_MAN', 8200, 0, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '0005-01-03', 'ST_MAN', 7900, 0, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2010-10-05', 'ST_MAN', 6500, 0, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '0000-00-00', 'ST_MAN', 5800, 0, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '0000-00-00', 'ST_CLERK', 3200, 0, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '0000-00-00', 'ST_CLERK', 2700, 0, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '0000-00-00', 'ST_CLERK', 2400, 0, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '0003-08-08', 'ST_CLERK', 2200, 0, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '0000-00-00', 'ST_CLERK', 3300, 0, 121, 50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '0000-00-00', 'ST_CLERK', 2800, 0, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '0000-00-00', 'ST_CLERK', 2500, 0, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '0004-10-07', 'ST_CLERK', 2100, 0, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '0000-00-00', 'ST_CLERK', 3300, 0, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '0000-00-00', 'ST_CLERK', 2900, 0, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '2012-12-07', 'ST_CLERK', 2400, 0, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '0002-06-08', 'ST_CLERK', 2200, 0, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '0000-00-00', 'ST_CLERK', 3600, 0, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '0000-00-00', 'ST_CLERK', 3200, 0, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', '0002-12-06', 'ST_CLERK', 2700, 0, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '0004-06-06', 'ST_CLERK', 2500, 0, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '0000-00-00', 'ST_CLERK', 3500, 0, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '0000-00-00', 'ST_CLERK', 3100, 0, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '0000-00-00', 'ST_CLERK', 2600, 0, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '0007-09-06', 'ST_CLERK', 2500, 0, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '2010-01-04', 'SA_MAN', 14000, 0, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '0001-05-05', 'SA_MAN', 13500, 0, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '0003-10-05', 'SA_MAN', 12000, 0, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '0000-00-00', 'SA_MAN', 11000, 0, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '0000-00-00', 'SA_MAN', 10500, 0, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '0000-00-00', 'SA_REP', 10000, 0, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '0000-00-00', 'SA_REP', 9500, 0, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '0000-00-00', 'SA_REP', 9000, 0, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '0000-00-00', 'SA_REP', 8000, 0, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2012-09-06', 'SA_REP', 7500, 0, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '0000-00-00', 'SA_REP', 7000, 0, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '0000-00-00', 'SA_REP', 10000, 0, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '0003-04-04', 'SA_REP', 9500, 0, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '0008-01-04', 'SA_REP', 9000, 0, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '0003-10-05', 'SA_REP', 8000, 0, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '0000-00-00', 'SA_REP', 7500, 0, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '2011-03-06', 'SA_REP', 7000, 0, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '2011-11-05', 'SA_REP', 10500, 0, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '0000-00-00', 'SA_REP', 9500, 0, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '0000-00-00', 'SA_REP', 7200, 0, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '0000-00-00', 'SA_REP', 6800, 0, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '0000-00-00', 'SA_REP', 6400, 0, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '0000-00-00', 'SA_REP', 6200, 0, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '0003-11-05', 'SA_REP', 11500, 0, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '0000-00-00', 'SA_REP', 10000, 0, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '0000-00-00', 'SA_REP', 9600, 0, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '0000-00-00', 'SA_REP', 7400, 0, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '0000-00-00', 'SA_REP', 7300, 0, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '0000-00-00', 'SA_REP', 6100, 0, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '0005-11-04', 'SA_REP', 11000, 0, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '0000-00-00', 'SA_REP', 8800, 0, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '0000-00-00', 'SA_REP', 8600, 0, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '0000-00-00', 'SA_REP', 8400, 0, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '0000-00-00', 'SA_REP', 7000, 0, 149, 0),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '0001-04-08', 'SA_REP', 6200, 0, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '0000-00-00', 'SH_CLERK', 3200, 0, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '0000-00-00', 'SH_CLERK', 3100, 0, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '0000-00-00', 'SH_CLERK', 2500, 0, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '0002-03-08', 'SH_CLERK', 2800, 0, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '0000-00-00', 'SH_CLERK', 4200, 0, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '0000-00-00', 'SH_CLERK', 4100, 0, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '0000-00-00', 'SH_CLERK', 3400, 0, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '0002-07-07', 'SH_CLERK', 3000, 0, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '0000-00-00', 'SH_CLERK', 3800, 0, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '0000-00-00', 'SH_CLERK', 3600, 0, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '0007-11-06', 'SH_CLERK', 2900, 0, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '0000-00-00', 'SH_CLERK', 2500, 0, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '0002-04-04', 'SH_CLERK', 4000, 0, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '0003-03-05', 'SH_CLERK', 3900, 0, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '0007-01-06', 'SH_CLERK', 3200, 0, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '0000-00-00', 'SH_CLERK', 2800, 0, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '0000-00-00', 'SH_CLERK', 3100, 0, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '0000-00-00', 'SH_CLERK', 3000, 0, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '0000-00-00', 'SH_CLERK', 2600, 0, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '0000-00-00', 'SH_CLERK', 2600, 0, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '0000-00-00', 'AD_ASST', 4400, 0, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '0000-00-00', 'MK_MAN', 13000, 0, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '0000-00-00', 'MK_REP', 6000, 0, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '0006-07-02', 'HR_REP', 6500, 0, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '0006-07-02', 'PR_REP', 10000, 0, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '0006-07-02', 'AC_MGR', 12000, 0, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '0006-07-02', 'AC_ACCOUNT', 8300, 0, 205, 110);

-- --------------------------------------------------------

--
-- Table structure for table `job-grades`
--

CREATE TABLE `job-grades` (
  `grade-level` varchar(50) NOT NULL,
  `lowest-sal` int(11) NOT NULL,
  `highest-sal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job-history`
--

CREATE TABLE `job-history` (
  `employee-id` int(11) NOT NULL,
  `start-date` date NOT NULL,
  `end-date` date NOT NULL,
  `job-id` varchar(50) NOT NULL,
  `department-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job-history`
--

INSERT INTO `job-history` (`employee-id`, `start-date`, `end-date`, `job-id`, `department-id`) VALUES
(1, '0000-00-00', '0000-00-00', 'MK_REP', 20),
(101, '0000-00-00', '0000-00-00', 'AC_MGR', 110),
(102, '0000-00-00', '0000-00-00', 'IT_PROG', 60),
(114, '0000-00-00', '0000-00-00', 'ST_CLERK', 50),
(122, '0001-01-07', '0000-00-00', 'ST_CLERK', 50),
(176, '0001-01-07', '0000-00-00', 'SA_MAN', 80),
(200, '0007-01-02', '0000-00-00', 'AC_ACCOUNT', 90);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job-title` varchar(25) NOT NULL,
  `min-salary` int(11) NOT NULL,
  `max-salary` int(11) NOT NULL,
  `job-id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job-title`, `min-salary`, `max-salary`, `job-id`) VALUES
('IT_PROG', 0, 4000, '10000'),
('PR_REP', 0, 4500, '10500'),
('SA_REP', 0, 6000, '12000'),
('PU_MAN', 0, 8000, '15000'),
('FI_MGR', 0, 8200, '16000'),
('SA_MAN', 0, 10000, '20000'),
('AD_VP', 0, 15000, '30000'),
('_PRES', 0, 20000, '40000'),
('ST_CLERK', 0, 2000, '5000'),
('PU_CLERK', 0, 2500, '5500'),
('AD_ASST', 0, 3000, '6000'),
('ST_MAN', 0, 5500, '8500'),
('FI_ACCOUNT', 0, 4200, '9000');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location-id` int(11) NOT NULL,
  `street-address` varchar(50) NOT NULL,
  `postal-code` varchar(25) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state-provinse` varchar(50) NOT NULL,
  `country-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location-id`, `street-address`, `postal-code`, `city`, `state-provinse`, `country-id`) VALUES
(1, '1297 Via Cola di Rie', '989', 'Roma', '', 0),
(1100, '93091 Calle della Testa', '10934', 'Venice', '', 0),
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 0),
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 0),
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 0),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 0),
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 0),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 0),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 0),
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 0),
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 0),
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 0),
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 0),
(2300, '198 Clementi North', '540198', 'Singapore', '', 0),
(2400, '8204 Arthur St', '', 'London', '', 0),
(2500, 'Magdalen Centre', ' The Oxford ', 'OX9 9ZB', 'Oxford', 0),
(2600, '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 0),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 0),
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 0),
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 0),
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 0),
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 0),
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region-id` int(11) NOT NULL,
  `region-name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country-id`);

--
-- Indexes for table `deparments`
--
ALTER TABLE `deparments`
  ADD PRIMARY KEY (`department-id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee-id`);

--
-- Indexes for table `job-grades`
--
ALTER TABLE `job-grades`
  ADD PRIMARY KEY (`grade-level`);

--
-- Indexes for table `job-history`
--
ALTER TABLE `job-history`
  ADD PRIMARY KEY (`employee-id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job-id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location-id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `deparments`
--
ALTER TABLE `deparments`
  MODIFY `department-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3201;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `region-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`region-id`) REFERENCES `regions` (`region-id`);

--
-- Constraints for table `deparments`
--
ALTER TABLE `deparments`
  ADD CONSTRAINT `deparments_ibfk_1` FOREIGN KEY (`location-id`) REFERENCES `locations` (`location-id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`job-id`) REFERENCES `jobs` (`job-id`);

--
-- Constraints for table `job-history`
--
ALTER TABLE `job-history`
  ADD CONSTRAINT `job-history_ibfk_1` FOREIGN KEY (`department-id`) REFERENCES `deparments` (`department-id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`country-id`) REFERENCES `countries` (`country-id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
