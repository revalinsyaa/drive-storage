-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2025 at 04:06 AM
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
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Karya Tulis Ilmiah', '2025-10-01 19:36:16', '2025-10-01 19:36:16'),
(2, 'Poster', '2025-10-01 19:36:16', '2025-10-01 19:36:16'),
(3, 'Penelitian Eksternal', '2025-10-01 19:36:16', '2025-10-01 19:36:16'),
(4, 'Penelitian Internal', '2025-10-01 19:36:16', '2025-10-01 19:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year_published` year(4) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `abstract` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `author`, `year_published`, `category_id`, `abstract`, `cover_image`, `file_url`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Ayo Hidup Sehat', 'alvin dwi', '2023', 1, 'Penelitian ini membahasan bagaimana cara mejaga hidup agar tetap sehat', 'covers/Vm0ozlTX9mwf58tYlM2VRZ4RbejT2mZQWVFTuMGz.jpg', 'documents/Rkzb0LEUWoM0fC3RpKLKfsEuCEccrJ3tIYGzb48g.png', 0, '2025-10-01 23:19:31', '2025-10-01 23:34:05'),
(2, 'Waspada Anemia', 'cinta', '2025', 3, 'penelitian membahas kewaspadaan terhadap anemia yang kian marak di masyarakat karena di akibatkan kekurangan sel darah merah', 'covers/krsU9fVx30wTO3EOupIvQymFdHKGwVvPyKHF1ViB.jpg', 'documents/NYUk4RNKf4d5IZfKSK4pcMa0bTmDq61kftL3L9w7.png', 0, '2025-10-01 23:36:18', '2025-10-01 23:36:18'),
(3, 'ettrtr', 'dffd', '2025', 1, 'swopihdguiasg', 'covers/DMOh4XeOW9QB0XIsyRTJLbHnR2jyGcDCM6825KSr.jpg', 'documents/P5PYYb0GhxqrXO9k79aJkmSwGKnC1izI1Xl9e6zD.pdf', 3, '2025-10-02 00:01:12', '2025-10-09 23:39:34'),
(4, 'karya 1', 'cinta', '2024', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec purus magna. Fusce fermentum nunc diam, eget porttitor nulla ullamcorper vel. Nullam iaculis risus ac sem tincidunt auctor. Ut lobortis justo at semper luctus. Vivamus fringilla vehicula dui nec posuere. Fusce ligula odio, interdum at scelerisque placerat, pulvinar sit amet justo. Etiam dictum massa nec est dictum, sed pharetra neque sagittis.', 'covers/29eWzx5vEtQt3hsWQqoCOJF2D8GGpjbpCp7NWMmE.jpg', 'documents/2TKnH0mN7TSFhj7EoIFoQBwjqOTjiqzF1fVQ1zzF.pdf', 0, '2025-10-06 19:36:46', '2025-10-06 19:36:46'),
(5, 'karya 2', 'cinta', '2024', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec purus magna. Fusce fermentum nunc diam, eget porttitor nulla ullamcorper vel. Nullam iaculis risus ac sem tincidunt auctor. Ut lobortis justo at semper luctus. Vivamus fringilla vehicula dui nec posuere. Fusce ligula odio, interdum at scelerisque placerat, pulvinar sit amet justo. Etiam dictum massa nec est dictum, sed pharetra neque sagittis.', 'covers/vRqhywTRJBm8eIcBVLh6LeA3CDti94gUGYZigJdx.jpg', 'documents/0ej8ZtbK2DTSYXj4BANEidUmHncDshfKxIMD2ScJ.pdf', 0, '2025-10-06 19:37:15', '2025-10-06 19:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_15_033231_create_categories_table', 1),
(5, '2025_09_29_054314_create_documents_table', 1),
(6, '2025_10_08_021550_add_views_to_documents_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AohyguZy3tnUymFsYsyfOLOBILExWvnb8Q3t137t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFduNFI1eXhmTVJuY0lXd1d1cTNkdlYwMWlJc0tzOG45Qlk3VUdwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb2xsZWN0aW9uL2thcnlhX3R1bGlzX2lsbWlhaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759906519),
('dpoIsKio5VS7gNMZCz2ewmuvS9ePVy8vg3ZpALFe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2xKd2NyYmUyamk5WTZPQ0d3R2poUDFtV0h5UlF6emluVmF3Ym1pcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760056136),
('gU5GkTsrKnop8MXXlJZp0TrP3k1qukbo6huvS28s', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVJoMkdrRnFZdm8ydG4ycWtHdGo5SGoxZjUzY0h0WXJWOUQ3TG1CMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759977221),
('Ln0hJT3nwYHESCsD0LIMNDqzmlkqLEcIlwlhm95e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjM5N0k1Mzg5TzVlMjk5eXc4bUlVQWxUWTFWcUM4MDNEbXpUaVNKYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759814558),
('NO98IcXAYEXoX84e9LGP4Xl6Kg3Atf9L74AX7m7A', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzN0NVdveldLamNjTWZiaVFYT3VaODNneE95TTBmeDdpQm9zeWdKciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1759807344),
('u6PAzPag6vT29Q14qt8xLYUP4HfAoicYvCJnkHeR', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTZQekdrZVpGSjRsdUJUUk9pa1l4VkFRRDBXVnd2dHNkRldxWmxKSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1760079604),
('vx56hEE07CGXvov4pnUtL9KVSf3BdEqxOKFZGIYj', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1ZOV25jc3VCWlFMNTBzOGkwTU9HOURndVpwdkdGcHVubVp5RkU5aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb2xsZWN0aW9uYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1759895538);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@example.com', NULL, 'admin1234', NULL, NULL, NULL),
(5, 'cinta', 'linsyareva@gmail.com', NULL, '$2y$12$8RFMvv8iV.7kPtQvFY9/vu0nBHZqp7JsNDv6cS6xb3OMAYruAN3Ia', NULL, '2025-10-01 20:01:47', '2025-10-01 20:01:47'),
(6, 'linsya', 'linsya@gmail.com', NULL, '$2y$12$SC6ImoQRuBFp10GPRFfXKeSj13yRaqCfxJpPS8GHAaCwDgNUCbGiy', NULL, '2025-10-01 20:03:36', '2025-10-01 20:03:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
