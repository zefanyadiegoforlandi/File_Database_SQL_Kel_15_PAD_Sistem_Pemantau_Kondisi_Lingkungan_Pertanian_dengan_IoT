-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2023 pada 13.34
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

--
-- Dumping data untuk tabel `data_sensor`
--

INSERT INTO `data_sensor` (`id`, `id_sensor`, `intensitas_cahaya`, `kelembaban_tanah`, `kualitas_udara`, `curah_hujan`, `kelembaban_udara`, `suhu`, `tekanan`, `ketinggian`, `waktu_perekaman`, `created_at`, `updated_at`) VALUES
(13, 'S007', 763.00, 48.00, 2.00, 9.00, 62.00, 25.00, 1015.00, 196.00, '2006-07-11 17:33:09', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(14, 'S007', 957.00, 74.00, 1.00, 13.00, 83.00, 29.00, 1017.00, 50.00, '1992-05-15 14:07:49', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(15, 'S007', 319.00, 50.00, 1.00, 9.00, 60.00, 27.00, 1015.00, 123.00, '1978-05-07 03:57:56', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(16, 'S007', 56.00, 47.00, 2.00, 7.00, 72.00, 29.00, 1019.00, 104.00, '1975-11-29 06:27:38', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(17, 'S007', 407.00, 61.00, 3.00, 13.00, 62.00, 28.00, 1018.00, 94.00, '1977-05-20 22:57:59', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(18, 'S007', 544.00, 68.00, 1.00, 20.00, 66.00, 28.00, 1017.00, 75.00, '1983-11-12 14:58:11', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(19, 'S007', 186.00, 63.00, 3.00, 6.00, 82.00, 30.00, 1019.00, 55.00, '2011-12-10 18:00:32', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(20, 'S007', 354.00, 44.00, 3.00, 17.00, 71.00, 26.00, 1011.00, 195.00, '2004-01-05 01:56:27', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(21, 'S007', 94.00, 52.00, 2.00, 7.00, 79.00, 29.00, 1018.00, 70.00, '2017-02-23 03:56:33', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(22, 'S007', 919.00, 71.00, 3.00, 19.00, 83.00, 20.00, 1011.00, 151.00, '2003-09-23 02:03:26', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(23, 'S007', 682.00, 67.00, 1.00, 20.00, 71.00, 20.00, 1013.00, 133.00, '1987-03-17 23:49:33', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(24, 'S007', 769.00, 46.00, 3.00, 7.00, 82.00, 26.00, 1010.00, 90.00, '2003-10-24 07:01:31', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(25, 'S007', 500.00, 56.00, 1.00, 12.00, 65.00, 28.00, 1014.00, 104.00, '2016-03-24 01:36:31', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(26, 'S007', 445.00, 63.00, 3.00, 7.00, 66.00, 29.00, 1014.00, 92.00, '2011-09-09 12:39:44', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(27, 'S007', 863.00, 72.00, 1.00, 20.00, 87.00, 25.00, 1015.00, 194.00, '2001-07-08 03:23:46', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(28, 'S007', 649.00, 42.00, 1.00, 11.00, 62.00, 20.00, 1017.00, 143.00, '1982-03-23 02:36:23', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(29, 'S007', 999.00, 53.00, 2.00, 7.00, 63.00, 20.00, 1014.00, 85.00, '1986-11-15 04:21:21', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(30, 'S007', 835.00, 67.00, 1.00, 15.00, 65.00, 26.00, 1011.00, 123.00, '1975-06-21 01:32:24', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(31, 'S007', 774.00, 40.00, 3.00, 8.00, 69.00, 20.00, 1018.00, 183.00, '2007-02-25 20:30:38', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(32, 'S007', 308.00, 51.00, 1.00, 19.00, 64.00, 22.00, 1014.00, 153.00, '2022-01-20 20:11:15', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(33, 'S007', 779.00, 41.00, 2.00, 13.00, 84.00, 27.00, 1013.00, 57.00, '1983-12-17 21:07:56', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(34, 'S007', 655.00, 46.00, 1.00, 19.00, 68.00, 23.00, 1010.00, 155.00, '2011-04-16 20:33:49', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(35, 'S007', 354.00, 43.00, 2.00, 6.00, 67.00, 29.00, 1010.00, 90.00, '2009-04-02 21:23:12', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(36, 'S007', 228.00, 40.00, 3.00, 6.00, 66.00, 23.00, 1018.00, 76.00, '1987-07-06 20:36:54', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(37, 'S007', 197.00, 53.00, 1.00, 9.00, 60.00, 30.00, 1010.00, 117.00, '1997-12-19 07:31:38', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(38, 'S007', 906.00, 78.00, 1.00, 14.00, 73.00, 20.00, 1019.00, 143.00, '1976-06-16 22:35:23', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(39, 'S007', 134.00, 79.00, 2.00, 15.00, 90.00, 27.00, 1016.00, 105.00, '2022-03-29 01:41:59', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(40, 'S007', 877.00, 57.00, 3.00, 6.00, 87.00, 26.00, 1020.00, 54.00, '1991-06-04 07:22:02', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(41, 'S007', 588.00, 80.00, 3.00, 9.00, 73.00, 27.00, 1015.00, 158.00, '1977-09-28 20:12:55', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(42, 'S007', 609.00, 55.00, 2.00, 13.00, 70.00, 25.00, 1019.00, 173.00, '1998-06-04 09:12:29', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(43, 'S007', 915.00, 43.00, 3.00, 15.00, 67.00, 26.00, 1014.00, 81.00, '2005-03-29 05:09:37', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(44, 'S007', 672.00, 56.00, 2.00, 16.00, 65.00, 30.00, 1018.00, 126.00, '1991-03-29 06:18:37', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(45, 'S007', 868.00, 50.00, 1.00, 5.00, 88.00, 22.00, 1020.00, 177.00, '1991-09-15 21:29:15', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(46, 'S007', 347.00, 79.00, 2.00, 20.00, 89.00, 23.00, 1017.00, 101.00, '2021-09-18 09:02:48', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(47, 'S007', 92.00, 69.00, 3.00, 5.00, 87.00, 21.00, 1011.00, 96.00, '2020-05-03 03:41:12', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(48, 'S007', 915.00, 63.00, 1.00, 8.00, 73.00, 24.00, 1014.00, 108.00, '2014-08-24 04:12:58', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(49, 'S007', 674.00, 68.00, 3.00, 10.00, 60.00, 27.00, 1014.00, 177.00, '1987-12-08 14:40:54', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(50, 'S007', 156.00, 79.00, 2.00, 9.00, 79.00, 22.00, 1016.00, 137.00, '1980-10-07 06:01:42', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(51, 'S007', 123.00, 71.00, 3.00, 16.00, 71.00, 26.00, 1020.00, 147.00, '1984-03-04 01:25:06', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(52, 'S007', 12.00, 68.00, 2.00, 14.00, 80.00, 30.00, 1019.00, 190.00, '2017-03-25 00:03:33', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(53, 'S007', 899.00, 57.00, 3.00, 19.00, 69.00, 25.00, 1019.00, 92.00, '1992-10-31 06:58:50', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(54, 'S007', 543.00, 62.00, 3.00, 19.00, 60.00, 29.00, 1019.00, 144.00, '2007-07-30 05:53:19', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(55, 'S007', 190.00, 76.00, 2.00, 5.00, 64.00, 21.00, 1018.00, 192.00, '2020-12-01 16:00:02', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(56, 'S007', 135.00, 53.00, 2.00, 7.00, 74.00, 27.00, 1020.00, 78.00, '1993-01-05 08:17:51', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(57, 'S007', 900.00, 79.00, 1.00, 18.00, 86.00, 23.00, 1020.00, 98.00, '1985-11-14 12:16:36', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(58, 'S007', 920.00, 56.00, 3.00, 15.00, 68.00, 29.00, 1015.00, 78.00, '2006-05-20 18:26:51', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(59, 'S007', 174.00, 67.00, 1.00, 10.00, 69.00, 21.00, 1020.00, 147.00, '2020-03-14 19:15:34', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(60, 'S007', 962.00, 70.00, 2.00, 17.00, 78.00, 30.00, 1017.00, 92.00, '2001-05-05 02:46:36', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(61, 'S007', 920.00, 53.00, 2.00, 11.00, 74.00, 28.00, 1013.00, 70.00, '2014-09-02 11:50:57', '2023-12-21 05:29:55', '2023-12-21 05:29:55'),
(62, 'S007', 992.00, 72.00, 2.00, 16.00, 68.00, 28.00, 1017.00, 119.00, '1991-04-11 18:13:38', '2023-12-21 05:29:55', '2023-12-21 05:29:55');

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
  `id_lahan` varchar(20) NOT NULL DEFAULT 'Tidak ada ID Lahan',
  `alamat_lahan` varchar(255) NOT NULL DEFAULT 'Tidak ada alamat ',
  `luas_lahan` decimal(10,2) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lahan`
--

INSERT INTO `lahan` (`id_lahan`, `alamat_lahan`, `luas_lahan`, `id_user`, `created_at`, `updated_at`) VALUES
('L001', 'Karanganyar', 6000.00, 1, '2023-12-17 03:21:49', '2023-12-17 03:21:56'),
('L002', 'Kabupaten Karanganyar', 1000.00, 2, '2023-12-14 13:08:51', '2023-12-15 04:46:22'),
('L003', 'Kabupaten Semarang', 5000.00, 4, '2023-12-15 04:40:55', '2023-12-15 04:46:41'),
('L004', 'Kabupaten Kendal', 7000.00, 7, '2023-12-15 04:44:14', '2023-12-15 04:44:14'),
('L005', 'Kabupaten Sleman', 3000.00, 8, '2023-12-15 04:44:51', '2023-12-15 06:08:13'),
('L006', 'Kabupaten Semarang', 4000.00, 4, '2023-12-15 04:45:48', '2023-12-15 04:45:48'),
('L007', 'Karanganyar', 6000.00, 12, '2023-12-15 06:51:59', '2023-12-17 11:34:59'),
('L008', 'Sleman ugm', 6000.00, 12, '2023-12-17 11:59:45', '2023-12-17 11:59:45');

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
  `id_lahan` varchar(20) NOT NULL DEFAULT 'Tidak ada ID Lahan',
  `tanggal_aktivasi` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sensor`
--

INSERT INTO `sensor` (`id_sensor`, `id_lahan`, `tanggal_aktivasi`, `created_at`, `updated_at`) VALUES
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
('S017', 'L001', '2023-12-15 20:54:11', '2023-12-15 06:54:18', '2023-12-15 06:54:18'),
('S019', 'L001', '2023-12-17 01:59:23', '2023-12-16 11:59:31', '2023-12-16 11:59:31'),
('S020', 'L005', '2023-12-17 11:52:54', '2023-12-16 21:53:02', '2023-12-16 21:53:02'),
('S021', 'L001', '2023-12-17 13:11:21', '2023-12-16 23:11:26', '2023-12-16 23:11:26'),
('S022', 'L001', '2023-12-17 13:11:27', '2023-12-16 23:11:32', '2023-12-16 23:11:32'),
('S023', 'L004', '2023-12-17 13:11:33', '2023-12-16 23:11:39', '2023-12-16 23:11:39'),
('S024', 'L004', '2023-12-17 13:11:41', '2023-12-16 23:11:48', '2023-12-16 23:11:48'),
('S025', 'L001', '2023-12-17 13:11:49', '2023-12-16 23:11:55', '2023-12-16 23:11:55'),
('S026', 'L001', '2023-12-17 13:11:55', '2023-12-16 23:12:00', '2023-12-16 23:12:00'),
('S027', 'L004', '2023-12-17 13:12:13', '2023-12-16 23:12:18', '2023-12-16 23:12:18'),
('S028', 'L005', '2023-12-17 13:12:19', '2023-12-16 23:12:23', '2023-12-16 23:12:23'),
('S029', 'L007', '2023-12-17 13:12:23', '2023-12-16 23:12:28', '2023-12-16 23:12:28'),
('S030', 'L006', '2023-12-17 13:12:41', '2023-12-16 23:12:45', '2023-12-16 23:12:45'),
('S031', 'L001', '2023-12-17 13:12:48', '2023-12-16 23:12:55', '2023-12-16 23:12:55'),
('S032', 'L001', '2023-12-17 13:12:55', '2023-12-16 23:13:00', '2023-12-16 23:13:00'),
('S033', 'L004', '2023-12-17 13:13:14', '2023-12-16 23:13:18', '2023-12-16 23:13:18'),
('S034', 'L004', '2023-12-17 13:13:19', '2023-12-16 23:13:24', '2023-12-16 23:13:24'),
('S035', 'L004', '2023-12-17 13:13:24', '2023-12-16 23:13:29', '2023-12-16 23:13:29'),
('S036', 'L004', '2023-12-17 13:13:29', '2023-12-16 23:13:39', '2023-12-16 23:13:39'),
('S037', 'L001', '2023-12-17 13:14:12', '2023-12-16 23:14:17', '2023-12-16 23:14:17'),
('S038', 'L001', '2023-12-17 13:14:17', '2023-12-16 23:14:24', '2023-12-16 23:14:24'),
('S039', 'L004', '2023-12-17 13:14:24', '2023-12-16 23:14:28', '2023-12-16 23:14:28'),
('S040', 'L001', '2023-12-17 13:14:28', '2023-12-16 23:14:32', '2023-12-16 23:14:32'),
('S041', 'L001', '2023-12-17 13:14:33', '2023-12-16 23:14:37', '2023-12-16 23:14:37'),
('S042', 'L001', '2023-12-17 15:29:16', '2023-12-17 01:29:22', '2023-12-17 01:29:22'),
('S043', 'L004', '2023-12-17 15:29:22', '2023-12-17 01:29:26', '2023-12-17 01:29:26'),
('S044', 'L004', '2023-12-17 15:29:28', '2023-12-17 01:29:34', '2023-12-17 01:29:34'),
('S045', 'L001', '2023-12-17 15:29:36', '2023-12-17 01:29:42', '2023-12-17 01:29:42'),
('S046', 'L001', '2023-12-18 01:50:23', '2023-12-17 11:50:29', '2023-12-17 11:50:29'),
('S047', 'L004', '2023-12-18 01:59:15', '2023-12-17 11:59:24', '2023-12-17 11:59:24');

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
('G20uCjOzRfHCV5RSGf3JcZXo40a7iF0KBGFZdVds', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXdRVEt2NTd1U3hKUGFFNlExaWJrQ3dmM1FiOWo4VkIxcWNxT1VoTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1703161819),
('p6x02rRKoodIzA2Kc4rQY4NomhhScL539lvI6He2', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjBxbXAwN2l5bFBONFhWRzg3NEFZNXBsRWhFQkx5c3lxcU5oZjNtSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3BhZ2VzL2FkZC9kYWZ0YXItZmFybWVyIjt9fQ==', 1703162042);

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
(4, 'HEHE', 'forln@gmail.com', NULL, '$2y$10$fjolg4yn6uH42mV7QqmzSOFDcE6ru2QgYUJokFEm1aIM.Wap982yS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 10:51:52', '2023-12-17 10:44:09', 'user', 'Solo Jogja Jakarta'),
(5, 'nugraha', 'karta@gmail.com', NULL, '$2y$10$a01H5mUxT2.CqQ0.FdO9QOuvDC/cBJp8YyKzAdKq1VuHsIweJ298u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 10:34:45', '2023-12-07 10:34:45', 'admin', 'pasundan'),
(7, 'rambu', 'nug@gmail.com', NULL, '$2y$10$f1HplpSUUoyjA98CMXCXo.XdJvD7RS9OzfS5XV4SLJRYkwxWKaZ6K', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 18:38:08', '2023-12-09 18:38:08', 'user', ''),
(8, 'nug', 'tri@gmail.com', NULL, '$2y$10$Y9uePvBT6mIjSuiXgL1NVe/ylB/y4aGd6eZZp2Vr6E0AqLp.YWfia', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 19:26:01', '2023-12-15 06:12:07', 'user', 'Solo Jogja Jakarta'),
(9, 'rambu', 'rambu@gmail.com', NULL, '$2y$10$9X.oUoL3Thbc6LiaU0pl.O44ykHKg49hKnteauK8yUYhjT7TQD35a', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 05:04:41', '2023-12-15 05:04:41', 'admin', ''),
(10, 'Jayakarta K.', 'kart9@gmail.com', NULL, '$2y$10$9CADGrEVTBJKwYU.NmR6XOOMCM3bMUVk97dXDRieuhkg1BQMuGR5G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 05:49:46', '2023-12-15 05:49:46', 'admin', 'Sukamulya, Cikarang Selatan, Bekasi, Jawa Barat'),
(12, 'diego', 'diego@gmail.com', NULL, '$2y$10$AC3MK5RaWXioM.haXrgv5udJbBkXJ6pM7YcWxgAc9um9A0AxEmwt6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 06:56:37', '2023-12-15 06:56:37', 'user', 'Sleman Yogyakarta'),
(13, 'Nugriza', 'termit@gmail.com', NULL, '$2y$10$pV0f5EiamzIe63OqLAPUNOwfVipv8W.riam1519zbaooMVfSipZZC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-17 10:41:31', '2023-12-17 11:57:53', 'user', 'Sleman'),
(14, 'nagisa', 'nagisa@gmail.com', NULL, '$2y$10$Nw00dUumlU9cJhkqkJLEC.AwF/MS5Th8sf.FcYMqebQPHh2H7NJVC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-17 12:00:06', '2023-12-17 12:51:32', 'user', 'Sleman Yogyakarta');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
