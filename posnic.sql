-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2015 at 12:06 AM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `bizxpert`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE IF NOT EXISTS `category_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(120) NOT NULL,
  `category_description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`id`, `category_name`, `category_description`) VALUES
(1, 'CARS', 'CARS'),
(2, 'JEEP', 'JEEP'),
(3, 'TRUCKS', 'TRUCKS'),
(4, 'PICK UPS', 'PICK UPS'),
(5, 'CATAPILLARS', 'HEAVY DUTY&#39;S');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_contact1` varchar(100) NOT NULL,
  `customer_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `customer_address`, `customer_contact1`, `customer_contact2`, `balance`) VALUES
(1, 'mgbankwo juliet', 'hahahaha\r\nhahahahahahahahahahaha\r\nhahahahaa\r\nhahahaha', '09876543', '0987654234567', 0),
(2, 'prince chukwuma ihe', 'qwertyuio\r\nwertyuip[\r\nqwertyuio\r\nqwertyioplkjgfdasdfghjk\r\nasdfghkloiuytrqwertyuio', '234567890', '98765433456789', 500000),
(3, 'chima amanda', 'sdfg\r\nnbvcxvccvnm.\r\nhgfdsjhgfcxcbmfd\r\nlkhjgcfsdfhjk;lrfkjhghjkcv\r\njghfdcsrtyulcmnvbnm,cv', '4567890', '23456787654', 1690000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_avail`
--

CREATE TABLE IF NOT EXISTS `stock_avail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stock_avail`
--

INSERT INTO `stock_avail` (`id`, `name`, `quantity`) VALUES
(1, 'CAMRY 2.2 2015 MODEL', 1),
(2, 'HONDA BABY BOY', 7),
(3, 'HONDA CR-V', 3);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE IF NOT EXISTS `stock_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(120) NOT NULL,
  `stock_quatity` int(11) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `category` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_date` datetime NOT NULL,
  `uom` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `stock_id`, `stock_name`, `stock_quatity`, `supplier_id`, `company_price`, `selling_price`, `category`, `date`, `expire_date`, `uom`) VALUES
(1, 'SD1', 'CAMRY 2.2 2015 MODEL', 0, 'OKEKE MANCHI JOSEPH', '900000.00', '1200000.00', 'CARS', '2015-08-27 23:46:07', '0000-00-00 00:00:00', ''),
(2, 'SD2', 'HONDA BABY BOY', 0, 'OKEKE MANCHI JOSEPH', '500000.00', '700000.00', 'CARS', '2015-07-28 07:50:38', '0000-00-00 00:00:00', ''),
(3, 'SD3', 'HONDA CR-V', 0, 'JUDE UDEH', '500000.00', '805000.00', 'JEEP', '2015-07-28 08:41:14', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_entries`
--

CREATE TABLE IF NOT EXISTS `stock_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(260) NOT NULL,
  `stock_supplier_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `quantity` int(11) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `opening_stock` int(11) NOT NULL,
  `closing_stock` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `type` varchar(50) NOT NULL,
  `salesid` varchar(120) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `mode` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `due` datetime NOT NULL,
  `subtotal` int(11) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `stock_entries`
--

INSERT INTO `stock_entries` (`id`, `stock_id`, `stock_name`, `stock_supplier_name`, `category`, `quantity`, `company_price`, `selling_price`, `opening_stock`, `closing_stock`, `date`, `username`, `type`, `salesid`, `total`, `payment`, `balance`, `mode`, `description`, `due`, `subtotal`, `count1`, `billnumber`) VALUES
(1, 'PR3', 'CAMRY 2.2 2015 MODEL', 'JUDE UDEH', '', 7, '900000.00', '1200000.00', 0, 7, '2015-07-28 00:00:00', 'admin', 'entry', '', '6300000.00', '6300000.00', '0.00', 'cash', 'yeyeyeyeye', '0000-00-00 00:00:00', 6300000, 1, '78888888'),
(2, 'PR4', 'HONDA BABY BOY', 'JUDE UDEH', '', 9, '500000.00', '700000.00', 0, 9, '2015-07-28 00:00:00', 'admin', 'entry', '', '4500000.00', '9000000.00', '0.00', 'cash', 'test test test test', '0000-00-00 00:00:00', 9000000, 1, '71234'),
(3, 'PR4', 'CAMRY 2.2 2015 MODEL', 'JUDE UDEH', '', 5, '900000.00', '1200000.00', 7, 12, '2015-07-28 00:00:00', 'admin', 'entry', '', '4500000.00', '9000000.00', '0.00', 'cash', 'test test test test', '0000-00-00 00:00:00', 9000000, 2, '71234'),
(4, 'SD4', 'CAMRY 2.2 2015 MODEL', '', '', 2, '0.00', '1200000.00', 12, 10, '2015-07-28 00:00:00', 'admin', 'sales', 'SD4', '2400000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, '78888888'),
(5, 'PR7', 'CAMRY 2.2 2015 MODEL', 'OKEKE MANCHI JOSEPH', '', 1, '900000.00', '1200000.00', 10, 11, '2015-07-28 00:00:00', 'admin', 'entry', '', '900000.00', '3400.00', '1600.00', 'other', 'will pay later', '2015-07-28 00:00:00', 900000, 1, '5666666'),
(6, 'SD6', 'HONDA BABY BOY', '', '', 1, '0.00', '700000.00', 9, 8, '2015-07-28 00:00:00', 'admin', 'sales', 'SD6', '700000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, '200000'),
(7, 'PR9', 'HONDA CR-V', 'JUDE UDEH', '', 3, '500000.00', '805000.00', 0, 3, '2015-07-28 00:00:00', 'admin', 'entry', '', '1500000.00', '1500000.00', '0.00', 'cash', 'PAID IN FULL', '0000-00-00 00:00:00', 1500000, 1, '90000'),
(8, 'SD8', 'CAMRY 2.2 2015 MODEL', '', '', 5, '0.00', '1200000.00', 11, 6, '2015-07-28 00:00:00', 'admin', 'sales', 'SD8', '6000000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, '676767'),
(9, 'SD9', 'HONDA BABY BOY', '', '', 1, '0.00', '700000.00', 8, 7, '2015-07-28 00:00:00', 'admin', 'sales', 'SD9', '700000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, '12345678'),
(10, 'SD10', 'CAMRY 2.2 2015 MODEL', '', '', 5, '0.00', '1200000.00', 6, 1, '2015-07-31 00:00:00', 'admin', 'sales', 'SD10', '6000000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 1, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `stock_sales`
--

CREATE TABLE IF NOT EXISTS `stock_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transactionid` varchar(250) NOT NULL,
  `stock_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `username` varchar(120) NOT NULL,
  `customer_id` varchar(120) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `tax` decimal(10,0) NOT NULL,
  `tax_dis` varchar(100) NOT NULL,
  `dis_amount` decimal(10,0) NOT NULL,
  `grand_total` decimal(10,0) NOT NULL,
  `due` date NOT NULL,
  `mode` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `stock_sales`
--

INSERT INTO `stock_sales` (`id`, `transactionid`, `stock_name`, `category`, `supplier_name`, `selling_price`, `quantity`, `amount`, `date`, `username`, `customer_id`, `subtotal`, `payment`, `balance`, `discount`, `tax`, `tax_dis`, `dis_amount`, `grand_total`, `due`, `mode`, `description`, `count1`, `billnumber`) VALUES
(1, 'SD4', 'CAMRY 2.2 2015 MODEL', '', '', '1200000.00', '2.00', '2400000.00', '2015-07-28', 'admin', 'prince chukwuma ihe', '2400000.00', '2400000.00', '0.00', '0', '0', '', '0', '2400000', '1970-01-01', 'cash', 'paid in full', 1, '78888888'),
(2, 'SD6', 'HONDA BABY BOY', '', '', '700000.00', '1.00', '700000.00', '2015-07-28', 'admin', 'chima amanda ', '665000.00', '665000.00', '0.00', '5', '20000', '', '35000', '700000', '2015-11-17', 'cheque', 'paid in full', 1, '200000 '),
(4, 'SD8', 'CAMRY 2.2 2015 MODEL', '', '', '1200000.00', '5.00', '6000000.00', '2015-07-28', 'admin', 'chima amanda', '6000000.00', '5600000.00', '400000.00', '0', '0', '', '0', '6000000', '2015-07-28', 'cash', '', 1, '676767'),
(5, 'SD9', 'HONDA BABY BOY', '', '', '700000.00', '1.00', '700000.00', '2015-07-28', 'admin', 'chima amanda', '690000.00', '590000.00', '100000.00', '0', '0', '', '10000', '700000', '2015-07-28', 'cash', '', 1, '12345678'),
(6, 'SD10', 'CAMRY 2.2 2015 MODEL', '', '', '1200000.00', '5.00', '6000000.00', '2015-07-31', 'admin', 'prince chukwuma ihe', '5000000.00', '4500000.00', '500000.00', '0', '20000', 'yesurwertyuiiydfghcxcfgvhj', '1000000', '6000000', '1970-01-01', 'cash', '', 1, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `stock_user`
--

CREATE TABLE IF NOT EXISTS `stock_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `stock_user`
--

INSERT INTO `stock_user` (`id`, `username`, `password`, `user_type`, `answer`) VALUES
(1, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `store_details`
--

CREATE TABLE IF NOT EXISTS `store_details` (
  `name` varchar(100) NOT NULL,
  `log` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `web` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_details`
--

INSERT INTO `store_details` (`name`, `log`, `type`, `address`, `place`, `city`, `phone`, `email`, `web`, `pin`) VALUES
('Innoma Cars & Trucks Nig. Ltd', 'posnic.png', 'png', '133 Ziks Avenue, by Okosi Close', 'Awka', 'Awka, Anambra State', '08036424086', 'info@inomacars.com', 'www.innomacars.com', '600020');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details`
--

CREATE TABLE IF NOT EXISTS `supplier_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` varchar(500) NOT NULL,
  `supplier_contact1` varchar(100) NOT NULL,
  `supplier_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `supplier_details`
--

INSERT INTO `supplier_details` (`id`, `supplier_name`, `supplier_address`, `supplier_contact1`, `supplier_contact2`, `balance`) VALUES
(1, 'OKEKE MANCHI JOSEPH', 'SDFGHJKL;LKJHGFDDFGHJKL;', 'HAHAHAHAHHAAHAHAHAHA', 'SDFGHJKLKJHGFSDFGHJK', 0),
(2, 'JUDE UDEH', 'SDFGHJKMNBCVXZXCVBNM,.,\r\nKJHFCSDFGHJKL\r\nLKJGFDFGHJKL\r\n\r\n\r\nKJHFDFGJKL;', '234567890', '0987654345678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `due` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rid` varchar(120) NOT NULL,
  `receiptid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `customer`, `supplier`, `subtotal`, `payment`, `balance`, `due`, `date`, `rid`, `receiptid`) VALUES
(1, 'entry', '', '', '900000.00', '30000.00', '20000.00', '2015-07-28 00:00:00', '2015-07-28 08:32:25', 'PR7', ''),
(2, 'entry', '', '', '900000.00', '10000.00', '10000.00', '2015-07-28 00:00:00', '2015-07-28 10:08:58', 'PR7', ''),
(3, 'entry', '', '', '900000.00', '10000.00', '10000.00', '2015-07-28 00:00:00', '2015-07-28 10:11:39', 'PR7', ''),
(4, 'entry', '', '', '900000.00', '5000.00', '5000.00', '2015-07-28 00:00:00', '2015-07-28 10:11:48', 'PR7', ''),
(5, 'sales', 'jacob ', '', '90.00', '80.00', '0.00', '2015-07-28 00:00:00', '2015-07-28 10:18:06', 'SD263', 'RCPT4'),
(6, 'sales', 'chima amanda ', '', '6000000.00', '1100000.00', '400000.00', '2015-07-28 00:00:00', '2015-07-28 10:21:48', 'SD8', 'RCPT5'),
(7, 'entry', '', '', '900000.00', '3400.00', '1600.00', '2015-07-28 00:00:00', '2015-07-28 10:22:19', 'PR7', ''),
(8, 'sales', 'chima amanda ', '', '690000.00', '90000.00', '100000.00', '2015-07-28 00:00:00', '2015-07-28 13:43:00', 'SD9', 'RCPT7');

-- --------------------------------------------------------

--
-- Table structure for table `uom_details`
--

CREATE TABLE IF NOT EXISTS `uom_details` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `spec` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uom_details`
--

