-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2023 pada 05.53
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `id_booking`, `id_buku`) VALUES
(1, '05052020001', 5),
(2, '05052020001', 2),
(3, '05052020001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Marmut Merah Jambu', 9, 'Raditya Dika', 'Bukune', 2010, '9786028066648', 7, 1, -3, '1.jfif'),
(2, 'TEOLOGI AGAMA-AGAMA', 11, 'Dr. Wendy Sepmady Hutahaean, S.E., M.Th.', 'Ahlimedia Book', 2021, '9786236749944', 12, 2, -1, '2.jfif'),
(3, 'Gandhi The Man, His People, and the Empire', 14, 'Rajmohan Gandhi', 'University of California Press', 2008, '9780520255708', 3, 1, 0, '3.jfif'),
(4, 'Buku Jago Sepak Bola', 4, 'Reki Siaga Agustina, M.Pd., AIFO-P', 'Cemerlang', 2020, '9786239174033', 6, 2, 1, '4.jfif'),
(5, 'The Last Wish Introducing the Witcher', 12, 'Andrzej Sapkowski', 'Orbit', 2019, '9780316497541', 7, 1, 1, '5.jfif'),
(6, 'Space, Time, and Stuff', 3, 'Frank Arntzenius, Cian Seán Dor', 'OUP Oxford', 2012, '9780199696604', 9, 5, 0, '6.jfif'),
(7, 'Education, Music, and the Lives of Undergraduates', 13, 'Roger Mantie, Brent C. Talbot', 'Bloomsbury Publishing', 2020, '9781350169241', 4, 0, 2, '7.jfif'),
(8, 'Black Clover, Vol. 4', 8, 'Yuki Tabata', 'VIZ Media LLC', 2016, '9781421590233', 6, 1, 4, '8.jfif'),
(9, 'ONE PIECE 81', 8, 'Eiichiro Oda', 'Elex Media Komputindo', 2017, '9786020434032', 9, 4, 3, '9.jfif'),
(10, 'Milea, suara dari Dilan', 10, 'Pidi Baiq', 'PT Mizan Pustaka', 2016, '9786020851563', 6, 0, 5, '10.jfif'),
(11, 'Programming in Python 3', 1, 'Addison-Wesley', 'Mark Summerfield', 2010, '9780321680563', 3, 1, 0, '11.jfif'),
(12, 'Sejarah Lengkap Perang Dunia I', 15, 'Alfi Arifian', 'Anak Hebat Indonesia', 2020, '9786232443464', 6, 3, 0, '12.jfif'),
(13, 'Mudah Belajar Bahasa Jepang Melalui Anime', 2, 'Emiliana Dewi Aryani', 'TransMedia', 2014, '9789797992798', 10, 2, 1, '13.jfif'),
(14, 'KUMPULAN DONGENG NUSANTARA FAVORIT', 5, 'Astri Damayanti', 'Puspa Swara', 2015, '9789791475044', 3, 0, 0, '14.jfif'),
(15, 'Sistem Hukum Indonesia', 7, 'Handri Raharjo, S. H., M. H.', 'Media Pressindo', 2018, '9789793411835', 6, 2, 0, '15.jfif'),
(16, 'Cara Cepat Investasi Saham Pemula', 6, 'Sawidji Widioatmodjo', 'Elex Media Komputindo', 2014, '9786020020280', 3, 1, 1, '16.jfif'),
(17, 'What About Law? Studying Law at University', 7, 'Catherine Barnard, Janet O\'Sullivan, Graham Virgo', 'Bloomsbury Academic', 2021, '9781509950102', 2, 0, 0, '17.jfif'),
(18, 'Kembalinya sang raja', 12, 'John Ronald Reuel Tolkien', 'Gramedia Pustaka Utama', 2003, '9789792205565', 4, 1, 0, '18.jfif'),
(19, 'Pemrograman Java dari Nol', 1, 'Tim EMS', 'Elex Media Komputindo', 2015, '9786020275291', 1, 0, 1, '19.jfif'),
(20, 'Agama Hindu Dan Budha', 11, 'Harun Hadiwijono Dr.', 'BPK Gunung Mulia', 2010, '9789796872930', 2, 1, 0, '20.jfif'),
(21, 'Cristiano Ronaldo The Biography', 14, 'Guillem Balague', 'Orion', 2015, '9781409155072', 2, 0, 0, '21.jfif'),
(22, 'Koreksi Tuntas Buku 37 Masalah Populer', 9, 'Abdurrahman Al-Mukaffi', 'Darul Falah', 2019, '9786029208351', 8, 3, 1, '22.jfif'),
(23, 'Buku Jago Bola Voli', 4, 'Ikbal Tawakal', 'Ilmu Cemerlang Group', 2020, '9786239174040', 1, 0, 0, '23.jfif'),
(24, 'Dilan', 10, 'Pidi Baiq', 'DAR! Mizan', 2015, '9786027870413', 4, 3, 0, '24.jfif'),
(25, 'The Batman Adventures', 8, 'Kelley Puckett, Martin Pasko', 'DC Comics', 2014, '9781401252298', 2, 0, 0, '25.jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('19052020001', 2, 5000),
('19052020002', 2, 5000),
('23102022003', 1, 5000),
('28112022004', 2, 5000),
('12122022005', 2, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Olahraga'),
(5, 'Dongeng'),
(6, 'Bisnis'),
(7, 'Hukum'),
(8, 'Komik'),
(9, 'Populer'),
(10, 'Novel'),
(11, 'Agama'),
(12, 'Fiksi'),
(13, 'Musik'),
(14, 'Biografi'),
(15, 'Sejarah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Utility'),
(5, 'Buku'),
(6, 'Anggota'),
(7, 'Laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') CHARACTER SET utf8mb4 NOT NULL,
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('12122022005', '2022-12-12', '12122022001', 18, '2022-12-15', '0000-00-00', 'Pinjam', 0),
('19052020001', '2020-05-19', '19052020001', 22, '2020-05-22', '2022-12-12', 'Kembali', 0),
('19052020002', '2020-05-19', '19052020001', 23, '2020-05-22', '2022-12-12', 'Kembali', 0),
('23102022003', '2022-10-23', '23102022001', 18, '2022-10-26', '0000-00-00', 'Pinjam', 0),
('28112022004', '2022-11-28', '28112022001', 18, '2022-12-01', '0000-00-00', 'Pinjam', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `alamat`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(18, 'Fajar Adipangestu', 'fajar13@gmail.com', '', 'default.jpg', '$2y$10$PJA5C5uG6EzoBH75Fafc3ee8/ZAy6sIzh0L291ibEX0HEM9ny/VIO', 1, 1, 1654216517),
(19, 'Husni', 'husni@gmail.com', '', 'default.jpg', '$2y$10$V3HuBEVdP/jRkfD0DgvuOeThqvTg14.tiFKnCp0bfvyt4wHmDwT2i', 1, 1, 1654225714),
(20, 'Erni', 'erni@gmail.com', '', 'default.jpg', '$2y$10$Oq1Cn9ZC5hHMiPakonaU0u4wmbKLyHd4TJqWhXyiuoYOb0XYWCcCu', 1, 1, 1654235085),
(21, 'Iban', 'Iban@gmail.com', '', 'default.jpg', '$2y$10$urC41e8luqY5Wd5jbJ9wLO8FpnQO1XBsicWdZIqfbP7n6OAvEW/TS', 1, 1, 1654235108),
(22, 'Kartika', 'Kartika@gmail.com', '', 'default.jpg', '$2y$10$yXtHhVvYA26x4NtTMu69oeUNVo3Epa9wDzzD55vdJQPO5a9D5wwEe', 1, 1, 1654235201),
(23, 'Nurul', 'nurul@gmail.com', '', 'default.jpg', '$2y$10$JE/36Vy1Xp6RBEBKFMTAdeWIzC1poRDBOYQ61x7CLK1K9slddm6kK', 1, 1, 1654235226),
(24, 'Bella', 'bella@gmail.com', '', 'default.jpg', '$2y$10$GT/AozIn6waDGeV3Revyveq3yC3EG2EXMi3ACYHEjLvh0nKwn7pgG', 1, 1, 1654235251),
(25, 'Firda', 'firda@gmail.com', '', 'default.jpg', '$2y$10$/pSTKh//mlpRsDO7Vy0w/.UDqvtYTPUKUFg3.cDVMkkeazZL.LcnG', 1, 1, 1654235275),
(26, 'Adam', 'adam@gmail.com', '', 'default.jpg', '$2y$10$T0iwrGYS283a9tqWxNkDmutG7Mxviic/3hoHZhQdPquXrABvUz8gu', 1, 1, 1654235306),
(27, 'ZUL', 'zul@gmail.com', '', 'default.jpg', '$2y$10$GFRUJTMkLqnc/IweucLq4Oww5nABxKvvTObruf5PKlTm8LUEH01cW', 1, 1, 1654235334),
(28, 'Andrean', 'andrean@gmail.com', '', 'default.jpg', '$2y$10$DrAE5jCOU51QrOhyqlLncuave7hybGThzY6HuoO7JvMWzNwAktzHm', 1, 1, 1654235364),
(29, 'mile', 'mile@gmail.com', '', 'default.jpg', '$2y$10$Fvq7yAZmxBiZcMMznnYefOwLrm/6fQjdGzkyPi6xscA6akucgXHQ.', 1, 1, 1654235389),
(30, 'yoan', 'yoan@gmail.com', '', 'default.jpg', '$2y$10$kUYyGezl9Q/5c6bc3nYs5uiYuK23P.u/.Hde2zKAcNndodCMcvUIy', 1, 1, 1654235417),
(31, 'Tedi', 'tedi@gmail.com', '', 'default.jpg', '$2y$10$JB.LXGkAPdmp7ro.scflqekCyBjWNtAz/qhryY8qqLmGCLXGNRQWS', 1, 1, 1654235432),
(32, 'rama', 'rama@gmail.com', '', 'default.jpg', '$2y$10$fr2QS.Q3gwjRucQi.PZLtO9HeVlLdxXJhUDduhbLTqvArydez406W', 1, 1, 1654235445),
(33, 'irfan', 'irfan@gmail.com', '', 'default.jpg', '$2y$10$LQ0SxjJ9..aHkrHp1c5qFO8QB/cypTTAOyCeL2QBOd9OgCJogaSru', 1, 1, 1654235469),
(34, 'numan', 'numan@gmail.com', '', 'default.jpg', '$2y$10$HkwZQn2GHrrzt8D2K4n6d.CiQDMLbCqpqi7wbhy/SrXulkRBvhAgW', 1, 1, 1654235485),
(35, 'nizar', 'nizar@gmail.com', '', 'default.jpg', '$2y$10$TVX6GsEWFCoSEKTSLEkkN.R3pngKLu4cxOGu2EbPsODBt9BpSzAni', 1, 1, 1654235503),
(36, 'Teguh', 'teguh@gmail.com', '', 'default.jpg', '$2y$10$nfU29DLOoIyIMAosTHY7QefmRUgMKiZ0twRS5I96ENmRO0MwlwgTO', 1, 1, 1654235522),
(37, 'Sukma', 'sukma@gmail.com', '', 'default.jpg', '$2y$10$Fb1TSsR/8EbdDl.Jk2La8O2/Jw2K7FTjZN9VG7m9Ej/L7t7M19lra', 1, 1, 1654235544),
(38, 'Nadia', 'Nadia@gmail.com', '', 'default.jpg', '$2y$10$CkzqcqTfOvAcyfGr8VtdBeC8JeGAnZgDBmga/GjEqPYF6s6CWduLC', 1, 1, 1654235564),
(39, 'pely', 'pely@gmail.com', '', 'default.jpg', '$2y$10$/T2YjmNAqTwjvUXKfE37L.GXDbcBo2MHTiyFO04SonFf3KvRSYQAe', 1, 1, 1654235586),
(40, 'Bagas', 'bagas@gmail.com', '', 'default.jpg', '$2y$10$fM9d7EdPxlYEOmGKFI72Qe8225.dwJfd9QHJ2obLOk9P5H.vxtna.', 1, 1, 1654235606),
(41, 'Amir', 'amie@gmail.com', '', 'default.jpg', '$2y$10$8oj86SxurTOjaWmQ32LM/On35S3vGYU5qgXTvMKcNNCCzjHXU6asO', 1, 1, 1654235620),
(42, 'Bima', 'bima@gmail.com', '', 'default.jpg', '$2y$10$LyBTVHPS9InRVz2va9cbCu/pEWKI06QNh1b7W23DFEnctxB7wV.y.', 1, 1, 1654235637),
(43, 'Dimas', 'dimas@gmail.com', '', 'default.jpg', '$2y$10$xd2.tprMo36r/aOK/KTs2O0OUR6oMHEY9sQaBDLQGXcAkFYrxgC0m', 1, 1, 1654235655),
(44, 'Zidni', 'Zidni@gmail.com', '', 'default.jpg', '$2y$10$iBVfFUi9FvNI7LDZ19O8KeG0fvockM2RVIzvuQWnReHIOPzi81ElW', 1, 1, 1654235677),
(45, 'Adi', 'adi@gmail.com', '', 'default.jpg', '$2y$10$1HuVl4BMm6y9xzgbCqr0kOEAxZNsrnJEGAchNghzDz0eMswwxzVT.', 1, 1, 1654235694),
(46, 'Satria', 'satria@gmail.com', '', 'default.jpg', '$2y$10$DZ7iiP/6r9rux7oS6q.lcuvIRn9.ojcUNDgfn7CMM4YKpzahoorg2', 1, 1, 1654235714),
(47, 'Diana', 'diana@gmail.com', '', 'default.jpg', '$2y$10$5kZ3F3P4s6khyiwaxZCo0u3wooDucklYnSYtVv2jOj5AkLimedl1q', 1, 1, 1654235732),
(48, 'dudung', 'dudung@gmail.com', '', 'default.jpg', '$2y$10$98eyI6H2Ks8w/A8SXiWRx.S8PYvFWSv2miHrMC0DiNc5XVNiK9s1K', 2, 1, 1666436179);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
