-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 08:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2fa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('e@gmail.com', '$2y$10$R2lKVA2XeOalOfTLeTNLiOD1E.XIMuic1VhXH65pkh8IT7NBLA712', '2021-06-29 15:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elvis Igiebor', 'e@gmail.com', NULL, '$2y$10$xfE/EuPjZG3sNHLH1Zj1oel4bn52LaAYPNSBdxwnKrQyEPJP.XbZG', NULL, NULL, NULL, '2021-06-29 14:16:02', '2021-06-29 14:16:02'),
(2, 'Elvis Igiebor', 'igieborelvis@gmail.com', '2021-06-30 03:13:14', '$2y$10$XIiJK/BEA6TRWll8XCzf2.Ev4hxAUp2vvmC.jg0swdycYKq0GRyXm', 'eyJpdiI6IkxlQlE5VGtBMVNCbUhKNm1uUkh5T3c9PSIsInZhbHVlIjoiNmRxaVhtWUp1OFQxdzZCNHJLaWtmWDYvc0FVV0pNd0ZWRUFvMUxtRW5FQT0iLCJtYWMiOiJhMzYzMGYwNjJkOGE5NzE4Y2E1Y2ZhNjM0MTg0ZTY4ZThiMDY5ZGM4NjcyZmM0MGNkZWJiN2U3ODY5Y2E0YTM2In0=', 'eyJpdiI6InczcDBueThINUswMi96bkp1Zk01TkE9PSIsInZhbHVlIjoiQVA3NXZQVkxNZ0h5SFFlZW9UbzJDdU5qSTVVbVBod1hqODEvYWg1dFl4Ri9zQmwzT09sWnNLckV0aExubGN4b0tyQjlmWDBJVGFnNzZaOFg2NW5uWkJadmE5Nks2WXkzbUxzc3JOQWNuenBOc0Y0TTNIWk1xQnRaa21TcWlmbWlmN0RLM3luWVNIbmw3Mk4vOTBpd1U4V1ltU1VSS2FJbU56bXNwdHFSSHkxcGhKbjBJNWJZVGE5R3VKakF6TWlqN0VpOUY5cFhHVVQxeE9OamFWSDdrUHJMZWpObTVGQWdkOXozSU5yM24wRXBUSzFjc0RIRGQvZEcxL0tONDNud2xSREdkaXdGd09DcnpYK3R2K3Z3RHc9PSIsIm1hYyI6IjBkN2M0OTUwYzM2MGE5NjhjNWE2OWEyZDY0OTA0MGU5Nzk3MGU0MGFjYTgwMzgzMDQxY2FlZDllZWM4OTlkYzgifQ==', 'WaakuoCRRuxEErdrtfeInmCKG1ypFGukDqpQHIITgnMV7CSc0dsN7AnV1r3P', '2021-06-29 14:55:52', '2021-06-30 03:58:13'),
(3, 'Newman', 'new@gmail.com', '2021-06-30 01:43:44', '$2y$10$24XgR1AD61k.ypmXXT2a3eYADyd2wJW40TsNWByslcs6dySW7xd/u', 'eyJpdiI6IlFBNUdEeTJmOVRZbnNwM2dVaWJFUGc9PSIsInZhbHVlIjoiMjM1a05oS0lWakUrMzlvZ3pZQkZzMTAzSFpiUzRxS1MvTUsyU0g0eDVuOD0iLCJtYWMiOiI3MjIwM2Y0ZWFiZjdmYzYyOThhNzk2YTllYjc4ZTA4NGY1NGEzNDE1MDZkNzA5ZTI1ZmI2NjAwNTRiOWI5ZWE0In0=', 'eyJpdiI6Ik1JRW93WWtqMzYvYjBQYzdTU0pxQVE9PSIsInZhbHVlIjoicTN2b3JkSGxOS3FhVGpKaWp1T1hLMmtROXBEVk9UTFZ2K3MwSVkwc3BHTStBdFE1S01zdHd3OEFnZWFMUVR5M1JXaG00SDk2RTl5R3oxeER2YXdHUmduK0VMYmczL2hwQmltemQ5dzlacVZiYUtidHJINEFFelhyTHZ0STRuZ0hTOXlid1c3S3lMNTZkandjVkFpV0ZwL3NEcllNZFlIcTdxWFdaWk1vdzZyVlJEaDM5YVpuWko5VEhEUHVUUU1NR1lvaWN0MkRiQS9rckhwMTZrUS9NZEJUNEFUZUw0RW9PdlNOZ1FselN3MkZqc3Z4QWFaNStCazIrZjlMdHBGbzF1MDk1K0tVNC90cUIxd01zRWkyUFE9PSIsIm1hYyI6ImRkYjg1NTQ1YTA2MjczODk4ZTYwYjVkN2U5YzhmODgxMGYxZDViNWMxNDBlOGI3NTNhMTAxMDBiNWY1ZjI3YWIifQ==', NULL, '2021-06-30 01:41:40', '2021-06-30 02:59:43'),
(4, 'Elvis Igiebor', 'name@gmail.com', '2021-06-30 04:17:22', '$2y$10$EAMEIDoD2GrbghoV6S.CEeJJm8mGiUnnb7L20iG0vMD0/TKPlCPky', 'eyJpdiI6Ii91VGhTU2RpWWlHSFhjbVA2S2NEWEE9PSIsInZhbHVlIjoiTmpRcnRGZ2x1S3NYWjRGK3cwSVE4Q3hKb01vM29QWnNISlFzMGtKb0hKMD0iLCJtYWMiOiJlNDZhYWYyZjRlY2UyYThkMDBlNmM4NWIwOTc3OWYxODdiMjBhMGU1MDJjMDJkOGRlMjBiYzEzMmI3NzlmMDcwIn0=', 'eyJpdiI6IlBBaDlSMDQrbU0rZjR5VFZ0Rmd2U3c9PSIsInZhbHVlIjoiZG9BUVBHN2RqZzFGUDh2ZWhMeUhlMEdzNGhzVEUxWkVZZXRtMndVdjdCaktjQ0Irbnk3dGsyY1pwTzFDUUZCWlo5THc3WFRQSmF2RU9sQXhQa0IyYzJ2UkphWTBmRVdhcE8wVks1cXBZMjhBU0QyT2IycEM4MGt5TGM0SE5iTVBCQ3ducHMrbDFPTHVEOUdSUDBkV1hCdFkvMDJKRXdJdFJWRVd6U1h6WVlnamxLTmxJMU9OcHBYY0F4WStRVU1EaDhZYTQ4Q1E1NDVyRzM3eVBYeklTSlFLL0Zyamx0OHB2cm01bkRzcm5sVUEySnpta2ZJT01QcEhtN3dicC9qMXAzamRNRnJaTDJrZS9TZXRuaEJ5Smc9PSIsIm1hYyI6ImI3NjZkODk3ZDc2N2ZmNDU0NWQ2YTk5OWU0OGU5MDAyN2I2ZDQwNTE0MThkNjg1YmM2N2ZhYTUzMzlhMzYxZTAifQ==', NULL, '2021-06-30 04:16:49', '2021-06-30 04:24:25'),
(5, 'admin', 'admin@gmail.com', '2021-06-30 04:57:24', '$2y$10$jetlJNaZPk50khxzXM68tOXOFaeMORTogB7lDDwFx.OeeACo9Jfie', 'eyJpdiI6IllEYXBXVVZHdUN5VXhNMWptOWJ5b2c9PSIsInZhbHVlIjoibjVpTFhTQnptUnlJNWJEN25ydnZxaGhNRjZFNTY5aGtGaldZWmd2bWtBWT0iLCJtYWMiOiJjN2M2MDEwMzE3OTcxMTY2NWViYWU4NWJhZGE2MjM5NmY3ZjE0Njk2Njc2N2YxNzlhYmI2ZDgzNDEwOGUwNDQzIn0=', 'eyJpdiI6ImF1RGxBWDNPQXRqWGdVbTcvVHVLZFE9PSIsInZhbHVlIjoiVDVFWnFtWWRXZ1VFM013dWMvbXhVbGFLSUhlL3hiR2ZjTk1nZ2x0enZmUW9CSFc1MkEzQStoRTkyS0Z3TGR3WVRlS1Q1K2p3SUNRNmN6OVN5UTc2dm1PVVZ4Vzh1TnZOZFRTZDFxeit0WENjUFRoM1Bsd3dLSkh0eDhSLzFvcFNUekxPOGl0akxmTGhhVlUyaExLZUlhbDlxT3JCdGhCNGUxM0VUdW92YmpjdTlSSXFmTE14eXNrVk9ody8zc1dYVFFSRER1Qzl3ZkVjUGRJaGpCWk5hY3RHYjdzQ1IybVhnbnJSOFhzZmZtbHllZVNXMVhqWmV1MnRnd2M0d0ZUZGZMQUszSmFHWFZaRjV6T1h6MlF6MFE9PSIsIm1hYyI6IjAwOTliMDIwOThiZjc3ZjNhOTUxMjc2ZjNmYzIzZTliOTM1ODMwN2ZkZmZhYTcwODdjNDFmNjQ0NzBiNzI3M2MifQ==', NULL, '2021-06-30 04:56:29', '2021-06-30 04:57:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
