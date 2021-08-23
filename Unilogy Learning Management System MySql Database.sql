-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2019 at 08:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unilogy`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `Assignment_No` varchar(10) NOT NULL,
  `Lecturer_ID` int(7) NOT NULL,
  `Course_Name` varchar(40) NOT NULL,
  `File` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`Assignment_No`, `Lecturer_ID`, `Course_Name`, `File`) VALUES
('01', 100, 'Information Technology', 'C:\\Users\\Shavinu\\Documents\\New Text Document.txt'),
('3', 520, 'Information Technology', 'C:\\Users\\Shavinu\\Documents\\Samsung.txt');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Code` int(3) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Duration` varchar(20) NOT NULL COMMENT 'No of months',
  `Course_Fee` int(50) NOT NULL COMMENT 'LKR.Value',
  `LecturerID` int(20) NOT NULL,
  `Lecturer_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Code`, `Course_Name`, `Course_Duration`, `Course_Fee`, `LecturerID`, `Lecturer_Name`) VALUES
(100, 'Advanced Diploma in MIS', '12 Months', 250000, 200, 'Ishan Devappriya'),
(200, 'Computer Science', '24 Months', 500000, 200, 'Ishan Devappriya'),
(2226, 'JAVA', '15', 15000, 520, 'Heshan De mel');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `CourseName` varchar(40) NOT NULL,
  `CID` int(7) NOT NULL,
  `LecturerName` varchar(15) NOT NULL,
  `Medium` varchar(7) NOT NULL,
  `Duration` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`CourseName`, `CID`, `LecturerName`, `Medium`, `Duration`) VALUES
('Management', 3, 'Niranga', 'English', 40);

-- --------------------------------------------------------

--
-- Table structure for table `joined_courses`
--

CREATE TABLE `joined_courses` (
  `Student_NIC` int(10) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Lecturer_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joined_courses`
--

INSERT INTO `joined_courses` (`Student_NIC`, `Course`, `Lecturer_Name`) VALUES
(942691130, 'Advanced Diploma in MIS', 'Ishan Devappriya'),
(942691130, 'Computer Science', 'Ishan Devappriya'),
(945587514, 'JAVA', 'Heshan De mel');

-- --------------------------------------------------------

--
-- Table structure for table `lectuer`
--

CREATE TABLE `lectuer` (
  `ID` int(7) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `add` int(30) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_master`
--

CREATE TABLE `lecturer_master` (
  `title` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `organization` varchar(20) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `field` varchar(30) NOT NULL,
  `numofStud` int(2) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer_master`
--

INSERT INTO `lecturer_master` (`title`, `name`, `designation`, `organization`, `ID`, `field`, `numofStud`, `email`) VALUES
('Miss.', 'Dewika', 'Demostrator', 'School', '100', 'Physics', 10, 'dew@hotmail.com'),
('Mr.', 'Manchanayaka', 'Lecturer', 'University', '2910', 'Mathematics', 15, 'manchanayaka@me.com'),
('Mr.', 'Shazasm', 'Teacher', 'Private organization', '600', 'Physics', 100, 'si@yahoo.com'),
('Mrs.', 'Shanudri Priyasad', 'Demostrator', 'Private Class', '500', 'Physics', 200, 's@gmail.com'),
('Mr.', 'Ishan Devappriya', 'Teacher', 'University', '200', 'Information Technology', 50, 'id@gmail.com'),
('Mr.', 'Malintha', 'Demostrator', 'Private Class', '211', 'Physics', 20, 'malintha@.com'),
('Mr.', 'Heshan De mel', 'Lecturer', 'University', '520', 'Information Technology', 15, 'heshan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `username`, `password`) VALUES
('surangi@icoud.com', 'surangi', 123),
('silva@.com', 'silva', 213),
('heshan@gmail.com', 'heshan', 123),
('lakshi@123.com', 'laks', 1234),
('s@gmail.com', 'shanu', 123),
('malintha@.com', 'Malitha', 123);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `Material_No` varchar(10) NOT NULL,
  `Material_Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`Material_No`, `Material_Location`) VALUES
('Java001', 'C:\\Users\\Zigfi\\Desktop\\AlOM java 1.pptx'),
('JCD 2', 'C:\\Users\\Shavinu\\Documents\\Sri Lankan Air Lines.docx');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `StudentID` varchar(15) NOT NULL,
  `CourseName` varchar(35) NOT NULL,
  `Document Name` varchar(300) NOT NULL,
  `Path` varchar(400) NOT NULL,
  `Submission Date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`StudentID`, `CourseName`, `Document Name`, `Path`, `Submission Date`) VALUES
('21312', 'Diploma in MIS', 'Sri Lankan Air Lines.docx', 'C:\\Users\\Shavinu\\Documents\\Sri Lankan Air Lines.docx', '1/31/19'),
('123213', 'Diploma in MIS', 'DBw.txt', 'C:\\Users\\Shavinu\\Documents\\DBw.txt', '1/31/19'),
('123123', 'Diploma in MIS', 'New Text Document.txt', 'C:\\Users\\Shavinu\\Documents\\New Text Document.txt', '1/31/19'),
('1232222', 'Diploma in MIS', 'Pass.txt', 'C:\\Users\\Shavinu\\Documents\\Pass.txt', '2/2/19'),
('942691130', 'JAVA', 'New Text Document.txt', 'C:\\Users\\Shavinu\\Documents\\New Text Document.txt', '2/3/19');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `Email` varchar(25) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`Email`, `Username`, `Pass`) VALUES
('12@gy.com', 'dummy', '123'),
('ASDAS', 'abc', '123'),
('s@me.com', 'se', '123'),
('silav.com', 'silvas', '123'),
('malintha@gmail.com', 'Malintha', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `Title` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Age` int(2) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `Field` varchar(30) NOT NULL,
  `Ins` varchar(45) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `Pupose` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`Title`, `Name`, `Age`, `DOB`, `Field`, `Ins`, `NIC`, `Pupose`, `email`) VALUES
('Miss', 'Shanthani', 25, '2/1/94', 'Agriculture', 'NiBM', '942691130', 'View content', 's@gmail.com'),
('Mr.', 'Malintha ', 22, '11/8/94', 'Information Technology', 'NiBM', '945587514', 'View content', 'malintha@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Assignment_No`),
  ADD KEY `Lecturer ID` (`Lecturer_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_Code`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `joined_courses`
--
ALTER TABLE `joined_courses`
  ADD PRIMARY KEY (`Student_NIC`,`Course`);

--
-- Indexes for table `lectuer`
--
ALTER TABLE `lectuer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lecturer_master`
--
ALTER TABLE `lecturer_master`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`Material_No`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`NIC`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
