SET sql_mode = '';
DROP TABLE IF EXISTS `accesslog`;
CREATE TABLE IF NOT EXISTS `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

DROP TABLE IF EXISTS `acc_account_name`;
CREATE TABLE IF NOT EXISTS `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(1, 'Employee Salary', 0);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(3, 'Example', 1);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(4, 'Loan Expense', 0);
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES(5, 'Loan Income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

DROP TABLE IF EXISTS `acc_coa`;
CREATE TABLE IF NOT EXISTS `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000001', '145454-HmIsahaq', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:10:19', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021403', 'AC', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2013-09-18 15:29:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020201', 'Advance', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020103', 'Advance House Rent', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-12-31 16:46:24');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020602', 'Advertisement and Publicity', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010410', 'Air Cooler', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-05-23 12:13:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020603', 'AIT Against Advertisement', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010204', 'Attendance Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40216', 'Audit Fee', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2017-07-18 12:54:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021002', 'Bank Charge', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:21:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30203', 'Bank Interest', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010104', 'Book Shelf', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010407', 'Books and Journal', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:45:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010207', 'Brac Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 10:10:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020604', 'Business Development Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020606', 'Campaign Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020502', 'Campus Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40212', 'Car Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:28:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:57:55');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-19 13:43:59', 'admin', '2015-10-15 15:32:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-31 12:56:28', 'admin', '2016-05-23 12:05:43');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30101', 'Cash Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010207', 'CCTV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:24', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020102', 'CEO Current A/C', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-25 11:54:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010206', 'City Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 10:09:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010101', 'Class Room Chair', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020601', 'Commision on Admission', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010206', 'Computer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021410', 'Computer (R)', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010102', 'Computer Table', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', 4, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:40:40', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('403', 'Cost of Sale', 'Expence', 0, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-08 10:37:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30102', 'Credit Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020709', 'Cultural Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2017-04-29 12:45:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-12-06 13:54:42', 'admin', '2018-07-07 11:23:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030101', 'cusL-0001-Walkin', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2019-01-08 09:14:48', '', '2020-11-17 11:41:07');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030104', 'cusL-0018-jamildasd', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '20', '2021-01-05 14:14:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030105', 'cusL-0021-jamil', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '25', '2021-01-31 14:17:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030106', 'cusL-0022-Saiful Hassan', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '26', '2021-01-31 18:18:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102030107', 'cusL-0023-jamil', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, '0.00', '27', '2021-02-03 10:12:50', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2019-01-08 09:15:08', 'admin', '2018-07-07 12:31:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40100002', 'cw-Chichawatni', 'Store Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-08-02 16:30:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', 3, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020605', 'Design & Printing Expense', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:55:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020404', 'Dish Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40215', 'Dividend', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2016-09-25 14:07:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020403', 'Drinking Water Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010211', 'DSLR Camera', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010205', 'Dutch-Bangla Bank', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-01-18 09:49:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000007', 'E3Y1WJMB-John Maria', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:55:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000010', 'E4Y91CAX-onlineorder', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-02-03 11:20:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000004', 'E97E9SJT-Manik Hassan', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-09 14:32:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020908', 'Earned Leave', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000006', 'EBK2UPRA-John Carlos', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:51:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020607', 'Education Fair Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000011', 'EK9BYZVY-test sdafdssdfds', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-02-24 14:07:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010602', 'Electric Equipment', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010203', 'Electric Kettle', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10106', 'Electrical Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:43:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020407', 'Electricity Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10202010501', 'employ', 'Salary', 5, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:47:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('405', 'Entertainment', 'Expense', 1, 1, 1, 0, 'E', 1, 1, '1.00', '2', '2020-01-18 07:49:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000012', 'ENVBUZKE-kabirkhan', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2020-10-12 10:57:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000002', 'EQLAJFUW-AinalHaque', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:08:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000009', 'EU3APTYY-JohnDoe', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 06:02:46', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000005', 'EW9PM201-test emp', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-09 14:38:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000008', 'EXL9WSCL-Mitchel Santner', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2019-01-27 05:58:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4', 'Expense', 'COA', 0, 1, 0, 0, 'E', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020000003', 'EY2T1OWA-jahangirAhmad', 'Account Payable', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'John Doe', '2018-12-17 15:11:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021404', 'Fax Machine', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010103', 'File Cabinet', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40210', 'Financial Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010403', 'Fire Extingushier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:39:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021408', 'Furniture', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:47', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10101', 'Furniture & Fixturers', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020406', 'Gas Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:20', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20201', 'General Reserve', 'Reserve & Surplus', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10105', 'Generator', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021414', 'Generator Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40213', 'Generator Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:29:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10103', 'Groceries and Cutleries', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-12 10:02:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010408', 'Gym Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:46:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020907', 'Honorarium', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40205', 'House Rent', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-24 10:26:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40100001', 'HP-Hasilpur', 'Academic Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-29 03:44:23', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:55:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:56:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020302', 'Income Tax Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020302', 'Insurance Premium', 'Prepayment', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-19 13:10:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021001', 'Interest on Loan', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020401', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 15:21:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010309', 'iyzico', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10205010101', 'Jahangir', 'Hasan', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 10:40:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010210', 'LCD TV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:52:27', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30103', 'Lease Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:52', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50203', 'Liabilities for Expenses', 'Current Liabilities', 2, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020707', 'Library Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-01-10 15:34:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021409', 'Lift', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:36:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50101', 'Long Term Borrowing', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020901', 'Medical Allowance', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:11:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010411', 'Metal Ditector', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021413', 'Micro Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30202', 'Miscellaneous (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:54:39', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40207', 'Miscellaneous Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010401', 'Mobile Phone', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020101', 'Mr Ashiqur Rahman', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-12-31 16:47:23', 'admin', '2016-09-25 11:55:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010212', 'Network Accessories', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-02 16:23:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020106', 'new head dfhgfh', 'Advance', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2020-01-16 06:25:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020408', 'News Paper Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-01-02 15:55:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:29:11');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('406', 'Office Accessories', 'Expense', 1, 1, 1, 0, 'E', 1, 1, '1.00', '2', '2020-01-18 07:51:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010404', 'Office Decoration', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10102', 'Office Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30201', 'Office Stationary (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020103', 'Online Payment', 'Cash & Cash Equivalent', 2, 1, 0, 1, 'A', 0, 0, '0.00', '2', '2020-10-18 14:26:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010308', 'Orange Money payment', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('402', 'Other Expenses', 'Expense', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('302', 'Other Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40211', 'Others (Non Academic Expenses)', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30205', 'Others (Non-Academic Income)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('10104', 'Others Assets', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020910', 'Outstanding Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021405', 'Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021412', 'PABX-Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020902', 'Part-time Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010301', 'Paypal', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:27:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010306', 'Paystack Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:30:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010307', 'Paytm Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:31:23', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010202', 'Photocopy & Fax Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020503', 'Practical Fee', 'Others (Non-Academic Income)', 3, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2017-07-22 18:00:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010201', 'Printer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('407', 'Product Purchase', 'Expense', 0, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2020-01-23 07:09:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:28:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30207', 'Professional Training Course(Oracal)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010208', 'Projector', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40206', 'Promonational Expense', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40214', 'Repair and Maintenance', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:32:46', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('202', 'Reserve & Surplus', 'Equity', 1, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20102', 'Retained Earnings', 'Share Holders Equity', 2, 1, 1, 1, 'L', 0, 0, '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020708', 'River Cruse', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-04-24 15:35:25', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010311', 'RMA PAYMENT GATEWAY', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:33:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020105', 'Salary', 'Advance', 4, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:46:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40209', 'Salary & Allowances', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-12-12 11:22:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('404', 'Sale Discount', 'Expense', 1, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-19 10:15:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('303', 'Sale Income', 'Income', 0, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2020-01-23 06:58:20', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010406', 'Security Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:41:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('30104', 'Service Charge Income', 'Store Income', 1, 1, 1, 0, 'I', 0, 0, '0.00', '2', '2020-12-30 11:23:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('20101', 'Share Capital', 'Share Holders Equity', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('201', 'Share Holders Equity', 'Equity', 1, 1, 0, 0, 'L', 0, 0, '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 19:43:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50201', 'Short Term Borrowing', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010310', 'SIPS Office', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:32:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020906', 'Special Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('50102', 'Sponsors Loan', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:48:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020706', 'Sports Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2016-11-09 13:16:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010304', 'Square Payments', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:29:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010302', 'SSLCommerz', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:28:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('401', 'Store Expenses', 'Expense', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010305', 'Stripe Payment', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:29:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:24:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010601', 'Sub Station', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020501', 'sup_002-Kamal Hossain', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:49:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020504', 'sup_002-Supplier_1', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-09-08 14:26:40', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020502', 'sup_003-Maruf', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:56:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502020503', 'sup_004-Saiful', 'Suppliers', 4, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-01-18 10:57:04', '2', '2020-01-21 13:10:59');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020205', 'Suppliers', 'Account Payable', 3, 1, 0, 1, 'L', 0, 0, '0.00', '2', '2018-12-15 06:50:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-08 13:03:04', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020501', 'TDS on House Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030201', 'TDS Payable House Rent', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030202', 'TDS Payable on Salary', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:17', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021402', 'Tea Kettle', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020402', 'Telephone Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:57:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010209', 'Telephone Set & PABX', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102020104', 'Test', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:42:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40203', 'Travelling & Conveyance', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4021406', 'TV', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('102010303', 'Two Checkout', 'Online Payment', 2, 1, 1, 0, 'A', 0, 0, '0.00', '2', '2020-10-18 14:28:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010205', 'UPS', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:50:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('40204', 'Utility Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020503', 'VAT on House Rent Exp', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('5020301', 'VAT Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('502030101', 'VAT- TAX', 'VAT Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2020-12-30 10:58:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010409', 'Vehicle A/C', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010405', 'Voltage Stablizer', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020405', 'WASA Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('1010402', 'Water Purifier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 11:14:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-15 12:42:47', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_customer_income`
--

DROP TABLE IF EXISTS `acc_customer_income`;
CREATE TABLE IF NOT EXISTS `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_glsummarybalance`
--

DROP TABLE IF EXISTS `acc_glsummarybalance`;
CREATE TABLE IF NOT EXISTS `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_income_expence`
--

DROP TABLE IF EXISTS `acc_income_expence`;
CREATE TABLE IF NOT EXISTS `acc_income_expence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Student_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perpose` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_temp`
--

DROP TABLE IF EXISTS `acc_temp`;
CREATE TABLE IF NOT EXISTS `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

DROP TABLE IF EXISTS `acc_transaction`;
CREATE TABLE IF NOT EXISTS `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--

DROP TABLE IF EXISTS `acn_account_transaction`;
CREATE TABLE IF NOT EXISTS `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tran_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

DROP TABLE IF EXISTS `add_ons`;
CREATE TABLE IF NOT EXISTS `add_ons` (
  `add_on_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_on_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL,
  `tax0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`add_on_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_summary`
--

DROP TABLE IF EXISTS `bank_summary`;
CREATE TABLE IF NOT EXISTS `bank_summary` (
  `bank_id` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `ammount` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `create_at` datetime DEFAULT '1970-01-01 01:01:01',
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_card_payment`
--

DROP TABLE IF EXISTS `bill_card_payment`;
CREATE TABLE IF NOT EXISTS `bill_card_payment` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_basic_info`
--

DROP TABLE IF EXISTS `candidate_basic_info`;
CREATE TABLE IF NOT EXISTS `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education_info`
--

DROP TABLE IF EXISTS `candidate_education_info`;
CREATE TABLE IF NOT EXISTS `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

DROP TABLE IF EXISTS `candidate_interview`;
CREATE TABLE IF NOT EXISTS `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_selection`
--

DROP TABLE IF EXISTS `candidate_selection`;
CREATE TABLE IF NOT EXISTS `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_shortlist`
--

DROP TABLE IF EXISTS `candidate_shortlist`;
CREATE TABLE IF NOT EXISTS `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_workexperience`
--

DROP TABLE IF EXISTS `candidate_workexperience`;
CREATE TABLE IF NOT EXISTS `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_addones`
--

DROP TABLE IF EXISTS `check_addones`;
CREATE TABLE IF NOT EXISTS `check_addones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_menuid` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=insert, 0=notinserted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `common_setting`
--

DROP TABLE IF EXISTS `common_setting`;
CREATE TABLE IF NOT EXISTS `common_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone_optional` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `ismembership` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `powerbytxt` text DEFAULT NULL,
  `web_onoff` int(11) DEFAULT 1 COMMENT '1=enable,0=disable',
  `backgroundcolorweb` varchar(30) DEFAULT NULL,
  `webheaderfontcolor` varchar(20) DEFAULT NULL,
  `backgroundcolorqr` varchar(30) DEFAULT NULL,
  `qrheaderfontcolor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `common_setting`
--

INSERT INTO `common_setting` (`id`, `address`, `email`, `phone`, `phone_optional`, `logo`, `logo_footer`, `ismembership`, `powerbytxt`, `web_onoff`, `backgroundcolorweb`, `webheaderfontcolor`, `backgroundcolorqr`, `qrheaderfontcolor`) VALUES(1, '<p>123 Suspendis matti, <br> Visaosang Building VST District, <br> NY Accums, North American</p>', 'support@bdtask.com', '0123456789', '+88 01715 222 333', 'assets/img/2021-01-02/b.png', 'assets/img/2021-01-02/b1.png', 1, '???????????????????? 2019 Hungry All Right Reserved. Developed by BDTASK.\r\n', 1, NULL, NULL, '#030303', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currencyid` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES(1, 'BDT', '??????????????????????????', 2, '83.00');
INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES(2, 'USD', '$', 1, '1.00');
INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES(3, 'INR', 'R', 1, '0.50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE IF NOT EXISTS `customer_info` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuntomer_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `membership_type` int(11) DEFAULT NULL COMMENT '1=bronze,2=silver,3=gold,4=platinum,5vip',
  `customer_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `customer_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorite_delivery_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `cuntomer_no`, `membership_type`, `customer_name`, `customer_email`, `password`, `customer_token`, `customer_address`, `customer_phone`, `customer_picture`, `favorite_delivery_address`, `crdate`, `is_active`) VALUES(1, 'cusL-0001', 3, 'Walkin', 'test@gmail.com', NULL, 'cO_Sa2fwscE:APA91bEFDD0sbV52pZPwJEl8MEUCcHBg2wIGjKfelfbiytAj4nJlPsKf8sSupfElBq-nm36DCkjYDEoUcA7qvtzKu4vDqjutF23f6Y_0uw4L_PlJIrtl61y4s-t5OKFAmdaU9OUQTtYS', 'dhaka', '8801717426371', NULL, 'ddd', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_membership_map`
--

DROP TABLE IF EXISTS `customer_membership_map`;
CREATE TABLE IF NOT EXISTS `customer_membership_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `active_date` date NOT NULL,
  `active_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saleinvoice` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marge_order_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `thirdpartyinvoiceid` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyreason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `splitpay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no split,1=split',
  `isupdate` int(11) DEFAULT NULL,
  `shipping_date` datetime DEFAULT '1790-01-01 01:01:01',
  `tokenprint` int(11) NOT NULL DEFAULT 0 COMMENT '1=print done,0=not done',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
CREATE TABLE IF NOT EXISTS `customer_type` (
  `customer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT 0,
  PRIMARY KEY (`customer_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(1, 'Walk In Customer', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(2, 'Online Customer', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(3, 'Third Party', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(4, 'Take Way', 0);
INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES(99, 'QR Customer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_table`
--

DROP TABLE IF EXISTS `custom_table`;
CREATE TABLE IF NOT EXISTS `custom_table` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_table`
--

INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(52, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EU3APTYY');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(54, 'French Suicine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EXL9WSCL');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(55, 'Chinese Cuisine', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'E3Y1WJMB');
INSERT INTO `custom_table` (`custom_id`, `custom_field`, `custom_data_type`, `custom_data`, `employee_id`) VALUES(56, 'Kitchen Lead', 1, 'coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides ', 'EBK2UPRA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(8, 'ACCOUNTING', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(9, 'Human Resource', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(10, 'Delivery department', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(11, 'Garage and Parking', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(12, 'Manager', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(13, 'Restaurant', 0);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(14, 'Waiter', 13);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(15, 'Senior Accountant', 8);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(16, 'Kitchen Manager', 12);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(17, 'Chef', 13);
INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES(18, 'Sales Manager', 12);

-- --------------------------------------------------------

--
-- Table structure for table `duty_type`
--

DROP TABLE IF EXISTS `duty_type`;
CREATE TABLE IF NOT EXISTS `duty_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duty_type`
--

INSERT INTO `duty_type` (`id`, `type_name`) VALUES(1, 'Full Time');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(2, 'Part Time');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(3, 'Contructual');
INSERT INTO `duty_type` (`id`, `type_name`) VALUES(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
CREATE TABLE IF NOT EXISTS `email_config` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`email_config_id`, `smtp_host`, `smtp_port`, `smtp_password`, `protocol`, `mailpath`, `mailtype`, `sender`, `api_key`, `status`) VALUES(1, 'ssl://smtp.googlemail.com', '465', '123456', 'SMTP', '/usr/sbin/sendmail', 'html', 'ainalcse@gmail.com', '22c4c92a-e5a8-4293-b64c-befc9248521e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_benifit`
--

DROP TABLE IF EXISTS `employee_benifit`;
CREATE TABLE IF NOT EXISTS `employee_benifit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
CREATE TABLE IF NOT EXISTS `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `class_code_desc` varchar(100) DEFAULT NULL,
  `class_acc_date` date DEFAULT NULL,
  `class_status` tinyint(4) DEFAULT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) DEFAULT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(162, 'EY2T1OWA', '4', 'jahangir', NULL, 'Ahmad', 'jahangir@gmail.com', '0195511016', NULL, NULL, NULL, './application/modules/employee/assets/images/2018-09-20/pra.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 3, NULL, 'New York', 'New', 234234, 0, 1, '2018-09-19', '2018-09-19', '2018-09-19', 'sdfasdf', 2, '2018-09-26', 1, 323, 2, '234', 324234, 2523, '234', '234532', '', '', '1970-01-01', 1, NULL, '0', 'dfasdfsdf', '2018-09-19', 1, 'Bangladesh', 2, 'sunni', '234324', '23423', 1, 1, 'u@gmail.com', 'b@gmail.com', 'dsfsdf', 'dsfdsf', 'sdfsdf', '42342323', '234234', '234234', '2343', '234', '324234', '324324');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(165, '145454', '6', 'Hm', NULL, 'Isahaq', 'hmisahaq@gmail.com', '2344098234', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 6, NULL, 'Alabama', 'deom', 3243, 0, 1, '2018-09-20', '2018-09-20', '2018-09-29', 'fsdf', 1, '2018-09-29', 1, 234, 3, '234', 0, 0, '', '', '', '', '1970-01-01', 1, NULL, '0', '324', '2018-09-29', 1, 'Bangladesh', 1, 'sdfsdf', '', '23423', 1, 1, '234', 'sd', '82309423', '', '234', '324234', '34242', '546456', '', '', '', '');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(166, 'EQLAJFUW', '6', 'Ainal', '', 'Haque', 'ainal@gmail.com', '01715234991', NULL, NULL, NULL, './application/modules/hrm/assets/images/2019-01-22/u.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 0, NULL, 'Alabama', '', 0, 1, 1, '2018-11-12', '2018-11-12', '2018-11-12', '', 1, '2018-11-12', 1, 100, 1, '', 0, 0, '', '', '', '', '2018-11-12', 1, NULL, '0', '', '2018-11-12', 1, 'Bangladesh', 1, '', '', '3425', 1, 1, '', '', '017123657332', '', '017123657332', '017123657332', '017123657332', '017123657332', '', '', '', '');
INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES(168, 'E97E9SJT', '1', 'Manik ', '', 'Hassan', 'manik@gmail.com', '01913251229', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, 0, NULL, 'Alabama', 'Dhaka', 143325, 1, 1, '2019-01-01', '2019-01-01', '2021-01-31', 'sdfs', 1, '2022-01-09', 1, 100, 1, '', 0, 0, '', '', '', '', '2019-01-09', 1, NULL, '0', '', '1970-01-01', 1, 'Bangladesh', 1, '', '', 'e4dfg', 1, 1, '', '', '34353636', '', '3636', '345345', '3453', '3453', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--

DROP TABLE IF EXISTS `employee_performance`;
CREATE TABLE IF NOT EXISTS `employee_performance` (
  `emp_per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

DROP TABLE IF EXISTS `employee_salary_payment`;
CREATE TABLE IF NOT EXISTS `employee_salary_payment` (
  `emp_sal_pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

DROP TABLE IF EXISTS `employee_salary_setup`;
CREATE TABLE IF NOT EXISTS `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal_pay_type`
--

DROP TABLE IF EXISTS `employee_sal_pay_type`;
CREATE TABLE IF NOT EXISTS `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) UNSIGNED NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

DROP TABLE IF EXISTS `emp_attendance`;
CREATE TABLE IF NOT EXISTS `emp_attendance` (
  `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

DROP TABLE IF EXISTS `expense_item`;
CREATE TABLE IF NOT EXISTS `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `foodvariable`
--

DROP TABLE IF EXISTS `foodvariable`;
CREATE TABLE IF NOT EXISTS `foodvariable` (
  `availableID` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`availableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES(1, 'Male');
INSERT INTO `gender` (`id`, `gender_name`) VALUES(2, 'Female');
INSERT INTO `gender` (`id`, `gender_name`) VALUES(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `grand_loan`
--

DROP TABLE IF EXISTS `grand_loan`;
CREATE TABLE IF NOT EXISTS `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `uom_id` int(11) NOT NULL,
  `stock_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `min_stock` decimal(10,2) NOT NULL DEFAULT 1.00,
  `status` int(3) NOT NULL DEFAULT 0 COMMENT '0=kitchenitems,1=otheritems',
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
CREATE TABLE IF NOT EXISTS `item_category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_foods`
--

DROP TABLE IF EXISTS `item_foods`;
CREATE TABLE IF NOT EXISTS `item_foods` (
  `ProductsID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `productvat` decimal(10,3) DEFAULT 0.000,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `isgroup` int(11) DEFAULT NULL,
  `is_customqty` int(11) DEFAULT 0,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL,
  PRIMARY KEY (`ProductsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisement`
--

DROP TABLE IF EXISTS `job_advertisement`;
CREATE TABLE IF NOT EXISTS `job_advertisement` (
  `job_adv_id` int(10) UNSIGNED NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `spanish` text DEFAULT NULL,
  `turkish` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1825 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(2, 'login', 'Login', 'Iniciar Sesi???????????????n', 'Oturum a???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(3, 'email', 'Email Address', 'email', 'E-Posta Adresi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(4, 'password', 'Password', 'Contrase???????????????a', 'Parola');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(5, 'reset', 'Reset', 'Reiniciar', 'S????????????????????f????????????????????rla');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(6, 'dashboard', 'Dashboard', 'Tablero', 'G???????????????sterge Paneli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(7, 'home', 'Home', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(8, 'profile', 'Profile', 'Perfil', 'profil ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(9, 'profile_setting', 'Profile Setting', 'Configuraci???????????????n de Perfil', 'Profil Ayar???????????????????? ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(10, 'firstname', 'First Name', 'Primer Nombre', '????????????????????sim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(11, 'lastname', 'Last Name', 'Segundo Nombre', 'Soyad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(12, 'about', 'About', 'Sobre Nosotros', 'Hakk????????????????????nda');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(13, 'preview', 'Preview', 'Vista Previa', '????????????????????????n izleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(14, 'image', 'Image', 'Imagen', 'Resim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(15, 'save', 'Save', 'Guardar', 'Kaydet');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(16, 'upload_successfully', 'Upload Successfully!', 'Subir con ???????????????xito', 'Y???????????????kleme Ba????????????????????ar????????????????????l????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(17, 'user_added_successfully', 'User Added Successfully!', 'Usuario agregado exitosamente', 'Kullan????????????????????c???????????????????? Ba????????????????????ar????????????????????yla Eklendi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(18, 'please_try_again', 'Please Try Again...', 'Intentar de Nuevo', 'L???????????????tfen Tekrar Deneyin...');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(19, 'inbox_message', 'Inbox Messages', 'Mensaje', 'Gelen Kutusu Mesajlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(20, 'sent_message', 'Sent Message', 'Mensaje enviado', 'Mesaj G???????????????nderildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(21, 'message_details', 'Message Details', 'Detalles del Mensaje', 'Mesaj Detaylar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(22, 'new_message', 'New Message', 'Nuevo Mensaje', 'Yeni Mesaj ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(23, 'receiver_name', 'Receiver Name', 'Nombre del Receptor', 'Al????????????????????c???????????????????? ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(24, 'sender_name', 'Sender Name', 'Nombre de remitente', 'G???????????????nderen ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(25, 'subject', 'Subject', 'Sujeto', 'Konu ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(26, 'message', 'Message', 'Mensaje', 'Mesaj');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(27, 'message_sent', 'Message Sent!', 'Mensaje Enviado', 'Mesaj???????????????????? g???????????????nderildi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(28, 'ip_address', 'IP Address', 'ip_address', 'IP adresi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(29, 'last_login', 'Last Login', '???????????????ltimo Inicio de Sesi???????????????n', 'Son giri????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(30, 'last_logout', 'Last Logout', '???????????????ltimo Cierre de Sesi???????????????n', 'Son ?????????????????????????????????????????k????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(31, 'status', 'Status', 'Estatus', 'Durum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(32, 'delete_successfully', 'Delete Successfully!', 'Eliminado Exitosamente', 'Ba????????????????????ar????????????????????yla Silindi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(33, 'send', 'Send', 'Enviar', 'G???????????????nder');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(34, 'date', 'Date', 'Fecha', 'Tarih');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(35, 'action', 'Action', 'Acci???????????????n', 'Aksiyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(36, 'sl_no', 'SL No.', 'sl no', 'Sl. No.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(37, 'are_you_sure', 'Are You Sure ? ', '????????????????????Estas Seguro?', 'Emin misiniz ?');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(38, 'application_setting', 'Application Setting', 'Configuraci???????????????n de Aplicaciones', 'Uygulama Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(39, 'application_title', 'Application Title', 'Titulo Aplicaci???????????????n', 'Uygulama Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(40, 'address', 'Address', 'Direcciones', 'Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(41, 'phone', 'Phone', 'Tel???????????????fono', 'Telefon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(42, 'favicon', 'Favicon', 'Favicon', 'K????????????????????sayol Simgesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(43, 'logo', 'Logo', 'Logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(44, 'language', 'Language', 'Lenguaje', 'Dil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(45, 'left_to_right', 'Left To Right', 'De Izquierda a Derecha ', 'Soldan sa????????????????????a');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(46, 'right_to_left', 'Right To Left', 'Derecha a izquierda', 'Sa????????????????????dan sola');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(47, 'footer_text', 'Footer Text', 'Texto del pie de p???????????????gina', 'Altbilgi Metni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(48, 'site_align', 'Application Alignment', 'Alineaci???????????????n del sitio', 'Uygulama D???????????????zenleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(49, 'welcome_back', 'Welcome Back!', 'Bienvenido de vuelta', 'Tekrar ho????????????????????geldiniz!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(50, 'please_contact_with_admin', 'Please Contact With Admin', 'Por favor Contactar con el Admin', 'L???????????????tfen Y???????????????netici ile ????????????????????leti????????????????????ime Ge???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(51, 'incorrect_email_or_password', 'Incorrect Email/Password', 'Correo o Contrase???????????????a Incorrectos ', 'Yanl???????????????????????????????????????? E-posta yada ????????????????????ifre');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(52, 'select_option', 'Select Option', 'Seleccionar opci???????????????n', 'Se???????????????iminizi ????????????????????????????????????????aretleyin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(53, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'ftp_setting', 'Veri Senkronizasyonu [FTP Ayar????????????????????]');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(54, 'hostname', 'Host Name', 'hostname', 'Ana Bilgisayar Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(55, 'username', 'User Name', 'Nombre de usuario ', 'Kullan????????????????????c???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(56, 'ftp_port', 'FTP Port', 'ftp_port', 'FTP Ba????????????????????lant???????????????????? Noktas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(57, 'ftp_debug', 'FTP Debug', 'ftp_debug', 'FTP Hata Ay????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(58, 'project_root', 'Project Root', 'Ra???????????????z de Proyecto', 'Project Root');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(59, 'update_successfully', 'Update Successfully', 'Actualizaci???????????????n exitosa', 'Ba????????????????????ar????????????????????yla G???????????????ncellendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(60, 'save_successfully', 'Save Successfully!', 'Guardado con ???????????????xito', 'Ba????????????????????ar????????????????????yla Kaydet!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(61, 'delete_successfully', 'Delete Successfully!', 'Eliminado Exitosamente', 'Ba????????????????????ar????????????????????yla Silindi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(62, 'internet_connection', 'Internet Connection', 'Conexi???????????????n a Internet ', '????????????????????nternet ba????????????????????lant????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(63, 'ok', 'Okay', 'Ok', 'Tamam');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(64, 'not_available', 'Not Available', 'No Disponible', 'M???????????????sait De????????????????????il ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(65, 'available', 'Available', 'Disponible', 'Mevcut');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(66, 'outgoing_file', 'Outgoing File', 'Archivo de Salida', 'Giden Dosya');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(67, 'incoming_file', 'Incoming File', 'Archivo Entrante', 'Gelen Dosya');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(68, 'data_synchronize', 'Data Synchronize', 'Sincronizar Datos', 'Veri Senkronizasyonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(69, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Incapaz de cargar el archivo, por favor verificar configuraci???????????????n', 'Dosya y???????????????klenemiyor! l???????????????tfen yap????????????????????land????????????????????rmay???????????????????? kontrol edin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(70, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Por favor sincronizar sus Ajustes', 'L???????????????tfen e????????????????????zamanlay????????????????????c???????????????????? ayarlar????????????????????n???????????????????? yap????????????????????land????????????????????r????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(71, 'download_successfully', 'Download Successfully', 'Descargado con ?????????????????????xito ', 'Ba????????????????????ar????????????????????yla ????????????????????ndirdi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(72, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Incapaz de descargar archivo, por favor verificar configuraci???????????????n', 'Dosya indirilemiyor! l???????????????tfen yap????????????????????land????????????????????rmay???????????????????? kontrol edin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(73, 'data_import_first', 'Data Import First', 'Importar de primero la db', '????????????????????????nce Verileri ???????????????????????????????????e Aktarma');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(74, 'data_import_successfully', 'Data Import Successfully!', 'Importaci???????????????n de Datos con ?????????????????????xito ', 'Veri Aktar????????????????????m???????????????????? Ba????????????????????ar????????????????????l????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(75, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to Import Data! Please Check Configuration / SQL File.', 'Incapaz de importar data, por favor verificar configuraci???????????????n o archivo sql', 'Veriler i???????????????e aktar????????????????????lam????????????????????yor! l???????????????tfen konfig???????????????rasyonu / SQL dosyas????????????????????n???????????????????? kontrol edin.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(76, 'download_data_from_server', 'Download Data from Server', 'Descargar Datos Desde el Servidor', 'Sunucudan Veri ????????????????????ndir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(77, 'data_import_to_database', 'Data Import To Database', 'Importar los Datos a la Base de Datos', 'Veritaban????????????????????na Veri Aktar????????????????????m????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(79, 'data_upload_to_server', 'Data Upload to Server', 'Cargar Datos al Servidor', 'Sunucuya Veri Y???????????????kleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(80, 'please_wait', 'Please Wait', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(81, 'ooops_something_went_wrong', ' Ops Something Went Wrong...', 'Algo ha salido mal', ' Hay aksi, bir ????????????????????eyler ters gitti ...');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(82, 'module_permission_list', 'Module Permission List', 'Lista de M???????????????dulos con Permisos ', 'Mod???????????????l ????????????????????zin Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(83, 'user_permission', 'User Permission', 'Permiso del usuario', 'Kullan????????????????????c???????????????????? ????????????????????zni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(84, 'add_module_permission', 'Add Module Permission', 'Agregar Permisos de Modulo', 'Mod???????????????l ????????????????????zni Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(85, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permisos del Modulo Agregados Correctamente', 'Mod???????????????l ????????????????????zni Ba????????????????????ar????????????????????yla Eklendi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(86, 'update_module_permission', 'Update Module Permission', 'Actualizar permiso del m???????????????dulo', 'Mod???????????????l ????????????????????znini G???????????????ncelleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(87, 'download', 'Download', 'Descargar', '????????????????????ndir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(88, 'module_name', 'Module Name', 'Nombre del Modulo', 'Mod???????????????l Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(89, 'create', 'Create', 'Crear', 'Olu????????????????????turmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(90, 'read', 'Read', 'Leer', 'Oku');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(91, 'update', 'Update', 'Actualizar', 'G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(92, 'delete', 'Delete', 'Eliminar', 'Sil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(93, 'module_list', 'Module List', 'Lista de M???????????????dulos', 'Mod???????????????l Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(94, 'add_module', 'Add Module', 'Agregar M???????????????dulo', 'Mod???????????????l Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(95, 'directory', 'Module Directory', 'Directorio ', 'Mod???????????????l Rehberi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(96, 'description', 'Description', 'Descripci???????????????n', 'A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(97, 'image_upload_successfully', 'Image Upload Successfully!', 'Carga de Imagen con ?????????????????????xito ', 'Resim Ba????????????????????ar????????????????????yla Y???????????????klendi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(98, 'module_added_successfully', 'Module Added Successfully', 'Modulo Agrego Exitosamente ', 'Mod???????????????l Ba????????????????????ar????????????????????yla Eklendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(99, 'inactive', 'Inactive', 'Inactivo', 'Aktif De????????????????????il');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(100, 'active', 'Active', 'Activo', 'Aktif');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(101, 'user_list', 'User List', 'Lista del usuario', 'Kullan????????????????????c???????????????????? listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(102, 'see_all_message', 'See All Messages', 'Ver todos los mensajes', 'T???????????????m Mesajlar???????????????????? G???????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(103, 'setting', 'Setting', 'Configuraciones', 'Ayarlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(104, 'logout', 'Logout', 'Cerrar Sesi???????????????n', '?????????????????????????????????????????k???????????????????????????????????????? Yap');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(105, 'admin', 'Admin', 'Admin', 'Y???????????????netici');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(106, 'add_user', 'Add User', 'Agregar Usuario', 'Kullan????????????????????c???????????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(107, 'user', 'User', 'Usuario', 'Kullan????????????????????c????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(108, 'module', 'Module', 'Modulo', 'Mod???????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(109, 'new', 'New', 'Nuevo', 'Yeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(110, 'inbox', 'Inbox', 'Bandeja de Entrada', 'Gelen kutusu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(111, 'sent', 'Sent', 'Enviando', 'G???????????????nderildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(112, 'synchronize', 'Synchronize', 'Sincronizar', 'Senkronize et');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(113, 'data_synchronizer', 'Data Synchronizer', 'Sincronizar Datos', 'Veri Senkronizat???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(114, 'module_permission', 'Module Permission', 'Permisos de Modulo ', 'Mod???????????????l ????????????????????zni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(115, 'backup_now', 'Backup Now!', 'Copia de seguridad Ahora', '????????????????????imdi yedekle!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(116, 'restore_now', 'Restore Now!', 'Reiniciar fila', '????????????????????imdi Geri Y???????????????kle!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(117, 'backup_and_restore', 'Backup and Restore', 'Copia de Seguridad y Restaurar', 'Yedekle ve yeniden y???????????????kle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(118, 'captcha', 'Captcha Word', 'captcha', 'Captcha Kelime');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(119, 'database_backup', 'Database Backup', 'Copia de Seguridad de la Base de Datos', 'Veritaban???????????????????? Yedeklemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(120, 'restore_successfully', 'Restore Successfully', 'Restaurado con ???????????????xito', 'Ba????????????????????ar????????????????????yla Geri Y???????????????klendi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(121, 'backup_successfully', 'Backup Successfully', 'Copia de Seguridad Realizada con ???????????????xito ', 'Ba????????????????????ar????????????????????yla Yedekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(122, 'filename', 'File Name', 'Nombre del Archivo', 'Dosya ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(123, 'file_information', 'File Information', 'Informaci???????????????n del Archivo', 'Dosya bilgisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(124, 'size', 'Size', 'Talla', 'Boyut');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(125, 'backup_date', 'Backup Date', 'Fecha de Copia de Seguridad', 'Yedekleme Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(126, 'overwrite', 'Overwrite', 'Sobrescribir ', '??????????????????zerine yaz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(127, 'invalid_file', 'Invalid File!', 'Archivo Inv???????????????lido ', 'Ge???????????????ersiz dosya!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(128, 'invalid_module', 'Invalid Module', 'Modulo Inv???????????????lido ', 'Ge???????????????ersiz Mod???????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(129, 'remove_successfully', 'Remove Successfully!', 'Eliminado con Exito', 'Ba????????????????????ar????????????????????yla Kald????????????????????r????????????????????ld????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(130, 'install', 'Install', 'Instalar', 'Y???????????????klemek');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(131, 'uninstall', 'Uninstall', 'Desinstalar', 'Kald????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(132, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'Las mesas no est???????????????n disponibles en la base de datos ', 'Masalar Veri Taban????????????????????nda Mevcut De????????????????????il');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(133, 'no_tables_are_registered_in_config', 'No tables are registered in config.php', 'Sin Tablas Registradas en la configuraci???????????????n ', 'Hi???????????????bir Masa Kay????????????????????tl???????????????????? De????????????????????il');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(134, 'enquiry', 'Enquiry', 'Petici???????????????n', 'Sorgu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(135, 'read_unread', 'Read/Unread', 'Leer', 'Okundu / Okunmad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(136, 'enquiry_information', 'Enquiry Information', 'Informaci???????????????n de la Petici???????????????n', 'Sorgu Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(137, 'user_agent', 'User Agent', 'Agente del usuario', 'Kullan????????????????????c???????????????????? Temsilcisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(138, 'checked_by', 'Checked By', 'Revisado Por', 'Taraf????????????????????ndan kontrol edilmi????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(139, 'new_enquiry', 'New Enquiry', 'Nueva Consulta', 'Yeni Sorgu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(140, 'crud', 'Crud', 'Crear Leer Editar Borrar', '????????????????????????????????????p');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(141, 'view', 'View', 'Visualizar', 'G???????????????r???????????????n???????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(142, 'name', 'Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(143, 'add', 'Add', 'agregar', 'Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(144, 'ph', 'Phone', 'PH', 'Telefon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(145, 'cid', 'SL No', 'Codigo ID', 'Y. ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(146, 'view_atn', 'Attendance View', 'Visualizar atn', 'Kat????????????????????l????????????????????m G???????????????r???????????????n???????????????m???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(147, 'mang', 'Employee Management', 'Admin', '?????????????????????al????????????????????????????????????????an Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(148, 'designation', 'Designation', 'Desasignar  ', 'Tan????????????????????mlama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(149, 'test', 'Test', 'Prueba', 'Test');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(150, 'sl', 'SL', 'ID', 'Se???????????????im Listesi (SL)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(151, 'bdtask', 'BDTASK', 'Tarea de Base de Datos', 'ARS Dijital ????????????????????????????????????z???????????????mler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(152, 'practice', 'Practice', 'Practica', 'Uygulama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(153, 'branch_name', 'Branch Name', 'Nombre del Sucursal', '????????????????????ube Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(154, 'chairman_name', 'Chairman', 'Nombre del Presidente/Gerente', 'Y???????????????netici Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(155, 'b_photo', 'Photo', 'Foto Corporativa', 'Foto????????????????????raf');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(156, 'b_address', 'Address', 'Direcci???????????????n Corporativa', 'Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(157, 'position', 'Designation', 'Posici???????????????n', 'Tan????????????????????mlama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(158, 'advertisement', 'Advertisement', 'Anuncios', 'Reklam ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(159, 'position_name', 'Position', 'Nombre de la Posici???????????????n', 'Durum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(160, 'position_details', 'Details', 'Detalles de la Posici???????????????n', 'Detaylar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(161, 'circularprocess', 'Recruitment', 'Proceso Circular', '????????????????????????????????????????e Al????????????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(162, 'pos_id', 'Position', 'Identificaci???????????????n de la Publicaci???????????????n', 'Durum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(163, 'adv_circular_date', 'Publish Date', 'Fecha de circulaci???????????????n', 'Yay????????????????????n tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(164, 'circular_dadeline', 'Deadline', 'Fecha limite de Circular', '????????????????????????????????????????e Al????????????????????m Zaman????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(165, 'adv_file', 'Documents', 'Archivo', 'Belgeler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(166, 'adv_details', 'Details', 'Detalles de anuncio', 'Detaylar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(167, 'attendance', 'Attendance', 'Asistencia', 'Kat????????????????????l????????????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(168, 'employee', 'Employee', 'Empleado', '?????????????????????al????????????????????????????????????????an');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(169, 'emp_id', 'Employee Name', 'Identificaci???????????????n del Empleado', '?????????????????????al????????????????????????????????????????an Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(170, 'sign_in', 'Sign In', 'Ingresar', 'Oturum a???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(171, 'sign_out', 'Sign Out', 'Salir', 'Oturumu Kapat');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(172, 'staytime', 'Stay Time', 'Tiempo de estancia', 'Kalma S???????????????resi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(173, 'abc', 'abc', 'Abc', 'abc');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(174, 'first_name', 'First Name', 'Primer Nombre', '????????????????????sim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(175, 'last_name', 'Last Name', 'Apellido', 'Soyad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(176, 'alter_phone', 'Alternative Phone', 'Tel???????????????fono Alternativo', 'Alternatif telefon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(177, 'present_address', 'Present Address', 'Direcci???????????????n Actual', 'G???????????????ncel adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(178, 'parmanent_address', 'Permanent Address', 'Direcci???????????????n de Referencia', 'Daimi Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(179, 'candidateinfo', 'Candidate Info', 'Informaci???????????????n de Postulante', 'Aday Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(180, 'add_advertisement', 'Add Advertisement', 'Agregar Anuncio', 'Reklam Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(181, 'advertisement_list', 'Manage Advertisement ', 'Lista de anuncios', 'Reklam???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(182, 'candidate_basic_info', 'Candidate Information', 'Informaci???????????????n B???????????????sica del Postulante', 'Aday Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(183, 'can_basicinfo_list', 'Manage Candidate', 'Lista de Informaci???????????????n B???????????????sica del Postulante', 'Aday???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(184, 'add_canbasic_info', 'Add New Candidate', 'Agregar Info', 'Yeni Aday Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(185, 'candidate_education_info', 'Candidate Educational Info', 'Informaci???????????????n Educativa del Postulante', 'Aday E????????????????????itim Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(186, 'can_educationinfo_list', 'Candidate Edu Info List', 'CAN Listado de Educaci???????????????n ', 'Aday E????????????????????itim Bilgileri listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(187, 'add_edu_info', 'Add Educational Info', 'Agregar informaci???????????????n Educativa', 'E????????????????????itim Bilgileri Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(188, 'can_id', 'Candidate Id', 'CAN ID', 'Aday Kimli????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(189, 'degree_name', 'Obtained Degree', 'Nombre del T???????????????tulo', 'Elde Edilen Derece');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(190, 'university_name', 'University', 'Nombre de la universidad', '??????????????????niversite');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(191, 'cgp', 'CGPA', 'CGP', 'CGPA');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(192, 'comments', 'Comments', 'Comentarios', 'Yorumlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(193, 'signature', 'Signature', 'Firma', '????????????????????mza');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(194, 'candidate_workexperience', 'Candidate Work Experience', 'Experiencia Laboral del Postulante', 'Aday ???????????????????????????????????????? Deneyimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(195, 'can_workexperience_list', 'Work Experience List', 'Puede Listar experiencias', '???????????????????????????????????????? Deneyimi listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(196, 'add_can_experience', 'Add Work Experience', 'Agregar Experiencias', '???????????????????????????????????????? Deneyimi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(197, 'company_name', 'Company Name', 'Nombre de la Compania', '????????????????????irket Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(198, 'working_period', 'Working Period', 'Periodo de trabajo ', '?????????????????????al????????????????????????????????????????ma d???????????????zeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(199, 'duties', 'Duties', 'Funciones', 'G???????????????revler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(200, 'supervisor', 'Supervisor', 'Supervisor', 'M???????????????d???????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(201, 'candidate_workexpe', 'Candidate Work Experience', 'Experiencia Laboral del Postulante', 'Aday ???????????????????????????????????????? Deneyimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(202, 'candidate_shortlist', 'Candidate Shortlist', 'Lista Corta de Postulantes', 'Aday K????????????????????sa Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(203, 'shortlist_view', 'Manage Shortlist', 'Vista de Lista corta', 'H????????????????????zl???????????????????? Listeyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(204, 'add_shortlist', 'Add Shortlist', 'Agregar Lista Peque???????????????a', 'K????????????????????sa Liste Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(205, 'date_of_shortlist', 'Shortlist Date', 'Fecha de Preselecci???????????????n', 'K????????????????????sa Liste Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(206, 'interview_date', 'Interview Date', 'Fecha de Entrevista', 'G???????????????r???????????????????????????????????me tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(207, 'submit', 'Submit', 'Enviar', 'Teslim Etmek ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(208, 'candidate_id', 'Your ID', 'Identificaci???????????????n del Postulante', 'Kimli????????????????????iniz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(209, 'job_adv_id', 'Job Position', 'Id Anuncio Trabajo', '???????????????????????????????????????? pozisyonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(210, 'sequence', 'Sequence', 'Secuencia', 'S????????????????????ra');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(211, 'candidate_interview', 'Interview', 'Entrevista del Postulante', 'G???????????????r???????????????????????????????????me');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(212, 'interview_list', 'Interview list', 'Lista de Entrevistas', 'G???????????????r???????????????????????????????????me listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(213, 'add_interview', 'Add interview', 'Agregar Entrevista', 'G???????????????r???????????????????????????????????me ekleyin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(214, 'interviewer_id', 'Interviewer', 'Identificaci???????????????n de Entrevista', 'G???????????????r???????????????????????????????????meci');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(215, 'interview_marks', 'Viva Marks', 'Entrevistadas con Marcas', 'G???????????????r???????????????????????????????????me Notlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(216, 'written_total_marks', 'Written Total Marks', 'Marcas totales escritas', 'Toplam Yaz????????????????????l???????????????????? Notlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(217, 'mcq_total_marks', 'MCQ Total Marks', 'Total de Marcas mcq', 'MCQ Toplam Notlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(218, 'recommandation', 'Recommendation', 'Recomendaci???????????????n', 'Tavsiye');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(219, 'selection', 'Selection', 'Selecci???????????????n', 'Se???????????????im');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(220, 'details', 'Details', 'Detalles', 'Detaylar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(221, 'candidate_selection', 'Candidate Selection', 'Selecci???????????????n del Postulante', 'Aday Se???????????????imi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(222, 'selection_list', 'Selection List', 'Lista de selecci???????????????n', 'Se???????????????im Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(223, 'add_selection', 'Add Selection', 'Agregar Selecci???????????????n', 'Se???????????????im Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(224, 'employee_id', 'Employee Id', 'Identificaci???????????????n del Empleado', '?????????????????????al????????????????????????????????????????an ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(225, 'position_id', '1', 'Identificaci???????????????n de la Posici???????????????n', 'Detay ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(226, 'selection_terms', 'Selection Terms', 'T???????????????rminos de selecci???????????????n', 'Se???????????????im Ko????????????????????ullar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(227, 'total_marks', 'Total Marks', 'Marcas totales', 'Toplam Puan');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(228, 'photo', 'Picture', 'Foto', 'Resim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(229, 'your_id', 'Your ID', 'Tu identificaci???????????????n', 'Kimlik Numaran????????????????????z');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(230, 'change_image', 'Change Photo', 'Cambiar Imagen', 'Foto????????????????????raf???????????????????? de????????????????????i????????????????????tir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(231, 'picture', 'Photograph', 'Imagen', 'Foto????????????????????raf');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(232, 'ad', 'Add', 'Agregar', 'Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(233, 'write_y_p_info', 'Write Your Personal Information', 'Escribir_y_p_info', 'Ki????????????????????isel Bilgilerinizi Yaz????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(234, 'emp_position', 'Employee Position', 'Posici???????????????n del Empleado', '?????????????????????al????????????????????????????????????????an Pozisyonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(235, 'add_pos', 'Add Position', 'Agregar POS', 'Pozisyon Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(236, 'list_pos', 'List of Position', 'Lista pos', 'Pozisyon Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(237, 'emp_salary_stup', 'Employee Salary Setup', 'Salario del Empleado', '?????????????????????al????????????????????????????????????????an Maa???????????????????? D???????????????zeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(238, 'add_salary_stup', 'Add Salary Setup', 'Agregar Salario Stup', 'Maa???????????????????? Kurulumu Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(239, 'list_salarystup', 'List of Salary Setup', 'Lista de Sueldos', 'Maa???????????????????? Plan Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(240, 'emp_sal_name', 'Salary Name', 'Nombre del Salario', 'Maa???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(241, 'emp_sal_type', 'Salary Type', 'Tipo de Salario', 'Maa???????????????????? T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(242, 'emp_performance', 'Employee Performance', 'Rendimiento del empleado', '?????????????????????al????????????????????????????????????????an performans????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(243, 'add_performance', 'Add Performance', 'Agregar Configuraci???????????????n', 'Performans Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(244, 'list_performance', 'List of Performance', 'Lista de Rendimiento', 'Performans Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(245, 'note', 'Note', 'Nota', 'Not');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(246, 'note_by', 'Note By', 'Nota Por', 'Not yazan');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(247, 'number_of_star', 'Number of Star', 'N???????????????mero de estrellas', 'Y????????????????????ld????????????????????z Say????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(248, 'updated_by', 'Updated By', 'Actualizado por', 'Taraf????????????????????ndan g???????????????ncellendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(249, 'emp_sal_payment', 'Manage Employee Salary', 'Pago de Salario al Empleado', '?????????????????????al????????????????????????????????????????an Maa????????????????????????????????????????n???????????????????? Y???????????????netin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(250, 'add_payment', 'Add Payment', 'Agregar Pago', '????????????????????????deme Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(251, 'list_payment', 'List of payment', 'Lista de Pagos', '????????????????????????deme listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(252, 'total_salary', 'Total Salary', 'Salario total', 'Toplam Maa????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(253, 'total_working_minutes', 'Working Hour', 'Total de minutos trabajados', 'Mesai Saati');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(254, 'payment_due', 'Payment Type', 'Pago Pendiente', '????????????????????????deme ????????????????????ekli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(255, 'payment_date', 'Date', 'Fecha de Pago', 'Tarih');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(256, 'paid_by', 'Paid By', 'Pag??????????????? por', '????????????????????????deyen');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(257, 'view_employee_payment', 'Employee Payment List', 'Ver pago del trabajador', '?????????????????????al????????????????????????????????????????an ????????????????????????deme Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(258, 'sal_payment_type', 'Salary Payment Type', 'Tipo de pago de salario', 'Maa???????????????????? ????????????????????????deme T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(259, 'add_payment_type', 'Add Payment Type', 'Agregar Tipo de Pago', '????????????????????????deme T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(260, 'list_payment_type', 'List of Payment Type', 'Lista de Tipo de Pagos', '????????????????????????deme T???????????????r??????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(261, 'payment_period', 'Payment Period', 'Periodo de Pago', '????????????????????????deme Periyodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(262, 'payment_type', 'Payment Type', 'Tipo de Pago', '????????????????????????deme ????????????????????ekli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(263, 'time', 'Punch Time', 'Tiempo', 'S???????????????re ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(264, 'shift', 'Shift', 'Turno', 'De????????????????????i????????????????????iklik');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(265, 'location', 'Location', 'Ubicaci???????????????n ', 'Yer');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(266, 'logtype', 'Log Type', 'Tipo de Logo', 'Log Kay????????????????????t T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(267, 'branch', 'Location', 'Sucursal', 'Lokasyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(268, 'student', 'Students', 'Estudiante', '????????????????????????????????????????????renci ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(269, 'csv', 'CSV', 'csv', 'CSV');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(270, 'save_successfull', 'Your Data Save Successfully', 'Guardado con ???????????????xito', 'Ba????????????????????ar????????????????????yla Kaydet!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(271, 'successfully_updated', 'Your Data Successfully Updated', 'Actualizado exitosamente', 'Verileriniz Ba????????????????????ar????????????????????yla G???????????????ncellendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(272, 'atn_form', 'Attendance Form', 'Formulario Asistencia', 'Kat????????????????????l????????????????????m Formu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(273, 'atn_report', 'Attendance Report', 'Reporte Asistencia', 'Kat????????????????????l????????????????????m Raporlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(274, 'end_date', 'To', 'Fecha Final', 'Biti???????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(275, 'start_date', 'From', 'Inicio de fecha', 'Ba????????????????????lang??????????????????????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(276, 'done', 'Done', 'Realizado', 'Bitti');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(277, 'employee_id_se', 'Write Employee Id or name here ', 'Id Empleado SE', '?????????????????????al????????????????????????????????????????an Kimli????????????????????ini veya ad????????????????????n???????????????????? buraya yaz????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(278, 'attendance_repor', 'Attendance Report', 'Reporte de Asistencia', 'Kat????????????????????l????????????????????m Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(279, 'e_time', 'End Time', 'e_time', 'Biti???????????????????? zaman????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(280, 's_time', 'Start Time', 'Tiempo s', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????saati');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(281, 'atn_datewiserer', 'Date Wise Report', 'Asistencia Fecha Sabio', 'Tarih Bilge Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(282, 'atn_report_id', 'Date And Id base Report', 'Reporte de Asistencia', 'Tarih ve Kimlik temel Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(283, 'atn_report_time', 'Date And Time report', 'Reporte de Asistencia por Tiempo', 'Tarih ve Saat raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(284, 'payroll', 'Payroll', 'N???????????????mina de sueldos', 'Maa???????????????????? ????????????????????????deme Tablosu(Bordro)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(285, 'loan', 'Loan', 'Pr???????????????stamo', 'Kredi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(286, 'loan_grand', 'Grant Loan', 'Prestamos Grande', 'Hibe Kredisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(287, 'add_loan', 'Add Loan', 'Agregar Pr???????????????stamo', 'Kredi/Bor??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(288, 'loan_list', 'List of Loan', 'Lista de Prestamos', 'Kredi Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(289, 'loan_details', 'Loan Details', 'Detalles del Pr???????????????stamo', 'Kredi Detaylar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(290, 'amount', 'Amount', 'Cantidad', 'Miktar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(291, 'interest_rate', 'Interest Percentage', 'Tasa de Inter???????????????s', 'Faiz Y???????????????zdesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(292, 'installment_period', 'Installment Period', 'Periodo de Pago', 'Taksit S???????????????resi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(293, 'repayment_amount', 'Repayment Total', 'Monto de re-pago', 'Geri ????????????????????????deme Toplam????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(294, 'date_of_approve', 'Approved Date', 'Fecha de Aprobaci???????????????n', 'Onay Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(295, 'repayment_start_date', 'Repayment From', 'Fecha de inicio de repago', 'Geri ????????????????????????deme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(296, 'permission_by', 'Permitted By', 'Permisos Por', '????????????????????zin Veren');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(297, 'grand', 'Grand', 'Concedido', 'Genel');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(298, 'installment', 'Installment', 'Entrega', 'Taksit');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(299, 'loan_status', 'Status', 'Estado del Pr???????????????stamo', 'Stat???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(300, 'installment_period_m', 'Installment Period in Month', 'Periodo de Pago en Meses', 'Ay Baz????????????????????nda Taksit S???????????????resi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(301, 'successfully_inserted', 'Your loan Successfully Granted', 'Insertado exitosamente', 'Krediniz Ba????????????????????ar????????????????????yla Verildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(302, 'loan_installment', 'Loan Installment', 'Pago del Pr???????????????stamo', 'Kredi Taksit');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(303, 'add_installment', 'Add Installment', 'Agregar Cuota', 'Taksit Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(304, 'installment_list', 'List of Installment', 'Lista de Entregas', 'Taksit Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(305, 'loan_id', 'Loan No', 'Identificaci???????????????n de Prestamos ', 'Kredi No');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(306, 'installment_amount', 'Installment Amount', 'Monto de entrega ', 'Taksit tutar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(307, 'payment', 'Payment', 'Pago', '????????????????????????deme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(308, 'received_by', 'Receiver', 'Recibe por', 'Al????????????????????c????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(309, 'installment_no', 'Install No', 'No. de Pago', 'Taksit No.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(310, 'notes', 'Notes', 'Notas', 'Notlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(311, 'paid', 'Paid', 'Pag???????????????', '??????????????????cretli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(312, 'loan_report', 'Loan Report', 'Reporte de Pr???????????????stamo ', 'Kredi Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(313, 'e_r_id', 'Enter Your Employee ID', 'e_r_id', '?????????????????????al????????????????????????????????????????an ID Numaran????????????????????z???????????????????? Girin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(314, 'leave', 'Leave', 'Salir', '?????????????????????????????????????????k????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(315, 'add_leave', 'Add Leave', 'Agregar Salida Temprano', '????????????????????zin Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(316, 'list_leave', 'List of Leave', 'Lista de Salidas', '????????????????????zin Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(317, 'dayname', 'Weekly Leave Day', 'Nombre del D???????????????a', 'Haftal????????????????????k ????????????????????zin G???????????????n???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(318, 'holiday', 'Holiday', 'Asueto', 'Tatil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(319, 'list_holiday', 'List of Holidays', 'Lista de Vacaciones', 'Tatil Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(320, 'no_of_days', 'Number of Days', 'Numero de D???????????????as', 'G???????????????n say????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(321, 'holiday_name', 'Holiday Name', 'Nombre de Asueto', 'Tatil Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(322, 'set', 'Set', 'Configurar', 'Uygula ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(323, 'tax', 'Tax', 'Impuesto', 'Vergi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(324, 'tax_setup', 'Tax Setup', 'Configuraci???????????????n de impuesto', 'Vergi Kurulumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(325, 'add_tax_setup', 'Add Tax Setup', 'Agregar Configuraci???????????????n de Impuestos', 'Vergi T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(326, 'list_tax_setup', 'List of Tax setup', 'Configurar lista de impuestos', 'Vergi Durum listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(327, 'tax_collection', 'Tax collection', 'Recaudaci???????????????n de impuestos', 'Vergi tahsilat????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(328, 'start_amount', 'Start Amount', 'Monto inicial', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????Miktar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(329, 'end_amount', 'End Amount', 'Monto Final', 'Son Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(330, 'rate', 'Tax Rate', 'Valoraci???????????????n', 'Vergi oran????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(331, 'date_start', 'Date Start', 'Fecha de Inicio', 'Baslang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(332, 'amount_tax', 'Tax Amount', 'Cantidad Impuesto', 'Vergi miktar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(333, 'collection_by', 'Collection By', 'Ordenar por', 'Koleksiyona G???????????????re');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(334, 'date_end', 'Date End', 'Fecha de Vencimiento', 'Tarih Biti????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(335, 'income_net_period', 'Income  Net period', 'Periodos de Ingreso', 'D???????????????nem Net Gelir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(336, 'default_amount', 'Default Amount', 'Monto por Defecto', 'Varsay????????????????????lan Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(337, 'add_sal_type', 'Add Salary Type', 'Agregar Tipo de Sal', 'Maa???????????????????? T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(338, 'list_sal_type', 'Salary Type List', 'Lista de Tipo de Sal', 'Maa???????????????????? T???????????????r??????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(339, 'salary_type_setup', 'Salary Type Setup', 'Configurar tipo de salario', 'Maa???????????????????? T???????????????r??????????????? Olu????????????????????turma');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(340, 'salary_setup', 'Salary Setup', 'Configurar salario', 'Maa???????????????????? D???????????????zenleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(341, 'add_sal_setup', 'Add Salary Setup', 'Agregar Configuraci???????????????n de Sal', 'Maa???????????????????? Kurulumu Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(342, 'list_sal_setup', 'Salary Setup List', 'Lisa de organizaci???????????????n de Sal', 'Maa???????????????????? Durum Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(343, 'salary_type_id', 'Salary Type', 'Id tipo de salario', 'Maa???????????????????? T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(344, 'salary_generate', 'Salary Generate', 'Salario generado', 'Maa???????????????????? Olu????????????????????turma');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(345, 'add_sal_generate', 'Generate Now', 'Agregar Generador de Sal', '????????????????????imdi Olu????????????????????turun');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(346, 'list_sal_generate', 'Generated Salary List', 'Lista de generador de Sal', 'Haz????????????????????r Maa???????????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(347, 'gdate', 'Generate Date', 'g Fecha', 'Olu????????????????????turma Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(348, 'start_dates', 'Start Date', 'Inicio de fechas', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(349, 'generate', 'Generate ', 'Generar', 'Olu????????????????????tur');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(350, 'successfully_saved_saletup', ' Set up Successful', 'Saletup guardado exitosamente', 'Ba????????????????????ar???????????????????? ile Kaydedildi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(351, 's_date', 'Start Date', 'Fecha s', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(352, 'e_date', 'End Date', 'fecha final', 'Gider Biti???????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(353, 'salary_payable', 'Payable Salary', 'Salario pagable', '????????????????????????denecek Maa????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(354, 'tax_manager', 'Tax', 'Administrador de impuestos', 'Vergi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(355, 'generate_by', 'Generated By', 'Generar Por', 'Olu????????????????????turan');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(356, 'successfully_paid', 'Successfully Paid', 'Pagado exitosamente', 'Ba????????????????????ar????????????????????yla ????????????????????????dendi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(357, 'direct_empl', ' Employee', 'Empleado Directo', '?????????????????????al????????????????????????????????????????an');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(358, 'add_emp_info', 'Add New Employee', 'Agregar informaci???????????????n de Empleado', 'Yeni ?????????????????????al????????????????????????????????????????an Bilgisi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(359, 'new_empl_pos', 'Add New Employee Position', 'Nueva Posici???????????????n de Empleado', 'Yeni ?????????????????????al????????????????????????????????????????an Pozisyon Ekle ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(360, 'manage', 'Manage Designation', 'Gestionar ', 'Tan????????????????????mlamay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(361, 'ad_advertisement', 'ADD POSITION', 'Anuncio', 'Pozisyon Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(362, 'moduless', 'Modules', 'M???????????????dulos ', 'Mod???????????????ller');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(363, 'next', 'Next', 'Siguiente', 'Sonraki');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(364, 'finish', 'Finish', 'Terminado', 'Biti????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(365, 'request', 'Request', 'Solicitud', '????????????????????stek');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(366, 'successfully_saved', 'Your Data Successfully Saved', 'Guardado exitosamente', 'Verileriniz Ba????????????????????ar????????????????????yla Kaydedildi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(367, 'sal_type', 'Salary Type', 'Tipo de salario', 'Maa???????????????????? T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(368, 'sal_name', 'Salary Name', 'Nombre de salario', 'Maa???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(369, 'leave_application', 'Leave Application', 'Abandonar Aplicaci???????????????n', 'Uygulamadan ?????????????????????????????????????????k');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(370, 'apply_strt_date', 'Application Start Date', 'Aplicar Fecha de Ordenamiento', 'Ba????????????????????vuru Ba????????????????????lang??????????????????????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(371, 'apply_end_date', 'Application End date', 'Fecha de Finalizaci???????????????n', 'Ba????????????????????vuru Biti???????????????????? tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(372, 'leave_aprv_strt_date', 'Approved Start Date', 'Dejar Fecha de Inicializaci???????????????n', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????Tarihini Onaylay????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(373, 'leave_aprv_end_date', 'Approved End Date', 'Dejar Fecha de Finalizaci???????????????n', 'Onaylanan Biti???????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(374, 'num_aprv_day', 'Approved Day', 'num aprv day', 'Onaylanan G???????????????n ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(375, 'reason', 'Reason', 'Raz???????????????n', 'Nedeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(376, 'approve_date', 'Approved Date', 'Fecha de Aprobaci???????????????n', 'Onay tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(377, 'leave_type', 'Leave Type', 'Tipo de Salida', '?????????????????????????????????????????k???????????????????????????????????????? T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(378, 'apply_hard_copy', 'Application Hard Copy', 'Copia Impresa', 'Uygulama Bas????????????????????l???????????????????? Kopyas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(379, 'approved_by', 'Approved By', 'Aprobado Por', 'Taraf????????????????????ndan onayland????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(380, 'notice', 'Notice Board', 'Aviso', 'Duyuru Panosu ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(381, 'noticeboard', 'Notice Board', 'Tabla de Anuncios', 'Duyuru Panosu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(382, 'notice_descriptiion', 'Description', 'Descripci???????????????n de Aviso', 'A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(383, 'notice_date', 'Notice Date', 'Fecha de Aviso', 'Bildirim Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(384, 'notice_type', 'Notice Type', 'Tipo de Aviso', 'Bildirim Tipi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(385, 'notice_by', 'Notice By', 'Aviso por', 'Bildiren');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(386, 'notice_attachment', 'Attachment', 'Aviso Adjunto', 'Ek Dosya');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(387, 'account_name', 'Account Name', 'Nombre de Cuenta', 'Kullan????????????????????c???????????????????? Hesab???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(388, 'account_type', 'Account Type', 'Tipo de Cuenta', 'Kullan????????????????????c???????????????????? Hesap T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(389, 'account_id', 'Account Name', 'Identificaci???????????????n de Cuenta', 'Kullan????????????????????c???????????????????? Hesab???????????????????? ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(390, 'transaction_description', 'Description', 'Descripci???????????????n de transacci???????????????n', 'A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(391, 'payment_id', 'Payment', 'Identificaci???????????????n de Pago', '????????????????????????deme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(392, 'create_by_id', 'Created By', 'Crear por Identificaci???????????????n', 'Taraf????????????????????ndan Olu????????????????????turuldu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(393, 'account', 'Account', 'Cuenta', 'Kullan????????????????????c???????????????????? Hesab????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(394, 'account_add', 'Add Account', 'Agregar Cuenta', 'Kullan????????????????????c????????????????????  Hesab???????????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(395, 'account_transaction', 'Transaction', 'Transacci???????????????n de Cuenta', 'Kullan????????????????????c???????????????????? ????????????????????????????????????????lemi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(396, 'award', 'Award', 'Premio', '????????????????????????d???????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(397, 'new_award', 'New Award', 'Nuevo Premio ', 'Yeni ????????????????????????d???????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(398, 'award_name', 'Award Name', 'Nombre Del Premio', '????????????????????????d???????????????l Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(399, 'aw_description', 'Award Description', 'Descripci???????????????n del Premio', '????????????????????????d???????????????l A???????????????????????????????????klamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(400, 'awr_gift_item', 'Gift Item', 'Regalo del Premio', 'Verilecek ????????????????????????d???????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(401, 'awarded_by', 'Award By', 'Premio Por', '????????????????????????d???????????????l??????????????? Veren');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(402, 'employee_name', 'Employee Name', 'Nombre del Empleado', '?????????????????????al????????????????????????????????????????an Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(403, 'employee_list', 'Atn List', 'Lista de Empleados', '?????????????????????al????????????????????????????????????????an Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(404, 'department', 'Department', 'Departamento', 'B???????????????l???????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(405, 'department_name', 'Department Name ', 'Nombre del Departamento', 'B???????????????l???????????????m Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(406, 'clockout', 'Clock Out', 'Hora de Salida', 'Saat ?????????????????????????????????????????k????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(407, 'se_account_id', 'Select Account Name', 'Id cuenta SE', 'Hesap Ad???????????????????? Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(408, 'division', 'Division', 'Divisi???????????????n', '????????????????????kiye Ay????????????????????rma');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(409, 'add_division', 'Add Division', 'Agregar Divisi???????????????n', 'B???????????????l???????????????m Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(410, 'update_division', 'Update Division', 'Actualizar divisi???????????????n', 'G???????????????ncelleme B???????????????l???????????????m???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(411, 'division_name', 'Division Name', 'Nombre de Divisi???????????????n', 'B???????????????l???????????????m Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(412, 'division_list', 'Manage Division ', 'Lista de Divisiones ', '????????????????????kiye Ay????????????????????rmay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(413, 'designation_list', 'Designation List', 'Lista de Desasignaciones ', 'Tan????????????????????mlama Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(414, 'manage_designation', 'Manage Designation', 'Administrar Designaci???????????????n ', 'Tan????????????????????mlamay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(415, 'add_designation', 'Add Designation', 'Agregar designado', 'Tan????????????????????mlama Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(416, 'select_division', 'Select Division', 'Divisi???????????????n de selecci???????????????n', 'B???????????????l???????????????m Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(417, 'select_designation', 'Select Designation', 'Designaci???????????????n de selecci???????????????n', 'Tan????????????????????mlama Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(418, 'asset', 'Asset', 'Recurso', 'Varl????????????????????k');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(419, 'asset_type', 'Asset Type', 'Tipo de Recurso', 'Varl????????????????????k t???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(420, 'add_type', 'Add Type', 'Agregar Tipo', 'T???????????????r Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(421, 'type_list', 'Type List', 'Escribir lista', 'T???????????????r Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(422, 'type_name', 'Type Name', 'Escribir nombre', 'T???????????????r Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(423, 'select_type', 'Select Type', 'Seleccionar tipo', 'T???????????????r Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(424, 'equipment_name', 'Equipment Name', 'Nombre del Equipamiento', 'Ekipman Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(425, 'model', 'Model', 'Modelo', 'Model');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(426, 'serial_no', 'Serial No', 'N???????????????mero de serie', 'Seri numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(427, 'equipment', 'Equipment', 'Equipamiento', 'Ekipman');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(428, 'add_equipment', 'Add Equipment', 'Agregar Equipo', 'Ekipman Ekleyin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(429, 'equipment_list', 'Equipment List', 'Lista del Equipamiento', 'Ekipman listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(430, 'type', 'Type', 'Tipo', 'T???????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(431, 'equipment_maping', 'Equipment Mapping', 'Mapeo del Equipamiento', 'Ekipman Haritalama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(432, 'add_maping', 'Add Mapping', 'Agregar Mapeo', 'Haritalama Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(433, 'maping_list', 'Mapping List', 'Lista de Mapeo', 'Haritalama listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(434, 'update_equipment', 'Update Equipment', 'Actualizar equipo', 'Ekipman???????????????????? G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(435, 'select_employee', 'Select Employee', 'Seleccionar empleado', '?????????????????????al????????????????????????????????????????an Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(436, 'select_equipment', 'Select Equipment', 'Seleccionar equipo', 'Ekipman Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(437, 'basic_info', 'Basic Information', 'Informaci???????????????n B???????????????sica', 'Temel bilgiler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(438, 'middle_name', 'Middle Name', 'Segundo Nombre', '????????????????????kinci ad');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(439, 'state', 'State', 'Estado', 'Durum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(440, 'city', 'City', 'Ciudad', 'Kent');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(441, 'zip_code', 'Zip Code', 'C???????????????digo Postal', 'Posta kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(442, 'maiden_name', 'Maiden Name', 'Nombre de Madre', 'K????????????????????zl????????????????????k soyad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(443, 'add_employee', 'Add Employee', 'Agregar Empleado', '?????????????????????al????????????????????????????????????????an Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(444, 'manage_employee', 'Manage Employee', 'Administrar Empleados', '?????????????????????al????????????????????????????????????????an???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(445, 'employee_update_form', 'Employee Update Form', 'Formulario Para Actualizaci???????????????n del Empleado', '?????????????????????al????????????????????????????????????????an G???????????????ncelleme Formu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(446, 'what_you_search', 'What You Search', 'Lo que buscas', 'Ne Ar????????????????????yorsunuz?');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(447, 'search', 'Search', 'Buscar', 'Arama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(448, 'duty_type', 'Duty Type', 'Tipo de Funciones', 'G???????????????rev Tipi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(449, 'hire_date', 'Hire Date', 'Fecha de Contrataci???????????????n', 'Kiralama Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(450, 'original_h_date', 'Original Hire Date', 'Fecha de Contrataci???????????????n', 'Orijinal Kiralama Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(451, 'voluntary_termination', 'Voluntary Termination', 'Terminaci???????????????n voluntaria', 'G???????????????n???????????????ll??????????????? Fesih');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(452, 'termination_reason', 'Termination Reason', 'Raz???????????????n de terminaci???????????????n', 'Sonland????????????????????rma Nedeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(453, 'termination_date', 'Termination Date', 'Fecha de terminaci???????????????n', 'Sonland????????????????????rma Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(454, 're_hire_date', 'Re Hire Date', 'Fecha de re-contrato', 'Yeniden ??????????????????cretli ?????????????????????al????????????????????????????????????????t????????????????????rma Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(455, 'rate_type', 'Rate Type', 'Tipo de Valoraci???????????????n', 'Oran T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(456, 'pay_frequency', 'Pay Frequency', 'Frecuencia de pago', '????????????????????????deme s????????????????????kl????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(457, 'pay_frequency_txt', 'Pay Frequency Text', 'Frecuencia de pago txt', '????????????????????????deme S????????????????????kl???????????????????????????????????????????????????????????? Metni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(458, 'hourly_rate2', 'Hourly Rate2', 'Tarifa de Dos Horas', 'Saatlik ??????????????????cret 2');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(459, 'hourly_rate3', 'Hourly Rate3', 'Tarifa de Tres Horas', 'Saatlik ??????????????????cret 3');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(460, 'home_department', 'Home Department', 'Departamento', 'Ana B???????????????l???????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(461, 'department_text', 'Department Text', 'Texto del Departamento', 'B???????????????l???????????????m Metni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(462, 'benifit_class_code', 'Benefit Class code', 'C???????????????digo de Clases de Beneficios', 'Avantaj S????????????????????n????????????????????f kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(463, 'benifit_desc', 'Benefit Description', 'Beneficio de Descuento', 'Avantaj Tan????????????????????m????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(464, 'benifit_acc_date', 'Benefit Accrual Date', 'Fecha de Beneficio ACC ', 'Avantaj Tahakkuk Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(465, 'benifit_sta', 'Benefit Status', 'Beneficio STA', 'Avantaj Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(466, 'super_visor_name', 'Supervisor Name', 'Nombre de supervisor', 'M???????????????d???????????????r Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(467, 'is_super_visor', 'Is Supervisor', 'is_super_visor', 'S???????????????perviz???????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(468, 'supervisor_report', 'Supervisor Report', 'Reporte de supervisor', 'M???????????????d???????????????r Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(469, 'dob', 'Date of Birth', 'Fecha de Nacimiento', 'Do????????????????????um tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(470, 'gender', 'Gender', 'Genero', 'Cinsiyet');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(471, 'marital_stats', 'Marital Status', 'Estado Civil', 'Medeni hal');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(472, 'ethnic_group', 'Ethnic Group', 'Grupo ?????????????????????tnico', 'Etnik grup');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(473, 'eeo_class_gp', 'EEO Class', 'EEO CLASS GP', 'EEO S????????????????????n????????????????????f????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(474, 'ssn', 'SSN', 'DPI', 'SSN');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(475, 'work_in_state', 'Work in State', 'Trabajo en el lugar/domicilio', '?????????????????????al????????????????????????????????????????ma Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(476, 'live_in_state', 'Live in State', 'Domicilio (Departamento de residencia)', '????????????????????ehir i???????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(477, 'home_email', 'Home Email', 'Correo de Casa', 'Ana E-Posta');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(478, 'business_email', 'Business Email', 'Email Corporativo', '???????????????????????????????????????? E-postas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(479, 'home_phone', 'Home Phone', 'Tel???????????????fono de Casa', 'Ana Cep Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(480, 'business_phone', 'Business Phone', 'Tel???????????????fono corporativo', '???????????????????????????????????????? Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(481, 'cell_phone', 'Cell Phone', 'Tel???????????????fono', 'Cep telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(482, 'emerg_contct', 'Emergency Contact', 'Contacto de Emergencia ', '????????????????????leti????????????????????im Numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(483, 'emerg_home_phone', 'Emergency Home Phone', 'Tel???????????????fono de Casa de Emergencia ', 'Acil Ev Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(484, 'emrg_w_phone', 'Emergency Work Phone', 'N???????????????mero de Emergencia ', 'Acil ???????????????????????????????????????? Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(485, 'emer_con_rela', 'Emergency Contact Relation', 'Relaci???????????????n de Contacto de Emergencia', 'Acil Durum Ki????????????????????isi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(486, 'alt_em_contct', 'Alter Emergency Contact', 'Contacto ', 'Acil Durum ????????????????????leti????????????????????im');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(487, 'alt_emg_h_phone', 'Alt Emergency Home Phone', 'Alto Ventana Tel???????????????fono', 'Acil Ev Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(488, 'alt_emg_w_phone', 'Alt Emergency  Work Phone', 'Largo Ventana Tel???????????????fono', 'Acil ???????????????????????????????????????? Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(489, 'reports', 'Reports', 'Reportes', 'Raporlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(490, 'employee_reports', 'Employee Reports', 'Reporte del Empleado', '?????????????????????al????????????????????????????????????????an Raporlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(491, 'demographic_report', 'Demographic Report', 'Reporte Demogr???????????????fico ', 'Demografik Rapor');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(492, 'posting_report', 'Positional Report', 'Reporte de Publicaci???????????????n', 'Durum Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(493, 'custom_report', 'Custom Report', 'Personalizar Reportes', '????????????????????????zel Rapor');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(494, 'benifit_report', 'Benefit Report', 'Reporte de Beneficio', 'Avantaj Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(495, 'demographic_info', 'Demographical Information', 'Informaci???????????????n Demogr???????????????fica ', 'Demografik Bilgiler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(496, 'positional_info', 'Positional Info', 'Informaci???????????????n Postal', 'Konum Bilgisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(497, 'assets_info', 'Assets Information', 'Informaci???????????????n del Recurso', 'Varl????????????????????k Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(498, 'custom_field', 'Custom Field', 'Campo Personalizado', '????????????????????????zel Alan');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(499, 'custom_value', 'Custom Data', 'Valor Personalizado', '????????????????????????zel Veriler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(500, 'adhoc_report', 'Adhoc Report', 'Generar Reporte', 'Adhoc Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(501, 'asset_assignment', 'Asset Assignment', 'Recurso Asignado', 'Varl????????????????????k Atamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(502, 'assign_asset', 'Assign Assets', 'Asignar Recurso', 'Varl????????????????????klar???????????????????? Ata');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(503, 'assign_list', 'Assign List', 'Asignar Lista', 'Liste Ata');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(504, 'update_assign', 'Update Assign', 'Actualizar asignar', 'Atamay???????????????????? G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(505, 'citizenship', 'Citizenship', 'Nacionalidad', 'Vatanda????????????????????l????????????????????k');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(506, 'class_sta', 'Class status', 'Estado de Clase', 'S????????????????????n????????????????????f durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(507, 'class_acc_date', 'Class Accrual date', 'Fecha de Clase de Cuenta', 'S????????????????????n????????????????????f Tahakkuk tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(508, 'class_descript', 'Class Description', 'Descripci???????????????n de Clase', 'S????????????????????n????????????????????f Tan????????????????????m????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(509, 'class_code', 'Class Code', 'C???????????????digo de Clase', 'S????????????????????n????????????????????f kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(510, 'return_asset', 'Return Assets', 'Activo regresado', 'Getiri Varl????????????????????klar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(511, 'dept_id', 'Department ID', 'Identifaci???????????????n del Departamento', 'Departman ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(512, 'parent_id', 'Parent ID', 'Identificaci???????????????n del Padre', 'Ebeveyn ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(513, 'equipment_id', 'Equipment ID', 'Identificaci???????????????n del Equipamiento', 'Ekipman ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(514, 'issue_date', 'Issue Date', 'Fecha de Asunto', 'Verili???????????????????? tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(515, 'damarage_desc', 'Damarage Description', 'Descuento Por Demora', 'Hasar A???????????????????????????????????klamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(516, 'return_date', 'Return Date', 'Fecha de regreso', 'Geri D???????????????n??????????????????????????????????? tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(517, 'is_assign', 'Is Assign', 'is_assign', 'Atan????????????????????yor');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(518, 'emp_his_id', 'Employee History ID', 'Empleado Id', '?????????????????????al????????????????????????????????????????an Ge???????????????mi????????????????????i ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(519, 'damarage_descript', 'Damage Description', 'Descripci???????????????n de Demora', 'Hasar A???????????????????????????????????klamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(520, 'return', 'Return', 'Regreso', 'Geri D???????????????n???????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(521, 'return_successfull', 'Return Successful', 'Regreso satisfactorio', '????????????????????ade Ba????????????????????ar????????????????????l????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(522, 'return_list', 'Return List', 'Lista de retorno', '????????????????????ade Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(523, 'custom_data', 'Custom Data', 'Datos Personalizados', '????????????????????????zel Veriler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(524, 'passing_year', 'Passing Year', 'A???????????????os Pasado', 'Ge???????????????en Y????????????????????l');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(525, 'is_admin', 'Is Admin', 'is_admin', 'Y???????????????netici');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(526, 'zip', 'Zip Code', 'Zip', 'Posta kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(527, 'original_hire_date', 'Original Hire Date', 'Fecha de Contrataci???????????????n Original', 'Orijinal Kiralama Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(528, 'rehire_date', 'Rehire Date', 'Fecha de Recontrataci???????????????n', 'Yeniden ?????????????????????al????????????????????????????????????????t????????????????????rma Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(529, 'class_code_desc', 'Class Code Description', 'C???????????????digo de Clase en Descuento', 'S????????????????????n????????????????????f Kod A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(530, 'class_status', 'Class Status', 'Estado de Clase', 'S????????????????????n????????????????????f durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(531, 'super_visor_id', 'Supervisor ID', 'Id supervisor', 'M???????????????d???????????????r ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(532, 'marital_status', 'Marital Status', 'Estado Civil', 'Medeni hal');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(533, 'emrg_h_phone', 'Emergency Home Phone', 'N???????????????mero de Emergencia Casa', 'Acil Ev Telefonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(534, 'emgr_contct_relation', 'Emergency Contact Relation', 'Relaci???????????????n con el Contacto de Emergencia', 'Acil Durum Ki????????????????????isi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(535, 'id', 'ID', 'id', 'ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(536, 'type_id', 'Equipment Type', 'Escribir id', 'Ekipman T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(537, 'custom_id', 'Custom ID', 'Personalizar Identificaci???????????????n ', '????????????????????????zel Kimlik');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(538, 'custom_data_type', 'Custom Data Type', 'Tipo de Datos Personalizados', '????????????????????????zel Veri T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(539, 'role_permission', 'Role Permission', 'Permiso del rol', 'Rol ????????????????????zni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(540, 'permission_setup', 'Permission Setup', 'Configuraci???????????????n de Permisos', '????????????????????zin Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(541, 'add_role', 'Add Role', 'Agregar Rol', 'Rol Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(542, 'role_list', 'Role List', 'Lista de roles', 'Rol Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(543, 'user_access_role', 'User Access Role', 'Rol de acceso de usuario', 'Kullan????????????????????c???????????????????? Eri????????????????????im Yetkisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(544, 'menu_item_list', 'Menu Item List', 'Lista de Art???????????????culos del Men???????????????', 'Men??????????????? ????????????????????????????????????????????e Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(545, 'ins_menu_for_application', 'Ins Menu  For Application', 'Men???????????????s Para al Aplicaci???????????????n', '????????????????????????????????????????letme Men??????????????? Uygulamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(546, 'menu_title', 'Menu Title', 'T???????????????tulo del Men???????????????', 'Men??????????????? Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(547, 'page_url', 'Page URL', 'URL de P???????????????gina', 'Sayfa URL\'si');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(548, 'parent_menu', 'Parent Menu', 'Men??????????????? del Padre', 'Ana Men???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(549, 'role', 'Role', 'Rol', 'Rol');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(550, 'role_name', 'Role Name', 'Nombre de los roles', 'Rol ismi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(551, 'single_checkin', 'Single Check In', 'Ingreso simple', 'Tek Giri????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(552, 'bulk_checkin', 'Bulk Check In', 'Registro Masivo', 'Toplu Giri????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(553, 'manage_attendance', 'Manage Attendance', 'Administrar la Asistencia', 'Kat????????????????????l????????????????????m???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(554, 'attendance_list', 'Attendance List', 'Lista de Asistencia', 'Kat????????????????????l????????????????????mc???????????????????? listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(555, 'checkin', 'Check In', 'Chequear', 'Giri???????????????????? Yapmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(556, 'checkout', 'Check Out', 'Revisi???????????????n', '?????????????????????????????????????????k???????????????????????????????????????? yapmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(557, 'stay', 'Stay', 'Permanecer', 'Kalmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(558, 'attendance_report', 'Attendance Report', 'Reporte de Asistencia', 'Kat????????????????????l????????????????????m Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(559, 'work_hour', 'Work Hour', 'Hora trabajo ', '?????????????????????al????????????????????????????????????????ma saati');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(560, 'cancel', 'Cancel', 'Cancelar', '????????????????????ptal Et');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(561, 'confirm_clock', 'Confirm Checkout', 'Confirmar Hora', '????????????????????????demeyi Onaylay????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(562, 'add_attendance', 'Add Attendance', 'Agregar Asistencia', 'Kat????????????????????l????????????????????m Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(563, 'upload_csv', 'Upload CSV', 'Subir csv', 'CSV y???????????????kle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(564, 'import_attendance', 'Import Attendance', 'Importar Asistencia', 'Kat????????????????????l????????????????????m ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(565, 'manage_account', 'Manage Account', 'Cuenta de Administrador', 'Hesab???????????????????? y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(566, 'add_account', 'Add Account', 'Agregar Cuenta', 'Kullan????????????????????c???????????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(567, 'add_new_account', 'Add New Account', 'Agregar Cuenta', 'Yeni Hesap Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(568, 'account_details', 'Account Details', 'Detalles de Cuenta', 'Kullan????????????????????c???????????????????? Hesab???????????????????? Detaylar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(569, 'manage_transaction', 'Manage Transaction', 'Administrar las Transacciones', '????????????????????????????????????????lemi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(570, 'add_expence', 'Add Experience', 'Agregar Experiencia', 'Deneyim Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(571, 'add_income', 'Add Income', 'Agregar Ingreso', 'Gelir Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(572, 'return_now', 'Return Now !!', 'Regresar ahora', '????????????????????imdi ????????????????????ade!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(573, 'manage_award', 'Manage Award', 'Administrar Reconocimientos', '????????????????????????d???????????????l??????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(574, 'add_new_award', 'Add New Award', 'Agregar Nuevo Reconocimiento', 'Yeni ????????????????????????d???????????????l Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(575, 'personal_information', 'Personal Information', 'Informaci???????????????n Personal', 'Ki????????????????????isel bilgi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(576, 'educational_information', 'Educational Information', 'Informaci???????????????n Educativa', 'E????????????????????itim Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(577, 'past_experience', 'Past Experience', 'Experiencias Pasadas', 'Ge???????????????mi???????????????????? deneyim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(578, 'basic_information', 'Basic Information', 'Informaci???????????????n B???????????????sica', 'Temel bilgiler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(579, 'result', 'Result', 'Resultado', 'Sonu???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(580, 'institute_name', 'Institute Name', 'Nombre de Instituci???????????????n', 'Kurum ????????????????????smi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(581, 'education', 'Education', 'Educaci???????????????n', 'E????????????????????itim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(582, 'manage_shortlist', 'Manage Short List', 'Administrar Lista Corta', 'K????????????????????sa Listeyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(583, 'manage_interview', 'Manage Interview', 'Administrar Entrevistas', 'G???????????????r???????????????????????????????????meyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(584, 'manage_selection', 'Manage Selection', 'Administrar Selecci???????????????n', 'Se???????????????imi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(585, 'add_new_dept', 'Add New Department', 'Agregar Nuevo Departamento', 'Yeni Departman/B???????????????l???????????????m Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(586, 'manage_dept', 'Manage Department', 'Administrar Departamento', 'Departman???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(587, 'successfully_checkout', 'Checkout Successful !', 'Pago exitoso', '????????????????????????deme Ba????????????????????ar????????????????????l???????????????????? !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(588, 'grant_loan', 'Grant Loan', 'Otorgar Pr???????????????stamo ', 'Hibe Kredisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(589, 'successfully_installed', 'Successfully Installed', 'Instalado exitosamente', 'Ba????????????????????ar????????????????????yla Y???????????????klendi !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(590, 'total_loan', 'Total Loan', 'Pr???????????????stamo total', 'Toplam Kredi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(591, 'total_amount', 'Total Amount', 'Monto total ', 'Toplam Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(592, 'filter', 'Filter', 'Filtro', 'Filtrele');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(593, 'weekly_holiday', 'Weekly Holiday', 'Descanso semanal', 'Haftal????????????????????k Tatil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(594, 'manage_application', 'Manage Application', 'Aplicaci???????????????n de Administrador', 'Uygulamay???????????????????? y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(595, 'add_application', 'Add Application', 'Agregar Aplicaci???????????????n', 'Uygulama Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(596, 'manage_holiday', 'Manage Holiday', 'Administrar Vacaciones ', 'Tatili Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(597, 'add_more_holiday', 'Add More Holiday', 'Agregar Fiesta', 'Daha Fazla Tatil Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(598, 'manage_weekly_holiday', 'Manage Weekly Holiday', 'Administrar D???????????????as Feriados', 'Haftal????????????????????k Tatili Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(599, 'add_weekly_holiday', 'Add Weekly Holiday', 'Agregar Horario Semanal', 'Haftal????????????????????k Tatil Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(600, 'manage_granted_loan', 'Manage Granted Loan', 'Administrar Pr???????????????stamos dados', 'Verilen Krediyi Y???????????????netin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(601, 'manage_installment', 'Manage Installment', 'Administrar Cuotas', 'Taksitlendirmeyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(602, 'add_new_notice', 'Add New Notice', 'Agregar Notificaci???????????????n', 'Yeni Bildirim Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(603, 'manage_notice', 'Manage Notice', 'Administrar Avisos', 'Bildirimi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(604, 'salary_type', 'Salary Type', 'Tipo de salario', 'Maa???????????????????? T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(605, 'manage_salary_generate', 'Manage Salary Generate', 'Administrar Generador de Salarios', 'Maa???????????????????? Olu????????????????????turmay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(606, 'generate_now', 'Generate Now', 'Generar Ahora', '????????????????????imdi Olu????????????????????tur');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(607, 'add_salary_setup', 'Add Salary Setup', 'Agregar Configuraci???????????????n de Salario', 'Maa???????????????????? Kurulumu Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(608, 'manage_salary_setup', 'Manage Salary Setup', 'Administrar Configuraci???????????????n de Salario', 'Maa???????????????????? Durumunu Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(609, 'add_salary_type', 'Add Salary Type', 'Agregar Tipo de Salario', 'Maa???????????????????? T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(610, 'manage_salary_type', 'Manage Salary Type', 'Administrar Tipo de Salario', 'Maa???????????????????? T???????????????r???????????????n??????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(611, 'manage_tax_setup', 'Manage Tax Setup', 'Administrar los Impuestos', 'Vergi Durumunu Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(612, 'setup_tax', 'Setup Tax', 'Configurar impuestos', 'Kurulum Vergisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(613, 'add_more', 'Add More', 'Agregar M???????????????s', 'Daha ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(614, 'tax_rate', 'Tax Rate', 'Tasa de impuesto', 'Vergi oran????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(615, 'no', 'No', 'No', 'Hay????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(616, 'setup', 'Setup', 'Configurar', 'Kurulum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(617, 'biographicalinfo', 'Bio-Graphical Information', 'Informaci???????????????n Biogr???????????????fica ', 'Biyografik bilgi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(618, 'positional_information', 'Positional Information', 'Informaci???????????????n Postal', 'Konumsal Bilgi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(620, 'benifits', 'Benefits', 'Beneficios', 'Avantajlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(621, 'others_leave_application', 'Others Leave', 'Abandonar Aplicaci???????????????n', 'Di????????????????????erlerini Ba????????????????????vurudan ?????????????????????????????????????????kar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(622, 'add_leave_type', 'Add Leave Type', 'Agregar Tipo de Salida', '????????????????????zin T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(623, 'others_leave', 'Apply Leave', 'Otros que Abandonan', '????????????????????zin Uygula');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(624, 'number_of_leave_days', 'Number of Leave Days', 'N???????????????mero de d???????????????as de Vacaciones', '????????????????????zin G???????????????n Say????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(625, 'itemmanage', 'Food Management', 'Gesti???????????????n de Art???????????????culos', 'Men??????????????? Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(626, 'manage_category', 'Manage Category', 'Administrar Categor???????????????a', 'Kategoriyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(627, 'add_category', 'Add Category', 'Agregar Categor???????????????a', 'Kategori ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(628, 'category_list', 'Category List', 'Lista de Categor???????????????as', 'Kategori Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(629, 'manage_food', 'Manage Food', 'Administrar Alimentos', '??????????????????r???????????????nleri Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(630, 'add_food', 'Add Food', 'Agregar Comidas', '??????????????????r???????????????n Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(631, 'food_list', 'Food List', 'Lista de Comida', '??????????????????r???????????????n Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(632, 'category_name', 'Category Name', 'Nombre de Categor???????????????a', 'Kategori ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(633, 'food_name', 'Food Name', 'Nombre de la Comida', '??????????????????r???????????????n Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(634, 'category_subtitle', 'Category Subtitle', 'Sub-Nombre de Categor???????????????a', 'Kategori Alt Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(635, 'update_category', 'Update Category', 'Actualizar categor???????????????a', 'Kategoriyi G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(636, 'update_fooditem', 'Update Food Item', 'Actualizar alimento', '??????????????????r???????????????n ????????????????????????????????????????????esini G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(713, 'food_list', 'Food List', 'Lista de Comida', '??????????????????r???????????????n Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(714, 'food_name', 'Food Name', 'Nombre de la Comida', '??????????????????r???????????????n Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(715, 'add_category', 'Add Category', 'Agregar Categor???????????????a', 'Kategori ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(716, 'add_food', 'Add Food', 'Agregar Comidas', '??????????????????r???????????????n Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(717, 'category_name', 'Category Name', 'Nombre de Categor???????????????a', 'Kategori ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(718, 'category_list', 'Category List', 'Lista de Categor???????????????as', 'Kategori Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(719, 'itemmanage', 'Food Management', 'Gesti???????????????n de Art???????????????culos', 'Men??????????????? Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(720, 'manage_category', 'Manage Category', 'Administrar Categor???????????????a', 'Kategoriyi Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(721, 'manage_food', 'Manage Food', 'Administrar Alimentos', '??????????????????r???????????????nleri Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(722, 'offerdate', 'Offer Start Date', 'Fecha de Oferta', 'Teklif Ba????????????????????lang??????????????????????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(723, 'manage_addons', 'Manage Add-ons', 'Manejar complementos', '??????????????????r???????????????n Ekstralar????????????????????n???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(724, 'add_adons', 'Add Add-ons', 'Agregar complemento', '??????????????????r???????????????n Ekstras???????????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(725, 'menu_addons', 'Add-ons Menu', 'Men??????????????? de complementos', 'Eklentiler Men???????????????s???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(726, 'addons_list', 'Add-ons List', 'Lista de complementos', '??????????????????r???????????????n Ekstralar???????????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(727, 'assign_adons', 'Add-ons Assign', 'Asignar Complementos', '??????????????????r???????????????n Ekstras???????????????????? Atama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(728, 'assign_adons_list', 'Add-ons Assign List', 'Asignar Lista de Complementos', '??????????????????r???????????????n Ekstras???????????????????? Atama Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(729, 'update_adons', 'Update Add-ons', 'Actualizar complementos', 'Eklentileri (Add-ons) G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(730, 'item_name', 'Food Name', 'Nombre del Art???????????????culo', '??????????????????r???????????????n Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(731, 'price', 'Price', 'Precio', 'Fiyat');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(732, 'offerenddate', 'Offer End Date', 'Fecha de Finalizaci???????????????n de Oferta', 'Teklif Biti???????????????????? Tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(733, 'units', 'Unit and Ingredients', 'Unidades', 'Birim ve Malzemeler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(734, 'manage_unitmeasurement', 'Unit Measurement', 'Administrar la Unidad de Medida', 'Birim ????????????????????????l??????????????????????????????m???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(735, 'unit_list', 'Unit Measurement List', 'Lista de la unidad', 'Birim ????????????????????????l?????????????????????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(736, 'unit_add', 'Add Unit', 'Unidad agregada', 'Birim Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(737, 'unit_update', 'Unit Update', 'Actualizaci???????????????n de la unidad', 'Birim G???????????????ncellemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(738, 'unit_name', 'Unit Name', 'Nombre de la unidad ', 'Birim Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(739, 'manage_ingradient', 'Manage Ingredients', 'Administrar Ingredientes', 'Malzemeleri Y???????????????netin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(740, 'ingradient_list', 'Ingredient List', 'Lista de Ingredientes', 'Malzeme listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(741, 'add_ingredient', 'Add Ingredient', 'Agregar Ingrediente', 'Malzeme Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(742, 'ingredient_name', 'Ingredient Name', 'Nombre de Ingredientes', 'Malzeme Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(743, 'unit_short_name', 'Short Name', 'Nombre corto de la unidad', 'K????????????????????sa Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(744, 'update_ingredient', 'Update Ingredient', 'Actualizar ingrediente', '???????????????????????????????????eri????????????????????i G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(745, 'component', 'Components', 'Componente', 'Bile????????????????????enler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(746, 'vat_tax', 'Vat', 'Impuesto iva', 'KDV');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(747, 'addons_name', 'Add-ons Name ', 'Nombres agregados', 'Ek Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(748, 'food_varient', 'Food Variant', 'Variante de la Comida', '??????????????????r???????????????n Se???????????????ene????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(749, 'food_availablity', 'Food Availability', 'Comida Disponible', 'G???????????????ne ????????????????????????zel ??????????????????r???????????????nler ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(750, 'add_varient', 'Add Variant', 'Agregar Variaci???????????????n', 'Se???????????????enek Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(751, 'varient_name', 'Variant Name', 'Nombre de la variante', 'Se???????????????enek Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(752, 'variant_list', 'Variant List', 'Lista de variante', 'Se???????????????enek Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(753, 'variant_edit', 'Update Variant', 'Editar variante', 'Se???????????????ene????????????????????i G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(754, 'food_availablelist', 'Food Available List', 'Lista de Comida Disponible', 'G???????????????ne ????????????????????????zel ??????????????????r???????????????nler Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(755, 'add_availablity', 'Add Available Day & Time', 'Agregar Disponibilidad', '??????????????????r???????????????ne ????????????????????????zel G???????????????n ve Saati Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(756, 'edit_availablity', 'Update Available Day & Time', 'Editar Disponibilidad', 'Kullan????????????????????labilir G???????????????n??????????????? ve Saati G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(757, 'available_day', 'Available Day', 'D???????????????a Disponible', 'M???????????????sait G???????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(758, 'available_time', 'Available Time', 'Hora Disponible', 'M???????????????sait zaman');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(759, 'membership_management', 'Membership Management', 'Administrar Membres???????????????a', '??????????????????yelik Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(760, 'membership_list', 'Membership List', 'Lista de Membres???????????????a', '??????????????????yelik Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(761, 'membership_name', 'Membership Name', 'Nombre de Membres???????????????a', '??????????????????yelik Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(762, 'discount', 'Discount', 'Descuento', '????????????????????ndirim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(763, 'other_facilities', 'Other Facilities', 'Otra Funciones', 'Di????????????????????er Olanaklar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(764, 'membership_add', 'Add Membership', 'Agregar Membres???????????????a', '??????????????????yelik Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(765, 'membership_edit', 'Update Membership', 'Editar Membres???????????????a', '??????????????????yeli????????????????????i G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(766, 'payment_setting', 'Payment Method Setting', 'Ajustes de Pago ', '????????????????????????deme Y???????????????ntemi Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(767, 'paymentmethod_list', 'Payment Method List', 'Lista de M???????????????todos de Pago', '????????????????????????deme Y???????????????ntemi Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(768, 'payment_add', 'Add Payment Method', 'A???????????????adir Pago', '????????????????????????deme Y???????????????ntemi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(769, 'payment_edit', 'Update Payment Method', 'Editar Pago', '????????????????????????deme Y???????????????ntemini G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(770, 'payment_name', 'Payment Method Name', 'Nombre del Pago', '????????????????????????deme Y???????????????ntemi Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(771, 'shipping_setting', 'Shipping Method Setting', 'Configurar env???????????????os', 'Nakliye Y???????????????ntemi Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(772, 'shipping_list', 'Shipping Method List', 'Lista de env???????????????os', 'Nakliye Y???????????????ntemi Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(773, 'shipping_name', 'Shipping Method Name', 'Nombre de env???????????????o', 'Nakliye Y???????????????ntemi Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(774, 'shipping_add', 'Add Shipping Method', 'Agregar env???????????????o', 'G???????????????nderim Y???????????????ntemi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(775, 'shipping_edit', 'Update Shipping Method', 'Editar env???????????????os', 'G???????????????nderim Y???????????????ntemini G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(776, 'shippingrate', 'Shipping Rate', 'Tarifa de Env???????????????o', 'Kargo ??????????????????creti');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(777, 'supplier_manage', 'Supplier Manage', 'Manejo de proveedores', 'Tedarik???????????????i Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(778, 'supplier_name', 'Supplier Name', 'Nombre de proveedor', 'Tedarik???????????????i Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(779, 'supplier_list', 'Supplier List', 'Lista de proveedor', 'Tedarik???????????????i Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(780, 'mobile', 'Mobile', 'Tel???????????????fono M???????????????vil', 'Mobil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(781, 'address', 'Address', 'Direcciones', 'Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(782, 'supplier_add', 'Add Supplier', 'A???????????????adir proveedor', 'Tedarik???????????????i Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(783, 'supplier_edit', 'Update Supplier', 'Editar proveedor', 'Tedarik???????????????iyi G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(784, 'purchase_item', 'Purchase Item', 'Listado de compras', 'Sat????????????????????n Alma ???????????????????????????????????esi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(785, 'purchase', 'Purchase Manage', 'Compras', 'Sat????????????????????n Alma Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(786, 'purchase_list', 'Purchase List', 'Listado de compras', 'Sat????????????????????n Alma Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(787, 'purchase_add', 'Add Purchase', 'Agregar Compra', 'Sat????????????????????n Alma Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(788, 'purchase_edit', 'Update Purchase', 'Editar Compra', 'Sat????????????????????n Almay???????????????????? G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(789, 'quantity', 'Quantity', 'Cantidad', 'Miktar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(790, 'supplier_information', 'Supplier Information', 'Informaci???????????????n de proveedor', 'Tedarik???????????????i bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(791, 'add_new_order', 'Add New Order', 'Agregar Orden', 'Yeni Sipari???????????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(792, 'pending_order', 'Pending Order', 'Orden Pendiente', 'Bekleyen Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(793, 'processing_order', 'Processing Order', 'Orden Procesando', '????????????????????????????????????????lemdeki Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(794, 'cancel_order', 'Cancel Order', 'Cancelar Orden', '????????????????????ptal Edilen Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(795, 'complete_order', 'Complete Order', 'Orden Completada', 'Tamamlanan Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(796, 'pos_invoice', 'POS Invoice', 'Punto de Venta', 'Sipari???????????????????? Paneli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(797, 'ordermanage', 'Manage Order', 'Administrar de Ordenes', 'Sipari????????????????????i Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(798, 'table_manage', 'Manage Table', 'Manejo de mesa', 'Masay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(799, 'table_edit', 'Update Table', 'Editar mesa', 'Masay???????????????????? G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(800, 'table_list', 'Table List', 'Lista de mesa', 'Masa Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(801, 'table_name', 'Table Name', 'Nombre de mesa', 'Masa Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(802, 'customer_type', 'Customer Type', 'Tipos de Clientes', 'M???????????????????????????????????teri Tipi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(803, 'customertype_list', 'Customer Type List', 'Lista de Tipos de Clientes', 'M???????????????????????????????????teri T???????????????r??????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(804, 'production', 'Production', 'Producci???????????????n', '??????????????????retim');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(805, 'add_table', 'Table Add', 'Agregar Mesa', 'Masa Ekleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(806, 'table_add', 'Add Table', 'A???????????????adir table', 'Masa Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(807, 'add_new_table', 'Add Table', 'Agregar Nueva Mesa', 'Masa Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(808, 'order_list', 'Order List', 'Lista de Ordenes', 'Sipari???????????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(809, 'currency', 'Currency', 'Moneda', 'Para birimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(810, 'currency_list', 'Currency List', 'Lista de Monedas', 'Para Birimi Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(811, 'currency_name', 'Currency Name', 'Nombre de la Moneda', 'Para Birimi Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(812, 'currency_add', 'Add Currency', 'Agregar Moneda', 'Para Birimi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(813, 'currency_edit', 'Update Currency', 'Editar Moneda', 'Para Birimi G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(814, 'currency_icon', 'Currency Icon', 'Icono de la Moneda', 'Para Birimi Simgesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(815, 'currency_rate', 'Conversion Rate', 'Taza de Cambio', 'Konu????????????????????ma Oran????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(816, 'report', 'Report', 'Reportes', 'Rapor ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(817, 'purchase_report', 'Purchase Report', 'Reporte de Compra', 'Sat????????????????????n Alma Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(818, 'purchase_report_ingredient', 'Stock Report (Kitchen)', 'Reporte de Stock por Ingredientes', 'Stok Raporu (Mutfak) ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(819, 'stock_report', 'Stock Report', 'Informe de stock', 'Stok Raporu ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(820, 'sell_report', 'Sales Report', 'Reporte de venta', 'Sat???????????????????????????????????????? Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(821, 'stock_report_product_wise', 'Stock Report (Food Items)', 'Reporte de Stock por Platillo', 'Stok Raporu (??????????????????r???????????????n)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(822, 'accounts', 'Accounts', 'Cuentas', 'Kullan????????????????????c???????????????????? Hesaplar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(823, 'c_o_a', 'Chart of Accounts', 'Listado de Cuentas', 'Hesap Plan????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(824, 'debit_voucher', 'Debit Voucher', 'Vaucher de D???????????????bito', 'Bor??????????????? Kuponu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(825, 'credit_voucher', 'Credit Voucher', 'Voucher de Cr???????????????dito', 'Kredi Kuponu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(826, 'contra_voucher', 'Contra Voucher', 'Voucher de Respaldo', 'Contra fi????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(827, 'journal_voucher', 'Journal Voucher', 'Documento preliminar', 'G???????????????nl???????????????k Kupon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(828, 'voucher_approval', 'Voucher Approval', 'Aprobaci???????????????n de voucher', 'Kupon Onay????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(829, 'account_report', 'Accounts Report', 'Reporte de Cuentas', 'Kullan????????????????????c???????????????????? Hesab???????????????????? Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(830, 'voucher_report', 'Voucher Report', 'Reporte del voucher', 'Kupon Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(831, 'cash_book', 'Cash Book', 'Libro de Caja', 'Kasa defteri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(832, 'bank_book', 'Bank Book', 'Libro de Banco', 'Banka Defteri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(833, 'general_ledger', 'General Ledger', 'General del Libro Mayor', 'Genel Muhasebe');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(834, 'trial_balance', 'Trial Balance', 'Balance de prueba', 'Ge???????????????ici Bilan???????????????o');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(835, 'profit_loss', 'Profit Loss', 'P???????????????rdida de beneficios', 'Kar Kayb????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(836, 'cash_flow', 'Cash Flow', 'Flujo de Caja', 'Nakit Ak????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(837, 'coa_print', 'COA Print', 'Imprimir coa', 'Coa Yazd????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(838, 'in_quantity', 'In Quantity', 'Cantidad', 'Miktar olarak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(839, 'out_quantity', 'Out Quantity', 'Fuera de Cantidad', '?????????????????????????????????????????k???????????????????????????????????????? Miktar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(840, 'stock', 'Stock', 'Stock', 'Stok');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(841, 'find', 'Find', 'Buscar', 'Bul');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(842, 'from_date', 'From', 'Desde la Fecha', '????????????????????tibaren');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(843, 'to_date', 'To', 'A la fecha', 'Bug???????????????ne kadar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(844, 'approved', 'Approved', 'Aprobado', 'Onayland????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(845, 'total_ammount', 'Total Amount', 'Cantidad total', 'Toplam Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(846, 'total_purchase', 'Total Purchase', 'Compra total', 'Toplam Sat????????????????????n Alma');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(847, 'total_sale', 'Total Sale', 'Venta total', 'Toplam Sat????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(848, 'csv_file_informaion', 'CSV File Information', 'csv Archivo de Informaci???????????????n', 'CSV Dosyas???????????????????? Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(849, 'import_product_csv', 'Import product (CSV)', 'importar producto csv', '??????????????????r???????????????n??????????????? i???????????????e aktar (CSV)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(850, 'set_productionunit', 'Set Production Unit', 'Configurar producci???????????????n unitaria', '??????????????????retim ????????????????????????????????????????????elerini Belirle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(851, 'production_set_list', 'Production Set List', 'Configurar Lista de Producci???????????????n', '??????????????????retim Seti Listesi ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(852, 'production_add', 'Add Production', 'Agregar Producci???????????????n', '??????????????????retim Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(853, 'production_list', 'Production List', 'Lista de Producci???????????????n', '??????????????????retim Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(854, 'billing_from', 'Billing From', 'Facturaci???????????????n de', 'Faturaland????????????????????ran');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(855, 'invoice', 'Invoice', 'Factura', 'Fatura');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(856, 'invoice_no', 'Invoice No', 'N???????????????mero de Factura', 'Fatura No');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(857, 'billing_date', 'Billing Date', 'Fecha de Facturaci???????????????n ', 'Fatura tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(858, 'billing_to', 'Billing To', 'Facturar a', 'Taraf????????????????????na');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(859, 'reservation', 'Reservation', 'Lista de reservaciones', 'Rezervasyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(860, 'take_reservation', 'Take A Reservation', 'Reservar mesa', 'Rezervasyon Yap');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(861, 'update_table', 'Table Update', 'Actualizar mesa', 'Masa G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(862, 'reserve_time', 'Reservation Table', 'Hora de Reservaci???????????????n', 'Rezervasyon Tablosu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(863, 'reservation_table', 'Add Booking', 'Crear reservaci???????????????n', 'Rezervasyon Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(864, 'table_setting', 'Table Setting', 'Configuraci???????????????n de mesa', 'Masa Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(865, 'capacity', 'Capacity', 'Capacidad', 'Kapasite');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(866, 'icon', 'Icon', 'icon', 'Simge');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(867, 'purchase_return', 'Purchase Return', 'Devoluciones', 'Sat????????????????????n Al????????????????????m ????????????????????adesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(868, 'purchase_qty', 'Purchase Qty', 'Cantidad de Compra', 'Sat????????????????????n Alma Miktar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(869, 'return_qty', 'Return Qty', 'Cantidad de devoluci???????????????n', '????????????????????ade Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(870, 'total', 'Total', 'Total', 'Toplam');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(871, 'select', 'Select', 'Seleccionar', 'Se???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(872, 'return_invoice', 'Return Invoice', 'Factura de devoluci???????????????n', '????????????????????ade Faturas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(873, 'invoice_view', 'View Invoice', 'Ver Factura', 'Faturay???????????????????? G???????????????r???????????????nt???????????????le');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(874, 'grand_total', 'Grand Total', 'Gran total', 'Genel Toplam');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(875, 'supplier', 'Supplier', 'Proveedor', 'Tedarik???????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(876, 'po_no', 'Invoice No', 'Orden de compra No.', 'Fatura No');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(877, 'grant', 'Grant', 'Otorgar', 'Ba????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(878, 'hrm', 'Human Resource', 'Recursos Humanos', '????????????????????nsan kaynaklar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(879, 'departmentfrm', 'Add Department', 'Formulario de Departamento', 'B???????????????l???????????????m Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(880, 'benefits', 'Benefits', 'Beneficios', 'Avantajlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(881, 'class', 'Class', 'Clase', 'S????????????????????n????????????????????f');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(882, 'biographical_info', 'Biographical Info', 'Informaci???????????????n Biogr???????????????fica', 'biyografik bilgi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(883, 'additional_address', 'Additional Address', 'Direcciones Adicionales', 'Ek  Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(884, 'custom', 'Custom', 'Personalizar', '????????????????????????zel');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(885, 'pay_now', 'Pay Now ??', 'Pagar Ahora', '????????????????????imdi ????????????????????????de');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(886, 'paymentmethod_setup', 'Payment Setup', 'Configuraci???????????????n del M???????????????todo de Pago', '????????????????????????deme Y???????????????ntemi Kurulumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(887, 'add_paymentsetup', 'Add New Payment Setup', 'Agregar Configuraci???????????????n de Pago', 'Yeni ????????????????????????deme Kurulumu Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(888, 'edit_setup', 'Update Setup', 'Editar Personalizaciones', 'Kurulumu G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(889, 'marchantid', 'Marchant ID', 'Identificaci???????????????n del Comerciante', 'Marchant ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(890, 'order_successfully', 'Your Payment was Completed!!!.', 'Orden ?????????????????????xitosa', '????????????????????????demeniz Tamamland???????????????????? !!!.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(891, 'order_fail', 'Payment Incomplete!!!', 'Orden Fallida', '????????????????????????deme Eksik !!!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(892, 'voucher_no', 'Voucher No', 'No. de voucher', 'Fi???????????????????? numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(893, 'remark', 'Remark', 'Resaltar', 'A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(894, 'code', 'Code', 'C???????????????digo', 'Kod');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(895, 'debit', 'Debit', 'D???????????????bito', 'Bor???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(896, 'credit', 'Credit', 'Cr???????????????dito', 'Kredi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(897, 'template_name', 'Template Name ', 'Nombre de plantilla', '????????????????????ablon ad???????????????????? ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(898, 'sms_template', 'SMS Template', 'Planilla sms', 'SMS ????????????????????ablonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(899, 'sms_template_warning', 'Please Use ', 'Advertencia planilla sms', 'L???????????????tfen Bu Alan???????????????????? Kullan????????????????????n');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(900, 'userid', 'User ID', 'Id de usuario', 'Kullan????????????????????c???????????????????? ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(901, 'from', 'From', 'Desde', 'Nereden');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(902, 'opening_cash_and_equivalent', 'Opening Cash & Equivalent', 'Efectivo Apertura y su Equivalente', 'Nakit ve De????????????????????er A???????????????????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(903, 'amount_in_Dollar', 'Amount In Dollar', 'Cantidad en D???????????????lares', 'Dolar Olarak Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(904, 'pre_balance', 'Pre Balance', 'Balance Previo', '????????????????????????n Bakiye');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(905, 'current_balance', 'Current Balance', 'Saldo Actual', 'Mevcut Bakiye');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(906, 'with_details', 'With Details', 'Con detalles', 'Detaylar ile');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(907, 'credit_account_head', 'Credit Account Head', 'Cuenta de Cr???????????????dito Principal', 'Kredi Hesap Y???????????????neticisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(908, 'gl_head', 'GL Head', 'gl Cabeza', 'Genel Muhasebe Y???????????????neticisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(909, 'transaction_head', 'Transaction Head', 'Jefe de transacci???????????????n', '????????????????????????????????????????lem Y???????????????neticisi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(910, 'confirm', 'Confirm', 'Confirmar', 'Onaylamak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(911, 's_rate', 'Rate', 'Velocidad s', 'Oran');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(912, 'web_setting', 'Web Setting', 'Ajustes web', 'Web Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(913, 'banner_setting', 'Banner Setting', 'Ajustes de Banner', 'Banner Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(914, 'menu_setting', 'Menu Setting', 'Ajustes del Men???????????????', 'Men??????????????? Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(915, 'widget_setting', 'Widget Setting', 'Ajustes del widget', 'Widget Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(916, 'add_banner', 'Add Banner', 'Agregar Banner', 'Banner Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(917, 'bannertype', 'Add Banner Type', 'Tipo de Banner', 'Banner T???????????????r??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(918, 'banner_list', 'Banner List', 'Lista de Banners', 'Banner Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(919, 'title', 'Title', 'Titulo', 'Ba????????????????????l????????????????????k');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(920, 'subtitle', 'Sub Title', 'Subt???????????????tulo', 'Alt Ba????????????????????l????????????????????k ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(921, 'banner_type', 'Banner Type', 'Tipo de Banner', 'Banner Tipi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(922, 'link_url', 'Link URL', 'link_url', 'Ba????????????????????lant???????????????????? Adresi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(923, 'banner_edit', 'Banner Update', 'Editar Banner', 'Banner G???????????????ncellemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(924, 'menu_name', 'Menu Name', 'Nombre del Men???????????????', 'Men??????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(925, 'menu_url', 'Menu Slug', 'URL Men???????????????', 'Men??????????????? Ba????????????????????lant????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(926, 'sub_menu', 'Sub Menu', 'Sub men???????????????', 'Alt Men???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(927, 'add_menu', 'Add Menu', 'Agregar Men???????????????', 'Men??????????????? Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(928, 'parent_menu', 'Parent Menu', 'Men??????????????? del Padre', 'Ana Men???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(929, 'widget_name', 'Widget Name', 'Nombre del widget', 'Eklenti ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(930, 'widget_title', 'Widget Title', 'Titulo del widget', 'Widget Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(931, 'widget_desc', 'Description', 'Ddesc del widget', 'A???????????????????????????????????klama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(932, 'add_widget', 'Add New', 'Agregar Widget', 'Yeni ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(933, 'common_setting', 'Common Setting', 'Ajustes Comunes', 'Genel Ayarlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(934, 'bannersize', 'Banner Size', 'Tama???????????????o del Banner', 'Banner Boyutu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(935, 'width', 'Width', 'Ancho', 'Geni????????????????????lik');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(936, 'height', 'Height', 'Altura', 'Y???????????????kseklik');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(937, 'exclusive', 'Exclusive', 'Exclusivo ', 'Ayr????????????????????cal????????????????????kl????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(938, 'best_Offers', 'Best Offer', 'Las Mejores Ofertas', 'En ????????????????????yi Teklifler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(939, 'invalid_size', 'Invalid Size', 'Tama???????????????o Invalido', 'Ge???????????????ersiz Boyut');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(940, 'confirm_reservation', 'Confirm Reservation', 'Confirmar Reservaci???????????????n', 'Rezervasyonu onayla');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(941, 'food_details', 'Food Details', 'Detalles de la Comida', 'Yemek Detaylar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(942, 'email_setting', 'Email Setting', 'Ajustes de Email', 'E-posta Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(943, 'contact_email_list', 'Contact List', 'Lista de Contacto Email', 'Ki????????????????????i listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(944, 'subscribelist', 'Subscribe List', 'Suscribir lista', 'Abone Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(945, 'contact_send', 'Your Contact Information Send Successfully.', 'Enviar Contacto', '????????????????????leti????????????????????im Bilgileriniz Ba????????????????????ar????????????????????yla G???????????????nderildi.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(946, 'couponlist', 'Coupon List', 'Lista de Cupones', 'Kupon Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(947, 'add_coupon', 'Add Coupon', 'Agregar Cup???????????????n', 'Kupon Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(948, 'coupon_Code', 'Coupon Code', 'C???????????????digo de Cup???????????????n', 'Kupon Kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(949, 'coupon_rate', 'Coupon Value', 'Tasa del Cup???????????????n', 'Kupon De????????????????????eri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(950, 'coupon_startdate', 'Start Date', 'Fecha de Emisi???????????????n del Cup???????????????n', 'Ba????????????????????lang??????????????????????????????????? ????????????????????????????????????????????????????????????????????????????tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(951, 'coupon_enddate', 'End Date', 'Fecha de Vencimiento del Cup???????????????n', 'Kupon Biti???????????????????? tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(952, 'coupon_edit', 'Update Coupon', 'Editar Cup???????????????n', 'Kuponu G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(953, 'rating', 'Rating ', 'Valoraci???????????????n', 'De????????????????????erlendirme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(954, 'add_rating', 'Add Rating', 'Agregar Calificaci???????????????n ', 'Derecelendirme Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(955, 'reviewtxt', 'Review Text', 'Texto de comentario', 'Metni ????????????????????ncele');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(956, 'rating_edit', 'Rating Update', 'Editar Valoraci???????????????n', 'Derecelendirme G???????????????ncellemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(957, 'customer_rating', 'Customer Rating', 'Valoraci???????????????n de Clientes', 'M???????????????????????????????????teri De????????????????????erlendirmesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(958, 'country_list', 'Country List', 'Lista de Pa???????????????ses', '??????????????????lke Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(959, 'countryname', 'Country Name', 'Nombre del Pa???????????????s', '??????????????????lke ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(960, 'add_country', 'Add Country', 'Agregar Pa???????????????s', '??????????????????lke Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(961, 'edit_country', 'Update Country', 'Editar Pa???????????????s', '??????????????????lkeyi G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(962, 'add_state', 'Add State', 'Agregar Estado', '????????????????????l???????????????e Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(963, 'edit_state', 'State Update', 'Editar Estado', 'Durum G???????????????ncellemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(964, 'state', 'State', 'Estado', 'Durum');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(965, 'city', 'City', 'Ciudad', 'Kent');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(966, 'add_city', 'Add City', 'Agregar Ciudad', '????????????????????ehir Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(967, 'edit_city', 'City Update', 'Editar ciudad', '????????????????????ehir G???????????????ncellemesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(968, 'country', 'Country', 'Pa???????????????s', '??????????????????lke');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(969, 'state_list', 'State List', 'Lista de estado', '????????????????????ehir Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(970, 'city_list', 'All City', 'Lista de Ciudades', 'T???????????????m ????????????????????ehir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(971, 'server_setting', 'App Setting', 'Configuraci???????????????n de servidor', 'Uygulama Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(972, 'netip', 'Your Local Host Full URL', 'netip', 'Yerel Bar????????????????????nd????????????????????r????????????????????c????????????????????n????????????????????z????????????????????n Tam URL\'si');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(973, 'ip_port', 'Your Online URL', 'ip_port', '?????????????????????evrimi???????????????i URL\'niz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(974, 'onlinebdname', 'Online Database Name', 'Nombre de db en l???????????????nea', '?????????????????????evrimi???????????????i Veritaban???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(975, 'dbuser', 'Database User', 'Usuario de la Base de Datos', 'Veritaban???????????????????? Kullan????????????????????c????????????????????s????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(976, 'dbpassword', 'Database Password', 'Contrase???????????????a de la Base de Datos', 'Veritaban???????????????????? ????????????????????ifresi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(977, 'dbhost', 'Database Host Name', 'Base de Datos del host', 'Veritaban???????????????????? Ana Bilgisayar Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(978, 'social_setting', 'Social Setting', 'Entorno social', 'Sosyal Ayarlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(979, 'url_link', 'URL', 'Url link', 'URL');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(980, 'sicon', 'Select Icon', 'Sicon', 'Simge Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(981, 'ord_failed', 'Order Failed!!!', 'Orden Fallida', 'Sipari???????????????????? Ba????????????????????ar????????????????????s????????????????????z Oldu !!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(982, 'failed_msg', 'Order not placed due to some reason. Please Try Again!!!. Thank You !!!', 'Fallo en el Mensaje', 'Herhangi bir nedenle sipari???????????????????? verilemedi. L???????????????tfen tekrar deneyin! Te????????????????????ekk???????????????rler !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(983, 'ord_succ', 'Order Placed Successfully!!!', 'Orden Completada', 'Sipari???????????????????? Ba????????????????????ar????????????????????yla Verildi!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(984, 'succ_smg', 'Are you Sure to Print This Invoice????', 'succ smg', 'Bu Faturay???????????????????? Yazd????????????????????raca????????????????????????????????????????n????????????????????zdan Emin misiniz ?');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(985, 'no_order_run', 'No Order Running', 'N???????????????mero de Ordenes en Progreso ', 'Mevcut Sipari???????????????????? Yok ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(986, 'thirdpartycustomer_list', 'Third-Party Customers', 'Lista de terceros', '????????????????????????????????????????????????nc??????????????? Taraf M???????????????????????????????????teriler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(987, '3rd_customer_list', 'Third-Party Customers List', 'Cliente de externo', 'M???????????????????????????????????teri Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(988, '3rdcompany_name', 'Company Name', 'Empresa terciario', '????????????????????????????????????????letme Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(989, 'add_3rdparty_comapny', 'Add New Company', 'Agregar empresa Tercera', 'Yeni ????????????????????????????????????????letme Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(990, 'update_3rdparty', 'Update Company', 'Actualizar tercero', '????????????????????irketi G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(991, 'commision', 'Commission', 'comisi???????????????n', 'Komisyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(992, 'list_of_card_terminal', 'Card Terminal List', 'Lista de Terminal de Tajeta', 'Kart Terminal Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(993, 'add_new_terminal', 'Add New Terminal', 'Agregar Nueva Terminal', 'Yeni Terminal Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(994, 'update_terminal', 'Update Terminal', 'Actualizar terminal', 'Terminali G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(995, 'card_terminal_name', 'Card Terminal Name', 'Nombre del Terminal de la Tarjeta', 'Kart Terminal Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(996, 'list_of_bank', 'Bank List', 'Lista de Bancos', 'Banka Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(997, 'add_bank', 'Add New Bank', 'Agregar Banco', 'Yeni Banka Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(998, 'update_bank', 'Update Bank', 'Actualizar banco', 'Bankay???????????????????? G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(999, 'bank_name', 'Bank Name', 'Nombre del Banco', 'Banka ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1000, 'sell_report_filter', 'Sale Report Filtering', 'Filtro de reporte de ventas', 'Sat???????????????????????????????????????? Raporu Filtreleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1001, 'sms_setting', 'SMS Setting', 'SMS Configuraci???????????????n', 'SMS Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1002, 'sms_configuration', 'SMS Configuration', 'SMS Configuraci???????????????n', 'SMS Yap????????????????????land????????????????????rmas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1003, 'sms_temp', 'SMS Template', 'SMS Temporal', 'SMS ????????????????????ablonu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1004, 'candidate_name', 'Candidate Name', 'Nombre del Postulante', 'Aday ????????????????????smi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1005, 'assign1_role', 'Assign Role', 'Asignar Rol', 'Rol Ata');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1006, 'customer_list', 'Customer List', 'Lista de Clientes', 'M???????????????????????????????????teri listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1007, 'customer_name', 'Customer Name', 'Nombre del Cliente', 'M???????????????????????????????????teri Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1008, 'update_ord', 'Update Order', 'Atualizar orden', 'Sipari????????????????????i G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1009, 'final_report', 'Final Report', 'Reporte Final', 'Son Rapor');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1010, 'ehrm', 'HRM', 'HRM', '????????????????????nsan Kaynaklar???????????????????? Y???????????????netimi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1011, 'add_expense_item', 'Add Expense Item', 'Agregar gasto por art???????????????culo', 'Gider Kalemi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1012, 'manage_expense_item', 'Manage Expense Item', 'Administrar Art???????????????culo m???????????????s Gastado', 'Gider Kalemini Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1013, 'add_expense', 'Add Expense', 'Agregar Gasto', 'Gider Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1014, 'manage_expense', 'Manage Expense', 'Administrar Gastos', 'Giderleri Y???????????????netin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1015, 'expense_statement', 'Expense Statement', 'Estado del Gasto', 'Gider Beyan????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1016, 'expense_type', 'Expense Type', 'Tipo de Gasto', 'Gider T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1017, 'expense_item_name', 'Expense Item Name', 'Nombre del Art???????????????culo Gastado', 'Gider Kalem Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1018, 'expense', 'Expense', 'Gasto', 'Masraf');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1020, 'signature_pic', 'Signature Picture', 'Imagen de Firma', '????????????????????mza Resmi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1021, 'branch1', 'Branch', 'Sucursal', '????????????????????ube');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1022, 'ac_no', 'A/C Number', 'N???????????????mero de Cuenta', 'Kullan????????????????????c???????????????????? Numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1023, 'ac_name', 'A/C Name', 'Nombre', 'Kullan????????????????????c???????????????????? Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1024, 'bank_transaction', 'Bank Transaction', 'Transacci???????????????n de Banco', 'Banka i????????????????????lemi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1025, 'bank', 'Bank', 'Banco', 'Banka');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1026, 'withdraw_deposite_id', 'Withdraw / Deposit ID', 'Retirar_deposito_id', 'Para ?????????????????????ekme / Yat????????????????????rma ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1027, 'bank_ledger', 'Bank Ledger', 'Banco de Libro Mayor', 'Banka Defteri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1028, 'note_name', 'Note Name', 'Nombre de la Nota', 'Not Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1029, 'balance', 'Balance', 'Saldo', 'Bakiye');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1030, 'previous_balance', 'Previous Credit Balance', 'Balance Previo', '????????????????????????nceki Kredi Bakiyesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1031, 'manage_supplier_ledger', 'Manage supplier Ledger', 'Administrar el Libro de Porveedores', 'Tedarik???????????????i Defterini Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1032, 'supplier_ledger', 'Supplier Ledger', 'Libro mayor de proveedores', 'Tedarik???????????????i Defteri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1033, 'print', 'Print', 'Imprimir', 'Yazd????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1034, 'select_supplier', 'Select Supplier', 'Seleccionar proveedor', 'Tedarik???????????????i Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1035, 'deposite_id', 'Deposit ID', 'Identificaci???????????????n del Deposito', 'Teminat ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1036, 'print_date', 'Print Date', 'Fecha de impresi???????????????n', 'Bas????????????????????m tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1037, 'manage_bank', 'Manage Bank', 'Administrar Bancos', 'Bankay???????????????????? Y???????????????net');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1038, 'add_new_bank', 'Add New Bank', 'Agregar Nuevo Banco', 'Yeni Banka Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1039, 'bank_list', 'Bank List', 'Lista de BancoBac', 'Banka Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1040, 'bank_edit', 'Bank Edit', 'Editar Banco', 'Banka D???????????????zenleme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1041, 'debit_plus', 'Debit (+)', 'D???????????????bito Plus', 'Bor??????????????? (+)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1042, 'credit_minus', 'Credit (-)', 'Cr???????????????dito M???????????????nimo ', 'Kredi (-)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1043, 'withdraw_deposite_id', 'Withdraw / Deposit ID', 'Retirar_deposito_id', 'Para ?????????????????????ekme / Yat????????????????????rma ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1044, 'cash_adjustment', 'Cash Adjustment', 'Ajustes de Efectivo', 'Nakit Ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1045, 'adjustment_type', 'Adjustment Type', 'Tipo de Ajuste', 'Ayar T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1046, 'supplier_payment', 'Supplier Payment', 'Pago a proveedor', 'Tedarik???????????????i ????????????????????????demesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1047, 'prepared_by', 'Prepared By', 'Preparado por', 'Taraf????????????????????ndan haz????????????????????rland????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1048, 'authorized_signature', 'Authorized Signature', 'Firma Autorizada', 'Yetkili imza');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1049, 'chairman', 'Chairman', 'Presidente/Gerente', 'Y???????????????netici');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1050, 'kitchen_dashboard', 'Kitchen Dashboard', 'Tablero de Cocina', 'Mutfak G???????????????sterge Paneli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1051, 'counter_dashboard', 'Counter Dashboard', 'Tablero del Contador', 'Saya??????????????? G???????????????sterge Tablosu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1052, 'nw_order', 'New Order', 'Nueva Orden', 'Yeni Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1053, 'ongoingorder', 'On Going Order', 'Orden en Marcha', 'Mevcut Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1054, 'tdayorder', 'Today Order', 'Ordenes del D???????????????a', 'G???????????????n???????????????n Sipari????????????????????leri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1055, 'onlineord', 'Online Order ', 'Orden en Linea', 'Online sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1056, 'table', 'Table', 'Mesa', 'Masa ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1057, 'waiter', 'Waiter', 'Mesero', 'Garson');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1058, 'del_company', 'Delivery Company', 'Eliminar Compa??????????????????????????????a', 'Teslimat ????????????????????irketi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1059, 'cookedtime', 'Cooking Time', 'Tiempo de Cocci???????????????n', 'Haz????????????????????rlanma S???????????????resi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1060, 'ord_num', 'Order Number', 'Numero de Orden', 'Sipari???????????????????? Numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1061, 'cmplt', 'Complete', 'Cerrar', 'Tamamlay????????????????????n????????????????????z');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1062, 'sl_payment', 'Select Your Payment Method', 'sl pago', '????????????????????????deme ????????????????????eklinizi se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1063, 'paymd', 'Payment Method', 'Pago', '????????????????????????deme ????????????????????ekli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1064, 'crd_terminal', 'Card Terminal', 'Terminal Tarjeta Credito', 'Kart Terminali');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1065, 'sl_bank', 'Select Bank', 'sl banco', 'Banka Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1066, 'lstdigit', 'Last 4 Digit', 'lstdigit', 'Log Kay????????????????????t T???????????????r???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1067, 'cuspayment', 'Customer Payment', 'Pago Inicial', 'M???????????????????????????????????teri ????????????????????????demeleri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1068, 'cng_amount', 'Changes Amount', 'Cantidad CNG', 'Miktar De????????????????????i????????????????????ikli????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1069, 'pay_print', 'Pay Now & Print Invoice', 'Imprimir Pago', '????????????????????imdi ????????????????????????de ve Fatura Yazd????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1070, 'payn', 'Pay Now', 'Pagar', '????????????????????imdi ????????????????????????de');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1071, 'ordid', 'Order ID', 'Identificaci???????????????n de la Orden', 'Sipari???????????????????? ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1072, 'can_reason', 'Cancel Reason', 'Puede Razonar', '????????????????????ptal Etme Nedeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1073, 'can_ord', 'Cancel Order', 'Puede Ordenar', 'Sipari????????????????????i iptal et');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1074, 'close', 'Close', 'Cerrrado', 'Kapat');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1075, 'add_customer', 'Add Customer', 'Agregar Cliente', 'M???????????????????????????????????teri Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1076, 'fav_addesrr', 'Favorite Address', 'Direcci???????????????n Favorita', 'Favori Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1077, 'tabltno', 'Table No', 'No. de Mesa', 'Masa No:');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1078, 'ordate', 'Order Date', 'Fecha de Orden', 'Sipari???????????????????? tarihi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1079, 'payment_status', 'Payment Status', 'Estado de Pago', '????????????????????????deme Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1080, 'ordtcoun', 'Order Time Countdown Board', 'Conteo de Orden', 'Sipari???????????????????? S???????????????resi Saya??????????????? Panosu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1081, 'remtime', 'Remaining Time', 'Tiempo Restante', 'Kalan s???????????????re');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1082, 'ordtime', 'Order Time', 'Tiempo de Orden', 'Sipari???????????????????? zaman????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1083, 'ord', 'Order', 'Orden', 'Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1084, 'tok', 'Token', 'Tok', 'Fi????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1085, 'view_ord', 'View Order', 'Visualizar orden', 'Sipari????????????????????i G???????????????r???????????????nt???????????????le');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1086, 'fdready', 'Food Ready', 'listo FDR', 'Yemek Haz????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1087, 'fdnready', 'Food Not Ready', 'listo FDN', 'Yemek Haz????????????????????r De????????????????????il');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1088, 'foodrfs', 'Food is Ready for Served!!', 'Comida RFS', 'Yemekler Servise Haz????????????????????r !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1089, 'foodnrfs', 'Food Not Ready for Served', 'Comida NRFS', 'Servise Haz????????????????????r Olmayan Yiyecekler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1090, 'ordready', 'Order Ready', 'Orden Lista', 'Sipari???????????????????? Haz????????????????????r!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1091, 'sele_by_date', 'Sale By Date', 'Seleccionar fecha', 'Tarihe G???????????????re Sat????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1092, 'withdetails', 'With Details', 'Con detalles', 'Detaylar ile');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1093, 'topeneqv', 'Total Opening Cash & Cash Equivalent', 'Topeneqv', 'Toplam A???????????????????????????????????l???????????????????????????????????????? Nakit ve Nakit Kar????????????????????????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1094, 'cashopen', 'Cashflow from Operating Activities', 'Efectivo Abierto', 'I????????????????????letme faaliyetlerinden kaynaklanan nakit ak????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1095, 'payact', 'Payment for Other Operating Activities', 'Pagar', 'Di????????????????????er ????????????????????????????????????????letme Faaliyetleri i???????????????in ????????????????????????deme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1096, 'cash_gand_lie', 'Cash generated from Operating Activities before Changing in Operating Assets & Liabilities', 'Dinero en Efectivo', '????????????????????????????????????????letme Varl????????????????????klar???????????????????? ve Y???????????????k???????????????ml???????????????l???????????????klerinde De????????????????????i????????????????????meden ????????????????????????nce ????????????????????????????????????????letme Faaliyetlerinden elde edilen nakit');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1097, 'casfactive', 'Cashflow from Non Operating Activities', 'casfactive', '????????????????????????????????????????letme D???????????????????????????????????????????????????????????? Faaliyetlerden Nakit Ak????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1098, 'cashnonlia', 'Cash generated from Non Operating Activities before Changing in Operating Assets & Liabilities', 'Dinero en l???????????????nea', '????????????????????????????????????????letme Varl????????????????????klar???????????????????? ve Y???????????????k???????????????ml???????????????l???????????????klerinde De????????????????????i????????????????????meden ????????????????????????nce Faaliyet D???????????????????????????????????????????????????????????? Faaliyetlerden elde edilen nakit');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1099, 'incdre', 'Increase/Decrease in Operating Assets & Liabilities', 'INCDRE', '????????????????????????????????????????letme Varl????????????????????klar???????????????????? ve Y???????????????k???????????????ml???????????????l???????????????klerinde Art???????????????????????????????????????? / Azal????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1100, 'Tincdre', 'Total Increase/Decrease', 'Tincdre', 'Toplam Art???????????????????????????????????????? / Azal???????????????????????????????????????? ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1101, 'netopenactv', 'Net Cash From Operating/Non Operating Activities', 'netopenactv', '????????????????????????????????????????letme / ????????????????????????????????????????letme D???????????????????????????????????????????????????????????? Faaliyetlerden Elde Edilen Net Nakit Gelir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1102, 'cfact', 'Cash Flow from Investing Activities', 'c Factor', 'Yat????????????????????r????????????????????m Faaliyetlerinden Nakit Ak????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1103, 'ncuia', 'Net Cash Used Investing Activities', 'ncuia', 'Kullan????????????????????lan Net Nakit Yat????????????????????r????????????????????m Faaliyetleri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1104, 'cfffa', 'Cash Flow from Financing Activities', 'c Factor F', 'Finansman Faaliyetlerinden Nakit Ak????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1105, 'netcufa', 'Net  Cash Used Financing Activities', 'netcufa', 'Kullan????????????????????lan Net Nakit Finansman Faaliyetleri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1106, 'ncio', 'Net Cash Inflow/Outflow', 'ncio', 'Net Nakit Giri????????????????????i / ?????????????????????????????????????????k????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1107, 'pflos', 'Profit Loss', 'pFLOS', 'Kar Kayb????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1108, 'clcEq', 'Closing Cash & Cash Equivalent:', 'Equivalente CLC', 'Kapan???????????????????????????????????????? Nakit ve Nakit De????????????????????eri:');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1109, 'TcccE', 'Total Closing Cash & Cash Equivalent', 'TcccE', 'Toplam Kapan???????????????????????????????????????? Nakit ve Nakit De????????????????????eri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1110, 'pp_by', 'Prepared By', 'pp by', 'Taraf????????????????????ndan haz????????????????????rland????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1111, 'act', 'Accounts', 'Acto', 'Kullan????????????????????c???????????????????? Hesaplar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1112, 'ausig', 'Authorized Signature', 'Suficiente', 'Yetkili imza');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1113, 'particls', 'Particulars', 'Informe detallado', 'Ayr????????????????????nt????????????????????lar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1114, 'back', 'Back', 'Atr???????????????s', 'Geri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1115, 'bk_vouchar', 'Bank Book Voucher', 'Voucher de Retorno', 'Banka Defteri Kuponu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1116, 'errorajdata', 'Error get data from ajax', 'Datos de Error', 'Veri Alma Hatas???????????????????? !');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1117, 'reach_limit', 'You have reached the limit of adding', 'Alcanz??????????????? el Limite', 'Ekleme S????????????????????n????????????????????r????????????????????na Ula????????????????????t????????????????????n????????????????????z');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1118, 'inpt', 'inputs', 'input', 'Veri Giri????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1119, 'cantdel', 'There only one row you can\'t delete.', 'Cantidad de Postulantes', 'Silemeyece????????????????????iniz tek bir sat????????????????????r var.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1120, 'slsuplier', 'Select Supplier', 'sl proveedor', 'Tedarik???????????????i Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1121, 'ptype', 'Payment Type', 'Tipo Protocal', '????????????????????????deme ????????????????????ekli ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1122, 'casp', 'Cash Payment', 'CASP', 'Nakit ????????????????????????deme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1123, 'bnkp', 'Bank Payment', 'BNKP', 'Banka ???????????????demesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1124, 'slbank', 'Select Bank', 'slbanco', 'Banka Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1125, 'cscrv', 'Cash Credit Voucher', 'Versi???????????????n Actual', 'Nakit Kredi Kuponu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1126, 'ac_code', 'Account Code', 'Codigo de Cuenta', 'Kullan????????????????????c???????????????????? Hesap Kodu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1127, 'ac_head', 'Account Head', 'Cabecera de Cuenta', 'Kullan????????????????????c???????????????????? Hesab???????????????????? Y???????????????netici');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1128, 'iword', 'In word', 'i Palabra', 'Kelime ile');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1129, 'ac_office', 'Accounts Officer', 'Oficina', 'Kullan????????????????????c???????????????????? Sorumlusu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1130, 'latestv', 'Latest version', '???????????????ltima Versi???????????????n', 'En son s???????????????r???????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1131, 'after19', 'Auto Update Feature working On  after 1.9', 'Despu???????????????s', '1.9\'dan Sonra ?????????????????????al????????????????????????????????????????an Otomatik G???????????????ncelleme ????????????????????????zelli????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1132, 'crver', 'Current version', 'cscrv', '????????????????????uanki Versiyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1133, 'notesupdate', 'note: strongly recommended to backup your SOURCE FILE and DATABASE before update.', 'Actualizar Notas', 'not: g???????????????ncellemeden ???????????????nce <b> KAYNAK DOSYANIZI </b> ve <b> VER????????????????????TABANINI </b> yedeklemeniz ???????????????nemle tavsiye edilir.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1134, 'noupdates', 'No Update available', 'Sin Actualizaciones', 'G???????????????ncelleme mevcut de????????????????????il');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1135, 'lic_pur_key', 'License/Purchase key', 'lic pur key', 'Lisans / Sat????????????????????n alma anahtar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1136, 'lifeord', 'Lifetime Orders', 'Ordenes Vivas', 'T???????????????m Sipari????????????????????ler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1137, 'tdaysell', 'Today Sale', 'Ventas del D???????????????a', 'G???????????????nl???????????????k Sat????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1138, 'tcustomer', 'Total Customer', 'Cliente', 'Toplam M???????????????????????????????????teri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1139, 'tdeliv', 'Total Delivered', 'Total Entregas', 'Toplam Teslim Edilen');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1140, 'treserv', 'Total Reservation', 'Ordenes Servidas', 'Toplam Rezervasyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1141, 'latestord', 'Latest Order', 'Ultima Orden', 'Son Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1142, 'latest_reser', 'Latest Reservation', 'Ultima Reserva', 'Son Rezervasyon');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1143, 'ord_number', 'Order No.', 'Numero de Orden', 'Sipari???????????????????? No.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1144, 'latestolorder', 'Latest Online Order', '???????????????ltimo Color', 'Son ?????????????????????evrimi???????????????i Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1145, 'monsalamntorder', 'Monthly Sales Amount and Order', 'Total de ordenes del Mes', 'Ayl????????????????????k Sat???????????????????????????????????????? Miktar???????????????????? ve Sipari????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1146, 'onlineofline', 'Online Vs Offline Order & Sales', 'Nombre de db Sin Conexi???????????????n', '?????????????????????evrimi???????????????i ve ?????????????????????evrimd???????????????????????????????????????????????????????????? Sipari???????????????????? ve sat????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1147, 'pending_ord', 'Pending Order', 'Ordenes Pendientes', 'Bekleyen sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1148, 'onlinesamnt', 'Online Sale Amount', 'Onlinesamnt', 'Online Sat???????????????????????????????????????? Tutar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1149, 'onlineordnum', 'Online Order Number', 'Numero de Orden Online ', 'Online Sipari???????????????????? numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1150, 'offsalamnt', 'Offline Sale Amount', 'Offsalamnt', '?????????????????????evrimd???????????????????????????????????????????????????????????? Sat???????????????????????????????????????? Tutar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1151, 'offlordnum', 'Offline Order Number', 'Numero de Ofertas', '?????????????????????evrimd???????????????????????????????????????????????????????????? Sipari???????????????????? numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1152, 'saleamnt', 'Sale Amount', 'Monto de venta', 'Sat???????????????????????????????????????? miktar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1153, 'ordnumb', 'Order Number', 'Numero de Orden', 'Sipari???????????????????? numaras????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1154, 'store_name', 'Store Name', 'Nombre de tienda', '????????????????????????????????????????letme Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1155, 'opent', 'Available On', 'Apertura', 'A???????????????????????????????????l???????????????????????????????????????? zaman????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1156, 'closeTime', 'Closing Time', 'Hora de Cierre', 'Kapan???????????????????????????????????????? Vakti');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1157, 'sldistype', 'Select Discount Type', 'sl dis tipo', '????????????????????ndirim T???????????????r??????????????? Se???????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1158, 'distype', 'Discount Type', 'Tipo de Descuento', '????????????????????ndirim Tipi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1159, 'percent', 'Percent', 'Porcentaje', 'Y???????????????zde');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1160, 'sl_se_ch_ty', 'Select Service Charge Type', 'sl se ch ty', 'Servis ??????????????????creti T???????????????r??????????????? Se???????????????imi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1161, 'vatset', 'VAT Setting(%)', 'Vatset', 'KDV Ayar???????????????????? (%)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1162, 'mindeltime', 'Min. Delivery Time', 'Tiempo Minino  ', 'Min. Teslim S???????????????resi:');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1163, 'dateformat', 'Date Format', 'Formato de Fecha', 'Tarih format????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1164, 'sedateformat', 'Seletet Date Format', 'Formato de fecha SE', 'Se???????????????ili Tarih Format????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1165, 'add_menu_item', 'Add Menu Item', 'Agregar art???????????????culo', 'Men??????????????? ????????????????????????????????????????????esi Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1166, 'menu_title', 'Menu Title', 'T???????????????tulo del Men???????????????', 'Men??????????????? Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1167, 'can_create', 'Can Create', 'Puede Crear', 'Aday Olu????????????????????tur');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1168, 'can_read', 'Can Read', 'Puede Leer', 'Okuyabilir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1169, 'can_edit', 'Can Edit', 'Puede Editar ', 'Aday D???????????????zenle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1170, 'can_delete', 'Can Delete', 'Puede Eliminar', 'Aday???????????????????? Sil');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1171, 'smsrankgateway', 'To get <b>50</b> free SMS from smsrank.com click', 'SMS califiaci???????????????n de Gateway', 'Sms eklentisi i???????????????in Y???????????????neticiniz ile ileti????????????????????ime Ge???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1172, 'ranktext', ' and register in registration section click Already Envato user and put your envato purchase key and product id  after registration put your username and password into the password and user name field this form.', 'Texto de Clasificar', 'Sistem Y???????????????neticisine Dan????????????????????????????????????????????????????????????n!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1173, 'managementsection', 'This Section is Use Only for Store Management.', 'Secci???????????????n de Gesti???????????????n', 'Bu b???????????????l???????????????m Yaln????????????????????zca Ma????????????????????aza Y???????????????netimi i???????????????in kullan????????????????????l????????????????????r.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1174, 'width', 'Width', 'Ancho', 'Geni????????????????????lik');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1175, 'protocal', 'Protocol', 'Protocal', 'Protokol');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1176, 'mailpath', 'Mail Path', 'Ruta de correo', 'MailPath');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1177, 'Mail_type', 'Mail Type', 'Tipo de Email', 'MailType');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1178, 'smtp_host', 'SMTP Host', 'smtp host', 'Smtp Host');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1179, 'smtp_post', 'SMTP Port', 'smtp post', 'Smtp Port');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1180, 'sender_email', 'Sender Email', 'Email de remitente', 'G???????????????nderen E-postas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1181, 'smtp_password', 'SMTP Password', 'Contrase???????????????a smtp', 'Smtp Password');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1183, 'powered_by', 'Powered By Text', 'Desarrollado por', 'Metin ile Geli????????????????????tirildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1184, 'item_information', 'Item Information', 'Informaci???????????????n de Art???????????????culo', '??????????????????r???????????????n Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1185, 'size', 'Size', 'Talla', 'Boyut');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1186, 'qty', 'Quantity', 'Cantidad', 'Miktar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1187, 'addons_name', 'Add-ons Name ', 'Nombres agregados', 'Ek Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1188, 'addons_qty', 'Add-ons Qty', 'Cantidades agregadas', 'Ek Adedi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1189, 'add_to_cart', 'add to cart', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1190, 'item', 'Item', 'Art???????????????culo', '????????????????????????????????????????????e');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1191, 'unit_price', 'Unit Price', 'Precio de la unidad ', 'Birim Fiyat????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1192, 'total_price', 'Total Price', 'Precio total', 'Toplam Fiyat');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1193, 'order_status', 'Order Status', 'Estado de Orden ', 'Sipari???????????????????? Durumu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1194, 'served', 'Served', 'Servido', 'Servis Edilen');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1195, 'cancel_reason', 'Cancel Reason', 'Motivo de Cancelaci???????????????n', '????????????????????ptal Etme Nedeni');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1196, 'customer_order', 'Customer Notes', 'Orden del Cliente', 'M???????????????????????????????????teri Notlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1197, 'customerpicktime', 'Customer Pick-up Date and time', 'Tiempo de Recogida', 'M???????????????????????????????????teri Teslim Alma Tarihi ve saati');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1198, 'subtotal', 'Subtotal', 'Sub total', 'Ara Toplam');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1199, 'service_chrg', 'Service Charge', 'Cargo por Servicio', 'Servis bedeli');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1200, 'customer_paid_amount', 'Customer Paid Amount', 'Cantidad a Pagar del Cliente', 'M???????????????????????????????????teri Taraf????????????????????ndan ????????????????????????denen Tutar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1201, 'change_due', 'Change Due', 'Cambiar Debido a', 'Degi????????????????????iklik nedeniyle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1202, 'total_due', 'Total Due', 'Total vencido', 'Toplam ????????????????????????denecek ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1203, 'powerbybdtask', 'Powered  By: BDTASK, www.bdtask.com', 'Desarrollado por 30yTech', 'Geli????????????????????tirici; www.arsdijitalcozumler.com');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1204, 'recept', 'Receipt  No', 'Recibir', 'Fi???????????????????? No ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1205, 'orderno', 'Order No.', 'Numero de Orden', 'Sipari???????????????????? No.');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1206, 'ref_page', 'Refresh Page', 'Refrescar Pagina', 'Sayfay???????????????????? yenile');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1207, 'orderid', 'Order ID', 'Identificaci???????????????n de Orden', 'Sipari???????????????????? ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1208, 'all', 'All', 'Todos', 'Hepsi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1209, 'vat_tax1', 'Vat/Tax', 'Impuesto iva 1', 'KDV / Vergi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1210, 'ord_uodate_success', 'Order Update Successfully!!!', 'Actualizar Orden a Exitosa ', 'Sipari???????????????????? G???????????????ncelleme Ba????????????????????ar????????????????????l????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1211, 'do_print_token', 'Do you Want to Print Token No.???', 'Imprimir Token', 'Sipari???????????????????? Fi????????????????????i Yazd????????????????????rmak istiyor musunuz ?');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1212, 'req_failed', 'Request Failed, Please check your code and try again!', 'Campo requerido', '????????????????????stek Ba????????????????????ar????????????????????s????????????????????z, L???????????????tfen kodunuzu kontrol edin ve tekrar deneyin!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1213, 'ord_places', 'Order Placed Successfully', 'Lugar de la Orden', 'Sipari???????????????????? Ba????????????????????ar????????????????????yla Verildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1214, 'do_print_in', 'Do you Want to Print Invoice???', 'Imprimir Desde', 'Fatura Yazd????????????????????rmak ????????????????????stiyor musunuz ???');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1215, 'ord_complte', 'Order Completed', 'Orden Completada', 'Sipari???????????????????? Tamamland????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1216, 'ord_com_sucs', 'Order Completed Successfully', 'ord com sucs', 'Sipari???????????????????? Ba????????????????????ar????????????????????yla Tamamland????????????????????!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1217, 'token_no', 'Token NO', 'No token', 'Fi???????????????????? No ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1218, 'qr-order', 'QR Order', 'Orden QR', 'QR Kod Sipari????????????????????leri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1219, 'cuschange', 'Customer Change', 'Cambio por', 'M???????????????????????????????????teri De????????????????????i????????????????????ikli????????????????????i');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1220, 'order_successfully_placed', 'Order Has Been Placed Successfully!', 'Pedido Efectuado con ?????????????????????xito', 'Sipari???????????????????? ba????????????????????ar????????????????????yla Olu????????????????????turuldu!');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1221, 'kitchen_setting', 'kitchen Setting', 'Ajustes de Cocina', 'Mutfak Ayarlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1222, 'kitchen_name', 'Kitchen Name', 'Nombre de Cocina', 'Mutfak Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1223, 'kitchen_user_assign', 'Assign Kitchen User', 'Cocina Asignada a Usuario', 'Mutfak Kullan????????????????????c???????????????????? Tan????????????????????mlama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1224, 'kitchen_list', 'Kitchen List', 'Lista de Cocinas', 'Mutfak listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1225, 'add_kitchen', 'Add Kitchen', 'Agregar Cocina', 'Mutfak Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1226, 'kitchen_assign', 'Kitchen Assign', 'Dise???????????????o de Cocina ', 'Mutfak Atamas????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1227, 'kitchen_edit', 'Kitchen Edit', 'Editar Cocina', 'Mutfak D???????????????zenle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1228, 'please_try_again_userassign', 'This user is already assign in this kitchen', 'Por favor intente de nuevo', 'Kullan????????????????????c???????????????????? Tan????????????????????mlamay???????????????????? Tekrar Deneyiniz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1229, 'select_kitchen', 'Select Kitchen', 'Seleccionar cocina', 'Mutfak Se???????????????in');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1230, 'memberid', 'Member ID', 'Identificaci???????????????n de Miembro', '??????????????????ye ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1231, 'member_name', 'Member Name', 'Nombre de Miembro', '??????????????????ye Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1232, 'add_member', 'Add New Member', 'Agregar Miembro', '??????????????????ye Ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1233, 'update_member', 'Update Member', 'Actualizar miembro', '??????????????????ye G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1234, 'member_list', 'Member List', 'Lista de Miembros', '??????????????????ye Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1236, 'meminfo', 'Member Manage', 'Informaci???????????????n de Miembro', '??????????????????ye Bilgileri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1237, 'blocked', 'Blocked', 'Bloqueado', 'Engellendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1238, 'memberid_exist', 'Member ID Already Exists. Please Try Another.', 'Identificaci???????????????n de Miembro existente', 'Mevcut ??????????????????ye ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1239, 'add_new_payment_type', 'Add New Payment Method', 'Agregar Nuevo Tipo de Pago', 'Yeni ????????????????????????deme Y???????????????ntemi ekle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1240, 'sell_report_items', 'Items Sales Report', 'Art???????????????culos de reporte de ventas', 'Sat????????????????????lan ??????????????????r???????????????n Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1241, 'sell_report_waiters', 'Waiters Sales Report', 'Reporte de ventas por mesero', 'Garson Sat???????????????????????????????????????? Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1242, 'sell_report_delvirytype', 'Delivery Type Sales Report', 'Reporte de venta por tipo de entrega', 'Teslim T???????????????r??????????????? Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1243, 'sell_report_casher', 'Sale Report Cashier', 'Reporte de venta por cajero', 'Kasa Sat???????????????????????????????????????? Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1244, 'ready_all_ietm', 'All Item Ready', 'Art???????????????culos listos', 'T???????????????m ??????????????????r???????????????nler Haz????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1245, 'unpaid_sell', 'Unpaid Sale', 'Venta no pagada', '????????????????????????denmemi???????????????????? Sat????????????????????????????????????????lar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1246, 'kitchen_sell', 'Kitchen Sales Report', 'Venta de Cocina', 'Mutfaklar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1247, 'order_total', 'Total Order ', 'Total de la Orden', 'Toplam Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1248, 'scharge_report', 'Service Charge Report ', 'Reporte scharge', 'Servis ??????????????????creti Raporu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1249, 'seo_setting', 'SEO Setting', 'Configuraci???????????????n SEO', 'SEO Ayarlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1250, 'seo_title', 'Title', 'Titulo SEO', 'SEO Ba????????????????????l????????????????????????????????????????????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1251, 'seo_keyword', 'Keyword', 'Palabras clave SEO', 'SEO Anahtar Kelimeler');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1252, 'seo_description', 'Description', 'Descripci???????????????n SEO', 'SEO Tan????????????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1253, 'pos_setting', 'POS Setting', 'Ajustes de Publicaci???????????????n', 'POS Ayarlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1257, 'buy_now', 'Buy Now', 'QR APP', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1264, 'purchase_key', 'Purchase Key', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1271, 'kitchen_status', 'Kitchen Status', 'Estado Cocina', 'Mutfak ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1275, 'loyalty', 'Loyalty', 'lealtad', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1276, 'pointstting', 'Point Setting', 'se???????????????alando ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1277, 'user_points', 'User Point List', 'puntos de usuario', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1278, 'habittrack', 'Customer Habit List', 'seguimiento costumbre', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1279, 'review_rating', 'Review & Rating', 'Calificaci???????????????n de revisi???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1280, 'pos_setting', 'POS Setting', 'Ajustes de Publicaci???????????????n', 'POS Ayarlar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1281, 'point_range_list', 'Point Range', 'Lista de rango de puntos', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1282, 'startamount', 'Start ', 'Monto inicial', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1283, 'endamount', 'End Range', 'monto final', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1284, 'earn_point', 'Earn Point', 'punto ganado', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1285, 'please_wait', 'Please Wait', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1286, 'month', 'Month', 'mes', 'Ay');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1287, 'sl_option', 'Select Option', 'sl opci???????????????n', 'Se???????????????iniz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1288, 'sl_product', 'Search Product', 'Producto sl', '??????????????????r???????????????n Arama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1289, 'quickorder', 'Quick Order', 'Pedido r???????????????pido', 'H????????????????????zl???????????????????? Sipari????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1290, 'placeorder', 'Place Order', 'Realizar pedido', 'Sipari???????????????????? Olu????????????????????tur');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1291, 'type_slorder', 'Type and Select Order', 'Tipo de orden sl', 'Se???????????????mek istedi????????????????????iniz sipari???????????????????? numaras????????????????????n???????????????????? girin');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1292, 'mergeord', 'Merge Order', 'Fusionar orden', 'Sipari????????????????????leri Birle????????????????????tir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1293, 'Processingod', 'Processing...', 'Procesando od', '????????????????????????????????????????leme...');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1294, 'sLengthMenu', 'Display _MENU_ records per page', 'Largo de men???????????????', 'Sayfa ba????????????????????????????????????????na _MENU_ kay????????????????????t g???????????????r???????????????nt???????????????le');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1295, 'sInfo', 'Showing _START_ to _END_ of _TOTAL_ entries', 'Informaci???????????????n ', 'Sayfa _PAGE_ nin _PAGES_ g???????????????steriliyor');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1296, 'sInfoEmpty', 'Showing 0 to 0 of 0 entries', 'Sin informaci???????????????n', 'G???????????????sterilen 0-0 Toplam:0 ');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1297, 'sInfoFiltered', '(Filtered from _MAX_ Total Records)', 'Informaci???????????????n filtrada', '(_MAX_ toplam giri????????????????????ten filtrelendi)');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1298, 'sLoadingRecords', 'Loading...', 'Cargando registros', 'Y???????????????kleniyor...');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1299, 'sZeroRecords', 'Nothing found - sorry', 'Records sZero', 'Hi???????????????bir ????????????????????ey bulunamad???????????????????? - ???????????????zg???????????????n???????????????m');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1300, 'sEmptyTable', 'No Data Available in Table', 'Mesa vac???????????????a', 'Listelenen veri yok');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1301, 'sFirst', 'First', 'Primero', '????????????????????lk');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1302, 'sLast', 'Last', '???????????????ltimo', 'Son');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1303, 'sPrevious', 'Previous', 'Previo', 'Geri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1304, 'sNext', 'Next', 'Siguiente', '????????????????????leri');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1305, 'sSortAscending', 'Activate to sort column ascending', 's Orden ascendente', 'artan s???????????????tunu s????????????????????ralamak i???????????????in etkinle????????????????????tir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1306, 'sSortDescending', 'Activate to Sort Column Descending', 's Orden descendiente', 's???????????????tunu azalan s????????????????????ralamak i???????????????in etkinle????????????????????tir');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1307, '_sign', 'Show %d Rows', '_firma', 'G???????????????stermek %d sat????????????????????rlar');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1308, '_0sign', 'No Row Selected', '_0firma', 'Sat????????????????????r se???????????????ilmedi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1309, '_1sign', '1 Line Selected', '_1firma', '1 sat????????????????????r se???????????????ildi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1310, 'copy', 'Copy', 'Copiar', 'Kopyala');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1312, 'excel', 'Excel', 'excel', 'excel');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1313, 'pdf', 'Pdf', 'PDF', 'pdf');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1314, 'colvis', 'Column Visibility', 'Colvis', 'S???????????????tun ayar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1316, 'no_orderfound', 'No Order Found!!!', 'No se encontr??????????????? la orden', 'Mevcut Sipari???????????????????? Yok');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1317, 'prepared', 'Prepared', 'Preparado', 'Haz????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1318, 'accept', 'Accept', 'Aceptar', 'Kabul et');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1319, 'reject', 'Reject', 'Rechazar', 'Reddet');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1320, 'ready', 'Ready', 'Listo', 'haz????????????????????r');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1321, 'proccessing', 'Processing', 'Procesando ', '????????????????????????????????????????leme');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1322, 'kitnotacpt', 'Kitchen Not Accept', 'cocina no acepta', 'Mutfak Kabul Edilmez');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1323, 'add_range', 'Add Range', 'Agregar Rango', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1324, 'editpoint', 'Point Edit', 'editar punto', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1325, 'isvip', 'Is VIP ?', 'es VIP', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1326, 'customerpointlist', 'Customer Point List', 'cliente punto de lista', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1327, 'spendamount', 'Spend Amount', 'Monto gastado', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1328, 'totalp', 'Total Points', 'Total P', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1332, 'membershipenable', 'Membership Enable', 'Habilitar Membres???????????????a', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1425, 'person', 'Person', 'Persona', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1426, 'before_time', 'Running Time', 'antes de esta hora', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1427, 'select_this_table', 'Select This Table', 'Seleccionar esta mesa', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1428, 'seat', 'Seat', 'asiento', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1429, 'seat_time', 'Time', 'Tiempo en asiento', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1430, '+', 'Add', '+', 'add');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1431, 'clear', 'Clear', 'limpiar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1432, 'no_customer', 'No Customer', 'N???????????????mero de cliente', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1433, 'table_map', 'Table Map', 'Mapa de mesa', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1434, 'add', 'Add', 'agregar', 'Adres');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1435, 'itemsincart', 'Item(s) in Cart', 'art???????????????culos en la carta', '??????????????????r???????????????n Sepete Eklendi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1436, 'view_cart', 'View Cart', 'Visualizar Carrito', 'Sepeti G???????????????r???????????????nt???????????????le');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1437, 'morderlist', 'My Order List', 'orden de lista', 'Sipari???????????????????? Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1438, 'edit', 'Edit', 'editar', 'G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1439, 'foodde', 'Food Details', 'comida', 'Yemek Detaylar????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1440, 'cartlist', 'Cart List', 'Lista de menu', 'Sipari???????????????????? listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1441, 'subtotal', 'Subtotal', 'Sub total', 'Ara Toplam');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1442, 'ordnote', 'Order Notes', 'Nota de orden', 'Sipari???????????????????? Notu');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1443, 'upsummery', 'Update Summery', 'resumen', 'Sipari????????????????????i G???????????????ncelle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1444, 'upsumlist', 'Update Summery List', 'lista de resumen', 'Sipari???????????????????? G???????????????ncelleme Listesi');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1445, 'mkpayment', 'Make Payment', 'Pago mk', '????????????????????????deme yapmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1446, 'foodnote', 'Food Note', 'nota de orden', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1447, 'addnotesi', 'Add Note', 'Agregar Nota SI', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1448, 'thirdparty_orderid', 'Third-party Order ID', 'ID orden de terceros ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1456, 'themes', 'Themes', 'temas', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1457, 'menu_type', 'Menu Type', 'Tipo de men???????????????', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1458, 'add_menu_type', 'Add Menu Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1459, 'menutype_edit', 'Menu Type Edit', 'Editar tipo de men???????????????', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1460, 'menu_type_name', 'Menu Type', 'Nombre del tipo de men???????????????', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1461, 'storetime', 'Manage Store Time', 'Tiempo en tienda', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1462, 'day_name', 'Day', 'D???????????????a', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1463, 'saturday', 'Saturday', 's???????????????bado', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1464, 'sunday', 'Sunday', 'domingo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1465, 'monday', 'Monday', 'lunes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1466, 'tuesday', 'Tuesday', 'martes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1467, 'wednesday', 'Wednesday', 'mi???????????????rcoles', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1468, 'thursday', 'Thursday', 'jueves', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1469, 'friday', 'Friday', 'viernes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1470, 'footer_logo', 'Footer Logo', 'logo de footer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1471, 'contact_us', 'Contact Us', 'Contactanos', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1472, 'opening_time', 'Available On', 'Tiempo de Apertura', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1473, 'ourstore', 'Our Store', 'Nuestra tienda', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1474, 'call_reservation', 'Call for Reservations', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1475, 'item_available', 'Items Available', 'articulo disponible', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1479, 'membership_card', 'Bar Code', 'Tarjeta de Membres???????????????a', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1480, 'barcode_start', 'From Barcode', 'Codigo de barra inicial', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1481, 'barcode_end', 'To Barcode', 'Codigo de barra final', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1494, 'commission', 'Commission', 'comisi???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1495, 'sale_by_table', 'Sale By Table', 'Venta por mesa', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1496, 'stock_limit', 'Re-Stock Level', 'Limite de stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1497, 'ingredients', 'Ingredients', 'ingredientes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1498, 'stock_out_ingredients', 'Stock Out Ingredients', 'Ingredientes agotados', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1499, 'office_addres1', 'Office Address', 'Direcci???????????????n de Oficina ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1500, 'call_us', 'Call Us', 'llamanos', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1501, 'email_us', 'Email Us', 'escribenos', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1502, 'upload_theme', 'Upload Theme', 'cargar tema', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1503, 'discount_type', 'Discount Type', 'tipo de descuento', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1504, 'confirm_password', 'Confirm Password', 'confirmar contrase???????????????a', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1559, 'wastemangment', 'Waste Management', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1590, 'add_group_item', 'Add Group Item', 'Agregar articulo agrupado', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1591, 'update_group_item', 'Update Group Item', 'Actualizar elemento de grupo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1592, 'production_setting', 'Production Setting', 'Entorno de producci???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1593, 'select_auto', 'Select auto Production', 'Selecci???????????????n autom???????????????tica', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1594, 'split', 'Split', 'Divisi???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1595, 'tinvat', 'TIN OR VAT NUM.', 'TINVAT', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1596, 'bill', 'Bill', 'cuenta', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1597, 'checkin', 'Check In', 'Chequear', 'Giri???????????????????? Yapmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1598, 'checkout', 'Check Out', 'Revisi???????????????n', '?????????????????????????????????????????k???????????????????????????????????????? yapmak');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1599, 'totalpayment', 'Total payment', 'Pago total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1600, 'thanssuport', 'Thank You for Your Support', 'apoyo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1601, 'thanks_you', 'Thank you very much', 'Gracias', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1602, 'opening_balance', 'Opening Balance', 'Abrir Caja', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1603, 'transaction_date', 'Date', 'Fecha de transacci???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1604, 'voucher_type', 'Voucher Type', 'Tipo de Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1605, 'particulars', 'Head Name', 'Informe detallado', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1606, 'total_empolyee', 'Total Employee', 'Total de empleados', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1607, 'apply_day', 'Days', 'dia aplicable', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1608, 'loan_no', 'Loan No.', 'no de prestamo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1609, 'add_floor', 'Add Floor', 'Agregar ???????????????rea', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1610, 'floor_name', 'Floor Name', 'nombre de ???????????????rea', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1611, 'edit_floor', 'Edit Floor', 'editar ???????????????rea', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1612, 'floor_list', 'Floor List', 'lista de ???????????????reas', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1613, 'floor_select', 'Floor Select', 'seleccionar ???????????????rea', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1614, 'add_to_cart_more', 'Add Multiple Variant', 'Agregar m???????????????s a la Carta', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1615, 'kitchen_printers', 'Kitchen printer Setting', 'impresora de cocina', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1616, 'printer_list', 'Printer List', 'Lista de impresi???????????????n', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1617, 'add_printer', 'Add Printer', 'Agregar Impresora', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1618, 'ip_port', 'Your Online URL', 'ip_port', '?????????????????????evrimi???????????????i URL\'niz');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1624, 'hello,_how_can_we_help_you?', 'Hello, How Can We Help You?', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1625, 'counter_list', 'Counter List', 'Lista de Cajeros', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1626, 'add_counter', 'Add Counter', 'Agregar Cajero', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1627, 'edit_counter', 'Edit Counter', 'editar cajero', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1628, 'counter_no', 'Counter Number', 'Numero de Caja', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1629, 'add_opening_balance', 'Add Opening Balance', 'Agregar Balance de Apertura', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1630, 'add_closing_balance', 'Add Closing Balance', 'Agregar Balance de Cierre', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1632, 'sell_report_cashregister', 'Cash Register Report', 'Reporte de ventas caja registradora', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1633, 'closing_balance', 'Closing Balance', 'balance de cierre', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1634, 'factory_reset', 'Factory Reset', 'reinicio de fabrica', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1635, 'fresettext', 'Note: Strongly recommended to backup your SOURCE file and DATABASE before resetting because all transactional data will be cleared after running the factory reset.', 'texto libre', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1636, 'bill_by', 'Bill By', 'cuenta por', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1640, 'type_table', 'Type and Select Table', 'Tipo de tabla', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1643, 'number_of_tax', 'Number of Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1645, 'tax_name', 'Tax Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1646, 'tax_name', 'Tax Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1648, 'sound_setting', 'Sound Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1649, 'is_sound', 'Is Sound Enable', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1650, 'upload_notify', 'Upload Notification Sound', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1651, 'upload_order', 'Upload order Add Sound', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1655, 'room_list', 'Room List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1656, 'add_room', 'Add Room', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1657, 'room_no', 'Room No', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1658, 'room_qr', 'All Room QR', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1659, 'restaurant_closed', 'Restaurant is Closed!!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1660, 'closed_msg', 'You order Only when restaurant is open. Our opening and closing Time is:', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1661, 'privactp', 'Privacy Policy', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1662, 'terms_condition', 'Terms & conditions', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1663, 'refundp', 'Refund Policies', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1664, 'reservation_on_off', 'Reservation On Off', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1665, 'unavailable_day', 'Unavailable Day', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1666, 'unavaildate', 'Unavailable Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1667, 'add_unavailablity', 'Add Unavailability', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1668, 'edit_unavailablity', 'Edit Unavailability', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1669, 'unavailable_time', 'Unavailable Time', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1670, 'max_reserveperson', 'Max Reserve Person', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1671, 'reservasetting', 'Reservation Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1672, 'webon', 'Website ON', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1673, 'weboff', 'Website Off', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1674, 'webdisable', 'Web site ON/Off', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1675, 'placr_setting', 'Place order Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1676, 'quick_ord', 'Quick Order Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1677, 'shippingtime', 'Shipping Date & Time', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1678, 'search_food_item', 'Search Food Item', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1679, 'search_category', 'Search Category', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1680, 'check_availablity', 'Check Availability', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1681, 'subscribe_paragraph', 'Subscribe to Receive Our Weekly Promotion', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1682, 'shipping_method', 'Shipping Method', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1683, 'please_select_shipping_method', 'Please Select Shipping Method', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1684, 'autoupdate', 'Auto Update', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1685, 'coa_head', 'COA Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1686, 'apps_addons', 'Apps Add-ons', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1687, 'download_apps_playstore', 'Please Download Apps on Playstore', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1688, 'kitchen_app', 'Kitchen App', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1689, 'waiter_app', 'Waiter App', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1690, 'customer_app', 'Customer App', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1691, 'if_you_need_the_above_all_apps', 'If you need the above all apps, please feel free to contact us.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1692, 'do_you_want_proceed', 'Do You Want to Proceed?', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1693, 'is_offer', 'Offer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1694, 'is_special', 'Special', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1695, 'is_custome_quantity', 'Custom Quantity', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1696, 'kitchenitemsell', 'Kitchen Sell', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1697, 'due_marge', 'Due Merge', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1698, 'book_table', 'Book Table', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1699, 'reserve_table', 'Reserve Table', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1700, 'see_more', 'See More', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1701, 'food_name', 'Food Name', 'Nombre de la Comida', '??????????????????r???????????????n Ad????????????????????');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1702, 'category', 'Category', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1703, 'search', 'Search', 'Buscar', 'Arama');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1704, 'read_more', 'Read more', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1705, 'item_has_been_successfully_added', 'Item has been successfully added', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1706, 'add_to_cart', 'add to cart', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1707, 'view_full_menu', 'View Full Menu', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1708, 'home', 'Home', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1709, 'subscribe_to_newsletter', 'Subscribe to Newsletter', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1710, 'subscribe', 'subscribe', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1711, 'get_directions', 'Get Directions', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1712, 'teams_of_use', 'Teams of use', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1713, 'privacy_policy', 'Privacy Policy', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1714, 'contact', 'Contact', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1715, 'please_enter_your_email', 'Please Enter Your email !!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1716, 'please_enter_valid_email', 'Please enter a valid Email', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1717, 'thanks_for_subscription', 'Thanks for Subscription', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1718, 'note_added', 'Note Added', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1719, 'posting_failed', 'Posting failed', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1720, 'our_service_is_closed_on_this_date_and_time', 'Our service is Closed on this date and time !!!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1721, 'reservation_time_closed_try_later', 'Reservation Time is closed!! Please try later.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1722, 'select_date', 'Please select date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1723, 'select_time', 'Please select Time', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1724, 'enter_number_of_people', 'Please enter the number of people', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1725, 'select_after_hour_current_time', 'Please select after 1 hour to Current time', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1726, 'no_free_seat_to_the_reservation', 'Currently, there is no free seat to the reservation', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1727, 'search_topics_or_keywords', 'Search topics or keywords', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1728, 'no_data_found', 'No Data Found', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1729, 'please_wait', 'Please Wait', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1730, 'reservation_contact', 'Contact No.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1731, 'reservation_time', 'Expected Time', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1732, 'reservation_date', 'Expected Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1733, 'reservation_person', 'Total Person', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1734, 'deal_of_the_day', 'Deal of the day', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1735, 'cart', 'Cart', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1736, 'unavailable', 'Unavailable', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1737, 'write_comments', 'Write Your Comments', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1738, 'get_in_touch', 'Get In Touch', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1739, 'forgot_password', 'Forgot Password', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1740, 'shopping_details_information_msg', 'If you have shopped with us before, please enter your details in the boxes below.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1741, 'remember_me', 'Remember Me', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1742, 'or', 'OR', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1743, 'register', 'Register', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1744, 'enter_your_phone_or_email', 'Please enter your Phone or Email.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1745, 'password_not_empty', 'Password Not Empty.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1746, 'failed_login_msg', 'Failed Login: Check your Email and password!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1747, 'email_not_registered_msg', 'Failed: Email has not been registered yet.!!!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1748, 'have_been_sent_email', 'Success: We have been sent an email to this', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1749, 'check_your_new_password', 'Email Address. Please check your New Password..!!!', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1750, 'profile_picture', 'Profile Picture', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1751, 'my_profile', 'My Profile', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1752, 'my_reservation', 'My Reservation', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1753, 'profile_update', 'Profile Update', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1754, 'name', 'Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1755, 'returning_customer', 'Returning customer?', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1756, 'click_login', 'Click here to login', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1757, 'checkout_msg', 'If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing & Shipping section.', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1758, 'username_or_email', 'Username or Email', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1759, 'billing_address', 'Billing Address', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1760, 'select_country', 'Select Country', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1761, 'select_state', 'Select State', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1762, 'town_city', 'Town / City', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1763, 'select_city', 'Select City', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1764, 'street_address', 'Street Address', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1765, 'postcode_zip', 'Postcode / ZIP', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1766, 'create_account', 'Create an Account?', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1767, 'create_account_password', 'Create account password', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1768, 'shipping_different_address', 'Ship to a Different Address?', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1769, 'your_order', 'Your Order', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1770, 'product', 'Product', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1771, 'total_vat', 'Total VAT', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1772, 'coupon_discount', 'Coupon Discount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1773, 'service', 'Service', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1774, 'tag', 'Tag', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1775, 'review', 'Review', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1776, 'average_user_rating', 'Average User Rating', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1777, 'rating_breakdown', 'Rating Breakdown', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1778, 'complete_success', '100% Complete (success)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1779, '80_complete_primary', '80% Complete (primary)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1780, '60_complete_info', '60% Complete (info)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1781, '40_complete_warning', '40% Complete (warning)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1782, '20_complete_danger', '20% Complete (danger)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1783, 'rate_it', 'Rate It', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1784, 'french_chicken_burger_tomato_sauce', 'French Chicken Burger With Hot tomato Sauce', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1785, 'review_submit', 'Review Submit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1786, 'related_items', 'Related Items', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1787, 'pickup', 'Pickup', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1788, 'dine_in', 'Dine-in', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1789, 'enter_coupon_code', 'Enter coupon code', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1790, '00_15_min', '00:15 MIN', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1791, 'go_to_checkout', 'Go to Checkout', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1798, 'timezone', 'Time Zome', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1799, 'discountrate', 'Discount Rate', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1800, 'vat', 'Vat', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1801, 'loan_issue_id', 'Loan Issue ID', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1802, 'repayment', 'Re-payment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1803, 'loan_report_details', 'Loan Details', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1804, 'balance_sheet', 'Balance Sheet', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1813, 'purdate', 'Purchase Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1814, 'expdate', 'Expiry Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1815, 'parent_cat', 'Parent Category', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1816, 'set_productioncost', 'Set Production Cost Per Unit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1817, 'set_productionunit', 'Set Production Unit', 'Configurar producci???????????????n unitaria', '??????????????????retim ????????????????????????????????????????????elerini Belirle');
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1818, 'production_set', 'Production Set', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1819, 'production_set_for', 'Production Set For', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1820, 'serving_unit', 'Serving Unit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1821, 'kit_dashoard_setting', 'Kitchen Dashboard Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1822, 'kot_reftime', 'Kitchen Refresh time In Second', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1823, 'bulk_upload', 'Bulk Upload', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `spanish`, `turkish`) VALUES(1824, 'upload_food_csv', 'Upload Food Item csv', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES (NULL, 'appcartempty', 'Your Cart is empty!!!.Please add some food.'), (NULL, 'apporderempty', 'You Order List is empty!!! Please Place A Order First!!!');

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

DROP TABLE IF EXISTS `leave_apply`;
CREATE TABLE IF NOT EXISTS `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
CREATE TABLE IF NOT EXISTS `leave_type` (
  `leave_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment`
--

DROP TABLE IF EXISTS `loan_installment`;
CREATE TABLE IF NOT EXISTS `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marital_info`
--

DROP TABLE IF EXISTS `marital_info`;
CREATE TABLE IF NOT EXISTS `marital_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_sta` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_info`
--

INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(1, 'Single');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(2, 'Married');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(3, 'Divorced');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(4, 'Widowed');
INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `startpoint` int(11) NOT NULL,
  `endpoint` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`, `startpoint`, `endpoint`) VALUES(1, 'Normal User', 0, '', 2, '2018-11-07', 2, '2018-11-07', 0, 0);
INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`, `startpoint`, `endpoint`) VALUES(2, 'Premium Member', 0, '', 1, '2020-11-04', 2, '2020-12-03', 250, 999);
INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`, `startpoint`, `endpoint`) VALUES(3, 'VIP', 0, '', 1, '2020-11-04', 2, '2020-12-03', 1001, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_add_on`
--

DROP TABLE IF EXISTS `menu_add_on`;
CREATE TABLE IF NOT EXISTS `menu_add_on` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

DROP TABLE IF EXISTS `module_permission`;
CREATE TABLE IF NOT EXISTS `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multipay_bill`
--

DROP TABLE IF EXISTS `multipay_bill`;
CREATE TABLE IF NOT EXISTS `multipay_bill` (
  `multipay_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`multipay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

DROP TABLE IF EXISTS `order_menu`;
CREATE TABLE IF NOT EXISTS `order_menu` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` decimal(19,3) DEFAULT 0.000,
  `groupmid` int(11) DEFAULT 0,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `addonsqty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `varientid` int(11) NOT NULL,
  `groupvarient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `qroupqty` int(11) DEFAULT NULL,
  `isgroup` int(11) DEFAULT 0,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsetup`
--

DROP TABLE IF EXISTS `paymentsetup`;
CREATE TABLE IF NOT EXISTS `paymentsetup` (
  `setupid` int(11) NOT NULL AUTO_INCREMENT,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `edit_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`setupid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentsetup`
--

INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(1, 5, 'bdtas5e772deb8ff87', 'bdtas5e772deb8ff87@ssl', 'ainalcse@gmail.com', 'BDT', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(2, 3, '', '', 'tareq7500personal2@gmail.com', 'USD', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(3, 2, '901400787', '', 'ainalcse@gmail.com', 'USD', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(4, 6, '002020000000001', '002020000000001_KEY1', '1', '', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(5, 7, 'BE10000072', 'BE10000072', 'karmadorji@gmail.com', 'BTN', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(6, 8, 'sandbox-sq0idb-ShIOgPUIHSXxsjCPG4oh_A', 'EAAAEE3gxSvOVaHIq-5A5P_yFkUbkAfUM2-JiQju2FTxQ4n7epxmvKpaOhECxHcN', '5SNY8GNKAZM00', 'AUD', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(7, 9, 'sk_test_ol4WUcbGsqxNJItpeOi1ecDT00k5mDyC2G', 'pk_test_TrVFpmZBkgasCE6WTPkZgMPr00UzVVOqgp', 'ainalcse@gmail.com', 'USD', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(8, 10, 'sk_test_71353c2613675acb967ea532f4c4c8105ea175b8', 'pk_test_328da55755b88b1aaed96c5cda215b2fd887edb9', 'ainalcse@gmail.com', 'NGN', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(9, 11, NULL, '', '', '', 0, 0, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(10, 12, '7BUkXCbuHDcx1ZyQqmcKVtsLnFxF0r3f', 'vmUIfeoHXpZSKc20Wt50d6hqeIY5FcWtFR6prg0Ubak8IvmmZEFDDpQr5ZMEdnoS', '', 'XAF', 0, 1, NULL);
INSERT INTO `paymentsetup` (`setupid`, `paymentid`, `marchantid`, `password`, `email`, `currency`, `Islive`, `status`, `edit_url`) VALUES(12, 13, 'sandbox-5rd4uUC2yAz7LWDaalyJAOEsH2rxrqVB', 'sandbox-FsKRCZpk0BpdUss3wVsNLhvs5Ty5PSpi', '', 'BDT', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modulename` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(1, 'Card Payment', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(2, 'Two Checkout', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(3, 'Paypal', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(4, 'Cash Payment', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(5, 'SSLCommerz', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(6, 'SIPS Office', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(7, 'RMA PAYMENT GATEWAY', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(8, 'Square Payments', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(9, 'Stripe Payment', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(10, 'Paystack Payments', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(11, 'Paytm Payments', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(12, 'Orange Money payment', 1, '');
INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES(13, 'iyzico', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_commission_setting`
--

DROP TABLE IF EXISTS `payroll_commission_setting`;
CREATE TABLE IF NOT EXISTS `payroll_commission_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(6) NOT NULL,
  `rate` int(4) NOT NULL,
  `create_by` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_holiday`
--

DROP TABLE IF EXISTS `payroll_holiday`;
CREATE TABLE IF NOT EXISTS `payroll_holiday` (
  `payrl_holi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

DROP TABLE IF EXISTS `payroll_tax_setup`;
CREATE TABLE IF NOT EXISTS `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_frequency`
--

DROP TABLE IF EXISTS `pay_frequency`;
CREATE TABLE IF NOT EXISTS `pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_frequency`
--

INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(1, 'Weekly');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(2, 'Biweekly');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(3, 'Annual');
INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES(4, 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(1, 'Chef', 'Responsible for the pastry shop in a foodservice establishment. Ensures that the products produced in the pastry shop meet the quality standards in conjunction with the executive chef.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(2, 'HRM', 'Recruits and hires qualified employees, creates in-house job-training programs, and assists employees with their career needs.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(3, 'Kitchen manager', 'Supervises and coordinates activities concerning all back-of-the-house operations and personnel, including food preparation, kitchen and storeroom areas.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(4, 'Counter server', 'Responsible for providing quick and efficient service to customers. Greets customers, takes their food and beverage orders, rings orders into register, and prepares and serves hot and cold drinks.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(6, 'Waiter', 'Most waiters and waitresses, also called servers, work in full-service restaurants. They greet customers, take food orders, bring food and drinks to the tables and take payment and make change.');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(7, 'Accounts', 'Play a key role in every restaurant. ');
INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES(8, 'Salesman', 'A salesman is someone who works in sales, with the main function of selling products or services to others either by visiting locations');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
CREATE TABLE IF NOT EXISTS `production` (
  `productionid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `itemvid` int(11) DEFAULT NULL,
  `itemquantity` int(11) NOT NULL,
  `savedby` int(11) NOT NULL,
  `saveddate` date NOT NULL,
  `productionexpiredate` date NOT NULL,
  PRIMARY KEY (`productionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `production_details`
--

DROP TABLE IF EXISTS `production_details`;
CREATE TABLE IF NOT EXISTS `production_details` (
  `pro_detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `foodid` int(11) NOT NULL,
  `pvarientid` int(11) DEFAULT NULL,
  `ingredientid` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`pro_detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

DROP TABLE IF EXISTS `purchaseitem`;
CREATE TABLE IF NOT EXISTS `purchaseitem` (
  `purID` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `paymenttype` int(11) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  `total_price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `paid_amount` decimal(19,3) DEFAULT 0.000,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL,
  PRIMARY KEY (`purID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
CREATE TABLE IF NOT EXISTS `purchase_details` (
  `detailsid` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseid` int(11) NOT NULL,
  `indredientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `totalprice` decimal(19,3) NOT NULL DEFAULT 0.000,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

DROP TABLE IF EXISTS `purchase_return`;
CREATE TABLE IF NOT EXISTS `purchase_return` (
  `preturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

DROP TABLE IF EXISTS `purchase_return_details`;
CREATE TABLE IF NOT EXISTS `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_type`
--

DROP TABLE IF EXISTS `rate_type`;
CREATE TABLE IF NOT EXISTS `rate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_type`
--

INSERT INTO `rate_type` (`id`, `r_type_name`) VALUES(1, 'Hourly');
INSERT INTO `rate_type` (`id`, `r_type_name`) VALUES(2, 'Salary');

-- --------------------------------------------------------

--
-- Table structure for table `reservationofday`
--

DROP TABLE IF EXISTS `reservationofday`;
CREATE TABLE IF NOT EXISTS `reservationofday` (
  `offdayid` int(11) NOT NULL AUTO_INCREMENT,
  `offdaydate` date NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`offdayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_table`
--

DROP TABLE IF EXISTS `rest_table`;
CREATE TABLE IF NOT EXISTS `rest_table` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free',
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_table`
--

INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(1, '1', 2, 'assets/img/icons/resttable/1.png', 3, 1);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(2, '2', 4, 'assets/img/icons/resttable/4.png', 1, 1);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(3, '3', 2, 'assets/img/icons/resttable/2.png', 1, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(4, '4', 5, 'assets/img/icons/resttable/table11.png', 3, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(5, '5', 6, 'assets/img/icons/resttable/table7.png', 3, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(6, '6', 3, 'assets/img/icons/resttable/3.png', 1, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(7, '7', 8, 'assets/img/icons/resttable/8.png', 1, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(8, '8', 4, 'assets/img/icons/resttable/4.png', 3, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(9, '9', 3, 'assets/img/icons/resttable/3.png', 1, 0);
INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES(10, 'VIP', 8, 'assets/img/icons/resttable/7.png', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--

DROP TABLE IF EXISTS `salary_setup_header`;
CREATE TABLE IF NOT EXISTS `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 NOT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`s_s_h_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

DROP TABLE IF EXISTS `salary_sheet_generate`;
CREATE TABLE IF NOT EXISTS `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
CREATE TABLE IF NOT EXISTS `salary_type` (
  `salary_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `emp_sal_type`, `default_amount`, `status`) VALUES(1, 'House Rent', '1', '', '');
INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `emp_sal_type`, `default_amount`, `status`) VALUES(2, 'Medical', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sec_menu_item`
--

DROP TABLE IF EXISTS `sec_menu_item`;
CREATE TABLE IF NOT EXISTS `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(1, 'manage_category', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(2, 'category_list', 'item_category', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(3, 'add_category', 'create', 'itemmanage', 2, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(4, 'manage_food', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(5, 'food_list', 'item_food', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(6, 'add_food', 'index', 'itemmanage', 5, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(7, 'food_varient', 'foodvarientlist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(8, 'add_varient', 'addvariant', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(9, 'food_availablity', 'availablelist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(10, 'add_availablity', 'addavailable', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(11, 'manage_addons', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(12, 'addons_list', 'menu_addons', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(13, 'add_adons', 'create', 'itemmanage', 8, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(14, 'manage_unitmeasurement', '', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(15, 'unit_list', 'unitmeasurement', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(16, 'unit_add', 'create', 'units', 12, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(17, 'manage_ingradient', '', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(18, 'ingradient_list', 'ingradient', 'units', 0, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(19, 'add_ingredient', 'create', 'units', 15, 0, 2, '2018-11-05 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(20, 'assign_adons_list', 'assignaddons', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(21, 'assign_adons', 'assignaddonscreate', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(28, 'membership_management', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(29, 'membership_list', 'index', 'setting', 28, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(30, 'membership_add', 'create', 'setting', 29, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(31, 'payment_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(32, 'paymentmethod_list', 'index', 'setting', 31, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(33, 'payment_add', 'create', 'setting', 32, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(34, 'shipping_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(35, 'shipping_list', 'index', 'setting', 34, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(36, 'shipping_add', 'create', 'setting', 35, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(37, 'supplier_manage', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(38, 'supplier_list', 'index', 'setting', 37, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(39, 'supplier_add', 'create', 'setting', 38, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(40, 'purchase_item', 'index', 'purchase', 0, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(41, 'purchase_add', 'create', 'purchase', 40, 0, 2, '2018-11-12 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(42, 'table_manage', '', 'setting', 0, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(43, 'add_new_table', 'create', 'setting', 44, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(44, 'table_list', 'restauranttable', 'setting', 42, 0, 2, '2018-11-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(45, 'ordermanage', 'index', 'ordermanage', 0, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(46, 'add_new_order', 'neworder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(47, 'order_list', 'orderlist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(48, 'pending_order', 'pendingorder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(49, 'processing_order', 'processing', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(50, 'complete_order', 'completelist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(51, 'cancel_order', 'cancellist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(52, 'pos_invoice', 'pos_invoice', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(53, 'c_o_a', 'treeview', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(54, 'debit_voucher', 'debit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(55, 'credit_voucher', 'credit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(56, 'contra_voucher', 'contra_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(57, 'journal_voucher', 'journal_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(58, 'voucher_approval', 'voucher_approval', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(59, 'account_report', '', 'accounts', 0, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(60, 'voucher_report', 'coa', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(61, 'cash_book', 'cash_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(62, 'bank_book', 'bank_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(63, 'general_ledger', 'general_ledger', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(64, 'trial_balance', 'trial_balance', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(65, 'profit_loss', 'profit_loss_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(66, 'cash_flow', 'cash_flow_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(67, 'coa_print', 'coa_print', 'accounts', 59, 0, 2, '2018-12-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(68, 'hrm', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(69, 'attendance', 'Home', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(70, 'atn_form', 'atnview', 'hrm', 69, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(71, 'atn_report', 'attendance_list', 'hrm', 69, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(72, 'award', 'Award_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(73, 'new_award', 'create_award', 'hrm', 72, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(74, 'circularprocess', 'Candidate', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(75, 'add_canbasic_info', 'caninfo_create', 'hrm', 74, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(76, 'can_basicinfo_list', 'canInfoview', 'hrm', 74, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(77, 'candidate_basic_info', 'Candidate_select', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(78, 'candidate_shortlist', 'shortlist_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(79, 'candidate_interview', 'interview_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(80, 'candidate_selection', 'selection_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(81, 'department', 'Department_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(82, 'departmentfrm', 'create_dept', 'hrm', 81, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(83, 'division', 'Division_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(84, 'add_division', 'division_form', 'hrm', 83, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(85, 'division_list', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(86, 'position', 'position_form', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(87, 'Direct_Empl', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(88, 'add_employee', 'employ_form', 'hrm', 87, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(89, 'manage_employee', 'employee_view', 'hrm', 87, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(90, 'emp_performance', 'emp_performance_form', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(91, 'emp_sal_payment', 'paymentview', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(92, 'leave', 'leave', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(93, 'weekly_holiday', 'weeklyform', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(94, 'holiday', 'holiday_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(95, 'others_leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(96, 'add_leave_type', 'leave_type_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(97, 'leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(98, 'loan', 'loan', 'hrm', 0, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(99, 'loan_grand', 'create_grandloan', 'hrm', 98, 0, 2, '2018-12-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(100, 'loan_installment', 'create_installment', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(101, 'manage_installment', 'installmentView', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(102, 'manage_granted_loan', 'loan_view', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(103, 'loan_report', 'loan_report', 'hrm', 98, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(104, 'payroll', 'Payroll', 'hrm', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(105, 'salary_type_setup', 'create_salary_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(106, 'manage_salary_setup', 'emp_salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(107, 'salary_setup', 'create_s_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(108, 'manage_salary_type', 'salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(109, 'salary_generate', 'create_salary_generate', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(110, 'manage_salary_generate', 'salary_generate_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(111, 'purchase_return', 'return_form', 'purchase', 40, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(112, 'return_invoice', 'return_invoice', 'purchase', 40, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(113, 'report', 'reports', 'report', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(114, 'purchase_report', 'index', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(115, 'stock_report_product_wise', 'productwise', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(116, 'purchase_report_ingredient', 'ingredientwise', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(117, 'sell_report', 'sellrpt', 'report', 113, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(118, 'table_setting', 'tablesetting', 'setting', 44, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(119, 'customer_type', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(120, 'customertype_list', 'customertype', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(121, 'add_type', 'create', 'setting', 120, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(122, 'currency', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(123, 'currency_list', 'currency', 'setting', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(124, 'currency_add', 'create', 'setting', 123, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(125, 'production', '', 'production', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(126, 'production_set_list', 'production', 'production', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(127, 'set_productionunit', 'productionunit', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(128, 'production_add', 'create', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(129, 'production_list', 'addproduction', 'production', 126, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(130, 'reservation', '', 'reservation', 0, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(131, 'reservation_table', 'tablebooking', 'reservation', 130, 0, 2, '2018-12-19 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(132, 'update_ord', 'updateorder', 'ordermanage', 45, 0, 2, '2019-12-11 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(133, 'kitchen_dashboard', 'kitchen', 'ordermanage', 45, 0, 2, '2020-02-13 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(134, 'counter_dashboard', 'counterboard', 'ordermanage', 45, 0, 2, '2020-02-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(191, 'counter_list', 'counterlist', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(192, 'pos_setting', 'possetting', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(193, 'sound_setting', 'soundsetting', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(194, 'supplier_ledger', 'supplier_ledger_report', 'purchase', 38, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(195, 'stock_out_ingredients', 'stock_out_ingredients', 'purchase', 40, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(196, 'sell_report_items', 'sellrptItems', 'report', 117, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(197, 'scharge_report', 'servicerpt', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(198, 'sell_report_waiters', 'sellrptwaiter', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(199, 'kitchen_sell', 'kichansrpt', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(200, 'sell_report_delvirytype', 'sellrptdelvirytype', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(201, 'sell_report_casher', 'sellrptCasher', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(202, 'unpaid_sell', 'unpaid_sell', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(203, 'sell_report_filter', 'sellrpt2', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(204, 'sele_by_date', 'sellrptbydate', 'report', 113, 0, 2, '2021-01-21 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(205, 'production_setting', 'possetting', 'production', 125, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(206, 'kitchen_setting', 'kitchensetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(207, 'kitchen_assign', 'assignkitchen', 'setting', 206, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(208, 'sms_setting', 'smsetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(209, 'sms_configuration', 'sms_configuration', 'setting', 208, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(210, 'sms_temp', 'sms_template', 'setting', 208, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(211, 'bank', 'bank_list', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(212, 'list_of_bank', 'index', 'setting', 211, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(213, 'language', 'language', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(214, 'application_setting', 'setting', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(215, 'server_setting', 'serversetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(216, 'factory_reset', 'factoryreset', 'setting', 214, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(217, 'country', 'country_city_list', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(218, 'state', 'statelist', 'setting', 217, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(219, 'city', 'citylist', 'setting', 217, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(220, 'commission', 'Commissionsetting/payroll_commission', 'setting', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(221, 'supplier_payment', 'supplier_payments', 'accounts', 59, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(222, 'cash_adjustment', 'cash_adjustment', 'accounts', 59, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(223, 'balance_sheet', 'balance_sheet', 'accounts', 59, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(224, 'expense', 'Cexpense', 'hrm', 0, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(225, 'unavailable_day', 'unavailablelist', 'reservation', 130, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(226, 'reservasetting', 'setting', 'reservation', 130, 0, 2, '2021-03-28 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES(NULL, 'dashboard', 'home', 'dashboard', 0, 0, 2, '2021-09-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

DROP TABLE IF EXISTS `sec_role_permission`;
CREATE TABLE IF NOT EXISTS `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_tbl`
--

DROP TABLE IF EXISTS `sec_role_tbl`;
CREATE TABLE IF NOT EXISTS `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(1, 'kitchen', 'manage kitchen', 2, '2020-10-12 10:27:03', 1);
INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(2, 'Counter', 'Display Order timing', 2, '2020-10-12 10:27:45', 1);
INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES(3, 'Waiter', 'Order Taken and served food', 2, '2020-10-12 10:29:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_access_tbl`
--

DROP TABLE IF EXISTS `sec_user_access_tbl`;
CREATE TABLE IF NOT EXISTS `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logoweb` varchar(255) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `opentime` varchar(255) DEFAULT NULL,
  `closetime` varchar(255) DEFAULT NULL,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `isvatnumshow` int(11) DEFAULT 0,
  `vattinno` varchar(30) DEFAULT NULL,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `discountrate` decimal(19,3) DEFAULT 0.000,
  `servicecharge` decimal(10,0) NOT NULL DEFAULT 0,
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `currency` int(11) DEFAULT 0,
  `min_prepare_time` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `kitchenrefreshtime` int(11) DEFAULT 5,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `reservation_open` varchar(30) DEFAULT NULL,
  `reservation_close` varchar(30) DEFAULT NULL,
  `maxreserveperson` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `storename`, `address`, `email`, `phone`, `logo`, `logoweb`, `favicon`, `opentime`, `closetime`, `vat`, `isvatnumshow`, `vattinno`, `discount_type`, `discountrate`, `servicecharge`, `service_chargeType`, `currency`, `min_prepare_time`, `language`, `timezone`, `dateformat`, `site_align`, `kitchenrefreshtime`, `powerbytxt`, `footer_text`, `reservation_open`, `reservation_close`, `maxreserveperson`) VALUES(2, 'Bhojon Restaurant', 'Dhaka Restaurant', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', 'assets/img/icons/2019-10-29/h.png', NULL, 'assets/img/icons/m.png', '9:00AM', '10:00PM', '7.50', 1, '23457586', 1, '5.000', '20', 1, 2, '1:00 Hour', 'english', 'Asia/Dhaka', 'd/m/Y', 'LTR', 15, 'Powered By: BDTASK, www.bdtask.com\r\n', '2020????????????????????Copyright', '09:00:00', '22:00:00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
CREATE TABLE IF NOT EXISTS `shipping_method` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method` varchar(150) NOT NULL,
  `shippingrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `shiptype` int(11) DEFAULT NULL COMMENT '1=dinein,2=pickup,3=home',
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`, `shiptype`) VALUES(1, 'Home Delivary', '60.00', 1, 3);
INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`, `shiptype`) VALUES(2, 'Pickup', '0.00', 1, 2);
INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `is_active`, `shiptype`) VALUES(3, 'Dine-in', '0.00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_configuration`
--

DROP TABLE IF EXISTS `sms_configuration`;
CREATE TABLE IF NOT EXISTS `sms_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_configuration`
--

INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(1, 'http://smsrank.com/', 'SMS Rank', 'rabbani', '123456', 'smsrank', '', 1);
INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(2, 'https://www.nexmo.com/', 'nexmo', '50489b88', 'z1cBmtrDeQrOaqhg', 'restaurant', '', 0);
INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES(3, 'https://www.budgetsms.net/', 'budgetsms', 'user1', '1e753da74', 'budgetsms', '21547', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

DROP TABLE IF EXISTS `sms_template`;
CREATE TABLE IF NOT EXISTS `sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(1, 'one', 'your Order {id} is cancel for some reason.', 'Cancel', 0, 0, '2018-12-31 06:08:07', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(2, 'two', 'your order {id} is completed', 'CompleteOrder', 0, 1, '2018-12-31 07:58:19', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(3, 'three', 'your order {id} is processing', 'Processing', 0, 1, '2018-11-07 06:00:46', '0000-00-00 00:00:00');
INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES(8, 'four', 'Your Order Has been Placed Successfully.', 'Neworder', 1, 0, '2018-12-31 07:59:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_emaillist`
--

DROP TABLE IF EXISTS `subscribe_emaillist`;
CREATE TABLE IF NOT EXISTS `subscribe_emaillist` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_order`
--

DROP TABLE IF EXISTS `sub_order`;
CREATE TABLE IF NOT EXISTS `sub_order` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `s_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=unpaid,1=paid',
  `order_menu_id` text DEFAULT NULL,
  `adons_id` varchar(20) DEFAULT NULL,
  `adons_qty` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `supid` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL,
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supid`, `suplier_code`, `supName`, `supEmail`, `supMobile`, `supAddress`) VALUES(1, 'sup_002', 'Supplier_1', '', '5486454', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et.');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

DROP TABLE IF EXISTS `supplier_ledger`;
CREATE TABLE IF NOT EXISTS `supplier_ledger` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(19,3) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `d_c` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

DROP TABLE IF EXISTS `synchronizer_setting`;
CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `synchronizer_setting`
--

INSERT INTO `synchronizer_setting` (`id`, `hostname`, `username`, `password`, `port`, `debug`, `project_root`) VALUES(8, '70.35.198.244', 'softest3bdtask', 'Ux5O~MBJ#odK', '21', 'true', './public_html/');

-- --------------------------------------------------------

--
-- Table structure for table `table_details`
--

DROP TABLE IF EXISTS `table_details`;
CREATE TABLE IF NOT EXISTS `table_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `time_enter` time NOT NULL,
  `total_people` int(11) NOT NULL,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

DROP TABLE IF EXISTS `table_setting`;
CREATE TABLE IF NOT EXISTS `table_setting` (
  `settingid` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL,
  PRIMARY KEY (`settingid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(1, 2, 'position: relative; left: 186px; top: 231px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(2, 4, 'position: relative; left: 87px; top: 17px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(3, 3, 'position: relative; left: -126px; top: 129px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(4, 1, 'position: relative; left: 15px; top: 28px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(5, 8, 'position: relative; left: -336px; top: 224px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(6, 6, 'position: relative; left: -184px; top: 113px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(7, 5, 'position: relative; left: -153px; top: 85px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(8, 7, 'position: relative; left: -372px; top: 223px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(9, 9, 'position: relative; left: -744px; top: 14px;');
INSERT INTO `table_setting` (`settingid`, `tableid`, `iconpos`) VALUES(10, 10, 'position: relative; left: -448px; top: 226px;');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

DROP TABLE IF EXISTS `tblreservation`;
CREATE TABLE IF NOT EXISTS `tblreservation` (
  `reserveid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `formtime` time NOT NULL,
  `totime` time NOT NULL,
  `reserveday` date NOT NULL,
  `customer_notes` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=free,2=booked',
  `notif` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  PRIMARY KEY (`reserveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblserver`
--

DROP TABLE IF EXISTS `tblserver`;
CREATE TABLE IF NOT EXISTS `tblserver` (
  `serverid` int(11) NOT NULL AUTO_INCREMENT,
  `localhost_url` varchar(255) NOT NULL,
  `online_url` varchar(255) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblserver`
--

INSERT INTO `tblserver` (`serverid`, `localhost_url`, `online_url`) VALUES(1, 'http://localhost/restaurant_v2', 'http://soft14.bdtask.com/restaurant_v2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_kitchen`
--

DROP TABLE IF EXISTS `tbl_assign_kitchen`;
CREATE TABLE IF NOT EXISTS `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`assignid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assign_kitchen`
--

INSERT INTO `tbl_assign_kitchen` (`assignid`, `kitchen_id`, `userid`) VALUES(1, 1, 168);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

DROP TABLE IF EXISTS `tbl_bank`;
CREATE TABLE IF NOT EXISTS `tbl_bank` (
  `bankid` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(1, 'Dutch-Bangla Bank', 'Ainal Haque', '110535764655', 'Mirpur 10', './application/modules/hrm/assets/images/2020-01-18/c.jpg');
INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(2, 'City Bank', 'Kamal Hassan', '3869583', 'Uttara', './application/modules/hrm/assets/images/2020-01-18/e.jpg');
INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES(3, 'Brac Bank', 'Robiul Islam', '9356346', 'Motijeel', './application/modules/hrm/assets/images/2020-01-18/f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billingaddress`
--

DROP TABLE IF EXISTS `tbl_billingaddress`;
CREATE TABLE IF NOT EXISTS `tbl_billingaddress` (
  `billaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`billaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancelitem`
--

DROP TABLE IF EXISTS `tbl_cancelitem`;
CREATE TABLE IF NOT EXISTS `tbl_cancelitem` (
  `cancelid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `varientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`cancelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_terminal`
--

DROP TABLE IF EXISTS `tbl_card_terminal`;
CREATE TABLE IF NOT EXISTS `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_name` varchar(255) NOT NULL,
  PRIMARY KEY (`card_terminalid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card_terminal`
--

INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(1, 'Nexus Terminal');
INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(2, 'Brac Bank Terminal');
INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES(3, 'Visa-Master Terminal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashcounter`
--

DROP TABLE IF EXISTS `tbl_cashcounter`;
CREATE TABLE IF NOT EXISTS `tbl_cashcounter` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `counterno` int(11) NOT NULL,
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cashcounter`
--

INSERT INTO `tbl_cashcounter` (`ccid`, `counterno`) VALUES(1, 1);
INSERT INTO `tbl_cashcounter` (`ccid`, `counterno`) VALUES(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashregister`
--

DROP TABLE IF EXISTS `tbl_cashregister`;
CREATE TABLE IF NOT EXISTS `tbl_cashregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `opening_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `closing_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `openclosedate` date NOT NULL,
  `opendate` datetime DEFAULT '1970-01-01 01:01:01',
  `closedate` datetime DEFAULT '1970-01-01 01:01:01',
  `status` int(11) NOT NULL DEFAULT 0,
  `openingnote` text DEFAULT NULL,
  `closing_note` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
CREATE TABLE IF NOT EXISTS `tbl_city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`cityid`, `countryid`, `stateid`, `cityname`, `status`) VALUES(3, 1, 12, 'Savar', 1);
INSERT INTO `tbl_city` (`cityid`, `countryid`, `stateid`, `cityname`, `status`) VALUES(4, 1, 12, 'Gajipur', 1);
INSERT INTO `tbl_city` (`cityid`, `countryid`, `stateid`, `cityname`, `status`) VALUES(5, 1, 12, 'Mirpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(1, 'Bangladesh', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(2, 'United State', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(3, 'United Kingdom', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(4, 'India', 1);
INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES(5, 'Vietnam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generatedreport`
--

DROP TABLE IF EXISTS `tbl_generatedreport`;
CREATE TABLE IF NOT EXISTS `tbl_generatedreport` (
  `generateid` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `nofification` int(11) NOT NULL,
  `orderacceptreject` int(11) DEFAULT NULL,
  `reportDate` date NOT NULL,
  PRIMARY KEY (`generateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groupitems`
--

DROP TABLE IF EXISTS `tbl_groupitems`;
CREATE TABLE IF NOT EXISTS `tbl_groupitems` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `gitemid` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `varientid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemaccepted`
--

DROP TABLE IF EXISTS `tbl_itemaccepted`;
CREATE TABLE IF NOT EXISTS `tbl_itemaccepted` (
  `acid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `accepttime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen`
--

DROP TABLE IF EXISTS `tbl_kitchen`;
CREATE TABLE IF NOT EXISTS `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchen_name` varchar(100) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kitchenid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kitchen`
--

INSERT INTO `tbl_kitchen` (`kitchenid`, `kitchen_name`, `ip`, `port`, `status`) VALUES(1, 'Italian', '192.168.1.87', '9100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen_order`
--

DROP TABLE IF EXISTS `tbl_kitchen_order`;
CREATE TABLE IF NOT EXISTS `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL AUTO_INCREMENT,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ktid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menutype`
--

DROP TABLE IF EXISTS `tbl_menutype`;
CREATE TABLE IF NOT EXISTS `tbl_menutype` (
  `menutypeid` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(120) NOT NULL,
  `menu_icon` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`menutypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menutype`
--

INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES(1, 'Breakfast', './application/modules/itemmanage/assets/images/2020-11-21/b.png', 1);
INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES(2, 'Launch', './application/modules/itemmanage/assets/images/2020-11-21/l1.png', 1);
INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES(3, 'Dinner', './application/modules/itemmanage/assets/images/2020-11-21/d.png', 1);
INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES(4, 'Coffee', './application/modules/itemmanage/assets/images/2020-11-21/c.png', 1);
INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES(5, 'Party', './application/modules/itemmanage/assets/images/2020-11-21/p.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_purchasekey`
--

DROP TABLE IF EXISTS `tbl_module_purchasekey`;
CREATE TABLE IF NOT EXISTS `tbl_module_purchasekey` (
  `mpid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(25) DEFAULT NULL,
  `purchasekey` varchar(55) DEFAULT NULL,
  `downloaddate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `updatedate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`mpid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_openclose`
--

DROP TABLE IF EXISTS `tbl_openclose`;
CREATE TABLE IF NOT EXISTS `tbl_openclose` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(20) NOT NULL,
  `opentime` varchar(15) NOT NULL,
  `closetime` varchar(15) NOT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_openclose`
--

INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(1, 'Saturday', '08:00', '21:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(2, 'Sunday', '08:00', '20:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(3, 'Monday', '08:00', '20:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(4, 'Tuesday', '08:00', '20:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(5, 'Wednesday', '08:00', '20:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(6, 'Thursday', '08:00', '20:00');
INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES(7, 'Friday', 'Closed', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderprepare`
--

DROP TABLE IF EXISTS `tbl_orderprepare`;
CREATE TABLE IF NOT EXISTS `tbl_orderprepare` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `preparetime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  PRIMARY KEY (`opid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posetting`
--

DROP TABLE IF EXISTS `tbl_posetting`;
CREATE TABLE IF NOT EXISTS `tbl_posetting` (
  `possettingid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `productionsetting` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=manual,1=auto',
  `tablemaping` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `soundenable` int(11) DEFAULT NULL COMMENT '1=enable,0=disable',
  PRIMARY KEY (`possettingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_posetting`
--

INSERT INTO `tbl_posetting` (`possettingid`, `waiter`, `tableid`, `cooktime`, `productionsetting`, `tablemaping`, `soundenable`) VALUES(1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quickordersetting`
--

DROP TABLE IF EXISTS `tbl_quickordersetting`;
CREATE TABLE IF NOT EXISTS `tbl_quickordersetting` (
  `quickordid` int(11) NOT NULL AUTO_INCREMENT,
  `waiter` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `soundenable` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable	',
  `tablemaping` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  PRIMARY KEY (`quickordid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quickordersetting`
--

INSERT INTO `tbl_quickordersetting` (`quickordid`, `waiter`, `tableid`, `cooktime`, `soundenable`, `tablemaping`) VALUES(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `ratingid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `reviewtxt` text DEFAULT NULL,
  `proid` int(11) NOT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `ratetime` datetime NOT NULL,
  PRIMARY KEY (`ratingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room`
--

DROP TABLE IF EXISTS `tbl_room`;
CREATE TABLE IF NOT EXISTS `tbl_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` varchar(100) NOT NULL,
  `floorno` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,0=inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seoption`
--

DROP TABLE IF EXISTS `tbl_seoption`;
CREATE TABLE IF NOT EXISTS `tbl_seoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_slug` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_seoption`
--

INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(1, 'Bhojon Home page', 'home', 'restaurant,food,reservation', 'Best Restautant Management Software');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(3, 'Menu', 'menu', 'Desert,Meet,fish,meet,bevarage', 'Menu Page');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(4, 'Food Details', 'food_details', 'Meet,solt', 'Details food????????????????????????????????????????? information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(5, 'Reservation', 'reservation', 'Table,booking,reservation', 'Table Reservation');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(6, 'Cart Page', 'cart_page', 'food,menu', 'Cart Page');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(7, 'Checkout', 'checkout', 'Checkout', 'Checkout');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(8, 'Login', 'login', 'Login', 'Login');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(9, 'Registration', 'registration', 'Registration', 'Registration');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(10, 'Payment information', 'payment_information', 'Online Payment information', 'Payment information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(11, 'Stripe Payment information', 'stripe_payment_information', 'Stripe Payment', 'Stripe Payment information');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(12, 'About us', 'about_us', 'About restaurant', 'About us');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(13, 'Contact Us', 'contact_us', 'Contact Us', 'Contact Us');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(14, 'Privacy Policy', 'privacy_policy', 'privacy', 'Privacy Policy');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(15, 'Our Terms', 'our_terms', 'Our Terms', 'Our Terms');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(16, 'My Profile', 'my_profile', 'My Profile', 'My Profile');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(17, 'My Order List', 'my_order_list', 'My Order List', 'My Order List');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(18, 'View Order', 'view_order', 'View Order', 'View Order');
INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES(19, 'My Reservation', 'my_reservation', 'My Reservation', 'My Reservation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shippingaddress`
--

DROP TABLE IF EXISTS `tbl_shippingaddress`;
CREATE TABLE IF NOT EXISTS `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`shipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `slid` int(11) NOT NULL AUTO_INCREMENT,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`slid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(1, 1, 'Welcome To', 'Book <span>Your</span> Table', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(2, 1, 'Find Your', 'Best <span>Cafe</span> Deals', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(3, 1, 'Exclusive', 'Coffee <span>Shop</span>', '', '#', 1, 0, 1920, 902);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(4, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(5, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(6, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 332);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(7, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(8, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(9, 4, 'right', 'ads', '', '#', 1, 0, 252, 621);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(10, 5, 'OUR AWESOME STREET', 'FOOD HISTORY', '', '#', 1, 0, 541, 516);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(11, 6, 'Reservation', 'BOOK YOUR TABLE', '', 'dummyimage/463x540.jpg', 1, 0, 470, 548);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(12, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(13, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(14, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(15, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(16, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(17, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(18, 8, 'Offer', 'item offer', '', '#', 1, 0, 250, 533);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(19, 9, 'Offer', 'food offer', '', '#', 1, 0, 250, 553);
INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES(20, 10, 'contact us', 'contact', '', '#', 1, 0, 475, 633);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_type`
--

DROP TABLE IF EXISTS `tbl_slider_type`;
CREATE TABLE IF NOT EXISTS `tbl_slider_type` (
  `stype_id` int(11) NOT NULL AUTO_INCREMENT,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`stype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider_type`
--

INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(1, 'Home Top Slider', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(2, 'Home our story', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(3, 'Home our menu', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(4, 'Menu Page right Banner', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(5, 'Classic theme Home story', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(6, 'Classic theme Home reservation', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(7, 'Classic theme Home gallery', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(8, 'Menu Page Offer Banner Right', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(9, 'Cart Page Offer Banner Right', 0);
INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES(10, 'Contact Us', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sociallink`
--

DROP TABLE IF EXISTS `tbl_sociallink`;
CREATE TABLE IF NOT EXISTS `tbl_sociallink` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `socialurl` text DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sociallink`
--

INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(1, 'Facebook', 'https://www.facebook.com', 'fab fa-facebook', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(2, 'Twitter', 'https://www.twitter.com', 'fab fa-twitter', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(3, 'Google Plus', 'https://plus.google.com', 'fab fa-google-plus', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(4, 'Pinterest', 'https://www.pinterest.com/', 'fab fa-pinterest', 1);
INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES(6, 'Linkedin', 'https://linkedin.com', 'fab fa-linkedin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soundsetting`
--

DROP TABLE IF EXISTS `tbl_soundsetting`;
CREATE TABLE IF NOT EXISTS `tbl_soundsetting` (
  `soundid` int(11) NOT NULL AUTO_INCREMENT,
  `nofitysound` text DEFAULT NULL,
  `addtocartsound` text DEFAULT NULL,
  PRIMARY KEY (`soundid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_soundsetting`
--

INSERT INTO `tbl_soundsetting` (`soundid`, `nofitysound`, `addtocartsound`) VALUES(1, 'assets/2021-03-21/b1.mp3', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
CREATE TABLE IF NOT EXISTS `tbl_state` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(1, 2, 'Alabama', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(2, 2, 'Alaska', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(3, 2, 'Arizona', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(4, 2, 'Arkansas', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(5, 2, 'California', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(6, 2, 'Florida', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(7, 2, 'New Mexico', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(8, 2, 'New York', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(9, 2, 'Oklahoma', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(10, 2, 'Texas', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(11, 2, 'Virginia', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(12, 1, 'Dhaka', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(13, 1, 'Chittagong', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(14, 1, 'Rajshahi', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(15, 1, 'Khulna', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(16, 1, 'Sylhet', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(17, 1, 'Barishal', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(18, 1, 'Rangpur', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(19, 1, 'Mymensingh', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(20, 4, 'West Bengal', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(21, 4, 'Uttar Pradesh', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(22, 4, 'Tripura', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(23, 4, 'Telangana', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(24, 4, 'Tamil Nadu', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(25, 4, 'Sikkim', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(26, 4, 'Rajasthan', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(27, 4, 'Punjab', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(28, 4, 'Odisha', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(29, 4, 'Nagaland', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(30, 4, 'Kerala', 1);
INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES(31, 4, 'Haryana', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tablefloor`
--

DROP TABLE IF EXISTS `tbl_tablefloor`;
CREATE TABLE IF NOT EXISTS `tbl_tablefloor` (
  `tbfloorid` int(11) NOT NULL AUTO_INCREMENT,
  `floorName` varchar(100) NOT NULL,
  PRIMARY KEY (`tbfloorid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tablefloor`
--

INSERT INTO `tbl_tablefloor` (`tbfloorid`, `floorName`) VALUES(1, 'First Floor');
INSERT INTO `tbl_tablefloor` (`tbfloorid`, `floorName`) VALUES(2, 'VIP Floor');
INSERT INTO `tbl_tablefloor` (`tbfloorid`, `floorName`) VALUES(3, 'Second Floor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thirdparty_customer`
--

DROP TABLE IF EXISTS `tbl_thirdparty_customer`;
CREATE TABLE IF NOT EXISTS `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_thirdparty_customer`
--

INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(1, 'Food Panda', 'Dhaka', '5.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(2, 'pathao', 'Dhaka', '8.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(3, 'Hungrynaki', 'Dhaka', '5.00');
INSERT INTO `tbl_thirdparty_customer` (`companyId`, `company_name`, `address`, `commision`) VALUES(4, 'Foodmart', 'Dhaka', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
CREATE TABLE IF NOT EXISTS `tbl_token` (
  `tokenid` int(11) NOT NULL AUTO_INCREMENT,
  `tokencode` varchar(50) NOT NULL,
  `tokenrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tokenstartdate` date NOT NULL,
  `tokenendate` date NOT NULL,
  `tokenstatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tokenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_updateitems`
--

DROP TABLE IF EXISTS `tbl_updateitems`;
CREATE TABLE IF NOT EXISTS `tbl_updateitems` (
  `updateid` int(11) NOT NULL AUTO_INCREMENT,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT 0.000,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `isupdate` varchar(5) DEFAULT NULL,
  `insertdate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`updateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_version_checker`
--

DROP TABLE IF EXISTS `tbl_version_checker`;
CREATE TABLE IF NOT EXISTS `tbl_version_checker` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(10) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_version_checker`
--

INSERT INTO `tbl_version_checker` (`vid`, `version`, `disable`) VALUES(1, '1.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiterappcart`
--

DROP TABLE IF EXISTS `tbl_waiterappcart`;
CREATE TABLE IF NOT EXISTS `tbl_waiterappcart` (
  `weaterappid` int(11) NOT NULL AUTO_INCREMENT,
  `waiterid` int(11) NOT NULL,
  `alladdOnsName` varchar(255) DEFAULT NULL,
  `total_addonsprice` decimal(10,2) DEFAULT 0.00,
  `totaladdons` int(11) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_id` int(11) DEFAULT NULL,
  `addons_price` double(10,2) DEFAULT 0.00,
  `addonsQty` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `destcription` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `offerIsavailable` int(11) DEFAULT 0,
  `offerstartdate` date DEFAULT '0000-00-00',
  `OffersRate` int(11) DEFAULT NULL,
  `offerendate` date DEFAULT '0000-00-00',
  `price` decimal(10,2) DEFAULT 0.00,
  `ProductsID` int(11) NOT NULL,
  `ProductImage` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `productvat` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `variantName` varchar(255) NOT NULL,
  `variantid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`weaterappid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_widget`
--

DROP TABLE IF EXISTS `tbl_widget`;
CREATE TABLE IF NOT EXISTS `tbl_widget` (
  `widgetid` int(11) NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`widgetid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_widget`
--

INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(1, 'Footer left', '', '<p class=\"text-justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(2, 'footermiddle', 'Available On', '<p><strong>Monday - Wednesday</strong>????????????????????10:00 AM - 7:00 PM</p>\r\n<p><strong>Thursday - Friday</strong>????????????????????10:00 AM - 11:00 PM</p>\r\n<p><strong>Saturday</strong>????????????????????12:00 PM - 6:00 PM</p>\r\n<p><strong>Sunday</strong>????????????????????Off</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(3, 'Footer right', 'Contact Us', '<p>356, Mannan Plaza ( 4th Floar ) Khilkhet Dhaka</p>\r\n<p><a href=\"../../hungry\">support@bdtask.com</a></p>\r\n<p><a href=\"../../hungry\">+88 01715 222 333</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(4, 'Our Store', 'Our Store', '<address>123 Suspendis matti,&nbsp;<br />Visaosang Building VST District,&nbsp;<br />NY Accums, North American</address>\r\n<p><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">0123-456-78910</a><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">support@domain.com</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(6, 'Reservation', 'BOOK YOUR TABLE', '<p>Integer vitae enim vel nisi feugiat ultricies. Phasellus hendrerit pharetra posuere. In hac habitasse platea dictumst. Integer diam nulla,</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(7, 'Our Menu text', 'Our Menu ', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(8, 'Specials', 'FOOD MENU', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(9, 'story text', 'OUR STORY', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(10, 'Professional', 'OUR EXPERT CHEFS', '', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(11, 'Need Help Booking?', 'Need Help Booking?', '<p class=\"mb-2\">Just call our customer services at any time, we are waiting 24 hours to recieve your calls.</p>\r\n<p><a href=\"#\">+880 1712 123 123</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(12, 'Privacy', 'Privacy Policy', '<h2>What is Lorem Ipsum</h2>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h3>Contacting us :</h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(13, 'termscondition', 'Terms of Use', '<h3>Web browser cookies</h3>\r\n<p>Our Site may use cache????????????????????and \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>\r\n<h3>How we use collected information bdtask may collect and use Users personal information for the following purposes:</h3>\r\n<p>To run and operate our Site We may need your information display content on the Site correctly. To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently. To personalize user experience We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site. To improve our Site We may use feedback you provide to improve our products and services. To run a promotion, contest, survey or other Site feature To send Users information they agreed to receive about topics we think will be of interest to them. To send periodic emails We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(14, 'map', 'Google Map', '<p>&lt;iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.578237069936!2d90.3654215!3d23.8223482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1583411739085!5m2!1sen!2sbd\" width=\"300\" height=\"150\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"&gt;&lt;/iframe&gt;</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(15, 'carousal1', 'carousal', '<p>show</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(16, 'TASTY MENU TODAY', 'CHEF SELECTION', '', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(17, 'FOOD HISTORY', 'OUR AWESOME STREET', '<p class=\"mb-4\">Thing lesser replenish evening called void a sea blessed meat fourth called moveth place behold night own night third in they??????????????????????????????????????re abundant and don??????????????????????????????????????t you??????????????????????????????????????re the upon fruit. Divided open divided appear also saw may fill. whales seed creepeth. Open lessegether he also morning land i saw Man</p>\r\n<p><a class=\"simple_btn\" href=\"#\">Our Story</a></p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(21, 'Our Gallery', 'Restaurant Photo Gallery', '', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(22, 'subfooter', '', '', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(23, 'Get In Touch', 'contact', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', 1);
INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES(24, 'Refund Policies', 'Refund Policies', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `themeid` int(11) NOT NULL AUTO_INCREMENT,
  `themename` varchar(100) NOT NULL,
  `theme_thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=inactive,1=active',
  `activedate` date DEFAULT NULL,
  PRIMARY KEY (`themeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`themeid`, `themename`, `theme_thumb`, `status`, `activedate`) VALUES(1, 'defaults', NULL, 1, '2020-11-19');
INSERT INTO `themes` (`themeid`, `themename`, `theme_thumb`, `status`, `activedate`) VALUES(3, 'classic', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `top_menu`
--

DROP TABLE IF EXISTS `top_menu`;
CREATE TABLE IF NOT EXISTS `top_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_menu`
--

INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(1, 'Home', 'home', 0, '2019-12-31', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(2, 'Reservation', 'reservation', 0, '2019-02-20', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(3, 'Menu', 'menu', 0, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(4, 'About Us', 'about', 0, '2019-11-25', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(5, 'Contact Us', 'contact', 0, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(6, 'Pages', 'pages', 0, '2019-11-28', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(7, 'Cart', 'cart', 6, '2019-01-26', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(8, 'Details', 'details', 7, '2020-01-15', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(9, 'Logout', 'hungry/logout', 6, '2019-02-03', 1);
INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES(10, 'My Profile', 'myprofile', 0, '2019-10-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

DROP TABLE IF EXISTS `unit_of_measurement`;
CREATE TABLE IF NOT EXISTS `unit_of_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uom_short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(1, 'Kilogram', 'kg.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(2, 'Liter', 'ltr.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(3, 'Gram', 'grm.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(4, 'tonne', 'tn.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(5, 'milligram', 'mg.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(6, 'carat', 'carat', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(7, 'Per Pieces', 'pcs', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(8, 'Per Cup', 'cup', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(9, 'Pound', 'pnd.', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(10, 'tablespoon', 'tspoon', 1);
INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES(11, 'Milliliter', 'ML', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usedcoupon`
--

DROP TABLE IF EXISTS `usedcoupon`;
CREATE TABLE IF NOT EXISTS `usedcoupon` (
  `cusedid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `couponrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`cusedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `waiter_kitchenToken` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES(2, 'John', 'Doe', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2021-08-24 09:36:43', '2021-08-23 19:03:35', '::1', NULL, 1, 1);
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES(165, 'Hm', 'Isahaq', NULL, NULL, 'hmisahaq@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES(166, 'Ainal', 'Haque', NULL, NULL, 'ainal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2020-12-17 12:30:42', '2020-12-17 12:30:31', '::1', NULL, 1, 0);
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES(168, 'Manik ', 'Hassan', NULL, NULL, 'manik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
CREATE TABLE IF NOT EXISTS `variant` (
  `variantid` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`variantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weekly_holiday`
--

DROP TABLE IF EXISTS `weekly_holiday`;
CREATE TABLE IF NOT EXISTS `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weekly_holiday`
--

INSERT INTO `weekly_holiday` (`wk_id`, `dayname`) VALUES(1, 'Friday,Satarday,Sunday');

DROP TABLE IF EXISTS `tbl_notificationsetting`;
CREATE TABLE IF NOT EXISTS `tbl_notificationsetting` (
  `notifid` int(11) NOT NULL AUTO_INCREMENT,
  `firebasewaiterkitchen` text DEFAULT NULL,
  `onesignalcustomer` text NOT NULL,
  `onesignal_ioswaiter` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`notifid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notificationsetting`
--

INSERT INTO `tbl_notificationsetting` (`notifid`, `firebasewaiterkitchen`, `onesignalcustomer`, `onesignal_ioswaiter`, `status`) VALUES(1, 'AAAAqG0NVRM:APA91bExey2V18zIHoQmCkMX08SN-McqUvI4c3CG3AnvkRHQp8S9wKn-K4Vb9G79Rfca8bQJY9pn-tTcWiXYJiqe2s63K6QHRFqIx4Oaj9MoB1uVqB7U_gNT9fiqckeWge8eVB9P5-rX', '208455d9-baca-4ed2-b6be-12b466a2efbd', '4e1150f3-03c8-4de3-ab57-79ca27da1b8e', 1);

