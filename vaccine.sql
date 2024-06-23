-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 04:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccine`
--

-- --------------------------------------------------------

--
-- Table structure for table `adhealthtips`
--

CREATE TABLE `adhealthtips` (
  `id` int(30) NOT NULL,
  `animal` text NOT NULL,
  `bread` text NOT NULL,
  `healthtips` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adhealthtips`
--

INSERT INTO `adhealthtips` (`id`, `animal`, `bread`, `healthtips`) VALUES
(1, 'cow', 'gir', 'Restriction with affected animals and persons dealing with such animals .'),
(2, 'buffalo\r\n', 'hariyana', 'The buffaloes should be kept separately till complete recovery of the affected animals, if reared together.'),
(3, 'buffalo\r\n', 'gir', 'Immediate isolation of sick animal from the healthy animals. Symptomatic treatment of affected animals may be carried out with all precautions and biosecurity measures. Feeding of liquid feed, soft feed and fodder is recommended. '),
(4, 'cow\r\n', 'sahiwal', 'Cattle markets located within 10 km radius of the epicentre of infection should be closed.'),
(5, 'buffalo\r\n\r\n', 'red sindhi', 'Semen from LSD-affected animals should not be collected and processed for production and distribution.\r\n'),
(6, 'cow\r\n', 'amritmahal', 'Clinical surveillance against LSD in affected districts and around surrounding villages should be intensified. '),
(7, 'buffalo\r\n', 'surti', 'Animal movement from affected area to be monitored to prevent spread of the infection'),
(8, 'cow\r\n\r\n', 'brown swiss', 'Animal trade and fare should not be allowed in the affected area'),
(9, ' \r\ncow\r\n', ' \r\nkhillari', 'Wound care sprays: These sprays treat skin lesions to prevent infection. Intra Repiderma is a great skin care product that comes in an easy-to-use aerosol container. '),
(10, 'buffalo\r\n', 'Kangayam', 'Antibiotics:Your veterinarian will possibly prescribe an antibiotic to prevent infection and pneumonia, a fatal complication resulting from lumpy cow skin disease. ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `city`) VALUES
(1, 'vishakha', 'vish@1', 'shahada');

-- --------------------------------------------------------

--
-- Table structure for table `adquestions`
--

CREATE TABLE `adquestions` (
  `id` int(30) NOT NULL,
  `animal` text NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adquestions`
--

INSERT INTO `adquestions` (`id`, `animal`, `question`, `answer`) VALUES
(1, 'buffalo', 'my pet suffers from lumpy disease can i register for this vaccination camp', 'yes you can register'),
(2, 'cow', 'in how many days my pet should recover from this lumpy disease', 'we give our best efforts to recover your pet but still it takes nearly 1 week '),
(3, 'buffalo', 'my pet suffering from lumpy disease so plzz say that can your camp is right for our pet recovery?', 'yes it is absolutely right choice of yours ,plzz register and book your vaccination camp so that you can be beneficial to our camp availability.'),
(4, 'cow', 'i already register your camp but still not get approved my booking ,so plzz can you check my booking ?', 'yes we can. just wait for an hour.'),
(5, 'buffalo', ' Is my pet\'s milk ok to drink if my pet suffers from lumpy disease ?', 'yes it is ok to drink but still concern with us by booking your camp for lumpy vaccination');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(250) NOT NULL,
  `animal` text NOT NULL,
  `bread` text NOT NULL,
  `age` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `animal`, `bread`, `age`) VALUES
(1, 'cow', 'gir', 40),
(2, 'buffalo', 'hariyana', 56),
(3, 'buffalo', 'gir', 75),
(4, 'cow', 'sahiwal', 35),
(5, 'buffalo', 'red sindhi', 68),
(6, 'cow', 'amritmahal', 55),
(7, 'buffalo', 'surti', 47),
(8, 'cow', 'brown swiss', 64),
(9, 'cow', 'khillari', 27),
(10, 'buffalo', 'Kangayam', 82);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(50) NOT NULL,
  `hospital_name` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `ph_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `state`, `city`, `ph_no`, `email`, `password`, `status`) VALUES
(1, 'om hospital', 'gujrat', 'surat', '9821345678', 'vs@gmail.com', 'vsp123', 'Not Approved'),
(2, 'shreyas hospital', 'maharashtra', 'solapur', '9912435678', 'sh@gmail.com', 'sh234', 'Not Approved'),
(3, 'shatayu hospital', 'madhya pradesh', 'sendhawa', '9876543212', 'st@980', 'sty1234', 'Not Approved'),
(4, 'city hospital', 'maharashtra', 'mumbai', '8976564732', 'ms@gmail.com', 'ms124', 'Not Approved'),
(5, 'sanjivani hospital', 'uttar pradesh', 'bihar', '4567123456', 'vsp@gmail.com', 'vsp002', 'Not Approved'),
(6, 'ramban clinic', 'rajasthan', 'jaypur', '5678123456', 'rm@gmail.com', 'rm778', 'Not Approved'),
(7, 'shantanu hospital', 'punjab', 'amritsar', '546123445', 'amr@gmail.com', 'amp1234', 'Not Approved'),
(8, 'Breach Candy Hospital ', 'maharashtra', 'dombivali', '9347856132', 'db@gmail.com', 'bd456', 'Not Approved'),
(9, 'Jaslok Hospital', 'gujrat', 'gandhinagar', '9678574753', 'jsk@gmail.com', 'js897', 'Not Approved'),
(10, 'Tata Memorial Hospital ', 'himachal pradesh', 'shrinagar', '9087635423', 'hp@gmail.com', 'hpc156', 'Not Approved'),
(11, 'chetna hospital', 'maharashtra', 'shahada', '9818632553', 'chetu@gmail.com', 'ch123', 'Not Approved'),
(12, 'satyajeet hospital', 'maharashtra', 'songir', '1826572512', 'sh@gmail.com', 'shj123', 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcampbooking`
--

CREATE TABLE `medicalcampbooking` (
  `id` int(250) NOT NULL,
  `animal` text NOT NULL,
  `hospitalname` text NOT NULL,
  `city` text NOT NULL,
  `phone` varchar(250) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalcampbooking`
--

INSERT INTO `medicalcampbooking` (`id`, `animal`, `hospitalname`, `city`, `phone`, `status`) VALUES
(1, 'cow', 'om hospital\r\n\r\n', 'surat', '9821345678', 'Approved'),
(2, 'buffalo', 'shreyas hospital\r\n\r\n\r\n', 'solapur', '9912435678', 'Not Approved'),
(3, 'buffalo', 'shatayu hospital', 'sendhawa', '8765435645', 'Not Approved'),
(4, 'cow', 'city hospital', 'mumbai', '9857647463', 'Not Approved'),
(5, 'buffalo', 'sanjivani hospital', 'bihar', '9278439264', 'Not Approved'),
(6, 'cow', 'ramban clinic', 'jaypur', '8216521154', 'Not Approved'),
(7, 'buffalo', 'shantanu hospital', 'amritsar', '8276154135', 'Not Approved'),
(8, 'cow', 'Breach Candy hospital', 'dombivali', '7654324567', 'Not Approved'),
(9, 'cow', 'jaslok hospital', 'gandhinagar', '7654346576', 'Not Approved'),
(10, 'buffalo', 'Tata Memorial hospital', 'shrinagar', '9834771256', 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `username` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `phone`, `email`, `password`, `status`) VALUES
(1, 'sanket', '9921345678', 'sk@gmail.com', 'sk123', 'Not Approved'),
(2, 'vishakha', '9923456789', 'vs@gmail.com', 'vs113', 'Not Approved'),
(3, 'rutuja', '9876654321', 'rj@gmail.com', 'rj12', 'Not Approved'),
(4, 'siddhi', '8726835853', 'sid@gmail.com', 'sid123', 'Not Approved'),
(5, 'bhumika', '2873555477', 'bhm@gmail.com', 'bhm345', 'Not Approved'),
(6, 'ojas', '9876543259', 'ojas@gmail.com', 'ojas123', 'Not Approved'),
(7, 'vedant', '9876543244', 'ved@gmail.com', 'ved456', 'Not Approved'),
(8, 'yash', '8765432423', 'yash@gmail.com', 'yash05', 'Not Approved'),
(9, 'jidnesh', '8765432146', 'jid@gmail.com', 'jid587', 'Not Approved'),
(10, 'moksha', '3847635742', 'moksh@gmail.com', 'moksh06', 'Not Approved'),
(14, 'bhavana', '721564131', 'bh@gmail.com', 'bh423', 'Not Approved'),
(15, 'radhika', '8237151621', 'rd@675', 'rd234', 'Not Approved'),
(16, 'vanshita', '8237151621', 'rd@675', 'password', 'Not Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adhealthtips`
--
ALTER TABLE `adhealthtips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adquestions`
--
ALTER TABLE `adquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicalcampbooking`
--
ALTER TABLE `medicalcampbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adhealthtips`
--
ALTER TABLE `adhealthtips`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adquestions`
--
ALTER TABLE `adquestions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medicalcampbooking`
--
ALTER TABLE `medicalcampbooking`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
