-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jul 2020 pada 15.45
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e-arsip_smkdh`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE IF NOT EXISTS `disposisi` (
  `id_disposisi` int(11) NOT NULL AUTO_INCREMENT,
  `pengisi` varchar(50) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `instruksi` varchar(300) NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `id_suratmasuk` int(3) NOT NULL,
  PRIMARY KEY (`id_disposisi`),
  KEY `id_suratmasuk` (`id_suratmasuk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `pengisi`, `tujuan`, `instruksi`, `catatan`, `id_suratmasuk`) VALUES
(9, 'Kepala Pusda', '', '', 'Penting', 2),
(18, 'Staff Tata Usaha', 'Humas', '', 'terima', 30),
(19, 'Kepala Perpusda', 'Humas', '', 'terima', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `indeks`
--

CREATE TABLE IF NOT EXISTS `indeks` (
  `id_indeks` int(3) NOT NULL AUTO_INCREMENT,
  `kode_indeks` varchar(5) NOT NULL,
  `judul_indeks` varchar(50) NOT NULL,
  `detail` varchar(512) NOT NULL,
  PRIMARY KEY (`id_indeks`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data untuk tabel `indeks`
--

INSERT INTO `indeks` (`id_indeks`, `kode_indeks`, `judul_indeks`, `detail`) VALUES
(1, 'RNCN', 'Perencanaan', ''),
(2, 'UANG', 'Keuangan', '0'),
(10, 'SRN', 'Sarana dan Prasarana', ''),
(19, 'PGW', 'Kepegawaian', ''),
(20, 'LNGKP', 'Perlengkapan', 'Ini detail perlengkapan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratkeluar`
--

CREATE TABLE IF NOT EXISTS `suratkeluar` (
  `id_suratkeluar` int(5) NOT NULL AUTO_INCREMENT,
  `no_suratkeluar` varchar(60) NOT NULL,
  `judul_suratkeluar` varchar(100) NOT NULL,
  `id_indeks` int(3) NOT NULL,
  `tujuan` varchar(60) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `berkas_suratkeluar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_suratkeluar`),
  KEY `id_subindeks` (`id_indeks`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratmasuk`
--

CREATE TABLE IF NOT EXISTS `suratmasuk` (
  `id_suratmasuk` int(3) NOT NULL AUTO_INCREMENT,
  `no_suratmasuk` varchar(60) NOT NULL,
  `judul_suratmasuk` varchar(100) NOT NULL,
  `asal_surat` varchar(60) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `id_indeks` int(3) NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `berkas_suratmasuk` varchar(255) NOT NULL,
  PRIMARY KEY (`id_suratmasuk`),
  KEY `id_subindeks` (`id_indeks`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `suratmasuk`
--

INSERT INTO `suratmasuk` (`id_suratmasuk`, `no_suratmasuk`, `judul_suratmasuk`, `asal_surat`, `tanggal_masuk`, `tanggal_diterima`, `id_indeks`, `keterangan`, `berkas_suratmasuk`) VALUES
(31, '5f144d67bf174', 'Permintaan Magang di Perpusda', 'STT Pagar Alam', '2020-07-19', '2020-07-19', 19, 'Magang', '5f144d7b2d7f0.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `bio` varchar(512) NOT NULL,
  `facebook` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `image`, `bio`, `facebook`, `email`, `level`) VALUES
(7, 'nadiya', '0665164b4fb960bd4dd93b19c586d645e5cf051a', 'Nadiya Citra Dewi', '', '', '', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
