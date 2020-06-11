-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 12:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcs-day-14`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `content`, `image`, `created_at`) VALUES
(3, 2, 'Usailah Tentang Mimpi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae euismod ligula. Vestibulum neque mi, pulvinar ullamcorper magna nec, pellentesque fringilla nulla. In suscipit felis eu neque ullamcorper pulvinar. Donec consequat, tellus eget rhoncus tempor, metus augue efficitur nisi, quis porttitor mi purus id felis. Nullam condimentum ligula a elit fermentum fermentum. Phasellus sed luctus tortor. Sed maximus risus vel arcu feugiat, nec sagittis nisi fermentum. Sed nec nisi quis risus rhoncus rhoncus non sagittis ligula. Etiam ipsum sapien, convallis eu ultricies eu, hendrerit at dui. Curabitur cursus vehicula ipsum non fringilla.\r\n\r\nPraesent mattis ullamcorper sapien vitae dapibus. Mauris eget placerat nulla. Sed dignissim cursus facilisis. Nullam lorem risus, posuere a mauris vitae, ultrices cursus tellus. Vestibulum sed lectus libero. Integer in lectus lacinia, finibus nulla eu, tincidunt quam. Quisque nulla arcu, commodo vitae risus malesuada, porta gravida lorem.\r\n\r\nFusce sollicitudin fringilla purus non rutrum. Integer eu iaculis lorem. Sed tincidunt sollicitudin ligula, ac venenatis est vehicula nec. Aenean pharetra diam vitae turpis tincidunt, sed eleifend justo varius. Praesent efficitur molestie lacus, at pretium mauris blandit eu. In hac habitasse platea dictumst. Aenean vehicula nec mauris ut volutpat. Maecenas porttitor, ante nec placerat tempus, purus ex aliquet tortor, ac rutrum nunc dui at orci. Aliquam luctus leo in eros pulvinar porta. Integer consectetur, urna at congue vehicula, nunc felis rhoncus neque, id accumsan urna quam sed mauris. Duis at congue sem. Praesent dignissim pellentesque consequat. Suspendisse mattis lobortis lacus at accumsan.\r\n\r\nMaecenas congue metus id massa malesuada consequat. Duis vitae sapien vitae dui vestibulum ornare ut a urna. Morbi magna tellus, elementum sit amet odio at, vulputate accumsan nulla. Aliquam luctus tempor dolor, non consectetur enim varius et. Etiam vestibulum pellentesque nunc, eget finibus lacus vestibulum eu. In et mollis sem. Suspendisse ut libero sit amet eros pellentesque varius et ac lorem. Sed nec ornare orci, non fringilla erat.\r\n\r\nPraesent tempus neque vel lorem eleifend eleifend. Sed ut blandit est. In porta augue elit, et posuere lectus condimentum sit amet. Nam eu lacus ante. Praesent commodo velit sit amet orci accumsan, quis hendrerit metus laoreet. Etiam vel pharetra turpis, eget vehicula quam. Nam odio libero, iaculis finibus convallis sit amet, vehicula quis elit. Nulla tincidunt pharetra tristique.', '', '2020-06-11 10:26:35'),
(4, 2, 'test', 'charadasj aapa aja', 'ashraf-ali-JLW-T4LiJCw-unsplash.jpg', '2020-06-11 10:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(2, 'Irfan kurniawan', 'admin@iktech.id', '9934bb8b876de1d257dc1bb7b9bfd1a6', 'user', '2020-06-10'),
(5, 'blogAdmin', 'blogAdmin@iktech.id', '9934bb8b876de1d257dc1bb7b9bfd1a6', 'user', '2020-06-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
