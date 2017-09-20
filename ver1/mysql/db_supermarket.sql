-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2017 at 05:48 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

-- Chandima B Samarasinghe (chandi2398@gmail.com)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CUSTOMER_ID` int(20) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_GENDER` enum('Male','Female') DEFAULT NULL,
  `CUSTOMER_NIC` varchar(10) DEFAULT NULL,
  `CUSTOMER_FIRST_NAME` varchar(100) NOT NULL,
  `CUSTOMER_MIDDLE_NAME` varchar(200) DEFAULT NULL,
  `CUSTOMER_LAST_NAME` varchar(200) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(50) DEFAULT NULL,
  `CUSTOMER_ADDRESS_LINE1` varchar(100) DEFAULT NULL,
  `CUSTOMER_ADDRESS_LINE2` varchar(100) DEFAULT NULL,
  `CUSTOMER_ADDRESS_CITY` varchar(30) DEFAULT NULL,
  `CUSTOMER_POSTALCODE` varchar(6) DEFAULT NULL,
  `CUSTOMER_LOYALTY_POINTS` int(11) DEFAULT NULL,
  `CUSTOMER_CONTACT_TEL` varchar(10) DEFAULT NULL,
  `CUSTOMER_CONTACT_MOBILE` varchar(10) DEFAULT NULL,
  `CUSTOMER_INVOICES` int(11) DEFAULT '0',
  `CUSTOMER_PASS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUSTOMER_GENDER`, `CUSTOMER_NIC`, `CUSTOMER_FIRST_NAME`, `CUSTOMER_MIDDLE_NAME`, `CUSTOMER_LAST_NAME`, `CUSTOMER_EMAIL`, `CUSTOMER_ADDRESS_LINE1`, `CUSTOMER_ADDRESS_LINE2`, `CUSTOMER_ADDRESS_CITY`, `CUSTOMER_POSTALCODE`, `CUSTOMER_LOYALTY_POINTS`, `CUSTOMER_CONTACT_TEL`, `CUSTOMER_CONTACT_MOBILE`, `CUSTOMER_INVOICES`, `CUSTOMER_PASS`) VALUES
(1, 'Male', '892572695V', 'Sam', NULL, 'Tarly', 'sam132@yahoo.com', '54/C', 'Temple road', 'Colombo 03', NULL, 1, '0112596483', '0715689945', 29, NULL),
(2, 'Female', '987536895V', 'Nimesha', NULL, 'Perera', 'nimesha_perera@hotmail.com', '345/11', 'Peradeniya road', 'Kandy', NULL, 0, '0814556988', '0774589687', 1, NULL),
(3, 'Female', '782345385V', 'Himali', 'Kumudu', 'Abeykoon', NULL, '67/A', 'St.Micheals road', 'Gampaha', NULL, NULL, NULL, NULL, 3, NULL),
(4, 'Male', '954050873V', 'Supun', 'Peter', 'Gunaratne', 'gunar95@gmail.com', '34', 'Anderson Flats', 'Wellawatte', NULL, 10, '011567344', '0757834521', 10, NULL),
(8, 'Male', NULL, 'Chandima', 'B', 'Samarasinghe', 'chandi2398@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0719692398', 0, NULL),
(9, 'Male', NULL, 'chandima', 'bandara', 'Samarasinghe', 'ch@djd.kk', NULL, NULL, NULL, NULL, NULL, NULL, '0555754', 0, 'djjd2882');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Employee_ID` int(6) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Employee_Gender` enum('Male','Female') NOT NULL,
  `Employee_NIC` varchar(11) NOT NULL,
  `Employee_Type` varchar(20) NOT NULL,
  `Supermarket_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `First_Name`, `Middle_Name`, `Last_Name`, `Employee_Gender`, `Employee_NIC`, `Employee_Type`, `Supermarket_ID`) VALUES
(14337, 'Yuvini', NULL, 'Sumanasekera', 'Female', '945687345V', 'Cashier', 110001),
(14317, 'Anjana', NULL, 'Senanayake', 'Male', '956743285V', 'Branch Manager', 110001),
(14305, 'Chandima', 'Bandara', 'Samarasinghe', 'Male', '932014908V', 'Regional Manager', NULL),
(14237, 'Pankayaraj', NULL, 'Pathmanathan', 'Male', '956734976V', 'Cashier', 110002);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `INVOICE_ID` varchar(30) NOT NULL,
  `PRODUCT_ID` varchar(20) DEFAULT NULL,
  `INVOICE_DATE` date DEFAULT NULL,
  `SUPERMARKET_ID` varchar(10) DEFAULT NULL,
  `CUSTOMER_ID` varchar(20) DEFAULT NULL,
  `INVOICE_PAYMENT_METHOD` enum('Cash','VisaCard','MasterCard') DEFAULT NULL,
  `EMP_ID` varchar(20) DEFAULT NULL,
  `INVOICE_TIME` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`INVOICE_ID`, `PRODUCT_ID`, `INVOICE_DATE`, `SUPERMARKET_ID`, `CUSTOMER_ID`, `INVOICE_PAYMENT_METHOD`, `EMP_ID`, `INVOICE_TIME`) VALUES
('C00000000000000000001N00000023', '298X0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:06'),
('C00000000000000000001N00000023', '228Y0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:06'),
('C00000000000000000001N00000024', '876X0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:13'),
('C00000000000000000001N00000025', '674a0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:20'),
('C00000000000000000001N00000026', '228Y0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:28'),
('C00000000000000000001N00000027', '228Y0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:41'),
('C00000000000000000001N00000027', '674a0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:25:41'),
('C00000000000000000001N00000028', '298X0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:30:25'),
('C00000000000000000001N00000028', '876X0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '01:30:25'),
('C00000000000000000001N00000029', '298X0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '04:23:19'),
('C00000000000000000001N00000029', '228Y0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '04:23:19'),
('C00000000000000000001N00000029', '674a0C12', '2017-08-27', '110001', '1', 'VisaCard', 'APP', '04:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

DROP TABLE IF EXISTS `limits`;
CREATE TABLE IF NOT EXISTS `limits` (
  `Parameter` varchar(20) NOT NULL,
  `Value` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` varchar(20) NOT NULL,
  `PRODUCT_NAME` varchar(200) NOT NULL,
  `PRODUCT_COMPANY_BARCODE` varchar(100) DEFAULT NULL,
  `BATCH_ID` varchar(100) DEFAULT NULL,
  `CATEGORY_ID` varchar(20) DEFAULT NULL,
  `SUPPLIER_ID` varchar(20) DEFAULT NULL,
  `SUPERMARKET_ID` varchar(10) DEFAULT NULL,
  `PRODUCT_STATUS` tinyint(1) DEFAULT '1',
  `PRODUCT_UNIT_PRICE` double(12,2) DEFAULT NULL,
  `PRODUCT_UNIT` enum('kg','g','unit','mg','m','l','ml') DEFAULT NULL,
  `PRODUCT_QTY_PER_UNIT` double(16,6) DEFAULT NULL,
  `PRODUCT_IS_FOOD` tinyint(1) DEFAULT '0',
  `PRODUCT_EXP` date DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_COMPANY_BARCODE`, `BATCH_ID`, `CATEGORY_ID`, `SUPPLIER_ID`, `SUPERMARKET_ID`, `PRODUCT_STATUS`, `PRODUCT_UNIT_PRICE`, `PRODUCT_UNIT`, `PRODUCT_QTY_PER_UNIT`, `PRODUCT_IS_FOOD`, `PRODUCT_EXP`) VALUES
('298X0C12', 'Prem_CorrectionFluid', '6950126101980', 'SP301M', 'LX901', 'S070', 'C12', 0, 75.00, 'unit', NULL, 0, NULL),
('228Y0C12', 'ARPICO_CRBOOK_80', '4796002050391', 'PLU42378', 'PX234', 'S001', 'C12', 0, 84.00, 'unit', NULL, 0, NULL),
('876X0C12', 'FileClipPlastic', '4792015132502', 'PLU13270', NULL, 'S000', 'C12', 0, 125.00, 'unit', NULL, 0, NULL),
('674a0C12', 'Green Apples Bulk', '336148', '7019', NULL, 'S009', 'C12', 0, 56.00, 'g', 10.000000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supermarket`
--

DROP TABLE IF EXISTS `supermarket`;
CREATE TABLE IF NOT EXISTS `supermarket` (
  `Supermarket_ID` int(6) NOT NULL,
  `Address_Line1` varchar(30) NOT NULL,
  `Address_Line2` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `Supermarket_Tel` int(11) NOT NULL,
  PRIMARY KEY (`Supermarket_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supermarket`
--

INSERT INTO `supermarket` (`Supermarket_ID`, `Address_Line1`, `Address_Line2`, `City`, `Region`, `Supermarket_Tel`) VALUES
(110001, '67/C', 'Dalada Veediya', 'Kandy', 'Kandy', 81345677),
(110002, '12/1', 'Park Street', 'Colombo 07', 'Colombo', 11678566),
(110003, '65/A', 'Katugasthota', 'Kandy', 'Kandy', 81345987),
(110004, '19/8', 'Zahira Street', 'Gampaha', 'Gampaha', 11456344);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
