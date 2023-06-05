-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 01:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `permohonan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_alpen`
--

CREATE TABLE `ct_alpen` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL DEFAULT 'alasan penting',
  `nip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `golongan` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date NOT NULL,
  `durasi` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ct_alpen`
--

INSERT INTO `ct_alpen` (`id_surat`, `jns_ct`, `nip`, `nama`, `golongan`, `jabatan`, `tgl_mul`, `tgl_sls`, `durasi`, `alamat`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'alasan penting', 72190344, 'Ega\r\n', NULL, NULL, '2023-06-05', '2023-06-06', NULL, 'asd', 'asd', 'disetujui', '2023-06-05 01:56:11', '2023-06-05 04:12:47'),
(2, 'alasan penting', 72190344, 'Ega\r\n', NULL, NULL, '2023-06-21', '2023-06-23', NULL, 'asd', 'asd', 'ditolak', '2023-06-05 01:57:52', '2023-06-05 03:13:43'),
(3, 'alasan penting', 71190344, 'Adi', NULL, NULL, '2023-06-28', '2023-06-30', NULL, 'asfc', 'asfc', 'ditolak', '2023-06-05 02:47:53', '2023-06-05 04:33:44'),
(4, 'alasan penting', 71190344, 'Adi', NULL, NULL, '2023-06-20', '2023-06-23', NULL, 'weaasda', 'sadasdadw', 'ditolak', '2023-06-05 02:50:58', '2023-06-05 04:12:52'),
(6, 'alasan penting', 72190344, 'Ega\r\n', NULL, NULL, '2023-06-15', '2023-06-16', NULL, 'Jl. Timbul Tenggelam', 'wdyn', 'ditolak', '2023-06-05 04:31:56', '2023-06-05 04:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `ct_bers`
--

CREATE TABLE `ct_bers` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `golongan` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `keterangan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` mediumblob DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_besar`
--

CREATE TABLE `ct_besar` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL,
  `sisa_ct` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_dtn`
--

CREATE TABLE `ct_dtn` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_skt`
--

CREATE TABLE `ct_skt` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` mediumblob DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_thn`
--

CREATE TABLE `ct_thn` (
  `id_surat` bigint(20) UNSIGNED NOT NULL,
  `jns_ct` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `tgl_mul` date NOT NULL,
  `tgl_sls` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_04_122806_create_ct_besar_table', 2),
(6, '2023_06_04_122829_create_ct_alpen_table', 2),
(7, '2023_06_04_122914_create_ct_thn_table', 2),
(8, '2023_06_04_122928_create_ct_dtn_table', 2),
(9, '2023_06_04_122946_create_ct_skt_table', 3),
(10, '2023_06_04_123008_create_ct_bers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` int(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'pegawai',
  `gender` varchar(255) NOT NULL DEFAULT 'laki-laki',
  `sisa_ct_bsr` int(11) DEFAULT NULL,
  `sisa_ct_thn` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nip`, `email`, `email_verified_at`, `role`, `gender`, `sisa_ct_bsr`, `sisa_ct_thn`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ega\r\n', 72190344, 'pegawai@gmail.com', NULL, 'pegawai', 'perempuan\r\n', NULL, NULL, '$2y$10$VfAzj.qLxbSA5WEHJQQox.gUMlZKqJLvI2xBO.xK5qGaou4e6zVAW', NULL, '2023-06-04 21:09:36', '2023-06-04 21:09:36'),
(2, 'Adi', 71190344, 'kadiv@gmail.com', NULL, 'kadiv\r\n', 'laki-laki', NULL, NULL, '$2y$10$1oRKelLChIeEkD3ubjK62O5BOrGdweKnWGHT2CAg.ty/TeDs76Tce', NULL, '2023-06-04 21:10:32', '2023-06-04 21:10:32'),
(3, 'Tristan', 11190344, 'pimpinan@gmail.com', NULL, 'pimpinan', 'laki-laki', NULL, NULL, '$2y$10$mbmEstF4RLpIHghlljBa6ea1d3gnk0IESU/tmvzUZQGcL.7ZenOk2', NULL, '2023-06-04 21:11:38', '2023-06-04 21:11:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_alpen`
--
ALTER TABLE `ct_alpen`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `ct_bers`
--
ALTER TABLE `ct_bers`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `ct_besar`
--
ALTER TABLE `ct_besar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `ct_dtn`
--
ALTER TABLE `ct_dtn`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `ct_skt`
--
ALTER TABLE `ct_skt`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `ct_thn`
--
ALTER TABLE `ct_thn`
  ADD PRIMARY KEY (`id_surat`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `ct_alpen`
--
ALTER TABLE `ct_alpen`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ct_bers`
--
ALTER TABLE `ct_bers`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_besar`
--
ALTER TABLE `ct_besar`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_dtn`
--
ALTER TABLE `ct_dtn`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_skt`
--
ALTER TABLE `ct_skt`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_thn`
--
ALTER TABLE `ct_thn`
  MODIFY `id_surat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
