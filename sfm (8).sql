-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 16.54
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sfm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datafeeds`
--

CREATE TABLE `datafeeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `data` double(10,2) DEFAULT NULL,
  `dataset_name` tinyint(4) DEFAULT NULL,
  `data_type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sensor`
--

CREATE TABLE `data_sensor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sensor` varchar(20) NOT NULL,
  `intensitas_cahaya` double(8,2) NOT NULL,
  `kelembaban_tanah` double(8,2) NOT NULL,
  `kualitas_udara` double(8,2) NOT NULL,
  `curah_hujan` double(8,2) NOT NULL,
  `kelembaban_udara` double(8,2) NOT NULL,
  `suhu` double(8,2) NOT NULL,
  `tekanan` double(8,2) NOT NULL,
  `ketinggian` double(8,2) NOT NULL,
  `waktu_perekaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `lahan`
--

CREATE TABLE `lahan` (
  `id_lahan` varchar(20) NOT NULL,
  `alamat_lahan` varchar(255) NOT NULL,
  `luas_lahan` decimal(10,2) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lahan`
--

INSERT INTO `lahan` (`id_lahan`, `alamat_lahan`, `luas_lahan`, `id_user`, `created_at`, `updated_at`) VALUES
('L001', 'Kabupaten Sleman', 2000.00, 1, '2023-12-14 13:02:02', '2023-12-15 06:52:55'),
('L002', 'Kabupaten Karanganyar', 1000.00, 2, '2023-12-14 13:08:51', '2023-12-15 04:46:22'),
('L003', 'Kabupaten Semarang', 5000.00, 4, '2023-12-15 04:40:55', '2023-12-15 04:46:41'),
('L004', 'Kabupaten Kendal', 7000.00, 7, '2023-12-15 04:44:14', '2023-12-15 04:44:14'),
('L005', 'Kabupaten Sleman', 3000.00, 8, '2023-12-15 04:44:51', '2023-12-15 06:08:13'),
('L006', 'Kabupaten Semarang', 4000.00, 4, '2023-12-15 04:45:48', '2023-12-15 04:45:48'),
('L007', 'Karanganyar', 6000.00, 12, '2023-12-15 06:51:59', '2023-12-15 06:57:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_23_163443_create_sessions_table', 1),
(7, '2022_05_11_154250_create_datafeeds_table', 1),
(8, '2023_12_09_150940_add_fielf_level_user', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensor`
--

CREATE TABLE `sensor` (
  `id_sensor` varchar(20) NOT NULL,
  `id_lahan` varchar(20) NOT NULL,
  `tanggal_aktivasi` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sensor`
--

INSERT INTO `sensor` (`id_sensor`, `id_lahan`, `tanggal_aktivasi`, `created_at`, `updated_at`) VALUES
('S004', 'L007', '2023-12-15 20:57:20', '2023-12-14 12:07:35', '2023-12-15 06:57:20'),
('S005', 'L002', '2023-12-15 18:35:41', '2023-12-14 14:31:55', '2023-12-15 04:35:41'),
('S006', 'L002', '2023-12-15 18:35:53', '2023-12-14 14:32:01', '2023-12-15 04:35:53'),
('S007', 'L001', '2023-12-15 04:32:16', '2023-12-14 14:33:07', '2023-12-14 14:33:07'),
('S008', 'L001', '2023-12-15 04:33:13', '2023-12-14 14:33:19', '2023-12-14 14:33:19'),
('S009', 'L001', '2023-12-15 04:33:19', '2023-12-14 14:33:25', '2023-12-14 14:33:25'),
('S010', 'L001', '2023-12-15 04:33:25', '2023-12-14 14:33:30', '2023-12-14 14:33:30'),
('S011', 'L005', '2023-12-15 18:56:34', '2023-12-15 04:41:37', '2023-12-15 04:56:34'),
('S012', 'L005', '2023-12-15 18:56:40', '2023-12-15 04:42:07', '2023-12-15 04:56:40'),
('S013', 'L005', '2023-12-15 18:56:47', '2023-12-15 04:42:23', '2023-12-15 04:56:47'),
('S014', 'L004', '2023-12-15 18:56:53', '2023-12-15 04:42:28', '2023-12-15 04:56:53'),
('S015', 'L006', '2023-12-15 18:57:19', '2023-12-15 04:42:35', '2023-12-15 04:57:19'),
('S016', 'L003', '2023-12-15 18:42:35', '2023-12-15 04:42:41', '2023-12-15 04:42:41'),
('S017', 'L001', '2023-12-15 20:54:11', '2023-12-15 06:54:18', '2023-12-15 06:54:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7nI5BbL8qhbH9vU5GDohkAAtSTTy4aDcl9KJQV4u', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWRHYzVsYkE4YWJDdHdld0xrdzBPS0tSNERHZWJxdDZTZE54ODd6eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWRpcmVjdHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O30=', 1702641920),
('K7t0XTVq3JNbIyExzaG653UYQmOZYZrZF8qDOjZi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib084TE9XNVhwbGN4cHpBckdLTHVpWWk1bkJXMDdONGdRQ0Y0Z244WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1702644704),
('MEmiJIejLJ6WKtx03z72RJVkHYCJa29bKSZrx9bi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFpWb3QwdGs5UnhEb3lQcmtKNGp2STRFT0J0RDEyRnZ2SnhxYTZ1WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1702645601),
('R67XVVXIqpn6vHonoDuXJ8w0Sv8fm2tTjnQwnbBw', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaTRyMG5SNmo0VDRGR3FwOGhxR2F6aVdqeFpudHVHaE1oZkxIR0FEbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYWdlcy9hZGQvZGFmdGFyLXNlbnNvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7fQ==', 1702646080),
('xhxL3R5P4BKp5Sw1Agw90R8pHfk8QtBRq1vADakZ', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjRvcUZZQnJBamNnbHNaU1lqbEJ0YXo3S3o4djFUNzRXUjgwcGhIcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1702649023);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'user',
  `alamat_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `level`, `alamat_user`) VALUES
(1, 'forlan', 'forlan@gmail.com', NULL, '$2y$10$H1688RK6kcjvRYOJXxmLt.zmj2oxFFw9a4BQwFNYo6a.5SahI50zy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 03:09:11', '2023-11-30 03:09:11', 'user', ''),
(2, 'zefanya', 'zefanya@gmail.com', NULL, '$2y$10$CQ.UX8mKkQ/4byQlzi709OHayEP1bjYZt.URrUr3BRkjV.578BhoS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 20:37:04', '2023-11-30 20:37:04', 'user', ''),
(4, 'HEHE', 'forln@gmail.com', NULL, '$2y$10$5bbwybQii.OFC7f59jED/.nE42.85oBCvwIfZBhuXEju6bGr8XlK.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 10:51:52', '2023-12-05 10:51:52', 'user', ''),
(5, 'nugraha', 'karta@gmail.com', NULL, '$2y$10$a01H5mUxT2.CqQ0.FdO9QOuvDC/cBJp8YyKzAdKq1VuHsIweJ298u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 10:34:45', '2023-12-07 10:34:45', 'admin', 'pasundan'),
(7, 'rambu', 'nug@gmail.com', NULL, '$2y$10$f1HplpSUUoyjA98CMXCXo.XdJvD7RS9OzfS5XV4SLJRYkwxWKaZ6K', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 18:38:08', '2023-12-09 18:38:08', 'user', ''),
(8, 'nug', 'tri@gmail.com', NULL, '$2y$10$Y9uePvBT6mIjSuiXgL1NVe/ylB/y4aGd6eZZp2Vr6E0AqLp.YWfia', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 19:26:01', '2023-12-15 06:12:07', 'user', 'Solo Jogja Jakarta'),
(9, 'rambu', 'rambu@gmail.com', NULL, '$2y$10$9X.oUoL3Thbc6LiaU0pl.O44ykHKg49hKnteauK8yUYhjT7TQD35a', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 05:04:41', '2023-12-15 05:04:41', 'admin', ''),
(10, 'Jayakarta K.', 'kart9@gmail.com', NULL, '$2y$10$9CADGrEVTBJKwYU.NmR6XOOMCM3bMUVk97dXDRieuhkg1BQMuGR5G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 05:49:46', '2023-12-15 05:49:46', 'admin', 'Sukamulya, Cikarang Selatan, Bekasi, Jawa Barat'),
(12, 'diego', 'diego@gmail.com', NULL, '$2y$10$AC3MK5RaWXioM.haXrgv5udJbBkXJ6pM7YcWxgAc9um9A0AxEmwt6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 06:56:37', '2023-12-15 06:56:37', 'user', 'Sleman Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datafeeds`
--
ALTER TABLE `datafeeds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_sensor`
--
ALTER TABLE `data_sensor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_sensor_id_sensor_foreign` (`id_sensor`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `lahan`
--
ALTER TABLE `lahan`
  ADD PRIMARY KEY (`id_lahan`),
  ADD KEY `lahan_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id_sensor`),
  ADD KEY `sensor_lahan_id_foreign` (`id_lahan`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datafeeds`
--
ALTER TABLE `datafeeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_sensor`
--
ALTER TABLE `data_sensor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_sensor`
--
ALTER TABLE `data_sensor`
  ADD CONSTRAINT `data_sensor_ibfk_1` FOREIGN KEY (`id_sensor`) REFERENCES `sensor` (`id_sensor`);

--
-- Ketidakleluasaan untuk tabel `lahan`
--
ALTER TABLE `lahan`
  ADD CONSTRAINT `lahan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `sensor`
--
ALTER TABLE `sensor`
  ADD CONSTRAINT `sensor_ibfk_1` FOREIGN KEY (`id_lahan`) REFERENCES `lahan` (`id_lahan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
