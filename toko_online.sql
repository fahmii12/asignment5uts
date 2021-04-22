-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2021 pada 00.50
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) DEFAULT NULL,
  `keterangan` varchar(225) DEFAULT NULL,
  `kategori` varchar(60) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(4) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Polo shirt', 'prada polo shirt blue', 'Pakaian pria', 2950000, 2, 'pradablue.jpg'),
(2, 'Tshirt', 'balenciaga speedhunter\r\nsize: XS Oversize', 'Pakaian pria', 3200000, 1, 'bln.jpg'),
(3, 'Jacket zip', 'GC G Geometric Jacquard Zip Size S - 50cm\r\nSize M - 52cm', 'Pakaian pria', 15350000, 1, 'jkt.jpg'),
(4, 'Tas Wanita', 'Mini GG Marmont Chain Shoulder Bag in Black GHW', 'Accessoris wanita', 13250000, 1, 'tas.jpg'),
(5, 'Sandal', 'GVN Sandal Slide Logo Women\r\nColor : Black logo purple\r\n\r\nSize 35 - 22cm\r\nSize 36 - 23cm\r\nSize 37 - 24cm\r\nSize 38 - 25cm\r\nSize 39 - 26cm\r\n', 'Accessoris pria', 3300000, 1, 'gvn.jpg'),
(6, 'Sepatu Wanita', 'GG Platform Lace Up Espadrille Wedge Sandals 85mm in Blue Denim/Ivory/Brown\r\n\r\nSize 37\r\nSize 37.5\r\nSize 38\r\nSize 38.5\r\n', 'Sepatu Wanita', 6150000, 1, 'swg.jpg'),
(7, 'Sepatu Pria', 'CD Oblique Solar Sneaker\r\n\r\nColor : Blue\r\n\r\nSize 36 - 23.8cm\r\nSize 37 - 24.5cm\r\nSize 39 - 25.8cm\r\nSize 40 - 26.5cm\r\nSize 41 - 27.1cm\r\n', 'Sepatu Pria', 11400000, 1, 'spcd.jpg'),
(8, 'Sabuk Pria', 'FND Reversible Belt FF Logo\r\n\r\nSize 105, 110\r\n', 'Accessoris Pria', 5150000, 1, 'sbfnd.jpg'),
(9, 'Topi', 'CD Oblique Baseball Cap in Deep Blue Multicolors Canvas  Size L', 'Accessories Pria', 8200000, 2, 'tpi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role_id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(0, 'admin', 'admin', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
