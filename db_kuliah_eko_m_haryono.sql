-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2024 pada 07.50
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
-- Database: `db_kuliah_eko_m_haryono`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`) VALUES
(3, 'Bisnis Digital - (BD)'),
(5, 'Farmasi'),
(4, 'Psikologi - Gunadarma'),
(2, 'Sistem Informasi - (SI)'),
(1, 'Teknik Informatika - (TI)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `idjurusan` int(11) NOT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `idjurusan`, `foto`) VALUES
(1, 110223079, 'Eko Muchamad Haryono', 'Jalan Puspanegara No. 52', 1, 'eko_m_h.jpg'),
(2, 110123050, 'Alvin Abdulloh', 'Jalan Melati No. 45', 2, 'alvin_a.jpg'),
(3, 110323022, 'Siti Karimah Walidah', 'Jalan Kenanga No. 67', 3, 'siti_karimah.jpg'),
(4, 110321011, 'Nurra', 'Jalan Dahlia No. 89', 4, 'nurra.jpg'),
(5, 110223057, 'Zaky Muhammad Hafizh', 'Jalan Puspasari No. 55', 1, 'zaky_m_h.jpg'),
(6, 110123150, 'Shinta Nur Allyani', 'Jalan No. 45', 2, 'shinta.jpg'),
(7, 110222019, 'Deva Amanda Pahlevi', 'Jalan Pekansari No. 32', 5, 'deva.jpg'),
(8, 110222132, 'Dinda Azzahra', 'Jalan Pekansari No. 11', 5, 'dinda.jpg'),
(9, 110223073, 'Yossy Indra Kusuma', 'Jalan Cibinong No. 99', 1, 'yossy.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
