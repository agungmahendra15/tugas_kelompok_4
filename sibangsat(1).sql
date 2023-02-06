-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2016 at 12:21 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sibangsat`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE IF NOT EXISTS `bagian` (
  `id_bagian` int(8) NOT NULL AUTO_INCREMENT,
  `nama_bagian` varchar(16) NOT NULL,
  PRIMARY KEY (`id_bagian`),
  UNIQUE KEY `nama_bagian` (`nama_bagian`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `nama_bagian`) VALUES
(7, 'administrator'),
(9, 'gudang'),
(8, 'manajer'),
(10, 'pesanan'),
(11, 'produksi');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(16) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(32) NOT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `nama_barang` (`nama_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`) VALUES
(44, 'advice debet'),
(57, 'advice kredit'),
(52, 'amplop cokelat besar (E)'),
(51, 'amplop coklat folio (D)'),
(49, 'amplop coklat kecil (A)'),
(50, 'amplop coklat sedang (C)'),
(42, 'amplop kabinet kaca'),
(41, 'amplop kabinet tanpa kaca'),
(38, 'amplop kantong uang besar'),
(53, 'amplop kantong uang kecil'),
(54, 'amplop kantong uang kecil (bertu'),
(55, 'amplop kantong uang sedang (bert'),
(56, 'amplop plastik deposito (biru)'),
(47, 'amplop putih kabinet'),
(48, 'amplop putih kaca kabinet'),
(124, 'apl.pemb.rek giro (badan)'),
(78, 'apl.pemb.rek. tabungan rencana m'),
(114, 'aplikasi &SK perdebetan direct d'),
(73, 'aplikasi kartu kredit mandiri'),
(74, 'aplikasi keluhan nasabah'),
(63, 'Aplikasi pemb.rek.non perorangan'),
(62, 'aplikasi pemb.rek.perorangan (BP'),
(132, 'aplikasi pemb.rek.prod.dana P (l'),
(102, 'aplikasi pembuka deposito'),
(31, 'aplikasi pembukaan rekening prod'),
(75, 'aplikasi sms banking & internet '),
(129, 'aplikasi tabungan rencana mandir'),
(29, 'aplikasi umum'),
(35, 'ban uang Rp 100.000'),
(36, 'ban uang Rp 50.000'),
(113, 'brosur tabungan mandiri'),
(25, 'bukti setoran tunai'),
(127, 'form aplikasi mandiri internet b'),
(64, 'form aplikasi umum'),
(128, 'form bill payment / DIRECT DEBET'),
(83, 'form bukti penyerahan'),
(107, 'form IBT masuk'),
(30, 'form keluhan nasabah'),
(101, 'form keluhan Visa'),
(117, 'form klaim asuransi sinarmas'),
(136, 'form konfirmasi penarikan'),
(40, 'form kunjungan nasabah mikro'),
(99, 'form kunjungan nasabah safe D Bo'),
(95, 'form laporam uang palsu,'),
(135, 'form mandiri internet bisnis'),
(122, 'form mandiri sekuritas'),
(27, 'form multi payment'),
(96, 'form pembayaran KKN'),
(90, 'form pembayaran pajak'),
(123, 'form pembayaran pajak (1/2 hal u'),
(91, 'form pembayaran telpon'),
(120, 'form pembelian, reksa dana'),
(119, 'form pembukaan reksa dana mandir'),
(134, 'form pemesanan pembelian unit pe'),
(26, 'form penarikan'),
(121, 'form penjualan kembali reksa dan'),
(71, 'form penutupan kartu kredit'),
(87, 'form perpanjangan otomatis depos'),
(133, 'form praktis "cab. pandanaran"'),
(39, 'form praktis 2 PLY'),
(130, 'form praktis 3 PLY'),
(106, 'form SBMPTN'),
(105, 'form SUKUK'),
(88, 'form tabungan haji'),
(89, 'form transaksi antar teller'),
(110, 'form transaksi singkat'),
(82, 'form wakat penyerahan'),
(126, 'form WALK IN CUSTUMER'),
(112, 'informasi penggantian buku tabun'),
(111, 'informasi penggantian kartu ATM'),
(60, 'internal credit (hvs)'),
(61, 'internal credit (NCR)'),
(58, 'internal Debet (HVS)'),
(59, 'internal Debet (NCR)'),
(81, 'kartu nama'),
(118, 'KMS (money Trans S)'),
(43, 'kop surat'),
(46, 'kop surat mandiri (hal 2)'),
(45, 'kop surat mandiri (hal1)'),
(92, 'KTP khusus pengambilan ridho'),
(93, 'KTPI Khusus percetakan transaksi'),
(131, 'kuitansi'),
(67, 'laporan teller pagi'),
(68, 'laporan teller pagi (NCR)'),
(70, 'laporan teller sore '),
(69, 'laporan teller sore (NCR)'),
(109, 'memo setoran tunai'),
(94, 'nota pembelian /penjualan paluta'),
(72, 'pembayaran kartu kredit mandiri'),
(84, 'rekening koran'),
(24, 'setoran transfer rangkap 3'),
(65, 'setoran/transfer/kliring/inkaso'),
(34, 'speciment TT'),
(115, 'sticker DALAM PENGAWASAN (CRC)'),
(79, 'sticker registrasi'),
(80, 'sticker registrasi (spotlight)'),
(116, 'sticker sealed uang'),
(108, 'sticker sortir uang (Cab KIC)'),
(103, 'stomap gantung (pink)'),
(104, 'stop map 2color (biru-kuning)'),
(85, 'stop map rekening giro'),
(86, 'stopmap rekening mandiri'),
(98, 'surat pernyataan TPDPN'),
(33, 'syarat khusus'),
(125, 'syarat khusus Giro (badan)'),
(77, 'syarat khusus Giro Rupiah'),
(76, 'syarat khusus pemb.rek.tabungan'),
(97, 'syarat khusus rekening giro (2 s'),
(100, 'syarat khusus rekening tabungan'),
(32, 'syarat umum'),
(66, 'syarat umum pemb.rek.tabungan'),
(28, 'transaksi antar teller');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nama_pegawai` varchar(32) NOT NULL,
  `alamat_pegawai` varchar(64) NOT NULL,
  `hp_pegawai` varchar(16) NOT NULL,
  `id_bagian` int(8) NOT NULL,
  PRIMARY KEY (`id_pegawai`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`, `nama_pegawai`, `alamat_pegawai`, `hp_pegawai`, `id_bagian`) VALUES
(7, 'admin', 'admin', 'administrator', 'kantor', '085214021108', 1),
(9, 'satria', 'admin', 'satria', 'semarang', '085214021108', 7),
(10, 'amir', 'amir', 'amir', 'semarang', '08080808', 8),
(11, 'anin', 'pemesanan', 'anin', 'semarang', '004859', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pesanan` int(16) NOT NULL AUTO_INCREMENT,
  `nama_pemesan` varchar(32) NOT NULL,
  `id_barang` int(16) NOT NULL,
  `jumlah_pesanan` varchar(16) NOT NULL,
  `proses` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pesanan`),
  UNIQUE KEY `id_pesanan` (`id_pesanan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `nama_pemesan`, `id_barang`, `jumlah_pesanan`, `proses`) VALUES
(56, 'mandiri cabang pahlawan', 24, '200', 1),
(57, 'mandiri cabang pahlawan', 25, '100', 1),
(58, 'mandiri cabang pahlawan', 26, '50', 1),
(59, 'mandiri cabang pahlawan', 27, '50', 1),
(60, 'mandiri cabang pahlawan', 28, '50', 1),
(61, 'mandiri cabang pahlawan', 29, '25', 1),
(62, 'mandiri cabang pahlawan', 30, '20', 1),
(63, 'mandiri cabang pahlawan', 31, '450', 0),
(64, 'mandiri cabang pahlawan', 32, '500', 0),
(65, 'mandiri cabang pahlawan', 33, '500', 0),
(66, 'mandiri cabang pahlawan', 34, '500', 0),
(67, 'mandiri cabang pahlawan', 35, '6000', 0),
(68, 'mandiri cabang pahlawan', 36, '6000', 0),
(69, 'mandiri cabang pahlawan', 37, '500', 0),
(70, 'mandiri cabang pahlawan', 38, '500', 0),
(71, 'mandiri cabang pandanaran', 24, '100', 0),
(72, 'mandiri cabang pandanaran', 25, '100', 0),
(73, 'mandiri cabang pandanaran', 26, '50', 0),
(74, 'mandiri cabang pandanaran', 27, '50', 0),
(75, 'mandiri cabang pandanaran', 28, '50', 0),
(76, 'mandiri cabang pandanaran', 29, '20', 0),
(77, 'mandiri cabang pandanaran', 30, '20', 0),
(78, 'mandiri cabang pandanaran', 39, '50', 0),
(79, 'mandiri cabang pandanaran', 31, '500', 0),
(80, 'mandiri cabang pandanaran', 32, '500', 0),
(81, 'mandiri cabang pandanaran', 33, '500', 0),
(82, 'mandiri cabang pandanaran', 34, '500', 0),
(83, 'mandiri cabang candi baru', 24, '100', 0),
(84, 'mandiri cabang candi baru', 25, '50', 0),
(85, 'mandiri cabang candi baru', 26, '30', 0),
(86, 'mandiri cabang candi baru', 27, '30', 0),
(87, 'mandiri cabang candi baru', 28, '30', 0),
(88, 'mandiri cabang candi baru', 29, '20', 0),
(89, 'mandiri cabang candi baru', 30, '20', 0),
(90, 'mandiri cabang candi baru', 31, '500', 0),
(91, 'mandiri cabang candi baru', 32, '500', 0),
(92, 'mandiri cabang candi baru', 32, '500', 0),
(93, 'mandiri cabang candi baru', 34, '500', 0),
(94, 'mandiri cabang candi baru', 35, '6000', 0),
(95, 'mandiri cabang candi baru', 36, '6000', 0),
(96, 'mandiri cabang candi baru', 38, '300', 0),
(97, 'mandiri cabang candi baru', 37, '300', 0),
(98, 'mandiri', 101, '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE IF NOT EXISTS `pengambilan` (
  `id_pengambilan` int(16) NOT NULL AUTO_INCREMENT,
  `nama_pengambil` varchar(32) NOT NULL,
  `id_barang` int(16) NOT NULL,
  `jumlah_pengambilan` varchar(16) NOT NULL,
  PRIMARY KEY (`id_pengambilan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `nama_pengambil`, `id_barang`, `jumlah_pengambilan`) VALUES
(4, 'mandiri cabang pahlawan', 24, '200'),
(5, 'mandiri cabang pahlawan', 25, '100');

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE IF NOT EXISTS `produksi` (
  `id_produksi` int(16) NOT NULL AUTO_INCREMENT,
  `id_pesanan` int(16) NOT NULL,
  `id_barang` int(16) NOT NULL,
  `jumlah_produksi` varchar(16) NOT NULL,
  `lead_time` varchar(4) NOT NULL,
  PRIMARY KEY (`id_produksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_produksi`, `id_pesanan`, `id_barang`, `jumlah_produksi`, `lead_time`) VALUES
(69, 96, 38, '600', '1'),
(70, 70, 38, '1000', '3'),
(71, 69, 37, '1000', '3'),
(72, 69, 37, '1000', '3'),
(73, 97, 37, '600', '2'),
(74, 90, 31, '1050', '3'),
(75, 79, 31, '1000', '3'),
(76, 63, 31, '1000', '3'),
(77, 76, 29, '55', '1'),
(78, 88, 29, '50', '1'),
(79, 61, 29, '50', '1'),
(80, 94, 35, '5000', '4'),
(81, 67, 35, '6000', '4'),
(82, 68, 36, '6000', '4'),
(83, 95, 36, '5000', '4'),
(84, 57, 25, '98', '1'),
(85, 72, 25, '200', '1'),
(86, 84, 25, '50', '1'),
(87, 62, 30, '30', '1'),
(88, 77, 30, '30', '1'),
(89, 89, 30, '30', '1'),
(90, 86, 27, '30', '1'),
(91, 59, 27, '40', '1'),
(92, 73, 26, '100', '1'),
(93, 85, 26, '50', '1'),
(94, 58, 26, '100', '1'),
(95, 78, 39, '100', '1'),
(96, 71, 24, '200', '1'),
(97, 83, 24, '200', '1'),
(98, 56, 24, '200', '1'),
(99, 93, 34, '1000', '3'),
(100, 82, 34, '1000', '3'),
(101, 66, 34, '200', '1'),
(102, 65, 33, '500', '2'),
(103, 81, 33, '1000', '1'),
(104, 91, 32, '500', '2'),
(105, 80, 32, '500', '2'),
(106, 64, 32, '500', '2'),
(107, 92, 32, '1000', '3'),
(108, 92, 32, '1000', '3'),
(109, 87, 28, '50', '1'),
(110, 60, 28, '100', '1'),
(111, 75, 28, '50', '1'),
(112, 97, 37, '300', '1'),
(113, 56, 24, '210', '2'),
(114, 56, 24, '210', '2'),
(115, 56, 24, '210', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
