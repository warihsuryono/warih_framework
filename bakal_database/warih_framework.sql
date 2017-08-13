-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 13 Agu 2017 pada 19.07
-- Versi Server: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.21-1~ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fundperty`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_backoffice_menu`
--

CREATE TABLE `a_backoffice_menu` (
  `id` int(11) NOT NULL,
  `seqno` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `xtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `a_backoffice_menu`
--

TRUNCATE TABLE `a_backoffice_menu`;
--
-- Dumping data untuk tabel `a_backoffice_menu`
--

INSERT INTO `a_backoffice_menu` (`id`, `seqno`, `parent_id`, `name`, `url`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`, `xtimestamp`) VALUES
(1, 1, 0, 'Home', 'index.php', '2016-04-11 18:31:28', 'superuser@jalurkerja.com', '127.0.0.1', '2016-10-28 16:10:37', 'superuser', '127.0.0.1', '2016-10-28 02:10:37'),
(2, 2, 0, 'Master Data', '#', '2016-04-11 18:31:28', 'superuser@jalurkerja.com', '127.0.0.1', '2016-04-11 18:31:28', 'superuser@jalurkerja.com', '127.0.0.1', '2016-04-11 04:31:28'),
(3, 3, 0, 'General', '#', '2016-04-11 18:31:28', 'superuser@jalurkerja.com', '127.0.0.1', '2016-11-07 08:01:39', 'superuser', '127.0.0.1', '2017-07-30 18:54:05'),
(4, 1, 2, 'Users', 'users_list.php', '2016-11-07 08:08:09', 'superuser', '127.0.0.1', '2016-11-07 08:08:09', 'superuser', '127.0.0.1', '2016-11-06 18:10:09'),
(5, 2, 2, 'Groups', 'groups_list.php', '2017-03-27 09:59:48', 'superuser', '127.0.0.1', '2017-03-27 09:59:48', 'superuser', '127.0.0.1', '2017-04-12 18:00:56'),
(6, 1, 3, 'Change Password', 'change_password.php', '2016-11-07 08:08:39', 'superuser', '127.0.0.1', '2016-11-07 08:08:39', 'superuser', '127.0.0.1', '2017-07-30 18:54:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_backoffice_menu_privileges`
--

CREATE TABLE `a_backoffice_menu_privileges` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `a_backoffice_menu_id` int(11) NOT NULL,
  `privilege` smallint(6) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `xtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `a_backoffice_menu_privileges`
--

TRUNCATE TABLE `a_backoffice_menu_privileges`;
--
-- Dumping data untuk tabel `a_backoffice_menu_privileges`
--

INSERT INTO `a_backoffice_menu_privileges` (`id`, `group_id`, `a_backoffice_menu_id`, `privilege`, `updated_at`, `updated_by`, `updated_ip`, `xtimestamp`) VALUES
(11, 1, 1, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53'),
(12, 1, 2, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53'),
(13, 1, 4, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53'),
(14, 1, 5, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53'),
(15, 1, 3, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53'),
(16, 1, 6, 1, '2017-08-13 17:52:53', 'admin', '127.0.0.1', '2017-08-13 10:52:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_groups`
--

CREATE TABLE `a_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `xtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `a_groups`
--

TRUNCATE TABLE `a_groups`;
--
-- Dumping data untuk tabel `a_groups`
--

INSERT INTO `a_groups` (`id`, `name`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`, `xtimestamp`) VALUES
(1, 'Administrator', '2017-08-13 17:30:16', 'superuser', '127.0.0.1', '2017-08-13 17:53:30', 'admin', '127.0.0.1', '2017-08-13 10:53:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_log_histories`
--

CREATE TABLE `a_log_histories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `x_mode` smallint(6) NOT NULL,
  `log_at` datetime DEFAULT NULL,
  `log_ip` varchar(20) DEFAULT NULL,
  `xtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `a_log_histories`
--

TRUNCATE TABLE `a_log_histories`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `a_users`
--

CREATE TABLE `a_users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '999',
  `sign_in_count` int(11) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(20) DEFAULT NULL,
  `last_sign_in_ip` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `xtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `a_users`
--

TRUNCATE TABLE `a_users`;
--
-- Dumping data untuk tabel `a_users`
--

INSERT INTO `a_users` (`id`, `group_id`, `email`, `password`, `name`, `role`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `created_by`, `created_ip`, `updated_at`, `updated_by`, `updated_ip`, `xtimestamp`) VALUES
(1, 0, 'superuser', 'MTIzNDU2', 'superuser', 0, 8, '2017-08-13 17:36:43', '2017-08-13 17:35:57', '127.0.0.1', '127.0.0.1', '2017-04-27 08:39:07', '127.0.0.1', 'superuser', '2017-04-27 08:39:07', '127.0.0.1', 'superuser', '2017-08-13 10:36:43'),
(2, 1, 'admin', 'MTIzMTIz', 'Administrator', 999, 37, '2017-08-13 18:51:11', '2017-08-13 18:43:14', '127.0.0.1', '127.0.0.1', '2017-08-13 17:31:44', 'superuser', '127.0.0.1', '2017-08-13 17:53:47', 'admin', '127.0.0.1', '2017-08-13 11:51:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_backoffice_menu`
--
ALTER TABLE `a_backoffice_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_backoffice_menu_privileges`
--
ALTER TABLE `a_backoffice_menu_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `a_groups`
--
ALTER TABLE `a_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_log_histories`
--
ALTER TABLE `a_log_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_users`
--
ALTER TABLE `a_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_backoffice_menu`
--
ALTER TABLE `a_backoffice_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `a_backoffice_menu_privileges`
--
ALTER TABLE `a_backoffice_menu_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `a_groups`
--
ALTER TABLE `a_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `a_log_histories`
--
ALTER TABLE `a_log_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `a_users`
--
ALTER TABLE `a_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
