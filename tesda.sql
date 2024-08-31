-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2024 at 09:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `role` enum('admin') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username_admin`, `password_admin`, `email_admin`, `role`) VALUES
(2, 'admin', 'admin', 'admin1@gamil.com', 'admin'),
(3, 'admin2', 'adminpass', 'admin2@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `uli_number` varchar(255) NOT NULL,
  `entry_date` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `address_number_street` varchar(255) DEFAULT NULL,
  `address_barangay` varchar(255) DEFAULT NULL,
  `address_district` varchar(255) DEFAULT NULL,
  `address_city_municipality` varchar(255) DEFAULT NULL,
  `address_province` varchar(255) DEFAULT NULL,
  `address_region` varchar(255) DEFAULT NULL,
  `email_facebook` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `month_of_birth` varchar(255) DEFAULT NULL,
  `day_of_birth` int(11) DEFAULT NULL,
  `year_of_birth` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthplace_city_municipality` varchar(255) DEFAULT NULL,
  `birthplace_province` varchar(255) DEFAULT NULL,
  `birthplace_region` varchar(255) DEFAULT NULL,
  `educational_attainment` varchar(255) DEFAULT NULL,
  `parent_guardian_name` varchar(255) DEFAULT NULL,
  `parent_guardian_address` varchar(255) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL,
  `disability` varchar(255) DEFAULT NULL,
  `cause_of_disability` varchar(255) DEFAULT NULL,
  `taken_ncae` varchar(255) DEFAULT NULL,
  `where_ncae` varchar(255) DEFAULT NULL,
  `when_ncae` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `scholarship` varchar(255) DEFAULT NULL,
  `privacy_disclaimer` text DEFAULT NULL,
  `applicant_signature` varchar(255) DEFAULT NULL,
  `date_accomplished` varchar(255) DEFAULT NULL,
  `registrar_signature` varchar(255) DEFAULT NULL,
  `date_received` varchar(255) DEFAULT NULL,
  `imageUpload` varchar(255) NOT NULL,
  `status` enum('Enroll','Graduate','Drop','Pending') NOT NULL DEFAULT 'Pending',
  `registration_complete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_image`, `uli_number`, `entry_date`, `last_name`, `first_name`, `middle_name`, `address_number_street`, `address_barangay`, `address_district`, `address_city_municipality`, `address_province`, `address_region`, `email_facebook`, `contact_no`, `nationality`, `sex`, `civil_status`, `employment_status`, `month_of_birth`, `day_of_birth`, `year_of_birth`, `age`, `birthplace_city_municipality`, `birthplace_province`, `birthplace_region`, `educational_attainment`, `parent_guardian_name`, `parent_guardian_address`, `classification`, `disability`, `cause_of_disability`, `taken_ncae`, `where_ncae`, `when_ncae`, `qualification`, `scholarship`, `privacy_disclaimer`, `applicant_signature`, `date_accomplished`, `registrar_signature`, `date_received`, `imageUpload`, `status`, `registration_complete`) VALUES
(1, 'abdul', 'ttt', 'abdul@gmail.com', 'uploads/434360384_2401854799997936_6939150835498329161_n.jpg', '123', '2024-08-08', 'Paito2', 'abdul', 'david', 'Street 16', 'Mangga-Cacutud', 'District 16', 'Arayat', 'Pampanga', 'Region 15', 'abdul@gmail.com', '09097733381', 'Filipino', 'male', 'single', 'employed', '02', 14, 2003, 21, 'Arayat', 'Tabuan', 'Region 3', 'post_secondary_graduate', 'abdul', 'abdul200@gmail.com', 'ZXZx', 'Disability Due to Chronic Illness', 'N/A', 'No', 'N/A', 'n/a', 'Food and Beverage Service NC II', 'TWSP', 'Agree', 'abdul', '07-22-2024', 'Abdul', '22-07-2024', 'Upload-image/434360384_2401854799997936_6939150835498329161_n.jpg', '', 1),
(3, 'abdul21', 'yyy', 'abdul@gmail.com', 'Upload-image/434360384_2401854799997936_6939150835498329161_n.jpg', '123', '2024-08-30', 'paito', 'abdul', 'david', 'Street 15', 'Plazang Luma', 'District 15', 'Arayat', 'Pampanga', 'Region 16', 'abdul@gmail.com', '09097733381', 'Filipino', 'male', 'single', 'employed', '08', 5, 1929, 95, 'Arayat', 'Tabuan', 'Region 3', 'post_secondary_undergraduate', 'abdul', 'abdul200@gmail.com', 'Industry Workers', 'Psychosocial Disability', 'Illness', 'no', 'N/A', 'N/A', 'Food and Beverage Service NC II', 'TWSP', 'Agree', 'abdul', '07-22-2024', 'Abdul', '07-22-2024', 'Upload-image/434360384_2401854799997936_6939150835498329161_n.jpg', '', 1),
(8, 'abdul21', 'abdul', 'abdul@gmail.com', 'Upload-image/434360384_2401854799997936_6939150835498329161_n.jpg', '123', '2024-08-10', 'BONDOC', 'abdul', 'david', 'Street 17', 'San Agustin Norte', 'District 17', 'Arayat', 'Pampanga', 'Region 15', 'abdul@gmail.com', '000012234', 'Filipino', 'male', 'single', 'employed', '04', 3, 2003, 21, 'Arayat', 'Tabuan', 'Region 1', 'post_secondary_undergraduate', 'abdul', 'abdul200@gmail.com', 'Students', 'Hearing Disability', 'Illness', 'Yes', 'n/a', 'n/a', 'Housekeeping NC II', 'PESFA', 'Agree', 'abdul', '07-22-2024', 'Abdul', '07-22-2024', 'Upload-image/434360384_2401854799997936_6939150835498329161_n.jpg', '', 1),
(13, 'zean clemente', 'zean1500', 'clemente.zean02@gmail.com', 'Upload-image/wallpaperflare.com_wallpaper (2).jpg', '666', '2024-08-12', 'clemente', 'zean', 'reyes', 'Street 16', 'San Mateo', 'District 17', 'Arayat', 'Pampanga', 'Region 3', 'clemente.zean02@gmailcom', '09567534662', 'Filipino', 'male', 'single', 'unemployed', '12', 2, 2003, 20, 'Arayat', 'Tabuan', 'Region 1', 'college_undergraduate', 'BONDOC,JOHN VINCENT R.', 'puruk 1 tabuan arayat ', 'Students', 'Speech Impairment', 'Illness', 'No', '', '', 'Food and Beverage Service NC II', 'TWSP', 'Agree', 'ScCs', '07-22-2024', 'Abdul', '12', '', 'Pending', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
