-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2023 pada 10.36
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_reservasi_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Adib', 'admin', '21232f297a57a5a743894a0e4a801fc3', '805150074_we-bare-bears-cartoon-wallpaper-preview (2).jpg'),
(2, 'Nadya ', 'nadya', '1e6eb2590ee576e8f788729ad596403a', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(19, 'Ida Ernawati', 'idaernawati1104@gmail.com', '081', 'Jl. Bulu Jaya', '96a3be3cf272e017046d1b2674a52bd3'),
(20, 'Adibah Satriani', 'dibah.satriani@gmail.com', '082', 'Gunungsari Indah ', 'a2ef406e2c2351e0b9e80029c909242d'),
(21, 'Nadya Nurul ', 'nadya.nad@gmail.com', '088', 'Jl. Pattimura', 'e45ee7ce7e88149af8dd32b27f9512ce'),
(22, 'Eza Afianto', 'eza@gmail.com', '085', 'Jl. Rungkut Indah', '7d0665438e81d8eceb98c1e31fca80c1'),
(23, 'Rena Reni', 'rena@gmail.com', '086', 'Adityawarman', '751d31dd6b56b26b29dac2c0e1839e34'),
(24, 'Nagita Sari', 'nagita@gmail.com', '087', 'Anadra', 'faeac4e1eef307c2ab7b0a3821e6c667');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `fh_id` int(11) NOT NULL,
  `fh_icon` varchar(20) DEFAULT NULL,
  `fh_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `fasilitas_hotel`
--

INSERT INTO `fasilitas_hotel` (`fh_id`, `fh_icon`, `fh_nama`) VALUES
(1, 'fa-automobile', 'Parkir'),
(2, 'fa-heart', 'Nyaman'),
(3, 'fa-life-bouy', 'Kolam Renang'),
(4, 'fa-futbol-o', 'Lapangan Futsal'),
(5, 'fa-taxi', 'Antar Jemput Bandara'),
(6, 'fa-coffee', 'Coffee & Resto'),
(7, 'fa-shopping-cart', 'Swalayan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `fk_id` int(11) NOT NULL,
  `fk_icon` varchar(20) DEFAULT NULL,
  `fk_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`fk_id`, `fk_icon`, `fk_nama`) VALUES
(3, 'fa-circle', 'Bathup'),
(4, 'fa-circle', 'Shower'),
(5, 'fa-circle', 'Closet Jongkok'),
(6, 'fa-circle', 'Closet Duduk'),
(7, 'fa-circle', 'Cermin'),
(8, 'fa-circle', 'TV'),
(9, 'fa-circle', 'Wifi'),
(10, 'fa-circle', 'Smoking Room'),
(11, 'fa-circle', 'Non Smoking Room'),
(12, 'fa-circle', 'Breakfast'),
(13, 'fa-circle', 'Lunch'),
(14, 'fa-circle', 'Dinner'),
(16, 'fa-circle', 'Kulkas'),
(17, 'fa-circle', 'Lemari'),
(18, 'fa-circle', 'AC'),
(19, 'fa-circle', 'Telepon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_kamar` int(11) NOT NULL,
  `invoice_dari` date NOT NULL,
  `invoice_sampai` date NOT NULL,
  `invoice_harga` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_kamar`, `invoice_dari`, `invoice_sampai`, `invoice_harga`, `invoice_total_bayar`, `invoice_status`, `invoice_bukti`) VALUES
(10, '2023-06-12', 19, 'Ida Ernawati', '081', 9, '2023-06-12', '2023-06-14', 1000000, 2400000, 4, '1921326714.jpeg'),
(11, '2023-06-12', 19, 'Aprilia ', '088', 8, '2023-06-14', '2023-06-15', 400000, 1000000, 4, '1682585585.png'),
(12, '2023-06-12', 20, 'Adibah Satriani', '082', 9, '2023-06-13', '2023-06-17', 1000000, 4300000, 4, '1732410888.jpeg'),
(13, '2023-06-12', 20, 'Nisa Ayu', '089', 7, '2023-06-15', '2023-06-20', 350000, 1850000, 4, '174445736.png'),
(14, '2023-06-12', 21, 'Fatimah Ratna', '088', 7, '2023-06-24', '2023-06-30', 350000, 2700000, 4, '67310956.png'),
(15, '2023-06-12', 21, 'Sari Murni', '087', 6, '2023-07-01', '2023-07-08', 200000, 1600000, 4, '1113167655.png'),
(16, '2023-06-12', 22, 'Reza Hadi', '085', 7, '2023-07-02', '2023-07-06', 350000, 1600000, 4, '1962972111.png'),
(17, '2023-06-12', 22, 'Nathan', '083', 5, '2023-07-04', '2023-07-05', 500000, 1100000, 4, '1569934069.png'),
(18, '2023-06-12', 23, 'Rena', '086', 5, '2023-06-26', '2023-06-30', 500000, 2500000, 4, '253468023.png'),
(19, '2023-06-12', 23, 'Abidzar', '084', 4, '2023-06-18', '2023-06-24', 350000, 2200000, 4, '910308434.png'),
(20, '2023-06-12', 23, 'Sinta Dwi', '080', 3, '2023-06-25', '2023-06-27', 700000, 1600000, 4, '1626446824.png'),
(21, '2023-06-12', 23, 'Adelia', '083', 2, '2023-07-01', '2023-07-08', 500000, 3800000, 4, '1886192971.jpeg'),
(22, '2023-06-12', 23, 'Fahira Rahma', '087', 5, '2023-07-09', '2023-07-12', 500000, 1900000, 4, '1861886009.png'),
(23, '2023-06-12', 23, 'Riko Ahmad', '081', 4, '2023-08-01', '2023-08-05', 350000, 1700000, 4, '100135651.png'),
(24, '2023-06-12', 24, 'Rafatar', '083', 4, '2023-07-30', '2023-07-31', 350000, 950000, 4, '2094975417.png'),
(25, '2023-06-12', 24, 'Misel', '088', 4, '2023-06-20', '2023-06-22', 350000, 900000, 4, '1173219291.jpeg'),
(26, '2023-06-12', 24, 'Marselino', '084', 3, '2023-07-19', '2023-07-22', 700000, 2500000, 4, '968985226.jpeg'),
(27, '2023-06-12', 24, 'Nina', '082', 3, '2023-08-18', '2023-08-19', 700000, 900000, 4, '736911713.png'),
(28, '2023-06-12', 24, 'Bima Sakti', '089', 3, '2023-08-27', '2023-08-31', 700000, 3000000, 4, '365268862.png'),
(29, '2023-06-12', 24, 'Rafi', '088', 2, '2023-08-25', '2023-08-26', 500000, 1100000, 4, '2012312694.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_layanan_tambahan`
--

CREATE TABLE `invoice_layanan_tambahan` (
  `ilt_invoice` int(11) NOT NULL,
  `ilt_layanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `invoice_layanan_tambahan`
--

INSERT INTO `invoice_layanan_tambahan` (`ilt_invoice`, `ilt_layanan`) VALUES
(2, 5),
(5, 5),
(6, 5),
(6, 1),
(6, 4),
(10, 5),
(10, 4),
(11, 5),
(11, 1),
(11, 3),
(11, 4),
(12, 5),
(12, 3),
(13, 3),
(14, 5),
(14, 1),
(14, 3),
(14, 4),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 5),
(17, 1),
(17, 3),
(17, 4),
(18, 5),
(18, 1),
(18, 4),
(19, 1),
(20, 1),
(20, 3),
(21, 1),
(21, 4),
(22, 5),
(22, 4),
(23, 5),
(23, 3),
(24, 5),
(24, 1),
(24, 3),
(24, 4),
(25, 1),
(25, 3),
(26, 5),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 5),
(29, 5),
(29, 1),
(29, 3),
(29, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `kamar_id` int(11) NOT NULL,
  `kamar_nama` varchar(255) NOT NULL,
  `kamar_ranjang` varchar(255) NOT NULL,
  `kamar_ukuran` int(11) NOT NULL,
  `kamar_kategori` int(11) NOT NULL,
  `kamar_jumlah` int(11) NOT NULL,
  `kamar_keterangan` text NOT NULL,
  `kamar_harga` int(11) NOT NULL,
  `kamar_foto1` varchar(255) NOT NULL,
  `kamar_foto2` varchar(255) NOT NULL,
  `kamar_foto3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`kamar_id`, `kamar_nama`, `kamar_ranjang`, `kamar_ukuran`, `kamar_kategori`, `kamar_jumlah`, `kamar_keterangan`, `kamar_harga`, `kamar_foto1`, `kamar_foto2`, `kamar_foto3`) VALUES
(2, 'Economic Room', 'Double', 46, 3, 3, '', 500000, '1585810678_pexels-pixabay-271618.jpg', '2046335240_pexels-pixabay-271619(1).jpg', '2046335240_pexels-max-vakhtbovych-6538889.jpg'),
(3, 'King Super Delux On', 'King', 45, 10, 10, '<p>Silahkan isi keterangan detail tentang kamar disini<br></p>', 700000, '1776783477_pexels-naim-benjelloun-2029719.jpg', '1776783477_pexels-max-vakhtbovych-6585603.jpg', '1776783477_pexels-julie-aagaard-2467285.jpg'),
(4, 'Double Economic Delux', 'Double', 30, 3, 5, '', 350000, '1200973631_pexels-max-vakhtbovych-6585604.jpg', '', ''),
(5, 'Single Titanium Superior', 'Single', 25, 11, 7, '', 500000, '2072439600_pexels-max-vakhtbovych-6538935.jpg', '', ''),
(6, 'Single Economic Delux', 'Single', 25, 3, 3, '', 200000, '1298987203_pexels-max-vakhtbovych-6585760.jpg', '', ''),
(7, 'Double Premium Super Delux', 'Double', 30, 10, 4, '', 350000, '1580918857_pexels-suhel-vba-3659683.jpg', '', ''),
(8, 'King Economic Delux', 'King', 45, 3, 3, '', 400000, '789769088_pexels-rachel-claire-8112351.jpg', '', ''),
(9, 'Kamar spesial', 'Double', 200, 11, 5, '<p>kamar ini sangat luas dan sangat cocok untuk anda yang sedang lliburan bersama keluarga<br></p>', 1000000, '407677167_inhabitat.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar_fasilitas`
--

CREATE TABLE `kamar_fasilitas` (
  `kf_id` int(11) NOT NULL,
  `kf_kamar` int(11) NOT NULL,
  `kf_fasilitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kamar_fasilitas`
--

INSERT INTO `kamar_fasilitas` (`kf_id`, `kf_kamar`, `kf_fasilitas`) VALUES
(11, 2, 18),
(12, 2, 3),
(13, 2, 12),
(14, 2, 7),
(15, 2, 6),
(16, 2, 16),
(17, 2, 17),
(127, 8, 3),
(128, 8, 17),
(129, 8, 13),
(130, 8, 4),
(131, 8, 10),
(132, 8, 19),
(133, 8, 9),
(166, 4, 18),
(167, 4, 3),
(168, 4, 12),
(169, 4, 7),
(170, 4, 6),
(171, 4, 5),
(172, 4, 14),
(173, 4, 16),
(174, 4, 17),
(175, 4, 11),
(176, 4, 4),
(177, 4, 10),
(178, 4, 19),
(179, 4, 8),
(180, 4, 9),
(197, 7, 18),
(198, 7, 3),
(199, 7, 12),
(200, 7, 7),
(201, 7, 6),
(202, 7, 5),
(203, 7, 14),
(204, 7, 16),
(205, 7, 17),
(206, 7, 13),
(207, 7, 11),
(208, 7, 4),
(209, 7, 10),
(210, 7, 19),
(211, 7, 8),
(212, 7, 9),
(222, 9, 18),
(223, 9, 3),
(224, 9, 12),
(225, 9, 7),
(226, 9, 6),
(227, 9, 5),
(228, 9, 14),
(229, 9, 16),
(230, 9, 17),
(239, 6, 12),
(240, 6, 14),
(241, 6, 16),
(242, 6, 17),
(243, 6, 13),
(244, 6, 11),
(245, 6, 8),
(246, 6, 9),
(247, 5, 18),
(248, 5, 3),
(249, 5, 12),
(250, 5, 7),
(251, 5, 6),
(252, 5, 5),
(253, 5, 16),
(254, 5, 17),
(255, 5, 13),
(256, 5, 11),
(257, 5, 4),
(258, 5, 19),
(259, 5, 8),
(260, 5, 9),
(261, 3, 18),
(262, 3, 3),
(263, 3, 12),
(264, 3, 7),
(265, 3, 6),
(266, 3, 5),
(267, 3, 14),
(268, 3, 16),
(269, 3, 17),
(270, 3, 13),
(271, 3, 11),
(272, 3, 4),
(273, 3, 10),
(274, 3, 19),
(275, 3, 8),
(276, 3, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar_pengunjung`
--

CREATE TABLE `kamar_pengunjung` (
  `nama_kamar` varchar(30) NOT NULL,
  `jumlah_pengunjung` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kamar_pengunjung`
--

INSERT INTO `kamar_pengunjung` (`nama_kamar`, `jumlah_pengunjung`) VALUES
('Kamar spesial', 2),
('King Economic Delux', 1),
('Double Premium Super Delux', 3),
('Single Economic Delux', 1),
('Single Titanium Superior', 3),
('Double Economic Delux', 4),
('King Super Delux On', 4),
('Economic Room', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(3, 'Delux'),
(10, 'Super Delux'),
(11, 'Superior');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_tambahan`
--

CREATE TABLE `layanan_tambahan` (
  `lt_id` int(11) NOT NULL,
  `lt_nama` varchar(255) NOT NULL,
  `lt_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `layanan_tambahan`
--

INSERT INTO `layanan_tambahan` (`lt_id`, `lt_nama`, `lt_harga`) VALUES
(1, 'Bed Extra', 100000),
(3, 'Laundry', 100000),
(4, 'SPA', 200000),
(5, 'Antar Jemput Bandara', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating_tanggal` date NOT NULL,
  `rating_invoice` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`rating_id`, `rating_tanggal`, `rating_invoice`, `rating`, `rating_review`) VALUES
(44, '2021-06-03', 2, 4, 'Kamar rapi dan murah'),
(45, '2023-01-06', 6, 5, 'kamar nya sangat bagus dan bersih. sangat memuaskan. pelayanan juga baik'),
(47, '2023-06-06', 7, 5, '-anjay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resepsionis`
--

CREATE TABLE `resepsionis` (
  `resepsionis_id` int(11) NOT NULL,
  `resepsionis_nama` varchar(100) NOT NULL,
  `resepsionis_username` varchar(100) NOT NULL,
  `resepsionis_password` varchar(100) NOT NULL,
  `resepsionis_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `resepsionis`
--

INSERT INTO `resepsionis` (`resepsionis_id`, `resepsionis_nama`, `resepsionis_username`, `resepsionis_password`, `resepsionis_foto`) VALUES
(2, 'Adib', 'resepsionis', '3aeff485f68b360d076de3d73f9247ad', '575119939_we-bare-bears-cartoon-wallpaper-preview (1).jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`fh_id`);

--
-- Indeks untuk tabel `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`fk_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kamar_id`);

--
-- Indeks untuk tabel `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  ADD PRIMARY KEY (`kf_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indeks untuk tabel `resepsionis`
--
ALTER TABLE `resepsionis`
  ADD PRIMARY KEY (`resepsionis_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `fh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  MODIFY `fk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `kamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  MODIFY `kf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `layanan_tambahan`
--
ALTER TABLE `layanan_tambahan`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `resepsionis`
--
ALTER TABLE `resepsionis`
  MODIFY `resepsionis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
