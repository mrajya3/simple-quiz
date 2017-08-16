-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2017 at 12:22 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'Hypertext PreProcessor'),
(2, 1, 0, 'Personal Homepage'),
(3, 1, 0, 'Private HomePage'),
(4, 1, 0, 'Personal Hypertext PreProcessor'),
(5, 2, 1, 'medians of the triangle meet'),
(6, 2, 0, 'perpendicular bisectors of the sides of the triangle meet'),
(7, 2, 0, 'bisectors of the angle of the triangle meet'),
(8, 2, 0, 'none of them'),
(9, 3, 0, 'increase'),
(10, 3, 1, 'decrease'),
(11, 3, 0, 'stay the same'),
(12, 3, 0, 'Not enough information'),
(13, 4, 0, 'CPU'),
(14, 4, 0, 'compiler'),
(15, 4, 1, 'microcomputer'),
(16, 4, 0, 'ALU'),
(17, 5, 0, 'Ampere(A)'),
(18, 5, 0, 'Volts(V)'),
(19, 5, 0, 'Joules(J)'),
(20, 5, 1, 'Watts(W)'),
(21, 6, 0, 'if a polygen representing the forces acting at point in a body is closed, the forces are in equilibrium'),
(22, 6, 0, 'if forces acting on a point can be represented in magnitde and direction by the sides of a polygon taken in order, then the resultant of the forces will be represented in magnitude and direction by the closing side of the polygon'),
(23, 6, 1, 'if forces acting on a point can be represented of a polygon taken in order, their sides of a polygon taken in order, their resultant will be represented in magnitude and direction by the closing side of the polygon, taken in opposite order'),
(24, 6, 0, 'if forces acting on a point can be represented in magnitude and direction by the sides of a polygon in order, the forces are in equilibrium.'),
(25, 7, 0, 'line organisation'),
(26, 7, 0, 'line and staff organisation'),
(27, 7, 1, 'functional organisation'),
(28, 7, 0, 'effective organisation.'),
(29, 8, 0, 'Assistant Engineer'),
(30, 8, 0, 'Executive Engineer'),
(31, 8, 0, 'Superintending Engineer'),
(32, 8, 1, 'Chief Engineer.'),
(33, 9, 0, 'Bar chart'),
(34, 9, 0, 'Gantt chart'),
(35, 9, 0, 'Modified Mile stone chart'),
(36, 9, 0, 'Critical path method chart'),
(37, 9, 1, 'All the above.'),
(38, 10, 0, 'to concentrate his attention on critical activities'),
(39, 10, 0, 'to divert the resources from non-critical advanced activities to critical activities'),
(40, 10, 0, 'to be cautious for avoiding any delay in the critical activities to avoid delay of the whole project'),
(41, 10, 1, 'all the above.'),
(42, 11, 0, 'Monkey'),
(43, 11, 0, 'Donkey'),
(44, 11, 0, 'Chimpanjee'),
(45, 11, 0, 'King Cobra'),
(46, 11, 1, 'LIon');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'What does PHP stand for?'),
(2, 'The center of gravity of a triangle is at the point where three:'),
(3, 'If the resistance in a circuit with constant voltage increases, the current will'),
(4, 'A microprocessor unit, a memory unit, and an input/output unit form a:'),
(5, 'Intensity of electric current is expressed in'),
(6, 'The Law of Polygon of Forces states that'),
(7, 'Frederick W. Taylor introduced a system of working known as'),
(8, ' Final technical authority of a project lies with'),
(9, 'Time and progress chart of a construction, is also known as'),
(10, 'Critical Path Net Work helps an engineer'),
(11, 'What is your name?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `student_id` varchar(5) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `signup_date` date DEFAULT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `student_id`, `faculty`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'rajya laxmi manandhar', 'rajya.manandhar@gmail.com', 'rajya', '', '', '', '', NULL, '', 0, 0, '', ''),
(3, 'reshma', 'reshma@gmail.com', 'reshma', '', '', '', '', NULL, '', 0, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
