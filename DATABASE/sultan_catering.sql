-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 09:04 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sicateringv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_pembayaran`
--

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pembayaran`
--

INSERT INTO `info_pembayaran` (`id`, `info`) VALUES
(1, 'Silahkan lakukan pembayaran DP 50% terlebih dahulu sebelum hari H.\r\nJika tidak maka transaksi akan di batalkan.\r\n\r\nPembayaran Bisa Melalui Rekening Di Bawah Ini:\r\nNama Bank: Bank Negara Indonesia (BNI). \r\nNo. Rek: 0449753964\r\nNama: ADI GUNAWAN. \r\nKode Bank: 009. \r\nKode Swift: BNINIDJA. \r\n\r\nKemudian lakukan konfirmasi di menu konfirmasi pembayaran.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`) VALUES
(6, 'Makanan', 'Produk satuan'),
(7, 'Paket Catering', 'Produk Nasi + Lauk'),
(8, 'MInuman', 'Produk Satuan');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`) VALUES
(10, '', 'mshodiqul@gmail.com', '', ''),
(11, '', 'mshodiqul@gmail.com', '', ''),
(12, '', 'mshodiqul@gmail.com', '', ''),
(13, '', 'mshodiqul@gmail.com', '', ''),
(14, '', 'mshodiqul@gmail.com', '', ''),
(15, '', 'meryayu@gmail.com', '', ''),
(16, '', 'aku@gmail.com', '', ''),
(17, '', 'aku@gmail.com', '', ''),
(18, '', 'aku@gmail.com', '', ''),
(19, '', 'aku@gmail.com', '', ''),
(20, '', 'aku@gmail.com', '', ''),
(21, '', 'aku@gmail.com', '', ''),
(22, '', 'aku@gmail.com', '', ''),
(23, '', 'admin@gmail.com', '', ''),
(24, '', 'admin@gmail.com', '', ''),
(25, '', 'admin@gmail.com', '', ''),
(26, '', 'admin@gmail.com', '', ''),
(27, '', 'user@gmail.com', '', ''),
(28, '', 'admin@gmail.com', '', ''),
(29, '', 'admin@gmail.com', '', ''),
(30, '', 'admin@gmail.com', '', ''),
(31, '', 'user@gmail.com', '', ''),
(32, '', 'user@user.com', '', ''),
(33, '', 'user@gmail.com', '', ''),
(34, '', 'admin@gmail.com', '', ''),
(35, '', 'user1@gmail.com', '', ''),
(36, '', 'admin@gmail.com', '', ''),
(37, '', 'user1@gmail.com', '', ''),
(38, '', 'user1@gmail.com', '', ''),
(39, '', 'pembeli@gmail.com', '', ''),
(40, '', 'admin@gmail.com', '', ''),
(41, '', 'user@gmail.com', '', ''),
(43, '', 'pembeli@gmail.com', '', ''),
(44, '', 'pembeli@gmail.com', '', ''),
(50, '', 'user1@gmail.com', '', ''),
(51, '', 'rifki@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`, `ongkir`) VALUES
(2, 'Semarang', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pesanan`, `id_user`, `file`, `total`, `status`, `keterangan`, `created_at`) VALUES
(3, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad45.jpg', 200000, 'verified', 'Contoh Pembayaran', '0000-00-00 00:00:00'),
(4, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 200000, 'verified', 'Pembayaran Ke Dua', '2016-09-30 15:58:35'),
(5, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 107500, 'verified', 'Terakhir', '2016-09-30 16:10:33'),
(6, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 300000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:16:32'),
(7, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad44.jpg', 40000, 'verified', 'Pembayaran Terakhir', '2016-09-30 16:24:01'),
(8, 19, 4, '49eb6a44db57cba8d66b3404fa9f0ad4buttons.png', 520000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:34:54'),
(9, 25, 6, '49eb6a44db57cba8d66b3404fa9f0ad4urmain.exe', 740000, 'verified', 'ngaceng', '2017-12-04 09:14:10'),
(10, 26, 7, '49eb6a44db57cba8d66b3404fa9f0ad4user.png', 122500, 'verified', 'Transfer dari Bank BNI', '2020-10-07 19:47:15'),
(11, 26, 7, '49eb6a44db57cba8d66b3404fa9f0ad4user.png', 122500, 'verified', 'Sudah', '2020-10-07 19:47:53'),
(12, 27, 10, '49eb6a44db57cba8d66b3404fa9f0ad4favicon.png', 235000, 'verified', 'Bank BNI', '2020-10-09 23:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `tanggal_digunakan`, `user_id`, `nama`, `alamat`, `kota`, `ongkir`, `telephone`, `read`, `status`) VALUES
(17, '2016-09-30 08:27:51', '2016-10-04 07:00:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(18, '2016-09-30 11:15:02', '2016-10-05 08:02:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(19, '2016-09-30 11:34:22', '2016-10-07 07:00:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(20, '2016-10-03 04:53:05', '2016-10-11 09:00:00', 5, 'Mery Ayu Nurita', 'Semarang aja', 'Semarang', 40000, '089688899260', '1', 'belum lunas'),
(27, '2020-10-09 18:34:43', '2020-10-13 00:00:00', 10, 'user1', 'padang', 'Semarang', 40000, '08123', '1', 'lunas'),
(29, '2020-10-28 14:02:10', '2020-10-31 00:00:00', 8, 'User Jono', 'Padang', 'Semarang', 40000, '085381259365', '1', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`, `kategori_produk_id`) VALUES
(1, 'Paket 1', 'Nasi + Daging Sapi + Prekedel Kentang + Oreg Tempe + Sambal', '49eb6a44db57cba8d66b3404fa9f0ad4paket 1.jpeg', '22000', 7),
(2, 'Paket 2', 'Nasi + Daging Ayam + Sayur + Tahu', '49eb6a44db57cba8d66b3404fa9f0ad4paket 2.jpeg', '18000', 7),
(3, 'Paket 3', 'Nasi + Sayur + Tempe + Ikan + Lalap + Sambal', '49eb6a44db57cba8d66b3404fa9f0ad4paket 3.jpeg', '18000', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(2, 'Jokowi', 'joko@gmail.com', '08985432330', 'jakarta 1', '7d00ff54a263fe80825b9297804a982c', 'user'),
(3, 'Putri Delvia', 'putri@gmail.com', '08985432330', 'semarang selatan', '82682943a05de360abb183236c632bd6', 'user'),
(4, 'Shodiqul Muzaki', 'mshodiqul@gmail.com', '087717495260', 'karangasem', 'a63ae42a413740542ce47bb20a124438', 'user'),
(5, 'Mery Ayu Nurita', 'meryayu@gmail.com', '089688899260', 'Semarang aja', 'a63ae42a413740542ce47bb20a124438', 'user'),
(8, 'User Jono', 'user@gmail.com', '085381259365', 'Padang', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(9, 'Administrator', 'admin@gmail.com', '085381259356', 'Sungai Penuh', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(10, 'user1', 'user1@gmail.com', '08123', 'padang', '24c9e15e52afc47c225b757e7bee1f9d', 'user'),
(11, 'rifki', 'rifki@gmail.com', '132345656', 'subang', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`,`kategori_produk_id`),
  ADD KEY `kategori_produk_id` (`kategori_produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
