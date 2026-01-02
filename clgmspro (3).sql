-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2022 at 06:01 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clgmspro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

DROP TABLE IF EXISTS `admin_master`;
CREATE TABLE IF NOT EXISTS `admin_master` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_email` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`admin_id`, `admin_name`, `admin_username`, `admin_password`, `admin_email`) VALUES
(1, 'Admin', 'admin123', 'admin@123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_master`
--

DROP TABLE IF EXISTS `announcement_master`;
CREATE TABLE IF NOT EXISTS `announcement_master` (
  `an_id` int(10) NOT NULL AUTO_INCREMENT,
  `an_for` varchar(50) NOT NULL,
  `an_subject` varchar(100) NOT NULL,
  `an_desc` text NOT NULL,
  `an_date` varchar(50) NOT NULL,
  PRIMARY KEY (`an_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement_master`
--

INSERT INTO `announcement_master` (`an_id`, `an_for`, `an_subject`, `an_desc`, `an_date`) VALUES
(1, 'All', 'skd', 'ksdfksdfjbdjfbjdfb', '06-Jan-22 12:10:41 PM'),
(2, 'Teacher', 'sdmkjdgj', 'kgkjdfjkdkjfgjkdfk', '06-Jan-22 12:10:48 PM'),
(3, 'Student', 'dfgdfgih', 'khgkdhfkhkfgh', '06-Jan-22 12:10:55 PM'),
(4, 'Student', 'mkjhsdbfjsdbfj', 'kddnjdbjfbdjfbgjdfjdfjbjfdbjxvjdfb', '06-Jan-22 8:52:42 PM'),
(5, 'Student', 'Hello everyone', 'This is elon, ', '10-Jan-22 5:58:12 PM'),
(6, 'Teacher', 'Hello everyone', 'hello', '21-Jan-22 12:15:21 PM'),
(7, 'All', 'Hello everyone', 'ksdkfkjsdfhk', '28-Jan-22 1:24:38 PM'),
(8, 'Student', 'hello students', 'sdhffkdhgk', '28-Jan-22 1:25:39 PM'),
(9, 'Student', 'Hello everyone', 'skehfuieshifewui', '04-Feb-22 2:34:54 PM');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_master`
--

DROP TABLE IF EXISTS `assignment_master`;
CREATE TABLE IF NOT EXISTS `assignment_master` (
  `asn_id` int(11) NOT NULL AUTO_INCREMENT,
  `asn_branch` varchar(50) NOT NULL,
  `asn_sem` varchar(50) NOT NULL,
  `asn_div` varchar(50) NOT NULL,
  `asn_start_date` varchar(50) NOT NULL,
  `asn_due_date` varchar(50) NOT NULL,
  `asn_remark` text NOT NULL,
  `asn_doc` text NOT NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY (`asn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_master`
--

INSERT INTO `assignment_master` (`asn_id`, `asn_branch`, `asn_sem`, `asn_div`, `asn_start_date`, `asn_due_date`, `asn_remark`, `asn_doc`, `t_id`) VALUES
(1, 'Information Technology', '6', 'A', '09-01-2022', '2022-01-30', 'Demo Subject', '~/dashboard/teacher_assignment/a5ef4e12-5a05-43d8-be59-4217c8711460.pdf', 1),
(2, 'Information Technology', '3', 'B', '09-01-2022', '2022-01-21', 'demo sub\r\n', '~/dashboard/teacher_assignment/a5ef4e12-5a05-43d8-be59-4217c8711460.pdf', 1),
(3, 'Information Technology', '4', 'B', '2022-01-09', '2022-01-17', 'sub name', '~/dashboard/teacher_assignment/79128fd0-991b-44cd-bf17-c3794ece08e0.pdf', 1),
(4, 'Information Technology', '6', 'A', '2022-01-09', '2022-03-06', 'sdffjksdgjsjgjkds', '~/dashboard/teacher_assignment/6424c6e3-298b-4bce-910c-ee62612c390e.pdf', 1),
(5, 'Information Technology', '6', 'A', '2022-01-10', '2022-01-31', 'Skdfksdknskdfnkn', '~/dashboard/teacher_assignment/3f32c7ad-266b-4ddb-8017-556c43f99e99.pdf', 1),
(6, 'Information Technology', '2', 'A', '2022-01-21', '2022-01-31', 'dfffdkf', '~/dashboard/teacher_assignment/1b02073c-34a0-4ae8-9ac2-33ae390c8ac2.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_upload_master`
--

DROP TABLE IF EXISTS `assignment_upload_master`;
CREATE TABLE IF NOT EXISTS `assignment_upload_master` (
  `au_id` int(10) NOT NULL AUTO_INCREMENT,
  `ans_id` int(10) NOT NULL,
  `t_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `au_doc` text NOT NULL,
  `au_date` varchar(50) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_enroll` varchar(50) NOT NULL,
  PRIMARY KEY (`au_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_upload_master`
--

INSERT INTO `assignment_upload_master` (`au_id`, `ans_id`, `t_id`, `s_id`, `au_doc`, `au_date`, `s_name`, `s_enroll`) VALUES
(2, 4, 1, 14, '~/dashboard/student_assignment/9e509d1b-5a96-4cd2-91f2-10954bcb373c.pdf', '09-Jan-22 3:06:41 AM', 'jgejfjjh vhjvb', '6757656667'),
(3, 5, 1, 14, '~/dashboard/student_assignment/f830200f-9389-4521-9b7d-9d5f92ae6b3f.pdf', '10-Jan-22 12:35:49 PM', 'jgejfjjh vhjvb', '6757656667');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_master`
--

DROP TABLE IF EXISTS `attendence_master`;
CREATE TABLE IF NOT EXISTS `attendence_master` (
  `att_id` int(10) NOT NULL AUTO_INCREMENT,
  `s_id` int(10) NOT NULL,
  `att_status` varchar(50) NOT NULL,
  `att_date` varchar(50) NOT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence_master`
--

INSERT INTO `attendence_master` (`att_id`, `s_id`, `att_status`, `att_date`) VALUES
(1, 14, 'Present', '09-01-2022'),
(2, 2, 'Absent', '09-01-2022'),
(3, 3, 'Present', '21-01-2022'),
(4, 4, 'Absent', '21-01-2022');

-- --------------------------------------------------------

--
-- Table structure for table `message_master`
--

DROP TABLE IF EXISTS `message_master`;
CREATE TABLE IF NOT EXISTS `message_master` (
  `msg_id` int(10) NOT NULL AUTO_INCREMENT,
  `t_id` int(10) NOT NULL,
  `msg_teacher_name` varchar(50) NOT NULL,
  `msg_dept` varchar(50) NOT NULL,
  `msg_sub` varchar(50) NOT NULL,
  `msg_desc` text NOT NULL,
  `msg_date` varchar(50) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_master`
--

INSERT INTO `message_master` (`msg_id`, `t_id`, `msg_teacher_name`, `msg_dept`, `msg_sub`, `msg_desc`, `msg_date`) VALUES
(1, 1, 'elon musk', 'Information Technology', 'Leave', 'I am on leave today.', '10-Jan-22 5:59:24 PM'),
(2, 1, 'elon musk', 'Computer Engineering', 'dfgkdngkj', 'lngklrngk', '10-Jan-22 6:24:22 PM'),
(3, 1, 'elon musk', 'Information Technology', 'i am on leave ', 'askajsdkhsa', '28-Jan-22 1:27:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

DROP TABLE IF EXISTS `student_master`;
CREATE TABLE IF NOT EXISTS `student_master` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `enroll` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `branch` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `reg_date` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`s_id`, `f_name`, `l_name`, `enroll`, `email`, `branch`, `sem`, `division`, `address`, `city`, `state`, `aadhar`, `dob`, `mobile`, `username`, `password`, `status`, `reg_date`) VALUES
(2, 'Elon', 'Musk', '54465465465465', 'email@gmail.com', 'Information Technology', '6', 'A', 'hmt', 'himatnagar', 'gujarat', '5646646464646', '2016-11-30', '7894561235', 'student', '//ELONmusk@123', 1, '05-Jan-22 10:33:36 PM'),
(3, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'sdfnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'skdhfjsbfj', '//ELONmusk@123', 0, '06-Jan-22 1:04:58 AM'),
(4, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'sdsdfnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'skdhfjsbfjsd', '//ELONmusk@123', 0, '06-Jan-22 1:05:18 AM'),
(5, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'sdsdasdfnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'skdhfjsbfjsdasd', '//ELONmusk@123', 0, '06-Jan-22 1:05:51 AM'),
(6, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdfnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdasd', '//ELONmusk@123', 0, '06-Jan-22 1:06:11 AM'),
(7, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdfasdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdasdasd', '//ELONmusk@123', 0, '06-Jan-22 1:06:27 AM'),
(8, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdfaassdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdasdasdad', '//ELONmusk@123', 0, '06-Jan-22 1:06:44 AM'),
(9, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhasdssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdaasd', '//ELONmusk@123', 0, '06-Jan-22 1:07:08 AM'),
(10, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdasdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhasdssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdaasdasd', '//ELONmusk@123', 0, '06-Jan-22 1:07:24 AM'),
(11, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asasddasdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhasdssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'bfjsdaasdasdas', '//ELONmusk@123', 0, '06-Jan-22 1:07:52 AM'),
(12, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asdnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhasdssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'basdas', '//ELONmusk@123', 0, '06-Jan-22 1:08:11 AM'),
(13, 'hassfdsfkjhj', 'jsdfsdf', 'jhhsdfsdf', 'asaddnjs@gmail.com', 'Information Technology', '1', 'A', 'hvhasdssdfsdf', 'sdfsdhfjkhjd', 'hsjdhhjdg', 'jssdgjdgjfg', '2022-12-31', '5454545454', 'basdasas', '//ELONmusk@123', 0, '06-Jan-22 1:08:31 AM'),
(14, 'jgejfjjh', 'vhjvb', '6757656667', 'email@gmail.com', 'Information Technology', '6', 'A', 'dsfjsdgfhgshfvh', 'djfjshfhj', 'sjdfjshfbj', '934583648', '2022-01-04', '3546364646', 'student2', '//ELONmusk@123', 1, '06-Jan-22 8:43:32 PM'),
(15, 'fdkghkjjhj', 'gjhg', 'hjh', 'email1@gmail.com', 'Information Technology', '3', 'C', 'vh', 'vhv', 'hgv', 'hvh', '2022-01-10', '1234567890', 'student12', '//ELONmusk@123', 0, '06-Jan-22 8:48:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `subinfo_master`
--

DROP TABLE IF EXISTS `subinfo_master`;
CREATE TABLE IF NOT EXISTS `subinfo_master` (
  `subinfo_id` int(10) NOT NULL AUTO_INCREMENT,
  `t_id` int(10) NOT NULL,
  `subinfo_name` varchar(100) NOT NULL,
  `subinfo_code` varchar(50) NOT NULL,
  `subinfo_desc` text NOT NULL,
  PRIMARY KEY (`subinfo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subinfo_master`
--

INSERT INTO `subinfo_master` (`subinfo_id`, `t_id`, `subinfo_name`, `subinfo_code`, `subinfo_desc`) VALUES
(8, 1, 'AJAVA', '3360701', 'Advance Java\r\nIt is a part of Java programming language. It is an advanced technology or advance version of Java specially designed to develop web-based, network-centric or enterprise applications. It includes the concepts like Servlet, JSP, JDBC, RMI, Socket programming, etc.'),
(9, 6, 'Android', '999999', 'In this subject you will be able to develop an android application....');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_master`
--

DROP TABLE IF EXISTS `teacher_master`;
CREATE TABLE IF NOT EXISTS `teacher_master` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `clg_name` text NOT NULL,
  `email` text NOT NULL,
  `branch` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile` text,
  `status` int(10) NOT NULL,
  `reg_date` varchar(50) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_master`
--

INSERT INTO `teacher_master` (`t_id`, `f_name`, `l_name`, `clg_name`, `email`, `branch`, `address`, `city`, `state`, `aadhar`, `dob`, `mobile`, `username`, `password`, `profile`, `status`, `reg_date`) VALUES
(1, 'elon', 'musk', 'sdjknjk', 'lsdfj@dslk.copm', 'Information Technology', 'sffsf', 'sdffsf', 'sdfsf', 'wfsf', '2022-01-11', '4568945655', 'elonmusk', '//ELONmusk@123', '~/dashboard/teacher_assets/08a07cdb-a27e-47b3-9848-2caccbf3d68b.png', 1, '06-Jan-22 12:21:47 AM'),
(3, 'elon', 'musk', 'sdjknjk', 'lsdfj@dslk.cop', 'Information Technology', 'sffsf', 'sdffsf', 'sdfsf', 'wfsf', '2022-01-11', '4568945655', 'elonmusk12', '//ELONmusk@123', '~/dashboard/teacher_assets/9373d81-cbb9-4a05-8c92-988d0a0e27ce.png', 0, '06-Jan-22 12:24:52 AM'),
(4, 'elon', 'musk', 'sdjknjk', 'lsdfj@dslk.cop', 'Information Technology', 'sffsf', 'sdffsf', 'sdfsf', 'wfsf', '2022-01-11', '4568945655', 'elonmusk12', '//ELONmusk@123', '~/dashboard/teacher_assets/94b5c19d-33a6-4ac0-b5e1-d02f3c0bbf29.png', 0, '06-Jan-22 12:26:25 AM'),
(5, 'elon', 'musk', 'sdjknjk', 'lsdfj@dslk.cop', 'Information Technology', 'sffsf', 'sdffsf', 'sdfsf', 'wfsf', '2022-01-11', '4568945655', 'elonmusk12', '//ELONmusk@123', '~/dashboard/teacher_assets/725d2674-e084-4d29-a459-f4c526256d31.png', 0, '06-Jan-22 12:27:29 AM'),
(6, 'Tony', 'Stark', 'Government Polytechnic, Himatnagar', 'tonystark@gmail.com', 'Information Technology', 'Malibu, California, United States', 'Malibu', 'California', '0000 0000 0000', '1965-04-04', '9999999999', 'tonystark', 'TONYstark@123', '~/dashboard/teacher_assets/ae4f83e7-92e8-4091-a80c-b5a4e6c7bbdd.jpg', 1, '04-Feb-22 12:26:42 PM');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_master`
--

DROP TABLE IF EXISTS `timetable_master`;
CREATE TABLE IF NOT EXISTS `timetable_master` (
  `tt_id` int(10) NOT NULL AUTO_INCREMENT,
  `tt_branch` varchar(50) NOT NULL,
  `a_time` text NOT NULL,
  `a_monday` text NOT NULL,
  `a_tuesday` text NOT NULL,
  `a_wednesday` text NOT NULL,
  `a_thursday` text NOT NULL,
  `a_friday` text NOT NULL,
  `a_saturday` text NOT NULL,
  `b_time` text NOT NULL,
  `b_monday` text NOT NULL,
  `b_tuesday` text NOT NULL,
  `b_wednesday` text NOT NULL,
  `b_thursday` text NOT NULL,
  `b_friday` text NOT NULL,
  `b_saturday` text NOT NULL,
  `c_time` text NOT NULL,
  `c_monday` text NOT NULL,
  `c_tuesday` text NOT NULL,
  `c_wednesday` text NOT NULL,
  `c_thursday` text NOT NULL,
  `c_friday` text NOT NULL,
  `c_saturday` text NOT NULL,
  `d_time` text NOT NULL,
  `d_monday` text NOT NULL,
  `d_tuesday` text NOT NULL,
  `d_wednesday` text NOT NULL,
  `d_thursday` text NOT NULL,
  `d_friday` text NOT NULL,
  `d_saturday` text NOT NULL,
  `e_time` text NOT NULL,
  `e_monday` text NOT NULL,
  `e_tuesday` text NOT NULL,
  `e_wednesday` text NOT NULL,
  `e_thursday` text NOT NULL,
  `e_friday` text NOT NULL,
  `e_saturday` text NOT NULL,
  PRIMARY KEY (`tt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_master`
--

INSERT INTO `timetable_master` (`tt_id`, `tt_branch`, `a_time`, `a_monday`, `a_tuesday`, `a_wednesday`, `a_thursday`, `a_friday`, `a_saturday`, `b_time`, `b_monday`, `b_tuesday`, `b_wednesday`, `b_thursday`, `b_friday`, `b_saturday`, `c_time`, `c_monday`, `c_tuesday`, `c_wednesday`, `c_thursday`, `c_friday`, `c_saturday`, `d_time`, `d_monday`, `d_tuesday`, `d_wednesday`, `d_thursday`, `d_friday`, `d_saturday`, `e_time`, `e_monday`, `e_tuesday`, `e_wednesday`, `e_thursday`, `e_friday`, `e_saturday`) VALUES
(1, 'Information Technology', '10:00-11:00', 'sub1', 'sub2', 'sub3', 'sub4', 'sub5', 'sub6', '11:00-12:00', 'sub7', 'sub8', 'sub9', 'sub10', 'sub11', 'sub12', '12:30-01:30', 'sub13', 'sub14', 'sub15', 'sub16', 'sub17', 'sub18', '01:30-02:30', 'sub19', 'sub20', 'sub21', 'sub22', 'sub23', 'sub24', '02:45-03:45', 'sub25', 'sub26', 'sub27', 'sub28', 'sub29', 'sub30');

-- --------------------------------------------------------

--
-- Table structure for table `topper_master`
--

DROP TABLE IF EXISTS `topper_master`;
CREATE TABLE IF NOT EXISTS `topper_master` (
  `top_id` int(10) NOT NULL AUTO_INCREMENT,
  `top_name` varchar(10) NOT NULL,
  `top_branch` varchar(50) NOT NULL,
  `top_enroll` varchar(50) NOT NULL,
  `top_email` varchar(50) NOT NULL,
  `top_year` varchar(50) NOT NULL,
  `top_working` text NOT NULL,
  PRIMARY KEY (`top_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topper_master`
--

INSERT INTO `topper_master` (`top_id`, `top_name`, `top_branch`, `top_enroll`, `top_email`, `top_year`, `top_working`) VALUES
(11, 'student1', 'Information Technology', '112233445501', 'email@gmail.com', '2019', 'Google'),
(12, 'student2', 'Computer Engineering', '112233445502', 'email2@gmail.com', '2020', 'Microsoft'),
(13, 'student3', 'Information Technology', '234234234234', 'gmail@gmail.com', '2021', 'company name'),
(14, 'student4', 'Information Technology', '234234234', 'gmail@gmail.com', '2013', 'company');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
