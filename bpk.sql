-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 04:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `dob` varchar(50) NOT NULL,
  `parent_name` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`f_name`, `l_name`, `dob`, `parent_name`, `address`, `city`, `phone_no`, `grade`, `id`) VALUES
('Keerthi', 'Chukka', '17-04-2005', 'Chandra Rao', 'Dabagardens', 'Visakhapatnam', '9865432102', 'Grade 1', 1),
('Anila', 'Mary', '17-02-2005', 'Ramesh', 'Murlinagar', 'Visakhapatnam', '9543267812', 'Grade 1', 2),
('Swathi', 'Dadi', '05-08-2006', 'Laxman', 'anakapalli', 'Visakhapatnam', '9768465213', 'Grade 2', 3),
('Nishitha', 'Mokara', '08-05-2006', 'Raja', 'Sithamadara', 'Visakhapatnam', '9768465213', 'Grade 2', 4),
('Ramy', 'rai', '04-09-2007', 'Laxmi', 'Dondaparti', 'Visakhapatnam', '9768465213', 'Grade 3', 5),
('Bhavitha', 'Chopra', '03-02-2007', 'Raghu', 'MVP', 'Visakhapatnam', '9768465213', 'Grade 3', 6),
('Deapika', 'Rahi', '30-12-2008', 'Mahesh', 'Chowtary', 'Visakhapatnam', '9768465213', 'Grade 4', 7),
('Monitha', 'Chowd', '25-04-2008', 'Sagar', 'Dondaparti', 'Visakhapatnam', '9768465213', 'Grade 4', 8),
('Srinija', 'gatu', '02-09-2009', 'Ajay', 'Akkayapalem', 'Visakhapatnam', '9768465213', 'Grade 5', 9),
('Charitha', 'Chamu', '09-02-2009', 'Mohan', 'Simchalam', 'Visakhapatnam', '9768465213', 'Grade 5', 10),
('Sneha', 'Anju', '12-12-2010', 'Ganesh', 'Dabagardens', 'Visakhapatnam', '9768465213', 'Grade 6', 11),
('Srilekha', 'kotha', '18-06-2010', 'Naresh', 'Murlinagar', 'Visakhapatnam', '9768465213', 'Grade 6', 12),
('Sandhya ', 'charu', '13-01-2011', 'Gopi', 'anakapalli', 'Visakhapatnam', '9768465213', 'Grade 7', 13),
('Hiran', 'Mai', '19-07-2011', 'Satyam', 'Sithamadara', 'Visakhapatnam', '9768465213', 'Grade 7', 14),
('Sowmya', 'etha', '26-05-2012', 'Prabhakar', 'MVP', 'Visakhapatnam', '9768465213', 'Grade 8', 15),
('Keerthana', 'terathi', '15-07-2012', 'Srikanth', 'Chowtary', 'Visakhapatnam', '9768465213', 'Grade 8', 16);

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `subject`, `marks`) VALUES
(11, 2, 'Maths', 76),
(12, 2, 'Science', 85),
(13, 2, 'English', 98),
(14, 2, 'language', 57),
(15, 2, 'Social', 48),
(16, 3, 'Maths', 89),
(17, 3, 'Science', 93),
(18, 3, 'English', 90),
(19, 3, 'language', 79),
(20, 3, 'Social', 80),
(21, 4, 'Maths', 45),
(22, 4, 'Science', 85),
(23, 4, 'English', 95),
(24, 4, 'language', 96),
(25, 4, 'Social', 50),
(26, 5, 'Maths', 49),
(27, 5, 'Science', 69),
(28, 5, 'English', 78),
(29, 5, 'language', 88),
(30, 5, 'Social', 79),
(31, 6, 'Maths', 96),
(32, 6, 'Science', 85),
(33, 6, 'English', 95),
(34, 6, 'language', 84),
(35, 6, 'Social', 74),
(36, 7, 'Maths', 54),
(37, 7, 'Science', 89),
(38, 7, 'English', 68),
(39, 7, 'language', 49),
(40, 7, 'Social', 64),
(41, 8, 'Maths', 39),
(42, 8, 'Science', 77),
(43, 8, 'English', 85),
(44, 8, 'language', 75),
(45, 8, 'Social', 79),
(46, 9, 'Maths', 93),
(47, 9, 'Science', 94),
(48, 1, 'English', 95),
(49, 9, 'language', 91),
(50, 9, 'Social', 93),
(51, 10, 'Maths', 90),
(52, 10, 'Science', 85),
(53, 10, 'English', 95),
(54, 10, 'language', 87),
(55, 10, 'Social', 45),
(61, 1, 'Maths', 96),
(63, 1, 'English', 95),
(64, 1, 'language', 93),
(65, 1, 'Social', 99),
(66, 11, 'Maths', 45),
(67, 11, 'Science', 55),
(68, 11, 'English', 39),
(69, 11, 'language', 47),
(70, 11, 'Social', 59),
(71, 12, 'Maths', 60),
(72, 12, 'Science', 55),
(73, 12, 'English', 49),
(74, 12, 'language', 37),
(75, 12, 'Social', 59),
(76, 13, 'Maths', 40),
(77, 13, 'Science', 54),
(78, 13, 'English', 45),
(79, 13, 'language', 56),
(80, 13, 'Social', 47),
(81, 14, 'Maths', 39),
(82, 14, 'Science', 56),
(83, 14, 'English', 48),
(84, 14, 'language', 56),
(85, 14, 'Social', 67),
(86, 15, 'Maths', 50),
(87, 15, 'Science', 46),
(88, 15, 'English', 43),
(89, 15, 'language', 47),
(90, 15, 'Social', 49),
(91, 16, 'Maths', 56),
(92, 16, 'Science', 57),
(93, 16, 'English', 59),
(94, 16, 'language', 57),
(95, 16, 'Social', 59);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD CONSTRAINT `student_marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
