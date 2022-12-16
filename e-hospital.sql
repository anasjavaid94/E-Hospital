-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 12:20 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors _registration`
--

CREATE TABLE `doctors _registration` (
  `id` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Age` int(10) NOT NULL,
  `bloodGroup` varchar(10) NOT NULL,
  `MobileNumber` text NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `ConfirmEmail` varchar(50) NOT NULL,
  `Location1` text NOT NULL,
  `Location2` text NOT NULL,
  `PostalCode` text NOT NULL,
  `City` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Province` varchar(30) NOT NULL,
  `Medical_LICENSE_Number` text NOT NULL,
  `DLNumber` text NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `PractincingHospital` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors _registration`
--

INSERT INTO `doctors _registration` (`id`, `Fname`, `Mname`, `Lname`, `Age`, `bloodGroup`, `MobileNumber`, `EmailId`, `ConfirmEmail`, `Location1`, `Location2`, `PostalCode`, `City`, `Country`, `Province`, `Medical_LICENSE_Number`, `DLNumber`, `Specialization`, `PractincingHospital`, `Gender`) VALUES
(1, 'vishal', 'kuamr', 'kasotiya', 13, 'B', '+919694933968', 'kasotiyavishal221@gmail.com', 'kasotiyavishal221@gmail.com', 'ams', 'ams', '302012', 'Jhotwara , Jaipur', 'India', 'Rajasthan', '302012MLdl12', 'rj1476899288030092', 'Heart', 'ghtyrhh', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_admin`
--

CREATE TABLE `hospital_admin` (
  `id` int(11) NOT NULL,
  `Hospital_Name` varchar(20) NOT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Confirm_Email` varchar(30) NOT NULL,
  `Location1` varchar(30) NOT NULL,
  `Location2` varchar(30) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Province` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Facilities_departments​` int(50) NOT NULL,
  `Number_Doctors` int(50) NOT NULL,
  `Number_Nurse` int(50) NOT NULL,
  `No_Admins` int(50) NOT NULL,
  `Patients_per_year` int(50) NOT NULL,
  `​Tax_registration_number​` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_admin`
--

INSERT INTO `hospital_admin` (`id`, `Hospital_Name`, `Email_Id`, `Confirm_Email`, `Location1`, `Location2`, `PostalCode`, `City`, `Province`, `Country`, `Facilities_departments​`, `Number_Doctors`, `Number_Nurse`, `No_Admins`, `Patients_per_year`, `​Tax_registration_number​`) VALUES
(1, '0', 'jasipur@gmail.gov.com', 'jasipur@gmail.gov.com', 'jaipur', 'jaipur', '302013', 'Jaipur', 'India', 'Rajasthan ', 150, 700, 350, 2, 87989, 89786756);

-- --------------------------------------------------------

--
-- Table structure for table `master_admin`
--

CREATE TABLE `master_admin` (
  `id` int(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`id`, `userName`, `password`, `email`) VALUES
(0, 'ADM-M-CA-01', 'E@hospital01', 'uottawabiomedicalsystems@gmail'),
(1, 'ADM-M-CA-01', 'E@hospital01', 'uottawabiomedicalsystems@gmail');

-- --------------------------------------------------------

--
-- Table structure for table `patients_registration`
--

CREATE TABLE `patients_registration` (
  `id` int(11) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Age` int(50) NOT NULL,
  `BloodGroup` varchar(10) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `Address` text NOT NULL,
  `Location` text NOT NULL,
  `PostalCode` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Province` varchar(30) NOT NULL,
  `HCardNumber` varchar(30) NOT NULL,
  `PassportNumber` varchar(50) NOT NULL,
  `PRNumber` varchar(50) NOT NULL,
  `DLNumber` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients_registration`
--

INSERT INTO `patients_registration` (`id`, `FName`, `MName`, `LName`, `Age`, `BloodGroup`, `MobileNumber`, `EmailId`, `Address`, `Location`, `PostalCode`, `City`, `Province`, `HCardNumber`, `PassportNumber`, `PRNumber`, `DLNumber`, `Gender`) VALUES
(1, 'vishal', 'ujkl', '', 89, 'a', '09694933968', 'kkumar95973@gmail.com', 'Plot No. 11 Behrav nager , Doltpura Road', 'like question', '302012', 'Jhotwara , Jaipur', 'Rajasthan', '8979675645', '8978675645', '78988978675', '98967584556', 'on'),
(2, 'vishal', 'Kumar', 'kasotiya', 23, 'A', '09694933968', 'kkumar95973@gmail.com', 'Plot No. 11 Behrav nager , Doltpura Road', 'jaipur', '302012', 'Jhotwara , Jaipur', 'Rajasthan', '9878675646453', '4566786780998', '776687890008976', '212231566789', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors _registration`
--
ALTER TABLE `doctors _registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_admin`
--
ALTER TABLE `hospital_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients_registration`
--
ALTER TABLE `patients_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors _registration`
--
ALTER TABLE `doctors _registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital_admin`
--
ALTER TABLE `hospital_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients_registration`
--
ALTER TABLE `patients_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
