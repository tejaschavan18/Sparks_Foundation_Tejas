-- phpMyAdmin SQL Dump
-- version 5.0.4
-- http://localhost/phpmyadmin/index.php?route=/database/structure&server=1&db=spark+foundation
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks foundation bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `sparks_foundation`.`transaction` 
( `sno` INT NOT NULL AUTO_INCREMENT , 
`sender` TEXT NOT NULL ,
`receiver` TEXT NOT NULL ,
`balance` INT NOT NULL ,
`datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP )
 ENGINE = InnoDB;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES 
('1', 'Akshaya', 'Ankita', '9', '2021-08-01 18:17:21'), 
('2', 'Sarthak', 'Sanjana', '500', '2021-07-04 18:17:21'),
('3', 'Shubham', 'Sanskruti', '200', '2021-06-08 18:18:50'),
('4', 'Tejas', 'Vighnesh', '2', '2021-08-02 18:19:20'),
('5', 'Ankita', 'Rutika', '40', '2021-08-08 18:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `sparks foundation bank`.`users`
 ( `id` INT(20) NOT NULL , `name` TEXT NOT NULL , `email` VARCHAR(60) NOT NULL , `balance` INT(10) NOT NULL ) ENGINE = InnoDB;

--
-- Dumping data for table `users`
--
INSERT INTO `userss` (`id`, `name`, `e mail`, `balance`) VALUES
 ('1', 'Ankita', 'ankitac@gmail.com', '44444'), 
 ('2', 'Akshaya', 'akshaya13@gmail.com', '60000'),
 ('3', 'Shradha', 'shradhaj@gmail.com', '50000'),
 ('4', 'Sarthak', 'sarthak19@gmail.com', '50000'),
 ('5', 'Sanjana', 'sanjanasurve@gmail.com', '70000'),
 ('6', 'Shubham', 'shubhamj@gmail.com', '20000'),
 ('7', 'Sanskruti', 'sanskrut00@gmail.com', '40000'),
 ('8', 'Rutika', 'rutika20@gmail.com', '20000'),
 ('9', 'Tejas', 'tejas18@gmail.com', '50000'), 
 ('10', 'Vighnesh', 'vighnesh26@gmail.com', '60000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;