-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 03:40 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pelatihan_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1539315551),
('m130524_201442_init', 1539315556);

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id_album` varchar(14) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `nama_album` varchar(100) NOT NULL,
  `jenis_album` enum('FOTO','VIDEO') NOT NULL,
  `slug_album` varchar(100) NOT NULL,
  `keterangan_album` text NOT NULL,
  `tag_album` varchar(255) NOT NULL,
  `gambar_album` varchar(100) NOT NULL,
  `status_album` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `hit_album` int(11) NOT NULL,
  `tanggal_album` date NOT NULL,
  `waktu_album` time NOT NULL,
  `verifikator_album` varchar(50) NOT NULL,
  `waktu_verif_album` datetime NOT NULL,
  `respon_album` varchar(255) NOT NULL,
  `timestamp_album` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id_album`, `user_id`, `nama_album`, `jenis_album`, `slug_album`, `keterangan_album`, `tag_album`, `gambar_album`, `status_album`, `hit_album`, `tanggal_album`, `waktu_album`, `verifikator_album`, `waktu_verif_album`, `respon_album`, `timestamp_album`) VALUES
('20181001095005', 'admindindik', 'Judul Album Foto', 'FOTO', 'judul-album-video', 'Keterangan deskripsi album foto', 'Kota Pekalongan,Pekalongan', 'album_20181001095023.png', 'ON', 0, '2018-10-01', '09:50:23', '', '0000-00-00 00:00:00', '', '2018-10-01 02:50:23'),
('20181001095006', 'admindindik', 'Judul Album VIdeo', 'VIDEO', 'judul-album-video', 'Keterangan deskripsi album video', 'Kota Pekalongan,Pekalongan', 'album_20181001095023.png', 'ON', 0, '2018-10-01', '09:50:23', '', '0000-00-00 00:00:00', '', '2018-10-01 02:50:23'),
('20181001095010', 'admindinperpa', 'Judul Album Foto', 'FOTO', 'judul-album-foto', 'Keterangan deskripsi album foto', 'Kota Pekalongan,Pekalongan', 'album_20181001095010.jpg', 'ON', 31, '2018-10-01', '09:50:23', '', '0000-00-00 00:00:00', '', '2018-10-01 02:50:23'),
('20181001095011', 'admindinperpa', 'Judul Album VIdeo', 'VIDEO', 'judul-album-video', 'Keterangan deskripsi album video', 'Kota Pekalongan,Pekalongan', 'album_20181001095011.mp4', 'ON', 0, '2018-10-01', '09:50:23', '', '0000-00-00 00:00:00', '', '2018-10-01 02:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `kategori_id` varchar(25) NOT NULL,
  `tema_id` varchar(25) NOT NULL,
  `utama_kota_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `kota_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `kota_instansi_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `kota_lainnya_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `utama_instansi_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `instansi_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `instansi_lainnya_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `utama_lainnya_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `lainnya_berita` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `judul_berita` varchar(255) NOT NULL,
  `jenis_berita` varchar(10) NOT NULL,
  `inisial_berita` varchar(255) NOT NULL,
  `slug_berita` text NOT NULL,
  `tag_berita` varchar(255) NOT NULL,
  `gambar_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `direktori_berita` varchar(50) NOT NULL DEFAULT 'berita',
  `warna_berita` varchar(20) NOT NULL,
  `hit_berita` int(11) NOT NULL,
  `tanggal_berita` date NOT NULL,
  `waktu_berita` time NOT NULL,
  `verifikator_berita` varchar(50) NOT NULL,
  `respon_berita` varchar(255) NOT NULL,
  `waktu_verif_berita` datetime NOT NULL,
  `timestamp_berita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `user_id`, `kategori_id`, `tema_id`, `utama_kota_berita`, `kota_berita`, `kota_instansi_berita`, `kota_lainnya_berita`, `utama_instansi_berita`, `instansi_berita`, `instansi_lainnya_berita`, `utama_lainnya_berita`, `lainnya_berita`, `judul_berita`, `jenis_berita`, `inisial_berita`, `slug_berita`, `tag_berita`, `gambar_berita`, `isi_berita`, `direktori_berita`, `warna_berita`, `hit_berita`, `tanggal_berita`, `waktu_berita`, `verifikator_berita`, `respon_berita`, `waktu_verif_berita`, `timestamp_berita`) VALUES
('20180827111045', 'admindindik', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'Pejagalan Fair 2018 : Kostum Karnaval Kreatif Manfaatkan Limbah ', 'berita', 'beritainstansi', 'pejagalan-fair-2018--kostum-karnaval-kreatif-manfaatkan-limbah-', 'Pekalongan,Kostumkarnaval', 'berita_20180827111123.jpeg', '<p>\r\n<style type=\"text/css\">P { margin-bottom: 0.21cm; }\r\n</style>\r\n</p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Karnaval kreatif dalam serangkaian acara Pejagalan Fair 2018 digelar Minggu pagi (26/8/2018) di Jalan Sulawesi RW 16 Bendan Kergon, Kota Pekalongan. Karnaval kreatif tahun ini dikemas dengan unik, banyak kostum berbahan limbah hasil kreasi masyarakat yang dikenakan. </span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Bahan limbah yang digunakan seperti plastik kemasan air mineral, sepotong, plastik bekas, dan kardus. Karnaval kreatif ini berhasil menarik animo masyarakat Pekalongan dan sekitarnya. </span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Pejagalan Fair yang sudah sejak tahun 1963, vakum puluhan tahun akhirnya hidup kembali. Tahun ini adalah tahun kelima gelaran rutin Pejagalan Fair. Nama \'Pejagalan\' berasal dari \'jagal\', di tempat itu dulu digunakan sebagai tempat menjagal kerbau, hingga orang-orang menyebut dengan Pejagalan. </span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Ketua Panitia Pejagalan Fair, Riyanto SIP SH mengungkapkan bahwa animo masyarakat untuk mengikuti Pejagalan Fair ini semakin tinggi, terbukti dengan lomba lari marathon yang pada tahun kemaren berjumlah kurang dari angka seratus, tahun ini sudah mencapai 130 peserta,. \"Tahun ini banyak peserta dari luar daerah seperti Magelang, Semarang, dan Tegal. Tak hanya itu, ada dua pelari dari Kenya putera dan puteri. Adanya mereka ini saya yakin dapat turut mempromosikan Kota Pekalongan kepada khalayak,\" ungkap Riyanto. </span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Lomba lari marathon yang digelar Minggu (26/8/2018) ini rute yang ditempuh sejauh lima kilometer dimulai dari Jalan Sulawesi, Jalan Hayam Wuruk, Jalan Hassanudin, Jalan Sultan Agung, Lapangan Jetayu, Jalan Diponegoro, Jalan Imam Bonjol, Jalan Hayam Wuruk, dan finish di Jalan Sulawesi.</span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Lomba lain yang akan digelar adalah lomba renang dan lomba masak ikan, puncaknya pada lomba meniti pucang di Kali Boru. \"Pada Sabtu malam (25/8/2018) ini juga akan digelar pasar jajanan gratis sebagai ajang untuk silaturahmi. </span></font></font></p>\r\n\r\n<p style=\"text-indent: 0.85cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Riyanto berharap event ini bisa jadi agenda tahunan Pemkot Pekalongan, bahkan Riyanto akan membuat badan hukum untuk Pejagalan Fair. Daerah yang memiliki monumen jagal (moja) ini berkomitmen untuk menjadi kampung budaya tentunya dengan dukungan pemerintah. \"Saya berharap segenap Pemkot Pekalongan dan masyarakat turut dalam meramaikan Pejagalan Fair 2018 ini,\" pungkasnya. </span></font></font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; line-height: 100%\" align=\"JUSTIFY\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm; line-height: 100%\" align=\"JUSTIFY\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><em><span style=\"background:#ffffff\">Tim Diseminasi Informasi dan&nbsp; Komunikasi Publik -&nbsp; Dinkominfo Kota Pekalongan</span></em></font></font></p>\r\n', 'berita', 'orange', 2, '2018-08-27', '11:11:02', '', '', '0000-00-00 00:00:00', '2018-08-27 04:11:23'),
('20180827111128', 'admindindik', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'Impian dan Harapan Menuju Kota Pekalongan tahun 2050', 'berita', 'beritainstansi', 'impian-dan-harapan-menuju-kota-pekalongan-tahun-2050', 'Pekalongan', 'berita_20180827111207.jpeg', '<p>\r\n<style type=\"text/css\">P { margin-bottom: 0.21cm; }\r\n</style>\r\n</p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Pemerintah Kota Pekalongan melalui Dinas Pendidikan Kota Pekalongan menggelar lomba presentasi Impian dan Harapan Kota Pekalongan tahun 2050. Peserta terdiri atas pelajar tingkat SMP/ MTs/sederajat se-Kota Pekalongan. â€œMimpi adalah visi, makanya semua orang butuh impian sebagai acuan meraih masa depan. Kemudian tugas kita sebagai guru dan orang tua adalah memastikan bahwa anak-anak kita memiliki mimpi besar dan mendukung mereka mewujudkannya,â€ ujar Kepala Dinas Pendidikan Kota Pekalongan, Soeroso saat membuka acara tersebut di Gedung BP2MK Eks Bakorwil III Kawasan Jetayu Kota Pekalongan, Minggu (26/8/2018).</span></font></font></font></p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Menurut Soeroso, impian dan harapan begitu penting, seperti para pakar psikolog yang mengatakan impian akan mengendap dalam alam bawah sadar lalu akan menuntun langkah anak-anak untuk meraihnya. Bahkan keberhasilan dunia saat ini merupakan impian-impian dari orang-orang terdahulu. Maka Pemkot Pekalongan menggelar kompetisi ini agar melihat sejauh mana impian dan harapan anak-anak Kota Pekalongan terhadap kota tercintanya. â€œKita bisa melihat Impian dan harapan anak-anak 32 tahun kedepan, memang tantangan lebih berat. Namun tugas kita adalah mendukungnya,â€ paparnya. </span></font></font></font></p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Lomba ini, selain harus memikat tentang isi impian dan harapan, Soeroso menjelaskan lomba ini merupakan bentuk melatih keberanian siswa untuk tampil di depan umum dan belajar public speaking, originalitas ide, dan sistematika. Lama presentasi selama tujuh menit, tidak penting juaranya melainkan prosesnya. â€œIni selaras dengan impian dan harapan Kota Pekalongan, yakni kita sebagai warga yang mencintai Kota Pekalongan harus mau berproses membangun kota tercinta,â€ katanya.</span></font></font></font></p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Lomba tersebut juga bagian dari memeriahkan pameran inovasi dan kreativitas Kota Pekalongan dalam menyambut Hari Kebangkitan Teknologi Nasional (Harteknas) ke-23. </span></font></font></font></p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Dari berbagai peserta lomba, meskipun masih tingkat pelajar menengah pertama, namun siswa-siswi Kota Pekalongan sudah memiliki gagasan yang mumpuni. Semisal gagasan dari siswi SMP Negeri 2 Pekalongan, Hazna Nabila dalam presentasinya berjudul ekowisata terumbu karang Kota Pekalongan yang berusaha menuntaskan masalah rob dengan budidaya terumbu karang serta meningkatkan perekonomian warga lewat wisata. â€œAlasan saya memilih judul Terumbu karang karena bisa mengurangi dampak rob yang memprihatinkan di Kota Pekalongan,â€ paparnya.</span></font></font></font></p>\r\n\r\n<p style=\"text-indent: 1.08cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><span style=\"background:#ffffff\">Sementara Siswi SMP Pius Pekalongan, Tifany Michele Sugiono mempresentasikan kesenian dan budaya sebagai denyut nadi perekonomian Kota Pekalongan melalui konsep Pekalongan Center of Art. Apalagi Kota Pekalongan sudah diakui di dunia internasional karena menyandang predikat sebagai Kota Kreatif Dunia. â€œTentu mewujudkannya tidak mudah karena butuh banyak kerjasama semua pihak. Namun jika kita sungguh-sungguh hal itu tidaklah mustahil</span></font></font></font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; line-height: 100%\" align=\"JUSTIFY\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm; line-height: 100%\" align=\"JUSTIFY\"><font color=\"#000000\"><font face=\"Times New Roman, serif\"><font style=\"font-size: 11pt\" size=\"2\"><em><span style=\"background:#ffffff\">Tim Diseminasi Informasi dan&nbsp; Komunikasi Publik -&nbsp; Dinkominfo Kota Pekalongan</span></em></font></font></font></p>\r\n', 'berita', 'orange', 5, '2018-08-27', '11:11:52', '', '', '0000-00-00 00:00:00', '2018-08-27 04:12:07'),
('20180828015951', 'admindindik', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'ON', 'ON', 'OFF', 'OFF', 'OFF', 'Gedung Tenant Tecnopark Perikanan Kota Pekalongan Diresmikan', 'berita', 'beritainstansi', 'gedung-tenant-tecnopark-perikanan-kota-pekalongan-diresmikan', 'Pekalongan,Perikanan', 'berita_20180828020117.jpeg', '<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Walikota Pekalongan HM Saelany Machfudz SE&nbsp;</span><span style=\"font-family:arial,sans-serif; font-size:13.3333px\">Gedung Tenant Tecnopark Perikanan Kota Pekalongan diresmikan oleh</span><span style=\"font-family:arial,sans-serif; font-size:13.3333px\">&nbsp; bersama</span><span style=\"font-family:arial,sans-serif; font-size:13.3333px\">&nbsp;Anggota DPR RI Komisi X, dan BPPT, disaksikan oleh forkopimda, kepala OPD, camat, stakeholder perikanan, dan instansi di lingkungan pelabuhan di Panjang Wetan, Kota Pekalongan, Senin (27/8/2018).&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Sebelumnya Gedung Tenant sudah soft opening 3 April 2018. Saat ini fasilitas gedung sudah terpenuhi, kini diresmikan dan siap digunakan untuk mengembangkan usaha bidang perikanan.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Walikota Pekalongan, HM Saelany Mahfudz SE mengungkapkan bahwa peresmian Gedung Tenant Tecnopark Perikanan ini merupakan serangkaian dari Pameran Inovasi dan Kreativitas Kota Pekalongan 2018 dalam rangka memperingati Harteknas ke-23. \"Gedung ini semoga dapat memberikan nilai tambah bagi masyarakat Kota Pekalongan khususnya bidang perikanan,\" ungkapnya.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Kota Pekalongan menjadi titik strategis, Pemkot Pekalongan memfasilitasi sentra-sentra pemasaran. Adanya jalan tol menjadi sebuah tantangan, dua tahun berturut-turut Kota Pekalongan mengalami penurunan pemasaran, tetapi kini sudah meningkat sebesar 45%. Pembangunan pintu keluar jalan tol ke Kota Pekalongan dengan APBN sebesar 54 miliar sudah dinyatakan 70% selesai.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">\"Harapannya akan ada sinergitas pembangunan wisata pantai dengan tecnopark sehingga orang yang datang ke Kota Pekalongan dapat berwisata di kawasan Utara sembari menikmati olahan ikan, berwisata ke pantai, dan Taman Mangrove,\" tuturnya.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Kepala Dinas Kelautan dan Perikanan Kota Pekalongan, Ir Aris Sidharcahya menjelaskan bahwa pembangunan Gedung Tenant Tecnopark Pekalongan ini dari APBD Kota Pekalongan 2017. Untuk perlengkapan, desain interior, AC, partisi, dan lancar tecnopark dari BPPT. \"Tempat ini akan difungsikan sebagai tempat mengindikasikan Tenant dalam mencetak wirausaha baru di bidang perikanan,\" bebernya Aris.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Ditambahkan Aris bahwa gedung ini sebelumnya sudah digunakan&nbsp; sebagai tempat kegiatan seperti Gemar Makan Ikan, lomba cipta olahan ikan, budidaya ikan yang baik, penandatanganan antara Fakultas Perikanan Unikal dengan DKP Kota Pekalongan, dan lomba ikan hias. \"Untuk agenda terdekat pada 5 September 2018 akan diadakan pelatihan kewirausahaan bagus Siswa-Siswi SMK dan putus sekolah, kemudian acara Tecnocamp bagi calon Tenant FGD ikan hias dan ikan budidaya,\" paparnya.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13.3333px\">Kawasan ini pada prinsipnya menjadi wahana dengan infrastruktur jaringan inovasi yang dikembangkan dalam penguatan inovasi sistem daerah Kota Pekalongan untuk mendukung kluster industri perikanan.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 'berita', 'orange', 9, '2018-08-28', '14:00:26', '', '', '0000-00-00 00:00:00', '2018-08-28 07:01:17'),
('20180828020229', 'admindindik', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'OFF', 'Desain Kemasan Tingkatkan  Pemasaran Industri Kecil Menengah  ', 'berita', 'beritainstansi', 'desain-kemasan-tingkatkan--pemasaran-industri-kecil-menengah', 'Pekalongan', 'berita_20180828020342.jpeg', '<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Pelatihan desain produk dan desain kemasan pangan olahan &nbsp;bagi Industri Kecil Menengah atau IKM &nbsp;Kota Pekalongan digelar &nbsp;Dinas Perindustrian dan Teknik Industri Kota Pekalongan sebagai langkah untuk meningkatkan kemampuan teknologi industri, &nbsp;Senin (27/8) di Aula Witel Telkom Pekalongan.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Kegiatan ini diikuti oleh 30 pelaku IKM olahan pangan di Kota Pekalongan. Para peserta pelatihan diwajibkan membawa produknya untuk di display dan dibahas dari segi produk dan desain produknya. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Dalam sambutannya, Kepala Dinas Perindustrian dan Teknik Industri Kota Pekalongan, Slamet Hariyadi mengungkapkan bahwa desain kemasan sangat berpengaruh terhadap pemasaran produk pelaku IKM. \"Pelatihan ini mengajak untuk meningkatkan kualitas produk. Tentu ke depannya akan mendukung perekonomian masyarakat Kota Pekalongan,\" tuturnya. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Kemasan olahan pangan sangat penting karena &nbsp;fungsinya karena sebagai penutup bahan makanan akan dikonsumsi. Pengemasan &nbsp;dengan &nbsp;mengutamakan &nbsp;aspek kesehatan sangat diutamakan. Pada pelatihan ini dihadirkan pembicara dari Disperindag Provinsi Jateng, Kepala Dinas Perindustrian dan Teknik Industri Kota Pekalongan, Nutrisionis dari RS Siti Khotijah, dan dari perusahaan online Tokologi.com.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Kasi Makanan dan Minuman, M Wahyu menyampaikan kegiatan pelatihan ini sebagai bentuk edukasi mengenai kesiapan dalam membuat suatu produk, pelaku IKM tentu harus tahu gambaran produk, desain produk, dan sasaran pemasaran produk. \"Dengan kegiatan ini para pelaku IKM dapat berjajar ingin dan berkomunitas dengan pelaku IKM lain untuk mempromosikan produk,\" kata Wahyu. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Dikatakan Wahyu, kalau pelaku IKM mau beranjak berubah dan lebih kreatif akan ia support agar lebih berkembang. \"Harapan saya para pelaku IKM olahan pangan mengedepankan hiegenisitas dan kesehatan, menggunakan bahan-bahan yang ramah lingkungan. Saat ini, beredar kerupuk dengan kandungan boraks. Kami bekerjasama dengan Dinas Kesehatan Kota Pekalongan akan melakukan monitoring tentang itu,\"&nbsp; paparnya. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"color:black; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Mencirikan produk makanan khas Kota Pekalongan yang selama ini hanya terkenal dengan batiknya. Ke depannya para pelaku IKM olahan pangan dapat lebih kreatif mengeluarkan ide-ide seperti kerupuk dengan motif batik. \"Dengan ini tentu akan lebih menonjolkan ciri khas Kota Pekalongan dan dapat meningkatkan nilai jual produkâ€.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:normal;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:normal;font-size:11pt;font-family:Calibri,sans-serif\">&nbsp;</p>\r\n\r\n<p><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt\"><em>Tim Diseminasi Informasi dan&nbsp; Komunikasi Publik -&nbsp; Dinkominfo Kota Pekalongan</em></span></p>\r\n', 'berita', 'orange', 7, '2018-08-28', '14:03:24', '', '', '0000-00-00 00:00:00', '2018-08-28 07:03:42'),
('20180903033701', 'admindinperpa', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'ON', 'ON', 'OFF', 'OFF', 'OFF', '44 Tahun Mengudara Radio Kota Batik Tetap Bersemangat ', 'berita', 'beritainstansi', '44-tahun-mengudara-radio-kota-batik-tetap-bersemangat', 'Pekalongan,Radiokotabatik', 'berita_20180903033801.jpg', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Jumat (31/8/2018) Lembaga Penyiaran Publik Lokal (LPPL) Radio Kota Batik &nbsp;(RKB) menggelar tasyakuran ulang tahun ke-44 bersamaan dengan &nbsp;kegiatan sepeda sehat bersama Jajaran Forum Komunikasi Pimpinan Daerah Kota Pekalongan.&nbsp; Acara tasyakuran yang dihadiri oleh Forkopimda, OPD, masyarakat, dan pendengar setia RKB ini juga dibagikan <em>doorprise</em> dan penghargaan kepada pendengar setia RKB, narasumber terbaik, dan mitra RKB.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Sekda Kota Pekalongan Hj. Sri Ruminingsih mengapresiasi seluruh jajaran di RKB. \"Semoga pada usianya yang ke-44 ini RKB semakin bersemangat. Saya berikan penghargaan dan apresiasi luar biasa bagi seluruh jajaran RKB, di tangan anda RKB akan terus berjaya dan mengudara,\" katanya.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Lembaga Penyiaran Publik Lokal dengan tagline radio dengan news, informatif, dan solutif ini menjadi jembatan untuk pemberitaan di Kota Pekalongan, menampung aspirasi dan keluhan masyarakat agar dapat didengar oleh pemerintah untuk kemudian adanya tindaklanjut atas permasalahan publik. \"RKB pada usia yang dewasa ini ternyata banyak peminatnya, banyak penggemar RKB yang hadir di sini,\" ujarnya.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Dikatakan, Pemkot Pekalongan sebagai fasilitator dalam operasional RKB sejauh ini belum maksimal membantu, seperti untuk penyediaan gedung yang masih sempit. Akan tetapi dalam keadaan yang seperti ini, tidak mengurangi kualitas SDM &nbsp;RKB &nbsp;untuk mampu bersaing dengan radio swasta dengan acara-acara yang luar biasa. \"Mudah-mudahan semoga selalu mengudara, pendengarnya selalu setia, semakin eksis, dan diminati masyarakat,\" ucap Sri Ruminingsih berharap.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Selama 44 tahun RKB mengudara memberitakan kepada masyarakat Kota Pekalongan tentang pendidikan, kebudayaan, dan informasi Kota Pekalongan, serta sebagai hiburan masyarakat Kota Pekalongan.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Pada tahun 1975, Radio Kota Batik (RKB) berdiri di jalur AM dengan program hiburan dan informasi khususnya pembangunan daerah atau yang dahulu kita kenal sebagai Radio Siaran Pemerintah Daerah. Pada tahun 2003, Radio Kota Batik hijrah ke jalur FM dengan gelombang frekuensi 91,2. Pada tahun 2004, Radio Kota Batik memperoleh ijin frekuensi dari Dinas Perhubungan dan Telekomunikasi Propinsi Jawa Tengah. Sejak tahun 2015 RKB mulai dikelola oleh Dinas Komunikasi dan Informasika (Kominfo) Kota Pekalongan di bawah koordinasi Bidang Informasi dan Komunikasi Publik.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Kepala Dinas Kominfo Kota Pekalongan yang diwakili Sekretaris Kominfo, Drs Kisworo Poso M.Si menyampaikan sejarah perjalanan RKB sejak tahun 1975 sampai dengan sekarang. Kemudian dilanjutkan dengan pengenalan jajaran RKB mulai dari dewan pengawas, direksi utama, bagian peliputan, dan sebagainya. \"Radio Kota Batik turut menginformasikan pembangunan Kota Pekalongan dengan siaran yang beragam mampu menghibur masyarakat Kota Pekalongan,\" tuturnya.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; line-height: 115%; font-size: 11pt; font-family: Calibri,sans-serif; text-align: justify;\"><strong><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></strong></p>\r\n\r\n<p style=\"text-align: justify;\"><em><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Tim Diseminasi Informasi &amp; Komunikasi Publik Dinkominfo Kota Pekalongan</span></em></p>\r\n', 'berita', 'orange', 341, '2018-09-03', '15:37:36', '', '', '0000-00-00 00:00:00', '2018-09-03 08:38:01'),
('20180903033943', 'admindinperpa', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'Sekda Kota Pekalongan Sambut Kepulangan 295 Jamaah Haji', 'berita', 'beritainstansi', 'sekda-kota-pekalongan-sambut-kepulangan-295-jamaah-haji', 'Pekalongan', '', '<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Sekretaris Daerah Kota Pekalongan Hj Sri Ruminingsih sambut kedatangan 295 jamaah haji asal Kota Batik di halaman Sekretariat Daerah Jumat siang (31/8/2018). Pukul dua siang rombongan haji sampai di Kota Pekalongan. Kegembiraan tergambar pada wajah Pekalongan karena pada akhirnya bisa pulang dengan selamat. Rombongan kloter ke sembilan ini dibawa oleh enam bus pariwisata. Jamaah terbang dari Jeddah dan turun di Solo, dan dilanjutkan perjalanan ke Kota Pekalongan. </span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">â€œKami bersyukur atas kedatangan Jemaah haji Kota Pekalongan yang tiba dengan selamat. Semoga apa yang telah didapatkan ditanah suci diberkahi oleh Allah SWT, dan mereka menjadi haji yang mabrur serta berkah ibadah haji itu dapat diterapkan pada diri para jemaah khususnya dan masyarakat Kota Pekalongan pada umumnyaâ€ ungkap Sekda Kota Pekalongan. </span><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Seusai turun mereka menggelar doa bersama dan perpisahan di halaman Sekretariat Daerah Kota Pekalongan. </span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Jamaah dari Buaran Indah yang mengenakan kursi roda, Munfairoh menyampaikan rasa syukurnya dapat kembali ke Kota Pekalongan dengan selamat. Ketika melaksanakan ibadah haji, Munfairoh tidak dapat berjalan dan pada akhirnya menyewa kursi roda. \"Karena kondisi saya ini, saya hanya ke Masjidil Harom hanya lima kali. Alhamdulillah selama di sana saya masih dapat ibadah meskipun dengan menggunakan kursi roda,\" tuturnya. </span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Mulyati, jamaah asal Yosorejo mengaku senang dengan kepulangannya ke tanah air, ia berharap dapat kembali ke tanah suci untuk umroh atau haji kembali. \"Alhamduilillah di sana semuanya lancar, perjalanan juga sangat lancar,\" ungkapnya. </span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Kaprawi bersyukur dapat kembali dengan selamat, keinginan untuk berangkat kembali selalu ada. Tahun ini ia tak hanya beribadah haji tapi juga turut membantu mengurus kesehatan jamaah. \"Suhu yang jauh berbeda dengan di Kota Pekalongan tentu membuat daya tahan tubuh menurun, jamaah dari Kota Pekalongan hanya mengalami batuk dan pilek, selain itu karena banyaknya berjalan kaki yang dialami hanya kelelahan,\" katanya.</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Penjemput haji asal Pabean, Taufik menyampaikan sangat senang dengan kepulangan adiknya dari tanah suci. Keluarga sempat khawatir dengan keadaan jamaah haji tapi tetap percaya dan tawakal. \"Kekhawatiran dari kami ada, tapi di sana adik saya ibadah dan saya yakin Allah selalu melindungi,\" pungkasnya.</span></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><em><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></em></p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\">&nbsp;</p>\n\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><em><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Tim Diseminasi Informasi dan Komunikasi Publik - Dinkominfo Kota Pekalongan</span></em></p>\n\n<div class=\"adL\">&nbsp;</div>\n', 'berita', 'orange', 2, '2018-09-03', '15:40:05', '', '', '0000-00-00 00:00:00', '2018-09-03 08:40:25'),
('20180904034940', 'admindinperpa', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'ON', 'ON', 'OFF', 'OFF', 'OFF', 'Nahdlatul Ulama dan Pemerintah Tingkatkan Sinergitas', 'berita', 'beritainstansi', 'nahdlatul-ulama-dan-pemerintah-tingkatkan-sinergitas', 'Pekalongan', 'berita_20180904035034.jpg', '<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Walikota Pekalongan hadir &nbsp;pada pelantikan pengurus Majelis Wakil Cabang (MWC), Ranting Nahdlatul Ulama (NU), Ansor, IPNU dan IPPNU Kecamatan Pekalongan Selatan masa khidmat 2018-2020 di Aula SMK Syafii Akrom Minggu (2/8) malam. H.M Saelany Machfud menyampaikan selamat,&nbsp; kepada seluruh pengurus baru dilantik dan mengajak agar NU dapat senantiasa tingkatkan kerjasama dengan pemerintah, mempererat &nbsp;jalinan silaturahmi yang sudah berjalan dengan pemerintah serta &nbsp;mampu menghasilkan program kerja yang senada dengan visi misi Pemerintah Kota Pekalongan.</span></p>\r\n\r\n<p style=\"margin:12pt 0cm;text-align:justify;line-height:115%;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;font-size:12pt;font-family:&quot;Times New Roman&quot;,serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Ketua Panitia sekaligus&nbsp; Ketua Majelis Wakil Cabang Pekalongan Selatan Ali Fauni menyatakan &nbsp;â€œPelantikan ini merupakan agenda rutin organisasi untuk re-strukturisasi, kaderisasi, sekaligus memantapkan konsolidasi dan koordinasi. Pelantikan menjadi sebuah upaya penataan dan optimalisasi SDM organisasiâ€. Adapun tema pelantikan&nbsp; â€œMembentuk militansi kader NU berwawasan Aswaja, Berbudaya Nusantara Berjiwa Nasionalisme ini juga mampu mewujudkan kerjasama seperti yang di harapkan pemerintah Kota Pekalonganâ€ jelasnya.</span></p>\r\n\r\n<p style=\"margin:12pt 0cm;text-align:justify;line-height:115%;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-origin:initial;background-clip:initial;font-size:12pt;font-family:&quot;Times New Roman&quot;,serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Khaidar Ali, Ketua IPNU Kecamatan Pekalongan Selatan &nbsp;yang baru saja dilantik menyebutkan kehadiran Walikota menjadi penyemangat yang luar biasa bagi segenap pengurus baru dalam organisasi Nahdlatul Ulama.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"background-clip:initial; background-image:initial; background-origin:initial; background-position:initial; background-repeat:initial; background-size:initial; font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Acara tersebut juga dihadiri oleh segenap tokoh dan pengurus nahdatul ulama kota pekalongan, perwakilan kecamatan pekalongan selatan, kapolsek pekalongan selatan, danramil pekalongan selatan, lurah jenggot dan tamu undangan lainya</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:normal;font-size:11pt;font-family:Calibri,sans-serif\">&nbsp;</p>\r\n\r\n<p><em><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Tim Komunikasi Publik - Dinkominfo Kota Pekalongan</span></em></p>\r\n', 'berita', 'orange', 252, '2018-09-04', '15:50:20', '', '', '0000-00-00 00:00:00', '2018-09-04 08:50:35'),
('20180904035040', 'admindinperpa', '20180315114102', '20180920092612', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'ON', 'OFF', 'OFF', 'OFF', 'Relawan Asing Ajak Peduli Lingkungan, Hiasi Papan', 'berita', 'beritainstansi', 'relawan-asing-ajak-peduli-lingkungan-hiasi-papan-dengan-tulisan', 'Pekalongan', 'berita_20181025024519.jpg', '<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Organisasi Kerelawanan Internasional (GREAT) sudah sepekan di Kota Pekalongan mengadakan kegiatan <em>Mangrove to Stop Climate Change III.</em> &nbsp;Kegiatan yang diikuti oleh 14 relawan asing, adalah program berkelanjutan yang diselenggarakan bekerjasama dengan Dinas Lingkungan Hidup (DLH), Dinas Pariwisata Kebudayaan dan Olahraga (Dinparbudpora) Kota Pekalongan, komunitas nelayan dan petani Kota Pekalongan untuk menjawab kebutuhan mengurangi dampak rob dan &nbsp;melestarikan sisi pesisir Kota Pekalongan.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Wilayah Kota Pekalongan &nbsp;bagian utara, &nbsp;pesisir Pulau Jawa merupakan salah satu daerah yang terpengaruh oleh perubahan iklim global. Salah satu serangkaian kegiatan GREAT pada Senin (3/9/2018) yakni para relawan asing membuat tulisan pada papan yang berisi ajakan untuk peduli lingkungan. Dengan menggunakan papan triplek dan cat para relawan menuliskan Stop Climate Change. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Pimpinan GREAT Campleader, M Roisul Ashdaq Al Arif menyampaikan bahwa proyek ini melestarikan keanekaragaman alam dan pantai laut dari erosi karena pemotongan bakau secara signifikan di tahun 1970-1980 bersama dengan gelombang kuat dari laut. Ini akan menjadi fokus utama dari proyek ini. \"Lebih dari 1000 km garis pantai di Pulau Jawa dalam bahaya erosi. Tahun ini, kami mulai dengan Kota Pekalongan,\" ungkapnya. </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Dikatakan Ashdaq, acara ini mendukung inisiatif nelayan dan petani dalam melindungi pantai laut dengan menanam mangrove. Selain itu, untuk meningkatkan kesadaran masyarakat lokal lainnya dan anak-anak untuk melindungi lingkungan, di daerah pesisir di Pulau Jawa.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\"><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin:0cm 0cm 0.0001pt;text-align:justify;line-height:115%;font-size:11pt;font-family:Calibri,sans-serif\">&nbsp;</p>\r\n\r\n<p><em><span style=\"font-family:arial,sans-serif; font-size:10pt; line-height:115%\">Tim Komunikasi Publik - Dinkominfo Kota Pekalongan</span></em></p>\r\n', 'berita', 'orange', 13, '2018-10-04', '15:51:11', '', '', '0000-00-00 00:00:00', '2018-09-04 08:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_childmenu`
--

CREATE TABLE `tb_childmenu` (
  `id_childmenu` varchar(25) NOT NULL,
  `id_submenu` varchar(25) NOT NULL,
  `nama_childmenu` varchar(100) NOT NULL,
  `link_childmenu` varchar(100) NOT NULL,
  `urutan_childmenu` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_childmenu`
--

INSERT INTO `tb_childmenu` (`id_childmenu`, `id_submenu`, `nama_childmenu`, `link_childmenu`, `urutan_childmenu`) VALUES
('', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_download`
--

CREATE TABLE `tb_download` (
  `id_download` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `judul_download` varchar(255) NOT NULL,
  `slug_download` varchar(255) NOT NULL,
  `file_download` varchar(255) NOT NULL,
  `ket_download` text NOT NULL,
  `hit_download` int(11) NOT NULL,
  `status_download` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `waktu_download` datetime NOT NULL,
  `timestamp_download` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_download`
--

INSERT INTO `tb_download` (`id_download`, `user_id`, `judul_download`, `slug_download`, `file_download`, `ket_download`, `hit_download`, `status_download`, `waktu_download`, `timestamp_download`) VALUES
('20180919082951', 'admindindik', 'Tes download DINDIK', 'tes-download-dindik', 'file_20180919083058.pdf', '<p>Tes download</p>\r\n', 0, 'ON', '2018-09-19 08:30:58', '2018-09-19 01:30:58'),
('20180919082952', 'admindinperpa', 'Tes download DINPERPA', 'tes-download-dinperpa', 'file_20180919083058.pdf', '<p>Tes download</p>\r\n', 0, 'ON', '2018-09-19 08:30:58', '2018-09-19 01:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE `tb_gallery` (
  `id_gallery` varchar(14) NOT NULL,
  `album_id` varchar(14) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `nama_gallery` varchar(100) NOT NULL,
  `slug_gallery` varchar(255) NOT NULL,
  `jenis_gallery` enum('FOTO','VIDEO') NOT NULL,
  `status_gallery` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `keterangan_gallery` text NOT NULL,
  `tag_gallery` varchar(255) NOT NULL,
  `gambar_gallery` varchar(100) NOT NULL,
  `fotografer_gallery` varchar(100) NOT NULL,
  `tanggal_gallery` date NOT NULL,
  `waktu_gallery` time NOT NULL,
  `hit_gallery` int(11) NOT NULL,
  `verifikator_gallery` varchar(50) NOT NULL,
  `waktu_verif_gallery` datetime NOT NULL,
  `respon_gallery` varchar(255) NOT NULL,
  `timestamp_gallery` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_gallery`
--

INSERT INTO `tb_gallery` (`id_gallery`, `album_id`, `user_id`, `nama_gallery`, `slug_gallery`, `jenis_gallery`, `status_gallery`, `keterangan_gallery`, `tag_gallery`, `gambar_gallery`, `fotografer_gallery`, `tanggal_gallery`, `waktu_gallery`, `hit_gallery`, `verifikator_gallery`, `waktu_verif_gallery`, `respon_gallery`, `timestamp_gallery`) VALUES
('20180913100010', '20181001095011', 'admindinperpa', 'VIDEO 1', 'video-1', 'VIDEO', 'ON', 'Deskripsi keterangan video 1', 'pekalongan,kota pekalongan', 'video_20180913100210.mp4', 'Allem Adrianto', '2018-10-09', '10:25:43', 26, '', '0000-00-00 00:00:00', '', '2018-09-13 10:02:29'),
('20180913100011', '20181001095010', 'admindinperpa', 'FOTO 1', 'foto-1', 'FOTO', 'ON', 'Deskripsi keterangan foto 1', 'pekalongan,kota pekalongan', 'foto_20180913100211.jpg', 'Allem Adrianto', '2018-10-09', '10:25:43', 75, '', '0000-00-00 00:00:00', '', '2018-09-13 10:02:29'),
('20180913100053', '20181001095006', 'admindindik', 'VIDEO 1', 'video-1', 'VIDEO', 'ON', 'Deskripsi keterangan video 1', 'pekalongan,kota pekalongan', 'video_20180913100229.mp4', '', '2018-10-09', '10:25:43', 0, '', '0000-00-00 00:00:00', '', '2018-09-13 10:02:29'),
('20180913100054', '20181001095005', 'admindindik', 'FOTO 1', 'foto-1', 'FOTO', 'ON', 'Deskripsi keterangan foto 1', 'pekalongan,kota pekalongan', 'foto_20180913100229.mp4', '', '2018-10-09', '10:25:43', 0, '', '0000-00-00 00:00:00', '', '2018-09-13 10:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_halaman`
--

CREATE TABLE `tb_halaman` (
  `id_halaman` varchar(25) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `judul_halaman` varchar(500) NOT NULL,
  `slug_halaman` varchar(500) NOT NULL,
  `gambar_halaman` varchar(255) NOT NULL,
  `isi_halaman` text NOT NULL,
  `status_halaman` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `hit_halaman` int(11) NOT NULL,
  `timestamp_halaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_halaman`
--

INSERT INTO `tb_halaman` (`id_halaman`, `user_id`, `judul_halaman`, `slug_halaman`, `gambar_halaman`, `isi_halaman`, `status_halaman`, `hit_halaman`, `timestamp_halaman`) VALUES
('20180411085112', 'admindinperpa', 'Sejarah Singkat', 'sejarah-singkat', 'halaman_20180827111112.jpg', '<p style=\"text-align: center;\"><strong><span style=\"font-size:12.0pt\">Sejarah Singkat Kota Pekalongan</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kota Pekalongan adalah salah satu kota di pesisir pantai utara Provinsi Jawa Tengah. Kota ini berbatasan dengan laut jawa di utara, Kabupaten Pekalongan di sebelah selatan dan barat dan Kabupaten Batang di timur. Kota Pekalongan terdiri atas 4 kecamatan, yakni Pekalongan Utara, Pekalongan Barat, Pekalongan Selatan dan Pekalongan Timur. Kota Pekalongan terletak di jalur pantai Utara Jawa yang menghubungkan Jakarta-Semarang-Surabaya. Kota Pekalongan berjarak 384 km di timur Jakarta dan 101 km sebelah barat Semarang. Kota Pekalongan mendapat julukan kota batik. Hal ini tidak terlepas dari sejarah bahwa sejak puluhan dan ratusan tahun lampau hingga sekarang, sebagian besar proses produksi batik Pekalongan dikerjakan di rumah-rumah. Akibatnya batik Pekalongan menyatu erat dengan kehidupan masyarakat Pekalongan. Batik telah menjadi nafas penghidupan masyarakat Pekalongan dan terbukti tetap dapat eksis dan tidak menyerah pada perkembangan jaman, sekaligus menunjukkan keuletan dan keluwesan masyarakatnya untuk mengadopsi pemikiran-pemikiran baru.</p>\r\n\r\n<p>Meskipun tidak ada catatan resmi kapan batik mulai dikenal di Pekalongan, namun menurut perkiraan batik sudah ada di Pekalongan sekitar tahun 1800. Bahkan menurut data yang tercatat di Deperindag, motif batik itu ada yang dibuat 1802, seperti motif pohon kecil berupa bahan baju.</p>\r\n\r\n<p>Perkembangan yang signifikan diperkirakan terjadi setelah perang Diponegoro atau perang Jawa pada tahun 1825-1830. Terjadinya peperangan ini mendesak keluarga kraton Mataram serta para pengikutnya banyak yang meninggalkan daerah kerajaan terbesar ke Timur dan Barat. Di daerah-daerah baru itu mereka kemudian menggembangkan batik. Ke arah timur berkembang dan mempengaruhi batik yang ada di Mojokerto, Tulunggagung, hingga menyebar ke Gresik, Surabaya, dan Madura. Sedangkan ke barat berkembang di banyumas, Kebumen, Tegal, Cirebon dan Pekalongan. Dengan adanya migrasi ini, maka batik Pekalongan yang telah berkembang sebelumnya semakin berkembang, Terutama di sekitar daerah pantai sehingga Pekalongan kota, Buaran, Pekajangan, dan Wonopringgo.</p>\r\n\r\n<p>Perjumpaan masyarakat Pekalongan dengan berbagai bangsa seperti Cina, Belanda, Arab, India, Melayu dan Jepang pada zaman lampau telah mewarnai dinamika pada motif dan tata warna seni batik. Sehingga tumbuh beberapa jenis motif batik hasil pengaruh budaya dari berbagai bangsa tersebut yang kemudian sebagai motif khas dan menjadi identitas batik Pekalongan. Motif Jlamprang diilhami dari Negeri India dan Arab. Motif Encim dan Klenengan, dipengaruhi oleh peranakan Cina. Motif Pagi-Sore dipengaruhi oleh orang Belanda, dan motif Hokokai tumbuh pesat pada masa pendudukan Jepang.</p>\r\n\r\n<p>Kota Pekalongan memiliki pelabuhan perikanan terbesar di Pulau Jawa. Pelabuhan ini sering menjadi transit dan area pelelangan hasil tangkapan laut oleh para nelayan dari berbagai daerah. Selain itu Kota Pekalongan banyak terdapat perusahaan pengolahan hasil laut,seperti ikan asin, ikan asap, tepung ikan, terasi, sarden, dan kerupuk ikan, baik perusahaan bersekala besar maupun industri rumah tangga.</p>\r\n\r\n<p>Kota Pekalongan terkenal dengan nuansa religiusnya, karena mayoritas penduduknya memeluk agama Islam. Ada beberapa adat tradisi di Pekalongan yang tidak dijumpai di daerah lain semisal; syawalan, sedekah bumi, dan sebagainya. Syawalan adalah perayaan tujuh hari setelah Idul Fitri dan disemarakkan dengan pemotongan lopis raksasa untuk kemudian dibagi-bagikan kepada para pengunjung.</p>\r\n\r\n<p>Nama Pekalongan sampai saat ini belum jelas asal-usulnya, belum ada prasasti atau dokumen lainnya yang bisa dipertanggungjawabkan, yang ada hanya berupa cerita rakyat atau legenda. Dokumen tertua yang menyebut nama Pekalongan adalah Keputusan Pemerintah Hindia Belanda (Gouvernements Besluit) Nomer 40 tahun 1931:nama Pekalongan diambil dari kata â€˜Halongâ€˜ (dapat banyak) dan dibawah simbul kota tertulis â€˜Pek-Alonganâ€˜.</p>\r\n\r\n<p>Kemudian berdasarkan keputusan DPRD Kota Besar Pekalongan tanggal 29 januari 1957 dan Tambahan Lembaran daerah Swatantra Tingkat I Jawa Tengah tanggal 15 Desember 1958, Serta persetujuan Pepekupeda Teritorium 4 dengan SK Nomer KTPS-PPD/00351/II/1958:nama Pekalongan berasal dari kata â€˜A-Pek-Halong-Anâ€˜ yang berarti pengangsalan (Pendapatan).</p>\r\n\r\n<p>Pada masa VOC (abad XVII) dan pemerintahan Kolonial Hindia Belanda, sistem Pemerintahan oleh orang pribumi tetap dipertahankan. Dalam hal ini Belanda menentukan kebijakan dan prioritas, sedangkan penguasa pribumi ini oleh VOC diberi gelar Regant (Bupati). Pda masa ini, Jawa Tengah dan jawa Timur dibagi menjadi 36 kabupaten Dengan sistem Pemerintahan Sentralistis</p>\r\n\r\n<p>Pada abad XIX dilakukan pembaharuan pemerintahan dengan dikeluarkannya Undang-Undang tahun 1954 yang membagi Jawa menjadi beberapa Gewest/Residensi. Setiap Gewest mencakup beberapa afdelling (setingkat kabupaten) yang dipimpin oleh asisten Residen, Distrik (Kawadenan) yang dipimpin oleh Controleur, dan Onderdistrict (Setinkat kecamatan) yang dipimpin Aspiran Controleur.</p>\r\n\r\n<p>&nbsp;<strong>Di wilayah Jawa Tengah terdapat lima Gewest, Yaitu:</strong></p>\r\n\r\n<ul>\r\n	<li>Semarang gewest yang terdiri dari semarang, Kendal, Demak, Kudus, Pati, Jepara dan Grobongan.</li>\r\n	<li style=\"text-align:justify\">Rembang Gewest yang terdiri dari Rembang, Blora, Tuban, dan Bojonegoro</li>\r\n	<li style=\"text-align:justify\">Kedu Gewest yang terdiri dari Magelang, Temanggung, Wonosobo, Purworejo, Kutoarjo, Kebumen, dan karanganyar.</li>\r\n	<li style=\"text-align:justify\">Banyumas Gewest yang terdiri dari Banyumas, Purwokerto, Cilacap, Banjarnegara, dan Purbalingga.</li>\r\n	<li style=\"text-align:justify\">Pekalongan gewest terdiri dari Brebes, Tegal, Pemalang, Pekalongan, Batang.</li>\r\n</ul>\r\n\r\n<p>Pada pertengahan abad XIX dikalangan kaum liberal Belanda muncul pemikiran etis-selanjutnya dikenal sebagai Politik Etisâ€˜ yang menyerukan Program Desentralisasi Kekuasaan Administratip yang memberikan hak otonomi kepada setiap Karesidenan (Gewest) dan Kota Besar (Gumentee) serta pemmbentukan dewan-dewan daerah di wilayah administratif tersebut. Pemikiran kaum liberal ini ditanggapi oleh Pemerintah Kerajaan Belanda dengan dikeluarkannya Staatbland Nomer 329 Tahun 1903 yang menjadi dasar hukum pemberian hak otonomi kepada setiap residensi (gewest); dan untuk Kota Pekalongan, hak otonomi ini diatur dalam Staatblaad Nomer 124 tahun 1906 tanggal 1 April 1906 tentang Decentralisatie Afzondering van Gelmiddelen voor de Hoofplaatss Pekalongan uit de Algemenee Geldmiddelen de dier Plaatse yang berlaku sejak tanggal ditetapkan.</p>\r\n\r\n<p>Pada tanggal 8 Maret 1942 Pemerintah Hindia Belanda menandatangani penyerahan kekuasaan kepada tentara Jepang. Jepang menghapus keberadaan dewan-dewan daerah, sedangkan Kabupaten dan Kotamadya diteruskan dan hanya menjalankan pemerintahan dekonsentrasi.</p>\r\n\r\n<p>Proklamasi Kemerdekaan Negara Kesatuan Republik Indonesia pada tanggal 17 Agustus oleh dwitunggal Soekarno-Hata di Jakarta, ditindaklanjuti rakyat Pekalongan dengan mengangkat senjata untuk merebut markas tentara Jepang pada tanggal 3 Oktober 1945. Perjuangan ini berhasil, sehingga pada tanggal 7 Oktober 1945 Pekalongan bebas dari tentara Jepang.</p>\r\n\r\n<p>Secara yuridis formal, Kota Pekalongan dibentuk berdasarkan Undang-Undang Nomer 16 Tahun 1950 tanggal 14 Agustus 1950 tentang Pembentukan Daerah Kota Besar dalam lingkungan Jawa Barat/Jawa Tengah/Jawa Timur dan Daerah Istimewa Jogjakarta. Selanjutnya dengan terbitnya Undang-Undang Nomor 18 Tahun 1965 tentang Pokok-Pokok Pemerintahan Daerah, maka Pekalongan berubah sebutannya menjadi Kotamadya Dati II Pekalongan.</p>\r\n\r\n<p>Terbitnya PP Nomer 21 Tahun 1988 tanggal 5 Desember 1988 dan ditinjaklanjuti dengan Inmendagri Nomor 3 Tahun 1989 merubah batas wilayah Kotamadya Dati II Pekalongan sehingga luas wilayahnya berubah dari 1.755 Ha menjadi 4.465,24 Ha dan terdiri dari 4 Kecamatan, 22 desa dan 24 kelurahan.</p>\r\n\r\n<p>Sejalan dengan era reformasi yang menuntut adanya reformasi disegala bidang, diterbitkan PP Nomer 22 Tahun 1999 tentang Pemerintahan Daerah dan PP Nomer 32 Tahun 2004 yang mengubah sebutan Kotamadya Dati II Pekalongan menjadi Kota Pekalongan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kepemimpinan Pekalongan dari Masa ke Masa</strong></p>\r\n\r\n<p>&nbsp;&nbsp; Selama kurun waktu 104 tahun yakni dari 1906 sampai dengan 2010 sekarang ini, telah ada 14 walikota yang memimpin Kota Pekalongan. Dengan gaya kepemimpinan yang berbeda, mereka semua bertujuan untuk membangun Kota Batik hingga mencapai kemajuan seperti sekarang ini. Para Walikota tersebut adalah:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>HJ. Kuneman (1 April 1906- 8 Maret 1942)</strong></p>\r\n\r\n<p>Diangkat sebagai Walikota (Burgemeester) untuk yang pertama kali 1 April 1906 berdasarkan Staatbllad Nomor 124 Tahun 1906, dibuat tanggal 21 Februari 1906 dan dikeluarkan pada tanggal 21 Februari 1906 dan dikeluarkan pada tanggal 1 Maret 1906 oleh Wakil Sekretaris Umum DE GROOT dan JB. VAN HEUTSZ) dan mulai berlaku tanggal 1 April 1906. Menjabat sebagai Walikota mulai tanggal 1 April 1906 sampai dengan awal pendudukan Jepang 1942 dan waktu itu, yang mengangkat adalah gubernur Jendral Hindia Belanda dengan masa jabatan waktu justru tidak terbatas.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Kawabata/R. Soempeno Danoewilogo (8 Maret 1942- 24 Agustus 1945)</strong></p>\r\n\r\n<p>Pada masa itu Burgemeester (Walikota) dihanti namanya menjadi SITYO. Tugas utamanya adalah melayani kepentingan perang â€œ DAI TOA â€œ (Perang Asia Timur Raya). Hal ini berlaku juga untuk kota lain diseluruh Indonesia. Meskipun Sityo dijabat oleh Kawabata, namun yang menjalankan tugas sehari-hari adalah R.Soempeno Danoewilogo.</p>\r\n\r\n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Soempeno Danoewilogo (17 Agustus 1945 â€“ 15 Maret 1945)</strong></p>\r\n\r\n<p>Beliau lahir di Temanggung pada 17 Maret 1894. Pada masa jabatannya banyak peristiwa yang sangat menentukan perjalan Kota Besar Pekalongan sebagai bagian yang tidak terpisahkan dari Negara Republik Indonesia. Pada waktu itu di Kota Pekalongan sedang terjadi gejolak p[erjuangan rakyat, pemuda dan Badan Keamanan Rakyat (BKR). Peristiwa yang terpenting adalah pengibaran bendera merah putih dan perebutan senjata tentara Jepang.</p>\r\n\r\n<p>Insiden berdarah terjadi pada saat perebutan markas Kempetai oleh rakyat yang dimotori oleh para pemuda dan bdan-badan perjuangan.</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Agoes Miftah Danoekoesoemo (1 Juni 1954 â€“ 1 Nopember 1956)</strong></p>\r\n\r\n<p>Beliau dilahirkan di Brebes pada 30 Agustus 1915. Menjabat Walikota/Kepala Daerah Kota Pekalongan berdasarkan Surat Keputusan Menteri Dalam Negeri tanggal 20 Mei 1945 Nomor: UP-11/1/22. Periode pemerintahan beliau merupakan masa revolusi kemerdekaan, sehingga kondisi di Pekalongan terpengaruh oleh peperangan, antara lain konfrontasi dengan Agresi Belanda I dan II.</p>\r\n\r\n<p><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>M. Soehartono Slamet Poespopranoto (1 Nopember 1956 â€“ 19 Nopember 1957)</strong></p>\r\n\r\n<p>Lahir tanggal 29 Agustus 1905 dan diangkat menjadi Walikota/Kepala Daerah Kota Besar Pekalongan dengan surat Keputusan Menteri Dalam Negeri tanggal 30 Oktober 1956 Nomor : UP-14 /2/7. Pada waktu menjabat sebagai walikota, penyelenggaraan pemerintahan menganut asas dekonsentrasi dan asasdesentralisasi. Pemberlakuan dua asa ini merupakan konsekuensi dari diberlakukannya Undang Undang Nomer 1 Tahun 1957 tentang Pokok Pemerintahan di Daerah. Tugas Walikota mencakup dua hal, yakni sebagai pejabat pemerintah pusat dan sekaligus sebagai kepala daerah.</p>\r\n\r\n<p><strong>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Iskandar Said (13 Januari 1958-17 Januari 1959)</strong></p>\r\n\r\n<p>Dilahirkan di Temanggung pada tahun 1898. Diangkat sebgai Kepala Daerah Kotapraja Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 2 Januari 1957, Nomer:Des.71/1/10. Pada waktu menjabat sebagai walikota, peyelenggaraan pemerintah menganut asas dekonsentrasi dan asas desentralisasi. Pemberlakuan dua asa ini merupakan konsekuensi dari diberlakukannya Undang Undang Nomer 1 Tahun 1957 tentang Pokok Pemerintahan di Daerah. Tugas Walikota mencakup dua hal, yakni sebagai pejabat pemerintah pusat dan sekaligus sebagai kepala daerah.</p>\r\n\r\n<p><strong>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R.M Bambang Sardjono Noersetyo (14 April 1959 â€“ Nopember 1959)</strong></p>\r\n\r\n<p>Lahir di Yogyakarta pada tahun 1926. Disahkan sebagai Kepala Daerah Kotapraja Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 16 Maret 1959 Nomor : Des. 71/6/26/57 dan dilantik pada tanggal 14 April 1959.</p>\r\n\r\n<p><strong>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Mochamad Tedjo (5 April-30 Mei 1967)</strong></p>\r\n\r\n<p>Masa jabatan : 5 April 1060 â€“ 30 Mei 1967. Diangkat menjadi Walikota dengan Surat Keputusan Menteri Dalam Negeri tanggal 5 April 1960.</p>\r\n\r\n<p><strong>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Teguh Soenarjo (30 Mei 1067-11 Oktober 1972)</strong></p>\r\n\r\n<p>Diangkat sebagai Walikota Kepala Daerah Kotamadya Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 30 Mei 1967.</p>\r\n\r\n<p><strong>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Drs. R. Soepomo (11 Oktober 1972-7 Nopember 1979)</strong></p>\r\n\r\n<p>Diangkat sebagai Kepala Daerah Pekalongan Dengan Surat Keputusan Menteri Dalam Negeri tanggal 11 Oktober 1972.</p>\r\n\r\n<p><strong>11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H. Djoko Prawoto, BA (7 Nopember 1979 â€“ 7 Nopember 1989)</strong></p>\r\n\r\n<p>Dilahirkan di Boyolali. Kota Pekalongan dipimpin oleh Djoko Prawoto, BA selama dua periode, yakni 7 Nopember 1979 â€“ 7 Nopember 1989. Pada masa kepemimpinan beliau, Kota Pekalongan mengalami perubahan luas wilayah dari 1.755 Ha menjadi 4.465,24 Ha berdasarkan UU Nomer 21 tentang Perubahan Batas Wilayah Kotamadya Dati II Pekalongan, Kabupaten Dati II Batang dan Kabupaten Dati II Pekalongan. Prestasi yang telah dicapai antara lain Teladan Nasional sebagai Koperasi Simpan Pinjam Terbaik Nasional untuk KUD Kospin Jasa (1984, 1985, 1986, 1987), Teladan Nasional untuk KUD Makaryo Mino (1984, 1985, 1986, 1987), Satya Lencana Pembangunan Koperasi (1987).</p>\r\n\r\n<p><strong>12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H. Mochamad Chaeron, BA (7 Nopember 1989 â€“ 7 Nopember 1994)</strong></p>\r\n\r\n<p>&nbsp;Dilahirkan di Semarang. Diangkat menjadi Walikota berdasarkan Surat Keputusan Gubernur Jawa Tengah tanggal 7 Nopember 1989. Prestasi yang telah dicapai antara lain : Koperasi Teladan Nasional untuk KUD Kospin Jasa dan KUD Makaryo Mino (1989, 1990, 1991, 1992, 1993, 1994), Penghargaan Satya Lencana Pembangunan Koperasi dari Presiden (1994).</p>\r\n\r\n<p><strong>13.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Drs. Samsudiat, MM (27 Oktober 1994 â€“ 5 Juli 2004)</strong></p>\r\n\r\n<p>Dilahirkan di Cilacap pada tanggal 15 Pebruari 1942. Beliau menjabat Walikota selama dua periode. Periode pertama berdasarkanSurat Keputusan Menteri Dalam Negeri Nomer 131,33-293 tanggal 27 Oktober 1994. Sedangkan periode kedua berdasarkan Surat Keputusan Menteri Dalam Negeri Nomer131,33-1301 tanggal 30 Desember 1999. Pada periode kedua ini didampingi H. Hamzah Shodiq, BA sebagai Wakil Walikota. Penghargaan yang diterima antara lain adalah Satya Lencana Pembangunan Koperasi dari Menteri Koperasi (2000), Penghargaan Manggala Karya Bhakti Husada bidang Kota Sehat (2004). Kegiatan pembangunan yang menonjol antara lain adalah peningkatan prasarana lingkungan di 9 kelurahan, pembangunan Jalan Wilis dan Jalan Majapahit, Pembangunan Prasarana Perkotaan Secara Terpadu (P3KT) ADB Loan 1198-IND dan pembangunan Pasar Grogolan Baru, pembangunan kantor Komisi Pemilihan Umum Daerah, pembanguanan Terminal A, pembangunan sungai Kuripan Lor untuk mencegah banjir tahunan, pembangunan Kolam Renang Tirtasari, pembangunan gedung olah raga Stadion Kraton, pembangunan Gedung Kesenian dan Olahraga di jalan Jatayu.</p>\r\n\r\n<p><strong>14.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H.M Basyir Ahmad dan H.A Alf Arslan Djunaid ( 5 Juli 2005-9 Agustus 2015 )</strong></p>\r\n\r\n<p>Beliau berdua merupakan warga asli Pekalongan. Walikota dan Wakil Walikota masing-masing diangkat berdasarkan Surat Keputusan Menteri Dalam Negeri Nomer 13.33-472 dan Nomer 132.33-473 Tanggal 5 Juli 2005.</p>\r\n\r\n<p>Kegiatan Pemerintahan yang menonjol antara lain adalah peresmian Musium Batik oleh Presiden Susilo Bambang Yudhoyono, upaya mengalokasikan dana pendidikan sebesar 20% dari APBD, diberlakukannya jam ke 0 untuk baca dan tulis Al-QurÂ´an pada SD, SMP dan SMA, penyediaan buku teks mata pelajaran pokok satu anak satu buku, rehabilitasi bangunan sekolah yang rusak berat&nbsp;sampai 2008 dengan pendanaan 20% APBD Kota + 30% APBD Propinsi&nbsp;+ 50% APBD, percepatan pendidikan matematika dan fisika tingkat SD, full day learning bagi 4 Sekolah di pinggiran, pencanangan pelayanan prima seluruh SKPD, penyelenggaraan Pekan Batik Kauman, perbaikan 5000 rumah kumuh menjadi layak huni Tahun 2010, pemenuhan pembangunan rumah bagi buruh dan PNS golongan rendah sebanyak 144 Unit rumah inti tumbuh di Griya Swadaya Asri Kandang Panjang, penyediaan dana bagi masyarakat miskin di Bidang pelayanan kesehatan, pendidikan dan modal kerja, pembangunan Rumah Sakit Umum Daerah, pembangunan masjid Al-ikhlas, Pembentukan Kelurahan Panjang Baru, penataan alon-alon dan pedagang kakilima.</p>\r\n\r\n<p>Penghargaan tingkat propinsi yang telah diperoleh antara lain adalah pemenang Pembangunan Perumahan Swadaya pada Lomba Habitat Dunia 2007, 2008 dan 2009 dengan tema â€œA save City a just City, pelaksana terbaik 3 pada Lomba Kesatuan Gerak PKK-KB-Kesehatan 2006, Juara 2 Pengelolaan UPPKS, Juara 2 keluarga Harmonis, Juara 1 Lomba Karya tulis Kesehatan Reproduksi Remaja Tingkat SLTP, Juara 1 kelompok BKR, dan Juara 2 Sekolah Sehat Tingkat SD.&nbsp;Penghargaan tingkat Nasional yang telah diperoleh antara lain adalah Juara 1 Penataan Pemukiman Kumuh 2007 dan 2008, Penghargaan Manggala Karya Bhakti Husada pada penyelenggaraan Kota Sehat Tingkat Pengembangan 2004, Penghargaan Swasti Saba pada Hari Kesehatan Nasional 2005, Penghargaan Ksatria Bhakti Husada Arutala kepada forum kota Sehat Pekalongan atas prestasi meningkatkan status kesehatan lingkungan Kota Pekalongan, Manggala Karya Kencana bidang keluarga Berencana 2006/2007, Nominator 10 besar MDGs, Pelaksana Terbaik Pelaksanaan SLTP PKPS BBM Evaluasi Sekretaris PKK Pusat, mewakili Indonesia di Seminar United Nation habitat di Nairabi dengan makalah Pola Penangggulangan Kemiskinan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ON', 6, '2018-10-01 17:00:00'),
('20180411085958', 'admindindik', 'Sejarah Singkat', 'sejarah-singkat', 'halaman_20180827111123.jpeg', '<p style=\"text-align: center;\"><strong><span style=\"font-size:12.0pt\">Sejarah Singkat Kota Pekalongan</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kota Pekalongan adalah salah satu kota di pesisir pantai utara Provinsi Jawa Tengah. Kota ini berbatasan dengan laut jawa di utara, Kabupaten Pekalongan di sebelah selatan dan barat dan Kabupaten Batang di timur. Kota Pekalongan terdiri atas 4 kecamatan, yakni Pekalongan Utara, Pekalongan Barat, Pekalongan Selatan dan Pekalongan Timur. Kota Pekalongan terletak di jalur pantai Utara Jawa yang menghubungkan Jakarta-Semarang-Surabaya. Kota Pekalongan berjarak 384 km di timur Jakarta dan 101 km sebelah barat Semarang. Kota Pekalongan mendapat julukan kota batik. Hal ini tidak terlepas dari sejarah bahwa sejak puluhan dan ratusan tahun lampau hingga sekarang, sebagian besar proses produksi batik Pekalongan dikerjakan di rumah-rumah. Akibatnya batik Pekalongan menyatu erat dengan kehidupan masyarakat Pekalongan. Batik telah menjadi nafas penghidupan masyarakat Pekalongan dan terbukti tetap dapat eksis dan tidak menyerah pada perkembangan jaman, sekaligus menunjukkan keuletan dan keluwesan masyarakatnya untuk mengadopsi pemikiran-pemikiran baru.</p>\r\n\r\n<p>Meskipun tidak ada catatan resmi kapan batik mulai dikenal di Pekalongan, namun menurut perkiraan batik sudah ada di Pekalongan sekitar tahun 1800. Bahkan menurut data yang tercatat di Deperindag, motif batik itu ada yang dibuat 1802, seperti motif pohon kecil berupa bahan baju.</p>\r\n\r\n<p>Perkembangan yang signifikan diperkirakan terjadi setelah perang Diponegoro atau perang Jawa pada tahun 1825-1830. Terjadinya peperangan ini mendesak keluarga kraton Mataram serta para pengikutnya banyak yang meninggalkan daerah kerajaan terbesar ke Timur dan Barat. Di daerah-daerah baru itu mereka kemudian menggembangkan batik. Ke arah timur berkembang dan mempengaruhi batik yang ada di Mojokerto, Tulunggagung, hingga menyebar ke Gresik, Surabaya, dan Madura. Sedangkan ke barat berkembang di banyumas, Kebumen, Tegal, Cirebon dan Pekalongan. Dengan adanya migrasi ini, maka batik Pekalongan yang telah berkembang sebelumnya semakin berkembang, Terutama di sekitar daerah pantai sehingga Pekalongan kota, Buaran, Pekajangan, dan Wonopringgo.</p>\r\n\r\n<p>Perjumpaan masyarakat Pekalongan dengan berbagai bangsa seperti Cina, Belanda, Arab, India, Melayu dan Jepang pada zaman lampau telah mewarnai dinamika pada motif dan tata warna seni batik. Sehingga tumbuh beberapa jenis motif batik hasil pengaruh budaya dari berbagai bangsa tersebut yang kemudian sebagai motif khas dan menjadi identitas batik Pekalongan. Motif Jlamprang diilhami dari Negeri India dan Arab. Motif Encim dan Klenengan, dipengaruhi oleh peranakan Cina. Motif Pagi-Sore dipengaruhi oleh orang Belanda, dan motif Hokokai tumbuh pesat pada masa pendudukan Jepang.</p>\r\n\r\n<p>Kota Pekalongan memiliki pelabuhan perikanan terbesar di Pulau Jawa. Pelabuhan ini sering menjadi transit dan area pelelangan hasil tangkapan laut oleh para nelayan dari berbagai daerah. Selain itu Kota Pekalongan banyak terdapat perusahaan pengolahan hasil laut,seperti ikan asin, ikan asap, tepung ikan, terasi, sarden, dan kerupuk ikan, baik perusahaan bersekala besar maupun industri rumah tangga.</p>\r\n\r\n<p>Kota Pekalongan terkenal dengan nuansa religiusnya, karena mayoritas penduduknya memeluk agama Islam. Ada beberapa adat tradisi di Pekalongan yang tidak dijumpai di daerah lain semisal; syawalan, sedekah bumi, dan sebagainya. Syawalan adalah perayaan tujuh hari setelah Idul Fitri dan disemarakkan dengan pemotongan lopis raksasa untuk kemudian dibagi-bagikan kepada para pengunjung.</p>\r\n\r\n<p>Nama Pekalongan sampai saat ini belum jelas asal-usulnya, belum ada prasasti atau dokumen lainnya yang bisa dipertanggungjawabkan, yang ada hanya berupa cerita rakyat atau legenda. Dokumen tertua yang menyebut nama Pekalongan adalah Keputusan Pemerintah Hindia Belanda (Gouvernements Besluit) Nomer 40 tahun 1931:nama Pekalongan diambil dari kata â€˜Halongâ€˜ (dapat banyak) dan dibawah simbul kota tertulis â€˜Pek-Alonganâ€˜.</p>\r\n\r\n<p>Kemudian berdasarkan keputusan DPRD Kota Besar Pekalongan tanggal 29 januari 1957 dan Tambahan Lembaran daerah Swatantra Tingkat I Jawa Tengah tanggal 15 Desember 1958, Serta persetujuan Pepekupeda Teritorium 4 dengan SK Nomer KTPS-PPD/00351/II/1958:nama Pekalongan berasal dari kata â€˜A-Pek-Halong-Anâ€˜ yang berarti pengangsalan (Pendapatan).</p>\r\n\r\n<p>Pada masa VOC (abad XVII) dan pemerintahan Kolonial Hindia Belanda, sistem Pemerintahan oleh orang pribumi tetap dipertahankan. Dalam hal ini Belanda menentukan kebijakan dan prioritas, sedangkan penguasa pribumi ini oleh VOC diberi gelar Regant (Bupati). Pda masa ini, Jawa Tengah dan jawa Timur dibagi menjadi 36 kabupaten Dengan sistem Pemerintahan Sentralistis</p>\r\n\r\n<p>Pada abad XIX dilakukan pembaharuan pemerintahan dengan dikeluarkannya Undang-Undang tahun 1954 yang membagi Jawa menjadi beberapa Gewest/Residensi. Setiap Gewest mencakup beberapa afdelling (setingkat kabupaten) yang dipimpin oleh asisten Residen, Distrik (Kawadenan) yang dipimpin oleh Controleur, dan Onderdistrict (Setinkat kecamatan) yang dipimpin Aspiran Controleur.</p>\r\n\r\n<p>&nbsp;<strong>Di wilayah Jawa Tengah terdapat lima Gewest, Yaitu:</strong></p>\r\n\r\n<ul>\r\n	<li>Semarang gewest yang terdiri dari semarang, Kendal, Demak, Kudus, Pati, Jepara dan Grobongan.</li>\r\n	<li style=\"text-align:justify\">Rembang Gewest yang terdiri dari Rembang, Blora, Tuban, dan Bojonegoro</li>\r\n	<li style=\"text-align:justify\">Kedu Gewest yang terdiri dari Magelang, Temanggung, Wonosobo, Purworejo, Kutoarjo, Kebumen, dan karanganyar.</li>\r\n	<li style=\"text-align:justify\">Banyumas Gewest yang terdiri dari Banyumas, Purwokerto, Cilacap, Banjarnegara, dan Purbalingga.</li>\r\n	<li style=\"text-align:justify\">Pekalongan gewest terdiri dari Brebes, Tegal, Pemalang, Pekalongan, Batang.</li>\r\n</ul>\r\n\r\n<p>Pada pertengahan abad XIX dikalangan kaum liberal Belanda muncul pemikiran etis-selanjutnya dikenal sebagai Politik Etisâ€˜ yang menyerukan Program Desentralisasi Kekuasaan Administratip yang memberikan hak otonomi kepada setiap Karesidenan (Gewest) dan Kota Besar (Gumentee) serta pemmbentukan dewan-dewan daerah di wilayah administratif tersebut. Pemikiran kaum liberal ini ditanggapi oleh Pemerintah Kerajaan Belanda dengan dikeluarkannya Staatbland Nomer 329 Tahun 1903 yang menjadi dasar hukum pemberian hak otonomi kepada setiap residensi (gewest); dan untuk Kota Pekalongan, hak otonomi ini diatur dalam Staatblaad Nomer 124 tahun 1906 tanggal 1 April 1906 tentang Decentralisatie Afzondering van Gelmiddelen voor de Hoofplaatss Pekalongan uit de Algemenee Geldmiddelen de dier Plaatse yang berlaku sejak tanggal ditetapkan.</p>\r\n\r\n<p>Pada tanggal 8 Maret 1942 Pemerintah Hindia Belanda menandatangani penyerahan kekuasaan kepada tentara Jepang. Jepang menghapus keberadaan dewan-dewan daerah, sedangkan Kabupaten dan Kotamadya diteruskan dan hanya menjalankan pemerintahan dekonsentrasi.</p>\r\n\r\n<p>Proklamasi Kemerdekaan Negara Kesatuan Republik Indonesia pada tanggal 17 Agustus oleh dwitunggal Soekarno-Hata di Jakarta, ditindaklanjuti rakyat Pekalongan dengan mengangkat senjata untuk merebut markas tentara Jepang pada tanggal 3 Oktober 1945. Perjuangan ini berhasil, sehingga pada tanggal 7 Oktober 1945 Pekalongan bebas dari tentara Jepang.</p>\r\n\r\n<p>Secara yuridis formal, Kota Pekalongan dibentuk berdasarkan Undang-Undang Nomer 16 Tahun 1950 tanggal 14 Agustus 1950 tentang Pembentukan Daerah Kota Besar dalam lingkungan Jawa Barat/Jawa Tengah/Jawa Timur dan Daerah Istimewa Jogjakarta. Selanjutnya dengan terbitnya Undang-Undang Nomor 18 Tahun 1965 tentang Pokok-Pokok Pemerintahan Daerah, maka Pekalongan berubah sebutannya menjadi Kotamadya Dati II Pekalongan.</p>\r\n\r\n<p>Terbitnya PP Nomer 21 Tahun 1988 tanggal 5 Desember 1988 dan ditinjaklanjuti dengan Inmendagri Nomor 3 Tahun 1989 merubah batas wilayah Kotamadya Dati II Pekalongan sehingga luas wilayahnya berubah dari 1.755 Ha menjadi 4.465,24 Ha dan terdiri dari 4 Kecamatan, 22 desa dan 24 kelurahan.</p>\r\n\r\n<p>Sejalan dengan era reformasi yang menuntut adanya reformasi disegala bidang, diterbitkan PP Nomer 22 Tahun 1999 tentang Pemerintahan Daerah dan PP Nomer 32 Tahun 2004 yang mengubah sebutan Kotamadya Dati II Pekalongan menjadi Kota Pekalongan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kepemimpinan Pekalongan dari Masa ke Masa</strong></p>\r\n\r\n<p>&nbsp;&nbsp; Selama kurun waktu 104 tahun yakni dari 1906 sampai dengan 2010 sekarang ini, telah ada 14 walikota yang memimpin Kota Pekalongan. Dengan gaya kepemimpinan yang berbeda, mereka semua bertujuan untuk membangun Kota Batik hingga mencapai kemajuan seperti sekarang ini. Para Walikota tersebut adalah:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>HJ. Kuneman (1 April 1906- 8 Maret 1942)</strong></p>\r\n\r\n<p>Diangkat sebagai Walikota (Burgemeester) untuk yang pertama kali 1 April 1906 berdasarkan Staatbllad Nomor 124 Tahun 1906, dibuat tanggal 21 Februari 1906 dan dikeluarkan pada tanggal 21 Februari 1906 dan dikeluarkan pada tanggal 1 Maret 1906 oleh Wakil Sekretaris Umum DE GROOT dan JB. VAN HEUTSZ) dan mulai berlaku tanggal 1 April 1906. Menjabat sebagai Walikota mulai tanggal 1 April 1906 sampai dengan awal pendudukan Jepang 1942 dan waktu itu, yang mengangkat adalah gubernur Jendral Hindia Belanda dengan masa jabatan waktu justru tidak terbatas.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Kawabata/R. Soempeno Danoewilogo (8 Maret 1942- 24 Agustus 1945)</strong></p>\r\n\r\n<p>Pada masa itu Burgemeester (Walikota) dihanti namanya menjadi SITYO. Tugas utamanya adalah melayani kepentingan perang â€œ DAI TOA â€œ (Perang Asia Timur Raya). Hal ini berlaku juga untuk kota lain diseluruh Indonesia. Meskipun Sityo dijabat oleh Kawabata, namun yang menjalankan tugas sehari-hari adalah R.Soempeno Danoewilogo.</p>\r\n\r\n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Soempeno Danoewilogo (17 Agustus 1945 â€“ 15 Maret 1945)</strong></p>\r\n\r\n<p>Beliau lahir di Temanggung pada 17 Maret 1894. Pada masa jabatannya banyak peristiwa yang sangat menentukan perjalan Kota Besar Pekalongan sebagai bagian yang tidak terpisahkan dari Negara Republik Indonesia. Pada waktu itu di Kota Pekalongan sedang terjadi gejolak p[erjuangan rakyat, pemuda dan Badan Keamanan Rakyat (BKR). Peristiwa yang terpenting adalah pengibaran bendera merah putih dan perebutan senjata tentara Jepang.</p>\r\n\r\n<p>Insiden berdarah terjadi pada saat perebutan markas Kempetai oleh rakyat yang dimotori oleh para pemuda dan bdan-badan perjuangan.</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Agoes Miftah Danoekoesoemo (1 Juni 1954 â€“ 1 Nopember 1956)</strong></p>\r\n\r\n<p>Beliau dilahirkan di Brebes pada 30 Agustus 1915. Menjabat Walikota/Kepala Daerah Kota Pekalongan berdasarkan Surat Keputusan Menteri Dalam Negeri tanggal 20 Mei 1945 Nomor: UP-11/1/22. Periode pemerintahan beliau merupakan masa revolusi kemerdekaan, sehingga kondisi di Pekalongan terpengaruh oleh peperangan, antara lain konfrontasi dengan Agresi Belanda I dan II.</p>\r\n\r\n<p><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>M. Soehartono Slamet Poespopranoto (1 Nopember 1956 â€“ 19 Nopember 1957)</strong></p>\r\n\r\n<p>Lahir tanggal 29 Agustus 1905 dan diangkat menjadi Walikota/Kepala Daerah Kota Besar Pekalongan dengan surat Keputusan Menteri Dalam Negeri tanggal 30 Oktober 1956 Nomor : UP-14 /2/7. Pada waktu menjabat sebagai walikota, penyelenggaraan pemerintahan menganut asas dekonsentrasi dan asasdesentralisasi. Pemberlakuan dua asa ini merupakan konsekuensi dari diberlakukannya Undang Undang Nomer 1 Tahun 1957 tentang Pokok Pemerintahan di Daerah. Tugas Walikota mencakup dua hal, yakni sebagai pejabat pemerintah pusat dan sekaligus sebagai kepala daerah.</p>\r\n\r\n<p><strong>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Iskandar Said (13 Januari 1958-17 Januari 1959)</strong></p>\r\n\r\n<p>Dilahirkan di Temanggung pada tahun 1898. Diangkat sebgai Kepala Daerah Kotapraja Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 2 Januari 1957, Nomer:Des.71/1/10. Pada waktu menjabat sebagai walikota, peyelenggaraan pemerintah menganut asas dekonsentrasi dan asas desentralisasi. Pemberlakuan dua asa ini merupakan konsekuensi dari diberlakukannya Undang Undang Nomer 1 Tahun 1957 tentang Pokok Pemerintahan di Daerah. Tugas Walikota mencakup dua hal, yakni sebagai pejabat pemerintah pusat dan sekaligus sebagai kepala daerah.</p>\r\n\r\n<p><strong>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R.M Bambang Sardjono Noersetyo (14 April 1959 â€“ Nopember 1959)</strong></p>\r\n\r\n<p>Lahir di Yogyakarta pada tahun 1926. Disahkan sebagai Kepala Daerah Kotapraja Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 16 Maret 1959 Nomor : Des. 71/6/26/57 dan dilantik pada tanggal 14 April 1959.</p>\r\n\r\n<p><strong>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Mochamad Tedjo (5 April-30 Mei 1967)</strong></p>\r\n\r\n<p>Masa jabatan : 5 April 1060 â€“ 30 Mei 1967. Diangkat menjadi Walikota dengan Surat Keputusan Menteri Dalam Negeri tanggal 5 April 1960.</p>\r\n\r\n<p><strong>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>R. Teguh Soenarjo (30 Mei 1067-11 Oktober 1972)</strong></p>\r\n\r\n<p>Diangkat sebagai Walikota Kepala Daerah Kotamadya Pekalongan dengan Surat Keputusan Menteri Dalam Negeri tanggal 30 Mei 1967.</p>\r\n\r\n<p><strong>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Drs. R. Soepomo (11 Oktober 1972-7 Nopember 1979)</strong></p>\r\n\r\n<p>Diangkat sebagai Kepala Daerah Pekalongan Dengan Surat Keputusan Menteri Dalam Negeri tanggal 11 Oktober 1972.</p>\r\n\r\n<p><strong>11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H. Djoko Prawoto, BA (7 Nopember 1979 â€“ 7 Nopember 1989)</strong></p>\r\n\r\n<p>Dilahirkan di Boyolali. Kota Pekalongan dipimpin oleh Djoko Prawoto, BA selama dua periode, yakni 7 Nopember 1979 â€“ 7 Nopember 1989. Pada masa kepemimpinan beliau, Kota Pekalongan mengalami perubahan luas wilayah dari 1.755 Ha menjadi 4.465,24 Ha berdasarkan UU Nomer 21 tentang Perubahan Batas Wilayah Kotamadya Dati II Pekalongan, Kabupaten Dati II Batang dan Kabupaten Dati II Pekalongan. Prestasi yang telah dicapai antara lain Teladan Nasional sebagai Koperasi Simpan Pinjam Terbaik Nasional untuk KUD Kospin Jasa (1984, 1985, 1986, 1987), Teladan Nasional untuk KUD Makaryo Mino (1984, 1985, 1986, 1987), Satya Lencana Pembangunan Koperasi (1987).</p>\r\n\r\n<p><strong>12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H. Mochamad Chaeron, BA (7 Nopember 1989 â€“ 7 Nopember 1994)</strong></p>\r\n\r\n<p>&nbsp;Dilahirkan di Semarang. Diangkat menjadi Walikota berdasarkan Surat Keputusan Gubernur Jawa Tengah tanggal 7 Nopember 1989. Prestasi yang telah dicapai antara lain : Koperasi Teladan Nasional untuk KUD Kospin Jasa dan KUD Makaryo Mino (1989, 1990, 1991, 1992, 1993, 1994), Penghargaan Satya Lencana Pembangunan Koperasi dari Presiden (1994).</p>\r\n\r\n<p><strong>13.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Drs. Samsudiat, MM (27 Oktober 1994 â€“ 5 Juli 2004)</strong></p>\r\n\r\n<p>Dilahirkan di Cilacap pada tanggal 15 Pebruari 1942. Beliau menjabat Walikota selama dua periode. Periode pertama berdasarkanSurat Keputusan Menteri Dalam Negeri Nomer 131,33-293 tanggal 27 Oktober 1994. Sedangkan periode kedua berdasarkan Surat Keputusan Menteri Dalam Negeri Nomer131,33-1301 tanggal 30 Desember 1999. Pada periode kedua ini didampingi H. Hamzah Shodiq, BA sebagai Wakil Walikota. Penghargaan yang diterima antara lain adalah Satya Lencana Pembangunan Koperasi dari Menteri Koperasi (2000), Penghargaan Manggala Karya Bhakti Husada bidang Kota Sehat (2004). Kegiatan pembangunan yang menonjol antara lain adalah peningkatan prasarana lingkungan di 9 kelurahan, pembangunan Jalan Wilis dan Jalan Majapahit, Pembangunan Prasarana Perkotaan Secara Terpadu (P3KT) ADB Loan 1198-IND dan pembangunan Pasar Grogolan Baru, pembangunan kantor Komisi Pemilihan Umum Daerah, pembanguanan Terminal A, pembangunan sungai Kuripan Lor untuk mencegah banjir tahunan, pembangunan Kolam Renang Tirtasari, pembangunan gedung olah raga Stadion Kraton, pembangunan Gedung Kesenian dan Olahraga di jalan Jatayu.</p>\r\n\r\n<p><strong>14.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>H.M Basyir Ahmad dan H.A Alf Arslan Djunaid ( 5 Juli 2005-9 Agustus 2015 )</strong></p>\r\n\r\n<p>Beliau berdua merupakan warga asli Pekalongan. Walikota dan Wakil Walikota masing-masing diangkat berdasarkan Surat Keputusan Menteri Dalam Negeri Nomer 13.33-472 dan Nomer 132.33-473 Tanggal 5 Juli 2005.</p>\r\n\r\n<p>Kegiatan Pemerintahan yang menonjol antara lain adalah peresmian Musium Batik oleh Presiden Susilo Bambang Yudhoyono, upaya mengalokasikan dana pendidikan sebesar 20% dari APBD, diberlakukannya jam ke 0 untuk baca dan tulis Al-QurÂ´an pada SD, SMP dan SMA, penyediaan buku teks mata pelajaran pokok satu anak satu buku, rehabilitasi bangunan sekolah yang rusak berat&nbsp;sampai 2008 dengan pendanaan 20% APBD Kota + 30% APBD Propinsi&nbsp;+ 50% APBD, percepatan pendidikan matematika dan fisika tingkat SD, full day learning bagi 4 Sekolah di pinggiran, pencanangan pelayanan prima seluruh SKPD, penyelenggaraan Pekan Batik Kauman, perbaikan 5000 rumah kumuh menjadi layak huni Tahun 2010, pemenuhan pembangunan rumah bagi buruh dan PNS golongan rendah sebanyak 144 Unit rumah inti tumbuh di Griya Swadaya Asri Kandang Panjang, penyediaan dana bagi masyarakat miskin di Bidang pelayanan kesehatan, pendidikan dan modal kerja, pembangunan Rumah Sakit Umum Daerah, pembangunan masjid Al-ikhlas, Pembentukan Kelurahan Panjang Baru, penataan alon-alon dan pedagang kakilima.</p>\r\n\r\n<p>Penghargaan tingkat propinsi yang telah diperoleh antara lain adalah pemenang Pembangunan Perumahan Swadaya pada Lomba Habitat Dunia 2007, 2008 dan 2009 dengan tema â€œA save City a just City, pelaksana terbaik 3 pada Lomba Kesatuan Gerak PKK-KB-Kesehatan 2006, Juara 2 Pengelolaan UPPKS, Juara 2 keluarga Harmonis, Juara 1 Lomba Karya tulis Kesehatan Reproduksi Remaja Tingkat SLTP, Juara 1 kelompok BKR, dan Juara 2 Sekolah Sehat Tingkat SD.&nbsp;Penghargaan tingkat Nasional yang telah diperoleh antara lain adalah Juara 1 Penataan Pemukiman Kumuh 2007 dan 2008, Penghargaan Manggala Karya Bhakti Husada pada penyelenggaraan Kota Sehat Tingkat Pengembangan 2004, Penghargaan Swasti Saba pada Hari Kesehatan Nasional 2005, Penghargaan Ksatria Bhakti Husada Arutala kepada forum kota Sehat Pekalongan atas prestasi meningkatkan status kesehatan lingkungan Kota Pekalongan, Manggala Karya Kencana bidang keluarga Berencana 2006/2007, Nominator 10 besar MDGs, Pelaksana Terbaik Pelaksanaan SLTP PKPS BBM Evaluasi Sekretaris PKK Pusat, mewakili Indonesia di Seminar United Nation habitat di Nairabi dengan makalah Pola Penangggulangan Kemiskinan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ON', 6, '2018-09-30 17:00:00'),
('20180411090113', 'admindinperpa', 'Geografi', 'geografi', 'halaman_20180827111113.jpg', '<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Secara geografis, wilayah Kota Pekalongan terletak antara 60 50â€™ 42\" - 60 55â€™ 44â€ Lintang Selatan dan 1090 37â€™ 55â€ - 1090 42â€™ 19â€ Bujur Timur. Rencana Tata Ruang Wilayah Nasional (RTRWN) menetapkan Kota Pekalongan sebagai Pusat Kegiatan Wilayah (PKW). Sebagai PKW maka diharapkan Kota Pekalongan dapat berperan menjadi pusat pengembangan bagi wilayah di sekitarnya, yang meliputi Kabupaten Pekalongan dan Kabupaten Batang. </font></p>\r\n\r\n<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Dalam sistem pengembangan wilayah Provinsi Jawa Tengah, RTRW Provinsi Jawa Tengah juga menetapkan Kota Pekalongan sebagai bagian dan simpul utama dari Kawasan Petanglong (Kawasan Kota Pekalongan, Kabupaten Batang dan Kabupaten Pekalongan). Kawasan Petanglong adalah kawasan strategis dari sudut kepentingan pertumbuhan ekonomi dan sektor unggulannya adalah pertanian, pariwisata, industri dan perikanan. Potensi ekonomi yang manjadi andalan Kawasan Petanglong meliputi sektor primer adalah perikanan; sektor sekunder adalah tekstil, batik, dan pengolahan ikan; serta sektor tersier adalah jasa dan perdagangan. Kondisi ini tentunya menjadikan Kota Pekalongan memiliki posisi yang sangat strategis. </font></p>\r\n\r\n<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebagai daerah yang telah berkembang dan produk domestik regional bruto terbesarnya disumbangkan lapangan usaha Perdagangan Besar dan Eceran, Reparasi Mobil dan Sepeda Motor (22,14%), Industri Pengolahan (21,67%), dan Konstruksi (14,91%) serta posisi strategis Kota Pekalongan di jalur Pantai Utara Jawa maka tentunya Kota Pekalongan memiliki keunggulan komparatif (comparative advantage) dibandingkan daerah lainnya. Diharapkan keunggulan ini dapat menjadi lokomotif bagi kemajuan dan peningkatan kesejahteraan masyarakat secara berkelanjutan.</font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%201.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%201.png\" align=\"middle\" height=\"433\" width=\"640\"></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"CENTER\"><font style=\"font-size: 11pt\"><strong>Gambar 2.1 Peta Orientasi Kota Pekalongan </strong></font></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Batas administratif Kota Pekalongan adalah sebagai berikut: </font></p>\r\n\r\n<ol type=\"a\">\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Utara berbatasan dengan Laut Jawa; </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Timur berbatasan dengan Kabupaten Batang; </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Selatan berbatasan dengan Kabupaten Batang dan Pekalongan; dan </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Barat berbatasan dengan Kabupaten Pekalongan </font></p>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Luas wilayah Kota Pekalongan adalah 4.525 Ha atau 45,25 km2. Jarak terjauh dari wilayah Utara ke wilayah Selatan Â± 9 Km dan dari wilayah Barat ke wilayah Timur Â± 7 Km. Kota Pekalongan terdiri dari 4 kecamatan dan pada mulanya 47 kelurahan menjadi 27 kelurahan. Sesuai dengan Peraturan Daerah Nomor 8 Tahun 2013 tentang Penggabungan Kelurahan di Lingkungan Pemerintah Kota Pekalongan, secara administratif Kota Pekalongan terbagi menjadi 4 kecamatan dan 27 kelurahan (diberlakukan per 1 Januari 2015). Penggabungan kelurahan tersebut ditujukan untuk meningkatkan pelayanan kepada masyarakat secara efektif dan efisien, melaksanakan fungsi pemerintahan secara efisien serta meningkatkan pemberdayaan masyarakat dalam rangka mewujudkan kesejahteraan masyarakat. rangka mewujudkan kesejahteraan masyarakat. </font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%202.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%202.png\" align=\"middle\" height=\"422\" width=\"569\"></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"CENTER\"><font style=\"font-size: 11pt\"><strong>Gambar 2.2 Peta Administratif Kota Pekalongan </strong></font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Berdasarkan peta administratif tersebut bahwa arah pengembangan wilayah kota terkonsentrasi di sepanjang koridor jalan, terutama jalan nasional arat Barat dan Timur serta jalan provinsi ke arah Selatan. RTRW Kota Pekalongan juga menetapkan sepanjang koridor-koridor jalan tersebut sebagai kawasan strategis kota dari sudut kepentingan pertumbuhan ekonomi. </font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Kecamatan Pekalongan Barat terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Medono, Podosugih, Sapuro Kebulen, Bendan Kergon, Pasirkratonkramat, Tirto dan Pringrejo. Kecamatan Pekalongan Timur terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Noyontaansari, Kauman, Poncol, Klego, Gamer, Setono dan Kali Baros. Kecamatan Pekalongan Selatan terdiri dari 6 (enam) kelurahan yaitu Kelurahan Banyurip, Buaran Kradenan, Jenggot, Kuripan Kertoharjo, Kuripan Yosorejo dan Sokoduwet. Kecamatan Pekalongan Utara terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Krapyak, Kandang Panjang, Panjang Wetan, Padukuhan Kraton, Degayu, Bandengan dan Panjang Baru. Pekalongan Utara adalah kecamatan terluas di Kota Pekalongan yaitu 14,88 Km2 atau 33% dari luas wilayah Kota Pekalongan. </font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%203.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%203.png\" align=\"middle\" height=\"166\" width=\"593\"></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm; text-align: left;\">(Sumber : Rancangan Awal RPJMD Kota Pekalongan Tahun 2016-2021)</p>\r\n', 'ON', 1, '2018-10-02 17:00:00');
INSERT INTO `tb_halaman` (`id_halaman`, `user_id`, `judul_halaman`, `slug_halaman`, `gambar_halaman`, `isi_halaman`, `status_halaman`, `hit_halaman`, `timestamp_halaman`) VALUES
('20180411090143', 'admindindik', 'Geografi', 'geografi', 'halaman_20180827111124.jpg', '<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Secara geografis, wilayah Kota Pekalongan terletak antara 60 50â€™ 42\" - 60 55â€™ 44â€ Lintang Selatan dan 1090 37â€™ 55â€ - 1090 42â€™ 19â€ Bujur Timur. Rencana Tata Ruang Wilayah Nasional (RTRWN) menetapkan Kota Pekalongan sebagai Pusat Kegiatan Wilayah (PKW). Sebagai PKW maka diharapkan Kota Pekalongan dapat berperan menjadi pusat pengembangan bagi wilayah di sekitarnya, yang meliputi Kabupaten Pekalongan dan Kabupaten Batang. </font></p>\r\n\r\n<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Dalam sistem pengembangan wilayah Provinsi Jawa Tengah, RTRW Provinsi Jawa Tengah juga menetapkan Kota Pekalongan sebagai bagian dan simpul utama dari Kawasan Petanglong (Kawasan Kota Pekalongan, Kabupaten Batang dan Kabupaten Pekalongan). Kawasan Petanglong adalah kawasan strategis dari sudut kepentingan pertumbuhan ekonomi dan sektor unggulannya adalah pertanian, pariwisata, industri dan perikanan. Potensi ekonomi yang manjadi andalan Kawasan Petanglong meliputi sektor primer adalah perikanan; sektor sekunder adalah tekstil, batik, dan pengolahan ikan; serta sektor tersier adalah jasa dan perdagangan. Kondisi ini tentunya menjadikan Kota Pekalongan memiliki posisi yang sangat strategis. </font></p>\r\n\r\n<p style=\"text-indent: 0.9cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebagai daerah yang telah berkembang dan produk domestik regional bruto terbesarnya disumbangkan lapangan usaha Perdagangan Besar dan Eceran, Reparasi Mobil dan Sepeda Motor (22,14%), Industri Pengolahan (21,67%), dan Konstruksi (14,91%) serta posisi strategis Kota Pekalongan di jalur Pantai Utara Jawa maka tentunya Kota Pekalongan memiliki keunggulan komparatif (comparative advantage) dibandingkan daerah lainnya. Diharapkan keunggulan ini dapat menjadi lokomotif bagi kemajuan dan peningkatan kesejahteraan masyarakat secara berkelanjutan.</font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%201.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%201.png\" align=\"middle\" height=\"433\" width=\"640\"></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"CENTER\"><font style=\"font-size: 11pt\"><strong>Gambar 2.1 Peta Orientasi Kota Pekalongan </strong></font></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Batas administratif Kota Pekalongan adalah sebagai berikut: </font></p>\r\n\r\n<ol type=\"a\">\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Utara berbatasan dengan Laut Jawa; </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Timur berbatasan dengan Kabupaten Batang; </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Selatan berbatasan dengan Kabupaten Batang dan Pekalongan; dan </font></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Sebelah Barat berbatasan dengan Kabupaten Pekalongan </font></p>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Luas wilayah Kota Pekalongan adalah 4.525 Ha atau 45,25 km2. Jarak terjauh dari wilayah Utara ke wilayah Selatan Â± 9 Km dan dari wilayah Barat ke wilayah Timur Â± 7 Km. Kota Pekalongan terdiri dari 4 kecamatan dan pada mulanya 47 kelurahan menjadi 27 kelurahan. Sesuai dengan Peraturan Daerah Nomor 8 Tahun 2013 tentang Penggabungan Kelurahan di Lingkungan Pemerintah Kota Pekalongan, secara administratif Kota Pekalongan terbagi menjadi 4 kecamatan dan 27 kelurahan (diberlakukan per 1 Januari 2015). Penggabungan kelurahan tersebut ditujukan untuk meningkatkan pelayanan kepada masyarakat secara efektif dan efisien, melaksanakan fungsi pemerintahan secara efisien serta meningkatkan pemberdayaan masyarakat dalam rangka mewujudkan kesejahteraan masyarakat. rangka mewujudkan kesejahteraan masyarakat. </font></p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%202.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%202.png\" align=\"middle\" height=\"422\" width=\"569\"></p>\r\n\r\n<p style=\"margin-bottom: 0cm\" align=\"CENTER\"><font style=\"font-size: 11pt\"><strong>Gambar 2.2 Peta Administratif Kota Pekalongan </strong></font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Berdasarkan peta administratif tersebut bahwa arah pengembangan wilayah kota terkonsentrasi di sepanjang koridor jalan, terutama jalan nasional arat Barat dan Timur serta jalan provinsi ke arah Selatan. RTRW Kota Pekalongan juga menetapkan sepanjang koridor-koridor jalan tersebut sebagai kawasan strategis kota dari sudut kepentingan pertumbuhan ekonomi. </font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm\" align=\"JUSTIFY\"><font style=\"font-size: 11pt\">Kecamatan Pekalongan Barat terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Medono, Podosugih, Sapuro Kebulen, Bendan Kergon, Pasirkratonkramat, Tirto dan Pringrejo. Kecamatan Pekalongan Timur terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Noyontaansari, Kauman, Poncol, Klego, Gamer, Setono dan Kali Baros. Kecamatan Pekalongan Selatan terdiri dari 6 (enam) kelurahan yaitu Kelurahan Banyurip, Buaran Kradenan, Jenggot, Kuripan Kertoharjo, Kuripan Yosorejo dan Sokoduwet. Kecamatan Pekalongan Utara terdiri dari 7 (tujuh) kelurahan yaitu Kelurahan Krapyak, Kandang Panjang, Panjang Wetan, Padukuhan Kraton, Degayu, Bandengan dan Panjang Baru. Pekalongan Utara adalah kecamatan terluas di Kota Pekalongan yaitu 14,88 Km2 atau 33% dari luas wilayah Kota Pekalongan. </font></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm; text-align: center;\"><img _fcksavedurl=\"/images/image/geografis/geografis%203.png\" alt=\"\" src=\"https://pekalongankota.go.id/images/image/geografis/geografis%203.png\" align=\"middle\" height=\"166\" width=\"593\"></p>\r\n\r\n<p style=\"text-indent: 0.93cm; margin-bottom: 0cm; text-align: left;\">(Sumber : Rancangan Awal RPJMD Kota Pekalongan Tahun 2016-2021)</p>\r\n', 'ON', 1, '2018-10-01 04:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_instansi`
--

CREATE TABLE `tb_instansi` (
  `id_instansi` varchar(15) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `singkatan_instansi` varchar(255) NOT NULL,
  `urutan_instansi` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_instansi`
--

INSERT INTO `tb_instansi` (`id_instansi`, `nama_instansi`, `singkatan_instansi`, `urutan_instansi`) VALUES
('G09005', 'DINAS PERTANIAN DAN PANGAN', 'DINPERPA', 2),
('G09018', 'DINAS PENDIDIKAN', 'DINDIK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` varchar(25) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `ket_kategori` varchar(100) NOT NULL,
  `timestamp_kategori` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `ket_kategori`, `timestamp_kategori`) VALUES
('20180315114100', 'berita-utama', 'Berita Utama', 'Kumpulan Berita Utama', '2018-06-28 10:00:23'),
('20180315114101', 'berita-kota', 'Berita Kota', 'Kumpulan Berita Kota', '2018-03-15 08:00:00'),
('20180315114102', 'berita-instansi', 'Berita Instansi', 'Kumpulan Berita Instansi', '2018-03-15 08:00:00'),
('20180315114103', 'berita-lainnya', 'Berita Lainnya', 'Kumpulan Berita Lainnya', '2018-03-15 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` varchar(25) NOT NULL,
  `berita_id` varchar(25) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` enum('ON','OFF') DEFAULT 'OFF',
  `tanggal_komentar` date NOT NULL,
  `waktu_komentar` time NOT NULL,
  `timestamp_komentar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_link`
--

CREATE TABLE `tb_link` (
  `id_link` varchar(25) NOT NULL,
  `instansi_id` varchar(25) NOT NULL,
  `text_link` varchar(100) NOT NULL,
  `gambar_link` varchar(255) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `urutan_link` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_link`
--

INSERT INTO `tb_link` (`id_link`, `instansi_id`, `text_link`, `gambar_link`, `url_link`, `urutan_link`) VALUES
('20180731111640', 'G09018', 'Pemerintah Kota Pekalongan', 'link_20180827111123.jpg', 'https://pekalongankota.go.id/', 2),
('20180731111731', 'G09018', 'Pemprov Jateng', 'link_20180827111124.jpg', 'https://jatengprov.go.id/', 1),
('20180807114102', 'G09005', 'Pemprov Jateng', 'link_20180827111125.jpg', 'http://simpeg.pekalongankota.go.id/', 1),
('20180809023944', 'G09005', 'Pemerintah Kota Pekalongan', 'link_20180827111126.jpg', 'https://pekalongankota.go.id/', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` varchar(25) NOT NULL,
  `instansi_id` varchar(15) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `link_menu` varchar(100) NOT NULL,
  `urutan_menu` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `instansi_id`, `nama_menu`, `link_menu`, `urutan_menu`) VALUES
('20180803101923', 'G09018', 'BERANDA', 'index.html', 1),
('20180803101924', 'G09018', 'SEKILAS', '#', 2),
('20180803101925', 'G09018', 'BERITA', 'daftar-berita/index.html', 3),
('20180803101926', 'G09018', 'GALERI', '#', 4),
('20180806101313', 'G09018', 'PENGUMUMAN', 'daftar-pengumuman/index.html', 7),
('20180820054545', 'G09018', 'WEB LAMA', 'https://dindik.pekalongankota.go.id/', 8),
('20180821093150', 'G09018', 'INFORMASI', '#', 5),
('20180928090720', 'G09005', 'BERANDA', 'index.html', 1),
('20180928090721', 'G09005', 'SEKILAS', '#', 2),
('20180928090722', 'G09005', 'BERITA', 'daftar-berita', 3),
('20180928090723', 'G09005', 'GALERI', '#', 4),
('20180928090724', 'G09005', 'PENGUMUMAN', 'daftar-pengumuman', 7),
('20180928090725', 'G09005', 'WEB LAMA', 'http://dinperpa.pekalongankota.go.id/', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_modul`
--

CREATE TABLE `tb_modul` (
  `id_modul` varchar(25) NOT NULL,
  `instansi_id` varchar(15) NOT NULL,
  `nama_modul` varchar(100) NOT NULL,
  `link_modul` varchar(100) NOT NULL,
  `status_modul` enum('ON','OFF') NOT NULL DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_modul`
--

INSERT INTO `tb_modul` (`id_modul`, `instansi_id`, `nama_modul`, `link_modul`, `status_modul`) VALUES
('20180504050917', 'KOTA', 'BERITA KOTA', 'berita-kota/index.html', 'ON'),
('20180506103742', 'KOTA', 'BERITA INSTANSI', 'berita-instansi/index.html', 'ON'),
('20180801142246', 'KOTA', 'DOWNLOAD', 'download/index.html', 'ON'),
('20180804223215', 'KOTA', 'ALBUM FOTO', 'album-foto/index.html', 'ON'),
('20180804223325', 'KOTA', 'ALBUM VIDEO', 'album-video/index.html', 'ON'),
('20180806174016', 'KOTA', 'PENGADUAN', 'daftar-pengaduan/index.html', 'ON'),
('20180806184421', 'KOTA', 'PENGUMUMAN', 'daftar-pengumuman/index.html', 'ON'),
('20180807061925', 'KOTA', 'BERITA LAINNYA', 'berita-lainnya/index.html', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id_pengaduan` varchar(25) NOT NULL,
  `instansi_id` varchar(25) NOT NULL,
  `judul_pengaduan` varchar(500) NOT NULL,
  `slug_pengaduan` varchar(500) NOT NULL,
  `nama_pengaduan` varchar(255) NOT NULL,
  `gender_pengaduan` enum('PRIA','WANITA') NOT NULL DEFAULT 'PRIA',
  `alamat_pengaduan` varchar(255) NOT NULL,
  `kontak_pengaduan` varchar(255) NOT NULL,
  `email_pengaduan` varchar(255) NOT NULL,
  `whatsapp_pengaduan` varchar(100) NOT NULL,
  `facebook_pengaduan` varchar(100) NOT NULL,
  `twitter_pengaduan` varchar(100) NOT NULL,
  `instagram_pengaduan` varchar(100) NOT NULL,
  `file_pengaduan` varchar(255) NOT NULL,
  `isi_pengaduan` varchar(255) NOT NULL,
  `status_pengaduan` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `verifikator_pengaduan` varchar(50) NOT NULL,
  `waktu_verif_pengaduan` datetime NOT NULL,
  `timestamp_pengaduan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` varchar(25) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `inisial_pengumuman` varchar(255) NOT NULL DEFAULT 'pengumuman',
  `slug_pengumuman` text NOT NULL,
  `gambar_pengumuman` varchar(255) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `utama_kota_pengumuman` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `utama_instansi_pengumuman` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `utama_lainnya_pengumuman` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `jenis_pengumuman` varchar(15) NOT NULL DEFAULT 'Pengumuman',
  `direktori_pengumuman` varchar(50) NOT NULL DEFAULT 'pengumuman',
  `warna_pengumuman` varchar(20) NOT NULL DEFAULT 'violet',
  `status_pengumuman` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `hit_pengumuman` int(11) NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `timestamp_pengumuman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `user_id`, `judul_pengumuman`, `inisial_pengumuman`, `slug_pengumuman`, `gambar_pengumuman`, `isi_pengumuman`, `utama_kota_pengumuman`, `utama_instansi_pengumuman`, `utama_lainnya_pengumuman`, `jenis_pengumuman`, `direktori_pengumuman`, `warna_pengumuman`, `status_pengumuman`, `hit_pengumuman`, `tanggal_pengumuman`, `timestamp_pengumuman`) VALUES
('20180823103814', 'admindindik', 'Pengumunan Pemenang Lomba Foto ', 'pengumuman', 'pengumunan-pemenang-lomba-foto', 'pengumuman_20180823103914.png', '<p>Berikut Pememnang Lomba Foto dalam rangka HUT RI ke 73</p>\r\n', 'ON', 'OFF', 'OFF', 'Pengumuman', 'pengumuman', 'violet', 'ON', 6, '2018-08-23', '2018-08-23 03:39:14'),
('20180823103815', 'admindinperpa', 'Pengumunan Pemenang Lomba Foto ', 'pengumuman', 'pengumunan-pemenang-lomba-foto', 'pengumuman_20180823103112.jpg', '<p>Berikut Pememnang Lomba Foto dalam rangka HUT RI ke 73</p>\n', 'OFF', 'ON', 'OFF', 'Pengumuman', 'pengumuman', 'violet', 'ON', 75, '2018-08-23', '2018-08-23 03:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_submenu`
--

CREATE TABLE `tb_submenu` (
  `id_submenu` varchar(25) NOT NULL,
  `id_menu` varchar(25) NOT NULL,
  `nama_submenu` varchar(100) NOT NULL,
  `link_submenu` varchar(100) NOT NULL,
  `urutan_submenu` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_submenu`
--

INSERT INTO `tb_submenu` (`id_submenu`, `id_menu`, `nama_submenu`, `link_submenu`, `urutan_submenu`) VALUES
('20180604093025', '20180803101924', 'GEOGRAFI', 'halaman/geografi.html', 2),
('20180604093026', '20180803101924', 'SEJARAH SINGKAT', 'halaman/sejarah-singkat.html', 1),
('20180604093112', '20180928090721', 'GEOGRAFI', 'halaman/geografi', 2),
('20180604093113', '20180928090721', 'SEJARAH SINGKAT', 'halaman/sejarah-singkat', 1),
('20180821082454', '20180803101926', 'ALBUM FOTO', 'album-foto/index.html', 1),
('20180821082509', '20180803101926', 'ALBUM VIDEO', 'album-video/index.html', 2),
('20180821082511', '20180928090723', 'ALBUM FOTO', 'album-foto', 1),
('20180821082512', '20180928090723', 'ALBUM VIDEO', 'album-video', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id_tanggapan` varchar(25) NOT NULL,
  `pengaduan_id` varchar(25) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `file_tanggapan` varchar(255) NOT NULL,
  `isi_tanggapan` text NOT NULL,
  `timestamp_tanggapan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tema`
--

CREATE TABLE `tb_tema` (
  `id_tema` varchar(25) NOT NULL,
  `nama_tema` varchar(100) NOT NULL,
  `slug_tema` varchar(255) NOT NULL,
  `keterangan_tema` varchar(255) NOT NULL,
  `status_tema` enum('ON','OFF') NOT NULL DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tema`
--

INSERT INTO `tb_tema` (`id_tema`, `nama_tema`, `slug_tema`, `keterangan_tema`, `status_tema`) VALUES
('20180920092612', 'UMUM', 'umum', '', 'ON'),
('20180920092615', 'PENDIDIKAN', 'pendidikan', '', 'ON'),
('20180920092618', 'KESEHATAN', 'kesehatan', '', 'ON'),
('20180920092621', 'PEMERINTAHAN', 'pemerintahan', '', 'ON'),
('20180920092624', 'PELAYANAN PUBLIK', 'pelayanan-publik', '', 'ON'),
('20180920092627', 'EKONOMI', 'ekonomi', '', 'ON'),
('20180920092630', 'NUSANTARA', 'nusantara', '', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `instansi_id` varchar(25) NOT NULL,
  `level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC') NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `hp_user` varchar(50) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `gambar_user` varchar(255) NOT NULL,
  `status_user` enum('ON','OFF') NOT NULL DEFAULT 'OFF',
  `timestamp_user` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `password_user`, `instansi_id`, `level_user`, `nama_user`, `alamat_user`, `hp_user`, `email_user`, `gambar_user`, `status_user`, `timestamp_user`) VALUES
('admindindik', 'emk3cDVSTkplTWxXeFFxQjlNM0NjQT09', 'G09018', 'INSTANSI', 'ADMIN DINDIK', 'PEKALONGAN', '085742727377', 'dindik@pekalongankota.go.id', 'user_20180802091854.jpg', 'ON', '2018-10-01 03:56:23'),
('admindinperpa', 'UDJMdWR2cVpicFg1NUJ6SkRxa1llUT09', 'G09005', 'INSTANSI', 'ADMIN DINPERPA', 'PEKALONGAN', '085742727377', 'dinperpa@pekalongankota.go.id', 'user_20180809101142.png', 'ON', '2018-08-23 04:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_website`
--

CREATE TABLE `tb_website` (
  `id_website` varchar(25) NOT NULL,
  `instansi_id` varchar(25) NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `header_website` varchar(255) NOT NULL,
  `logo_website` varchar(255) NOT NULL,
  `alamat_website` varchar(255) NOT NULL,
  `facebook_website` varchar(100) NOT NULL,
  `twitter_website` varchar(100) NOT NULL,
  `instagram_website` varchar(100) NOT NULL,
  `youtube_website` varchar(100) NOT NULL,
  `kantor_website` varchar(255) NOT NULL,
  `kontak_website` varchar(100) NOT NULL,
  `email_website` varchar(100) NOT NULL,
  `hit_website` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_website`
--

INSERT INTO `tb_website` (`id_website`, `instansi_id`, `nama_website`, `meta_description`, `meta_keyword`, `header_website`, `logo_website`, `alamat_website`, `facebook_website`, `twitter_website`, `instagram_website`, `youtube_website`, `kantor_website`, `kontak_website`, `email_website`, `hit_website`) VALUES
('20180809093341', 'G09005', 'Dinas Pertanian & Pangan Kota Pekalongan', 'Website Resmi Dinas Pertanian & Pangan Kota Pekalongan', 'Kota pekalongan,Pekalongan', '', 'logo_20180823085659.png', 'localhost:82/dinperpapkl', 'http://facebook.com', 'http://twitter.com', 'http://instagram.com', 'http://youtube.com', 'Jl. Mataram No. 1', '(0285) 421093', 'dinperpa@pekalongankota.go.id', 400),
('20180827133421', 'G09010', 'Dinas Pendidikan Kota Pekalongan', 'Website Resmi Dinas Pendidikan Kota Pekalongan', 'Kota pekalongan,Pekalongan', '', 'logo_20180904081520.png', 'http://dindik.pekalongankota.go.id', 'dindikkotapekalongan', 'dindikkotapekalongan', 'dindikkotapekalongan', 'UCfs4U9SM6I8HLUb9zK1RmpQ', 'Jl. Mataram No. 5', '(0285) 421972', 'dindik@yahoo.com', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tlog_user`
--

CREATE TABLE `tlog_user` (
  `session_id` varchar(255) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `log_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tlog_website`
--

CREATE TABLE `tlog_website` (
  `log_id` varchar(25) NOT NULL,
  `instansi_id` varchar(25) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `log_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_album_foto`
-- (See below for the actual view)
--
CREATE TABLE `v_album_foto` (
`id_album` varchar(14)
,`user_id` varchar(50)
,`nama_album` varchar(100)
,`jenis_album` enum('FOTO','VIDEO')
,`slug_album` varchar(100)
,`keterangan_album` text
,`tag_album` varchar(255)
,`gambar_album` varchar(100)
,`status_album` enum('ON','OFF')
,`hit_album` int(11)
,`tanggal_album` date
,`waktu_album` time
,`verifikator_album` varchar(50)
,`waktu_verif_album` datetime
,`respon_album` varchar(255)
,`timestamp_album` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_album_video`
-- (See below for the actual view)
--
CREATE TABLE `v_album_video` (
`id_album` varchar(14)
,`user_id` varchar(50)
,`nama_album` varchar(100)
,`jenis_album` enum('FOTO','VIDEO')
,`slug_album` varchar(100)
,`keterangan_album` text
,`tag_album` varchar(255)
,`gambar_album` varchar(100)
,`status_album` enum('ON','OFF')
,`hit_album` int(11)
,`tanggal_album` date
,`waktu_album` time
,`verifikator_album` varchar(50)
,`waktu_verif_album` datetime
,`respon_album` varchar(255)
,`timestamp_album` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_berita`
-- (See below for the actual view)
--
CREATE TABLE `v_berita` (
`id_berita` varchar(20)
,`user_id` varchar(50)
,`kategori_id` varchar(25)
,`tema_id` varchar(25)
,`utama_kota_berita` enum('ON','OFF')
,`kota_berita` enum('ON','OFF')
,`kota_instansi_berita` enum('ON','OFF')
,`kota_lainnya_berita` enum('ON','OFF')
,`utama_instansi_berita` enum('ON','OFF')
,`instansi_berita` enum('ON','OFF')
,`instansi_lainnya_berita` enum('ON','OFF')
,`utama_lainnya_berita` enum('ON','OFF')
,`lainnya_berita` enum('ON','OFF')
,`judul_berita` varchar(255)
,`jenis_berita` varchar(10)
,`inisial_berita` varchar(255)
,`slug_berita` text
,`tag_berita` varchar(255)
,`gambar_berita` varchar(255)
,`isi_berita` text
,`direktori_berita` varchar(50)
,`warna_berita` varchar(20)
,`hit_berita` int(11)
,`tanggal_berita` date
,`waktu_berita` time
,`verifikator_berita` varchar(50)
,`respon_berita` varchar(255)
,`waktu_verif_berita` datetime
,`timestamp_berita` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_kategori` varchar(25)
,`slug_kategori` varchar(255)
,`nama_kategori` varchar(100)
,`ket_kategori` varchar(100)
,`timestamp_kategori` datetime
,`alamat_website` varchar(255)
,`id_tema` varchar(25)
,`nama_tema` varchar(100)
,`slug_tema` varchar(255)
,`keterangan_tema` varchar(255)
,`status_tema` enum('ON','OFF')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_berita_instansi`
-- (See below for the actual view)
--
CREATE TABLE `v_berita_instansi` (
`id_berita` varchar(20)
,`user_id` varchar(50)
,`kategori_id` varchar(25)
,`tema_id` varchar(25)
,`utama_kota_berita` enum('ON','OFF')
,`kota_berita` enum('ON','OFF')
,`kota_instansi_berita` enum('ON','OFF')
,`kota_lainnya_berita` enum('ON','OFF')
,`utama_instansi_berita` enum('ON','OFF')
,`instansi_berita` enum('ON','OFF')
,`instansi_lainnya_berita` enum('ON','OFF')
,`utama_lainnya_berita` enum('ON','OFF')
,`lainnya_berita` enum('ON','OFF')
,`judul_berita` varchar(255)
,`jenis_berita` varchar(10)
,`inisial_berita` varchar(255)
,`slug_berita` text
,`tag_berita` varchar(255)
,`gambar_berita` varchar(255)
,`isi_berita` text
,`direktori_berita` varchar(50)
,`warna_berita` varchar(20)
,`hit_berita` int(11)
,`tanggal_berita` date
,`waktu_berita` time
,`verifikator_berita` varchar(50)
,`respon_berita` varchar(255)
,`waktu_verif_berita` datetime
,`timestamp_berita` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_kategori` varchar(25)
,`slug_kategori` varchar(255)
,`nama_kategori` varchar(100)
,`ket_kategori` varchar(100)
,`timestamp_kategori` datetime
,`alamat_website` varchar(255)
,`id_tema` varchar(25)
,`nama_tema` varchar(100)
,`slug_tema` varchar(255)
,`keterangan_tema` varchar(255)
,`status_tema` enum('ON','OFF')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_berita_kota`
-- (See below for the actual view)
--
CREATE TABLE `v_berita_kota` (
`id_berita` varchar(20)
,`user_id` varchar(50)
,`kategori_id` varchar(25)
,`tema_id` varchar(25)
,`utama_kota_berita` enum('ON','OFF')
,`kota_berita` enum('ON','OFF')
,`kota_instansi_berita` enum('ON','OFF')
,`kota_lainnya_berita` enum('ON','OFF')
,`utama_instansi_berita` enum('ON','OFF')
,`instansi_berita` enum('ON','OFF')
,`instansi_lainnya_berita` enum('ON','OFF')
,`utama_lainnya_berita` enum('ON','OFF')
,`lainnya_berita` enum('ON','OFF')
,`judul_berita` varchar(255)
,`jenis_berita` varchar(10)
,`inisial_berita` varchar(255)
,`slug_berita` text
,`tag_berita` varchar(255)
,`gambar_berita` varchar(255)
,`isi_berita` text
,`direktori_berita` varchar(50)
,`warna_berita` varchar(20)
,`hit_berita` int(11)
,`tanggal_berita` date
,`waktu_berita` time
,`verifikator_berita` varchar(50)
,`respon_berita` varchar(255)
,`waktu_verif_berita` datetime
,`timestamp_berita` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_kategori` varchar(25)
,`slug_kategori` varchar(255)
,`nama_kategori` varchar(100)
,`ket_kategori` varchar(100)
,`timestamp_kategori` datetime
,`alamat_website` varchar(255)
,`id_tema` varchar(25)
,`nama_tema` varchar(100)
,`slug_tema` varchar(255)
,`keterangan_tema` varchar(255)
,`status_tema` enum('ON','OFF')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_berita_lainnya`
-- (See below for the actual view)
--
CREATE TABLE `v_berita_lainnya` (
`id_berita` varchar(20)
,`user_id` varchar(50)
,`kategori_id` varchar(25)
,`tema_id` varchar(25)
,`utama_kota_berita` enum('ON','OFF')
,`kota_berita` enum('ON','OFF')
,`kota_instansi_berita` enum('ON','OFF')
,`kota_lainnya_berita` enum('ON','OFF')
,`utama_instansi_berita` enum('ON','OFF')
,`instansi_berita` enum('ON','OFF')
,`instansi_lainnya_berita` enum('ON','OFF')
,`utama_lainnya_berita` enum('ON','OFF')
,`lainnya_berita` enum('ON','OFF')
,`judul_berita` varchar(255)
,`jenis_berita` varchar(10)
,`inisial_berita` varchar(255)
,`slug_berita` text
,`tag_berita` varchar(255)
,`gambar_berita` varchar(255)
,`isi_berita` text
,`direktori_berita` varchar(50)
,`warna_berita` varchar(20)
,`hit_berita` int(11)
,`tanggal_berita` date
,`waktu_berita` time
,`verifikator_berita` varchar(50)
,`respon_berita` varchar(255)
,`waktu_verif_berita` datetime
,`timestamp_berita` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_kategori` varchar(25)
,`slug_kategori` varchar(255)
,`nama_kategori` varchar(100)
,`ket_kategori` varchar(100)
,`timestamp_kategori` datetime
,`alamat_website` varchar(255)
,`id_tema` varchar(25)
,`nama_tema` varchar(100)
,`slug_tema` varchar(255)
,`keterangan_tema` varchar(255)
,`status_tema` enum('ON','OFF')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_childmenu`
-- (See below for the actual view)
--
CREATE TABLE `v_childmenu` (
`id_menu` varchar(25)
,`instansi_id` varchar(15)
,`nama_menu` varchar(100)
,`link_menu` varchar(100)
,`urutan_menu` tinyint(3)
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_submenu` varchar(25)
,`nama_submenu` varchar(100)
,`link_submenu` varchar(100)
,`urutan_submenu` tinyint(3)
,`id_childmenu` varchar(25)
,`nama_childmenu` varchar(100)
,`link_childmenu` varchar(100)
,`urutan_childmenu` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_download`
-- (See below for the actual view)
--
CREATE TABLE `v_download` (
`id_download` varchar(20)
,`user_id` varchar(50)
,`judul_download` varchar(255)
,`slug_download` varchar(255)
,`file_download` varchar(255)
,`ket_download` text
,`hit_download` int(11)
,`status_download` enum('ON','OFF')
,`waktu_download` datetime
,`timestamp_download` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_gallery_foto`
-- (See below for the actual view)
--
CREATE TABLE `v_gallery_foto` (
`id_gallery` varchar(14)
,`album_id` varchar(14)
,`user_id` varchar(25)
,`nama_gallery` varchar(100)
,`slug_gallery` varchar(255)
,`jenis_gallery` enum('FOTO','VIDEO')
,`status_gallery` enum('ON','OFF')
,`keterangan_gallery` text
,`tag_gallery` varchar(255)
,`gambar_gallery` varchar(100)
,`fotografer_gallery` varchar(100)
,`tanggal_gallery` date
,`waktu_gallery` time
,`hit_gallery` int(11)
,`verifikator_gallery` varchar(50)
,`waktu_verif_gallery` datetime
,`respon_gallery` varchar(255)
,`timestamp_gallery` datetime
,`id_album` varchar(14)
,`nama_album` varchar(100)
,`jenis_album` enum('FOTO','VIDEO')
,`slug_album` varchar(100)
,`keterangan_album` text
,`tag_album` varchar(255)
,`gambar_album` varchar(100)
,`status_album` enum('ON','OFF')
,`hit_album` int(11)
,`tanggal_album` date
,`waktu_album` time
,`verifikator_album` varchar(50)
,`waktu_verif_album` datetime
,`respon_album` varchar(255)
,`timestamp_album` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_gallery_video`
-- (See below for the actual view)
--
CREATE TABLE `v_gallery_video` (
`id_gallery` varchar(14)
,`album_id` varchar(14)
,`user_id` varchar(25)
,`nama_gallery` varchar(100)
,`slug_gallery` varchar(255)
,`jenis_gallery` enum('FOTO','VIDEO')
,`status_gallery` enum('ON','OFF')
,`keterangan_gallery` text
,`tag_gallery` varchar(255)
,`gambar_gallery` varchar(100)
,`fotografer_gallery` varchar(100)
,`tanggal_gallery` date
,`waktu_gallery` time
,`hit_gallery` int(11)
,`verifikator_gallery` varchar(50)
,`waktu_verif_gallery` datetime
,`respon_gallery` varchar(255)
,`timestamp_gallery` datetime
,`id_album` varchar(14)
,`nama_album` varchar(100)
,`jenis_album` enum('FOTO','VIDEO')
,`slug_album` varchar(100)
,`keterangan_album` text
,`tag_album` varchar(255)
,`gambar_album` varchar(100)
,`status_album` enum('ON','OFF')
,`hit_album` int(11)
,`tanggal_album` date
,`waktu_album` time
,`verifikator_album` varchar(50)
,`waktu_verif_album` datetime
,`respon_album` varchar(255)
,`timestamp_album` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_halaman`
-- (See below for the actual view)
--
CREATE TABLE `v_halaman` (
`id_halaman` varchar(25)
,`user_id` varchar(100)
,`judul_halaman` varchar(500)
,`slug_halaman` varchar(500)
,`gambar_halaman` varchar(255)
,`isi_halaman` text
,`status_halaman` enum('ON','OFF')
,`hit_halaman` int(11)
,`timestamp_halaman` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`alamat_website` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_link_terkait`
-- (See below for the actual view)
--
CREATE TABLE `v_link_terkait` (
`id_link` varchar(25)
,`instansi_id` varchar(25)
,`text_link` varchar(100)
,`gambar_link` varchar(255)
,`url_link` varchar(255)
,`urutan_link` tinyint(3)
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_log_user`
-- (See below for the actual view)
--
CREATE TABLE `v_log_user` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`session_id` varchar(255)
,`user_id` varchar(25)
,`user_agent` varchar(255)
,`log_time` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_menu`
-- (See below for the actual view)
--
CREATE TABLE `v_menu` (
`id_menu` varchar(25)
,`instansi_id` varchar(15)
,`nama_menu` varchar(100)
,`link_menu` varchar(100)
,`urutan_menu` tinyint(3)
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengaduan`
-- (See below for the actual view)
--
CREATE TABLE `v_pengaduan` (
`id_pengaduan` varchar(25)
,`instansi_id` varchar(25)
,`judul_pengaduan` varchar(500)
,`slug_pengaduan` varchar(500)
,`nama_pengaduan` varchar(255)
,`gender_pengaduan` enum('PRIA','WANITA')
,`alamat_pengaduan` varchar(255)
,`kontak_pengaduan` varchar(255)
,`email_pengaduan` varchar(255)
,`whatsapp_pengaduan` varchar(100)
,`facebook_pengaduan` varchar(100)
,`twitter_pengaduan` varchar(100)
,`instagram_pengaduan` varchar(100)
,`file_pengaduan` varchar(255)
,`isi_pengaduan` varchar(255)
,`status_pengaduan` enum('ON','OFF')
,`verifikator_pengaduan` varchar(50)
,`waktu_verif_pengaduan` datetime
,`timestamp_pengaduan` datetime
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pengumuman`
-- (See below for the actual view)
--
CREATE TABLE `v_pengumuman` (
`id_pengumuman` varchar(25)
,`user_id` varchar(100)
,`judul_pengumuman` varchar(255)
,`inisial_pengumuman` varchar(255)
,`slug_pengumuman` text
,`gambar_pengumuman` varchar(255)
,`isi_pengumuman` text
,`utama_kota_pengumuman` enum('ON','OFF')
,`utama_instansi_pengumuman` enum('ON','OFF')
,`utama_lainnya_pengumuman` enum('ON','OFF')
,`jenis_pengumuman` varchar(15)
,`direktori_pengumuman` varchar(50)
,`warna_pengumuman` varchar(20)
,`status_pengumuman` enum('ON','OFF')
,`hit_pengumuman` int(11)
,`tanggal_pengumuman` date
,`timestamp_pengumuman` timestamp
,`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`alamat_website` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_submenu`
-- (See below for the actual view)
--
CREATE TABLE `v_submenu` (
`id_menu` varchar(25)
,`instansi_id` varchar(15)
,`nama_menu` varchar(100)
,`link_menu` varchar(100)
,`urutan_menu` tinyint(3)
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`id_submenu` varchar(25)
,`nama_submenu` varchar(100)
,`link_submenu` varchar(100)
,`urutan_submenu` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tanggapan`
-- (See below for the actual view)
--
CREATE TABLE `v_tanggapan` (
`id_pengaduan` varchar(25)
,`instansi_id` varchar(25)
,`judul_pengaduan` varchar(500)
,`slug_pengaduan` varchar(500)
,`nama_pengaduan` varchar(255)
,`gender_pengaduan` enum('PRIA','WANITA')
,`alamat_pengaduan` varchar(255)
,`kontak_pengaduan` varchar(255)
,`email_pengaduan` varchar(255)
,`whatsapp_pengaduan` varchar(100)
,`facebook_pengaduan` varchar(100)
,`twitter_pengaduan` varchar(100)
,`instagram_pengaduan` varchar(100)
,`file_pengaduan` varchar(255)
,`isi_pengaduan` varchar(255)
,`status_pengaduan` enum('ON','OFF')
,`verifikator_pengaduan` varchar(50)
,`waktu_verif_pengaduan` datetime
,`timestamp_pengaduan` datetime
,`id_tanggapan` varchar(25)
,`pengaduan_id` varchar(25)
,`user_id` varchar(25)
,`file_tanggapan` varchar(255)
,`isi_tanggapan` text
,`timestamp_tanggapan` datetime
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user`
-- (See below for the actual view)
--
CREATE TABLE `v_user` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_instansi`
-- (See below for the actual view)
--
CREATE TABLE `v_user_instansi` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
,`alamat_website` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_kontributor`
-- (See below for the actual view)
--
CREATE TABLE `v_user_kontributor` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_kota`
-- (See below for the actual view)
--
CREATE TABLE `v_user_kota` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_umum`
-- (See below for the actual view)
--
CREATE TABLE `v_user_umum` (
`id_user` varchar(50)
,`password_user` varchar(255)
,`instansi_id` varchar(25)
,`level_user` enum('KOTA','INSTANSI','UMUM','KONTRIBUTOR','MC')
,`nama_user` varchar(100)
,`alamat_user` varchar(255)
,`hp_user` varchar(50)
,`email_user` varchar(255)
,`gambar_user` varchar(255)
,`status_user` enum('ON','OFF')
,`timestamp_user` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_utama_instansi`
-- (See below for the actual view)
--
CREATE TABLE `v_utama_instansi` (
`id_utama` varchar(25)
,`judul_utama` varchar(255)
,`slug_utama` mediumtext
,`gambar_utama` varchar(255)
,`kategori_utama` varchar(100)
,`slug_kategori` varchar(255)
,`inisial_utama` varchar(255)
,`instansi_utama` varchar(15)
,`folder_utama` varchar(50)
,`warna_utama` varchar(20)
,`waktu_utama` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_utama_kota`
-- (See below for the actual view)
--
CREATE TABLE `v_utama_kota` (
`id_utama` varchar(25)
,`judul_utama` varchar(255)
,`slug_utama` mediumtext
,`gambar_utama` varchar(255)
,`kategori_utama` varchar(100)
,`slug_kategori` varchar(255)
,`jenis_utama` varchar(255)
,`inisial_utama` varchar(255)
,`instansi_utama` varchar(15)
,`folder_utama` varchar(50)
,`warna_utama` varchar(20)
,`waktu_utama` date
,`singkatan_utama` varchar(255)
,`alamat_utama` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_website`
-- (See below for the actual view)
--
CREATE TABLE `v_website` (
`id_website` varchar(25)
,`instansi_id` varchar(25)
,`nama_website` varchar(255)
,`meta_description` varchar(255)
,`meta_keyword` varchar(255)
,`header_website` varchar(255)
,`logo_website` varchar(255)
,`alamat_website` varchar(255)
,`facebook_website` varchar(100)
,`twitter_website` varchar(100)
,`instagram_website` varchar(100)
,`youtube_website` varchar(100)
,`kantor_website` varchar(255)
,`kontak_website` varchar(100)
,`email_website` varchar(100)
,`hit_website` int(15)
,`id_instansi` varchar(15)
,`nama_instansi` varchar(100)
,`singkatan_instansi` varchar(255)
,`urutan_instansi` tinyint(3)
);

-- --------------------------------------------------------

--
-- Structure for view `v_album_foto`
--
DROP TABLE IF EXISTS `v_album_foto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_album_foto`  AS  select `a`.`id_album` AS `id_album`,`a`.`user_id` AS `user_id`,`a`.`nama_album` AS `nama_album`,`a`.`jenis_album` AS `jenis_album`,`a`.`slug_album` AS `slug_album`,`a`.`keterangan_album` AS `keterangan_album`,`a`.`tag_album` AS `tag_album`,`a`.`gambar_album` AS `gambar_album`,`a`.`status_album` AS `status_album`,`a`.`hit_album` AS `hit_album`,`a`.`tanggal_album` AS `tanggal_album`,`a`.`waktu_album` AS `waktu_album`,`a`.`verifikator_album` AS `verifikator_album`,`a`.`waktu_verif_album` AS `waktu_verif_album`,`a`.`respon_album` AS `respon_album`,`a`.`timestamp_album` AS `timestamp_album`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi` from (`tb_album` `a` join `v_user` `b`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`jenis_album` = 'FOTO')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_album_video`
--
DROP TABLE IF EXISTS `v_album_video`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_album_video`  AS  select `a`.`id_album` AS `id_album`,`a`.`user_id` AS `user_id`,`a`.`nama_album` AS `nama_album`,`a`.`jenis_album` AS `jenis_album`,`a`.`slug_album` AS `slug_album`,`a`.`keterangan_album` AS `keterangan_album`,`a`.`tag_album` AS `tag_album`,`a`.`gambar_album` AS `gambar_album`,`a`.`status_album` AS `status_album`,`a`.`hit_album` AS `hit_album`,`a`.`tanggal_album` AS `tanggal_album`,`a`.`waktu_album` AS `waktu_album`,`a`.`verifikator_album` AS `verifikator_album`,`a`.`waktu_verif_album` AS `waktu_verif_album`,`a`.`respon_album` AS `respon_album`,`a`.`timestamp_album` AS `timestamp_album`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi` from (`tb_album` `a` join `v_user` `b`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`jenis_album` = 'VIDEO')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_berita`
--
DROP TABLE IF EXISTS `v_berita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_berita`  AS  select `a`.`id_berita` AS `id_berita`,`a`.`user_id` AS `user_id`,`a`.`kategori_id` AS `kategori_id`,`a`.`tema_id` AS `tema_id`,`a`.`utama_kota_berita` AS `utama_kota_berita`,`a`.`kota_berita` AS `kota_berita`,`a`.`kota_instansi_berita` AS `kota_instansi_berita`,`a`.`kota_lainnya_berita` AS `kota_lainnya_berita`,`a`.`utama_instansi_berita` AS `utama_instansi_berita`,`a`.`instansi_berita` AS `instansi_berita`,`a`.`instansi_lainnya_berita` AS `instansi_lainnya_berita`,`a`.`utama_lainnya_berita` AS `utama_lainnya_berita`,`a`.`lainnya_berita` AS `lainnya_berita`,`a`.`judul_berita` AS `judul_berita`,`a`.`jenis_berita` AS `jenis_berita`,`a`.`inisial_berita` AS `inisial_berita`,`a`.`slug_berita` AS `slug_berita`,`a`.`tag_berita` AS `tag_berita`,`a`.`gambar_berita` AS `gambar_berita`,`a`.`isi_berita` AS `isi_berita`,`a`.`direktori_berita` AS `direktori_berita`,`a`.`warna_berita` AS `warna_berita`,`a`.`hit_berita` AS `hit_berita`,`a`.`tanggal_berita` AS `tanggal_berita`,`a`.`waktu_berita` AS `waktu_berita`,`a`.`verifikator_berita` AS `verifikator_berita`,`a`.`respon_berita` AS `respon_berita`,`a`.`waktu_verif_berita` AS `waktu_verif_berita`,`a`.`timestamp_berita` AS `timestamp_berita`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`id_kategori` AS `id_kategori`,`c`.`slug_kategori` AS `slug_kategori`,`c`.`nama_kategori` AS `nama_kategori`,`c`.`ket_kategori` AS `ket_kategori`,`c`.`timestamp_kategori` AS `timestamp_kategori`,`d`.`alamat_website` AS `alamat_website`,`e`.`id_tema` AS `id_tema`,`e`.`nama_tema` AS `nama_tema`,`e`.`slug_tema` AS `slug_tema`,`e`.`keterangan_tema` AS `keterangan_tema`,`e`.`status_tema` AS `status_tema` from ((((`tb_berita` `a` join `v_user` `b`) join `tb_kategori` `c`) join `tb_website` `d`) join `tb_tema` `e`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`kategori_id` = `c`.`id_kategori`) and (convert(`b`.`instansi_id` using utf8) = `d`.`instansi_id`) and (`e`.`id_tema` = `a`.`tema_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_berita_instansi`
--
DROP TABLE IF EXISTS `v_berita_instansi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_berita_instansi`  AS  select `a`.`id_berita` AS `id_berita`,`a`.`user_id` AS `user_id`,`a`.`kategori_id` AS `kategori_id`,`a`.`tema_id` AS `tema_id`,`a`.`utama_kota_berita` AS `utama_kota_berita`,`a`.`kota_berita` AS `kota_berita`,`a`.`kota_instansi_berita` AS `kota_instansi_berita`,`a`.`kota_lainnya_berita` AS `kota_lainnya_berita`,`a`.`utama_instansi_berita` AS `utama_instansi_berita`,`a`.`instansi_berita` AS `instansi_berita`,`a`.`instansi_lainnya_berita` AS `instansi_lainnya_berita`,`a`.`utama_lainnya_berita` AS `utama_lainnya_berita`,`a`.`lainnya_berita` AS `lainnya_berita`,`a`.`judul_berita` AS `judul_berita`,`a`.`jenis_berita` AS `jenis_berita`,`a`.`inisial_berita` AS `inisial_berita`,`a`.`slug_berita` AS `slug_berita`,`a`.`tag_berita` AS `tag_berita`,`a`.`gambar_berita` AS `gambar_berita`,`a`.`isi_berita` AS `isi_berita`,`a`.`direktori_berita` AS `direktori_berita`,`a`.`warna_berita` AS `warna_berita`,`a`.`hit_berita` AS `hit_berita`,`a`.`tanggal_berita` AS `tanggal_berita`,`a`.`waktu_berita` AS `waktu_berita`,`a`.`verifikator_berita` AS `verifikator_berita`,`a`.`respon_berita` AS `respon_berita`,`a`.`waktu_verif_berita` AS `waktu_verif_berita`,`a`.`timestamp_berita` AS `timestamp_berita`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`id_kategori` AS `id_kategori`,`c`.`slug_kategori` AS `slug_kategori`,`c`.`nama_kategori` AS `nama_kategori`,`c`.`ket_kategori` AS `ket_kategori`,`c`.`timestamp_kategori` AS `timestamp_kategori`,`d`.`alamat_website` AS `alamat_website`,`e`.`id_tema` AS `id_tema`,`e`.`nama_tema` AS `nama_tema`,`e`.`slug_tema` AS `slug_tema`,`e`.`keterangan_tema` AS `keterangan_tema`,`e`.`status_tema` AS `status_tema` from ((((`tb_berita` `a` join `v_user` `b`) join `tb_kategori` `c`) join `tb_website` `d`) join `tb_tema` `e`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`kategori_id` = `c`.`id_kategori`) and (`a`.`kategori_id` = '20180315114102') and (convert(`b`.`instansi_id` using utf8) = `d`.`instansi_id`) and (`e`.`id_tema` = `a`.`tema_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_berita_kota`
--
DROP TABLE IF EXISTS `v_berita_kota`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_berita_kota`  AS  select `a`.`id_berita` AS `id_berita`,`a`.`user_id` AS `user_id`,`a`.`kategori_id` AS `kategori_id`,`a`.`tema_id` AS `tema_id`,`a`.`utama_kota_berita` AS `utama_kota_berita`,`a`.`kota_berita` AS `kota_berita`,`a`.`kota_instansi_berita` AS `kota_instansi_berita`,`a`.`kota_lainnya_berita` AS `kota_lainnya_berita`,`a`.`utama_instansi_berita` AS `utama_instansi_berita`,`a`.`instansi_berita` AS `instansi_berita`,`a`.`instansi_lainnya_berita` AS `instansi_lainnya_berita`,`a`.`utama_lainnya_berita` AS `utama_lainnya_berita`,`a`.`lainnya_berita` AS `lainnya_berita`,`a`.`judul_berita` AS `judul_berita`,`a`.`jenis_berita` AS `jenis_berita`,`a`.`inisial_berita` AS `inisial_berita`,`a`.`slug_berita` AS `slug_berita`,`a`.`tag_berita` AS `tag_berita`,`a`.`gambar_berita` AS `gambar_berita`,`a`.`isi_berita` AS `isi_berita`,`a`.`direktori_berita` AS `direktori_berita`,`a`.`warna_berita` AS `warna_berita`,`a`.`hit_berita` AS `hit_berita`,`a`.`tanggal_berita` AS `tanggal_berita`,`a`.`waktu_berita` AS `waktu_berita`,`a`.`verifikator_berita` AS `verifikator_berita`,`a`.`respon_berita` AS `respon_berita`,`a`.`waktu_verif_berita` AS `waktu_verif_berita`,`a`.`timestamp_berita` AS `timestamp_berita`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`id_kategori` AS `id_kategori`,`c`.`slug_kategori` AS `slug_kategori`,`c`.`nama_kategori` AS `nama_kategori`,`c`.`ket_kategori` AS `ket_kategori`,`c`.`timestamp_kategori` AS `timestamp_kategori`,`d`.`alamat_website` AS `alamat_website`,`e`.`id_tema` AS `id_tema`,`e`.`nama_tema` AS `nama_tema`,`e`.`slug_tema` AS `slug_tema`,`e`.`keterangan_tema` AS `keterangan_tema`,`e`.`status_tema` AS `status_tema` from ((((`tb_berita` `a` join `v_user` `b`) join `tb_kategori` `c`) join `tb_website` `d`) join `tb_tema` `e`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`kategori_id` = `c`.`id_kategori`) and (`a`.`kategori_id` = '20180315114101') and (convert(`b`.`instansi_id` using utf8) = `d`.`instansi_id`) and (`e`.`id_tema` = `a`.`tema_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_berita_lainnya`
--
DROP TABLE IF EXISTS `v_berita_lainnya`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_berita_lainnya`  AS  select `a`.`id_berita` AS `id_berita`,`a`.`user_id` AS `user_id`,`a`.`kategori_id` AS `kategori_id`,`a`.`tema_id` AS `tema_id`,`a`.`utama_kota_berita` AS `utama_kota_berita`,`a`.`kota_berita` AS `kota_berita`,`a`.`kota_instansi_berita` AS `kota_instansi_berita`,`a`.`kota_lainnya_berita` AS `kota_lainnya_berita`,`a`.`utama_instansi_berita` AS `utama_instansi_berita`,`a`.`instansi_berita` AS `instansi_berita`,`a`.`instansi_lainnya_berita` AS `instansi_lainnya_berita`,`a`.`utama_lainnya_berita` AS `utama_lainnya_berita`,`a`.`lainnya_berita` AS `lainnya_berita`,`a`.`judul_berita` AS `judul_berita`,`a`.`jenis_berita` AS `jenis_berita`,`a`.`inisial_berita` AS `inisial_berita`,`a`.`slug_berita` AS `slug_berita`,`a`.`tag_berita` AS `tag_berita`,`a`.`gambar_berita` AS `gambar_berita`,`a`.`isi_berita` AS `isi_berita`,`a`.`direktori_berita` AS `direktori_berita`,`a`.`warna_berita` AS `warna_berita`,`a`.`hit_berita` AS `hit_berita`,`a`.`tanggal_berita` AS `tanggal_berita`,`a`.`waktu_berita` AS `waktu_berita`,`a`.`verifikator_berita` AS `verifikator_berita`,`a`.`respon_berita` AS `respon_berita`,`a`.`waktu_verif_berita` AS `waktu_verif_berita`,`a`.`timestamp_berita` AS `timestamp_berita`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`id_kategori` AS `id_kategori`,`c`.`slug_kategori` AS `slug_kategori`,`c`.`nama_kategori` AS `nama_kategori`,`c`.`ket_kategori` AS `ket_kategori`,`c`.`timestamp_kategori` AS `timestamp_kategori`,`d`.`alamat_website` AS `alamat_website`,`e`.`id_tema` AS `id_tema`,`e`.`nama_tema` AS `nama_tema`,`e`.`slug_tema` AS `slug_tema`,`e`.`keterangan_tema` AS `keterangan_tema`,`e`.`status_tema` AS `status_tema` from ((((`tb_berita` `a` join `v_user` `b`) join `tb_kategori` `c`) join `tb_website` `d`) join `tb_tema` `e`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (`a`.`kategori_id` = `c`.`id_kategori`) and (`a`.`kategori_id` = '20180315114103') and (convert(`b`.`instansi_id` using utf8) = `d`.`instansi_id`) and (`e`.`id_tema` = `a`.`tema_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_childmenu`
--
DROP TABLE IF EXISTS `v_childmenu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_childmenu`  AS  select `a`.`id_menu` AS `id_menu`,`a`.`instansi_id` AS `instansi_id`,`a`.`nama_menu` AS `nama_menu`,`a`.`link_menu` AS `link_menu`,`a`.`urutan_menu` AS `urutan_menu`,`a`.`id_instansi` AS `id_instansi`,`a`.`nama_instansi` AS `nama_instansi`,`a`.`singkatan_instansi` AS `singkatan_instansi`,`a`.`urutan_instansi` AS `urutan_instansi`,`a`.`id_submenu` AS `id_submenu`,`a`.`nama_submenu` AS `nama_submenu`,`a`.`link_submenu` AS `link_submenu`,`a`.`urutan_submenu` AS `urutan_submenu`,`b`.`id_childmenu` AS `id_childmenu`,`b`.`nama_childmenu` AS `nama_childmenu`,`b`.`link_childmenu` AS `link_childmenu`,`b`.`urutan_childmenu` AS `urutan_childmenu` from (`v_submenu` `a` join `tb_childmenu` `b`) where (convert(`a`.`id_submenu` using utf8) = `b`.`id_submenu`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_download`
--
DROP TABLE IF EXISTS `v_download`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_download`  AS  select `a`.`id_download` AS `id_download`,`a`.`user_id` AS `user_id`,`a`.`judul_download` AS `judul_download`,`a`.`slug_download` AS `slug_download`,`a`.`file_download` AS `file_download`,`a`.`ket_download` AS `ket_download`,`a`.`hit_download` AS `hit_download`,`a`.`status_download` AS `status_download`,`a`.`waktu_download` AS `waktu_download`,`a`.`timestamp_download` AS `timestamp_download`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`c`.`id_instansi` AS `id_instansi`,`c`.`nama_instansi` AS `nama_instansi`,`c`.`singkatan_instansi` AS `singkatan_instansi`,`c`.`urutan_instansi` AS `urutan_instansi` from ((`tb_download` `a` join `tb_user` `b`) join `tb_instansi` `c`) where ((`a`.`user_id` = `b`.`id_user`) and (`b`.`instansi_id` = `c`.`id_instansi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_gallery_foto`
--
DROP TABLE IF EXISTS `v_gallery_foto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_gallery_foto`  AS  select `b`.`id_gallery` AS `id_gallery`,`b`.`album_id` AS `album_id`,`b`.`user_id` AS `user_id`,`b`.`nama_gallery` AS `nama_gallery`,`b`.`slug_gallery` AS `slug_gallery`,`b`.`jenis_gallery` AS `jenis_gallery`,`b`.`status_gallery` AS `status_gallery`,`b`.`keterangan_gallery` AS `keterangan_gallery`,`b`.`tag_gallery` AS `tag_gallery`,`b`.`gambar_gallery` AS `gambar_gallery`,`b`.`fotografer_gallery` AS `fotografer_gallery`,`b`.`tanggal_gallery` AS `tanggal_gallery`,`b`.`waktu_gallery` AS `waktu_gallery`,`b`.`hit_gallery` AS `hit_gallery`,`b`.`verifikator_gallery` AS `verifikator_gallery`,`b`.`waktu_verif_gallery` AS `waktu_verif_gallery`,`b`.`respon_gallery` AS `respon_gallery`,`b`.`timestamp_gallery` AS `timestamp_gallery`,`a`.`id_album` AS `id_album`,`a`.`nama_album` AS `nama_album`,`a`.`jenis_album` AS `jenis_album`,`a`.`slug_album` AS `slug_album`,`a`.`keterangan_album` AS `keterangan_album`,`a`.`tag_album` AS `tag_album`,`a`.`gambar_album` AS `gambar_album`,`a`.`status_album` AS `status_album`,`a`.`hit_album` AS `hit_album`,`a`.`tanggal_album` AS `tanggal_album`,`a`.`waktu_album` AS `waktu_album`,`a`.`verifikator_album` AS `verifikator_album`,`a`.`waktu_verif_album` AS `waktu_verif_album`,`a`.`respon_album` AS `respon_album`,`a`.`timestamp_album` AS `timestamp_album`,`a`.`id_instansi` AS `id_instansi`,`a`.`nama_instansi` AS `nama_instansi`,`a`.`singkatan_instansi` AS `singkatan_instansi`,`c`.`id_user` AS `id_user`,`c`.`password_user` AS `password_user`,`c`.`instansi_id` AS `instansi_id`,`c`.`level_user` AS `level_user`,`c`.`nama_user` AS `nama_user`,`c`.`alamat_user` AS `alamat_user`,`c`.`hp_user` AS `hp_user`,`c`.`email_user` AS `email_user`,`c`.`gambar_user` AS `gambar_user`,`c`.`status_user` AS `status_user`,`c`.`timestamp_user` AS `timestamp_user` from ((`v_album_foto` `a` join `tb_gallery` `b`) join `tb_user` `c`) where ((`a`.`id_album` = `b`.`album_id`) and (`b`.`user_id` = `c`.`id_user`) and (`a`.`jenis_album` = 'FOTO')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_gallery_video`
--
DROP TABLE IF EXISTS `v_gallery_video`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_gallery_video`  AS  select `b`.`id_gallery` AS `id_gallery`,`b`.`album_id` AS `album_id`,`b`.`user_id` AS `user_id`,`b`.`nama_gallery` AS `nama_gallery`,`b`.`slug_gallery` AS `slug_gallery`,`b`.`jenis_gallery` AS `jenis_gallery`,`b`.`status_gallery` AS `status_gallery`,`b`.`keterangan_gallery` AS `keterangan_gallery`,`b`.`tag_gallery` AS `tag_gallery`,`b`.`gambar_gallery` AS `gambar_gallery`,`b`.`fotografer_gallery` AS `fotografer_gallery`,`b`.`tanggal_gallery` AS `tanggal_gallery`,`b`.`waktu_gallery` AS `waktu_gallery`,`b`.`hit_gallery` AS `hit_gallery`,`b`.`verifikator_gallery` AS `verifikator_gallery`,`b`.`waktu_verif_gallery` AS `waktu_verif_gallery`,`b`.`respon_gallery` AS `respon_gallery`,`b`.`timestamp_gallery` AS `timestamp_gallery`,`a`.`id_album` AS `id_album`,`a`.`nama_album` AS `nama_album`,`a`.`jenis_album` AS `jenis_album`,`a`.`slug_album` AS `slug_album`,`a`.`keterangan_album` AS `keterangan_album`,`a`.`tag_album` AS `tag_album`,`a`.`gambar_album` AS `gambar_album`,`a`.`status_album` AS `status_album`,`a`.`hit_album` AS `hit_album`,`a`.`tanggal_album` AS `tanggal_album`,`a`.`waktu_album` AS `waktu_album`,`a`.`verifikator_album` AS `verifikator_album`,`a`.`waktu_verif_album` AS `waktu_verif_album`,`a`.`respon_album` AS `respon_album`,`a`.`timestamp_album` AS `timestamp_album`,`a`.`id_instansi` AS `id_instansi`,`a`.`nama_instansi` AS `nama_instansi`,`a`.`singkatan_instansi` AS `singkatan_instansi`,`c`.`id_user` AS `id_user`,`c`.`password_user` AS `password_user`,`c`.`instansi_id` AS `instansi_id`,`c`.`level_user` AS `level_user`,`c`.`nama_user` AS `nama_user`,`c`.`alamat_user` AS `alamat_user`,`c`.`hp_user` AS `hp_user`,`c`.`email_user` AS `email_user`,`c`.`gambar_user` AS `gambar_user`,`c`.`status_user` AS `status_user`,`c`.`timestamp_user` AS `timestamp_user` from ((`v_album_video` `a` join `tb_gallery` `b`) join `tb_user` `c`) where ((`a`.`id_album` = `b`.`album_id`) and (`b`.`user_id` = `c`.`id_user`) and (`a`.`jenis_album` = 'VIDEO')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_halaman`
--
DROP TABLE IF EXISTS `v_halaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_halaman`  AS  select `a`.`id_halaman` AS `id_halaman`,`a`.`user_id` AS `user_id`,`a`.`judul_halaman` AS `judul_halaman`,`a`.`slug_halaman` AS `slug_halaman`,`a`.`gambar_halaman` AS `gambar_halaman`,`a`.`isi_halaman` AS `isi_halaman`,`a`.`status_halaman` AS `status_halaman`,`a`.`hit_halaman` AS `hit_halaman`,`a`.`timestamp_halaman` AS `timestamp_halaman`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`c`.`id_instansi` AS `id_instansi`,`c`.`nama_instansi` AS `nama_instansi`,`c`.`singkatan_instansi` AS `singkatan_instansi`,`c`.`urutan_instansi` AS `urutan_instansi`,`d`.`alamat_website` AS `alamat_website` from (((`tb_halaman` `a` join `tb_user` `b`) join `tb_instansi` `c`) join `tb_website` `d`) where ((`a`.`user_id` = `b`.`id_user`) and (`b`.`instansi_id` = `c`.`id_instansi`) and (`b`.`instansi_id` = `d`.`instansi_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_link_terkait`
--
DROP TABLE IF EXISTS `v_link_terkait`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_link_terkait`  AS  select `a`.`id_link` AS `id_link`,`a`.`instansi_id` AS `instansi_id`,`a`.`text_link` AS `text_link`,`a`.`gambar_link` AS `gambar_link`,`a`.`url_link` AS `url_link`,`a`.`urutan_link` AS `urutan_link`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_link` `a` join `tb_instansi` `b`) where (`a`.`instansi_id` = `b`.`id_instansi`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_log_user`
--
DROP TABLE IF EXISTS `v_log_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_log_user`  AS  select `a`.`id_user` AS `id_user`,`a`.`password_user` AS `password_user`,`a`.`instansi_id` AS `instansi_id`,`a`.`level_user` AS `level_user`,`a`.`nama_user` AS `nama_user`,`a`.`alamat_user` AS `alamat_user`,`a`.`hp_user` AS `hp_user`,`a`.`email_user` AS `email_user`,`a`.`gambar_user` AS `gambar_user`,`a`.`status_user` AS `status_user`,`a`.`timestamp_user` AS `timestamp_user`,`b`.`session_id` AS `session_id`,`b`.`user_id` AS `user_id`,`b`.`user_agent` AS `user_agent`,`b`.`log_time` AS `log_time` from (`tb_user` `a` join `tlog_user` `b`) where (`a`.`id_user` = `b`.`user_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS  select `a`.`id_menu` AS `id_menu`,`a`.`instansi_id` AS `instansi_id`,`a`.`nama_menu` AS `nama_menu`,`a`.`link_menu` AS `link_menu`,`a`.`urutan_menu` AS `urutan_menu`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_menu` `a` join `tb_instansi` `b`) where (`a`.`instansi_id` = `b`.`id_instansi`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengaduan`
--
DROP TABLE IF EXISTS `v_pengaduan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengaduan`  AS  select `a`.`id_pengaduan` AS `id_pengaduan`,`a`.`instansi_id` AS `instansi_id`,`a`.`judul_pengaduan` AS `judul_pengaduan`,`a`.`slug_pengaduan` AS `slug_pengaduan`,`a`.`nama_pengaduan` AS `nama_pengaduan`,`a`.`gender_pengaduan` AS `gender_pengaduan`,`a`.`alamat_pengaduan` AS `alamat_pengaduan`,`a`.`kontak_pengaduan` AS `kontak_pengaduan`,`a`.`email_pengaduan` AS `email_pengaduan`,`a`.`whatsapp_pengaduan` AS `whatsapp_pengaduan`,`a`.`facebook_pengaduan` AS `facebook_pengaduan`,`a`.`twitter_pengaduan` AS `twitter_pengaduan`,`a`.`instagram_pengaduan` AS `instagram_pengaduan`,`a`.`file_pengaduan` AS `file_pengaduan`,`a`.`isi_pengaduan` AS `isi_pengaduan`,`a`.`status_pengaduan` AS `status_pengaduan`,`a`.`verifikator_pengaduan` AS `verifikator_pengaduan`,`a`.`waktu_verif_pengaduan` AS `waktu_verif_pengaduan`,`a`.`timestamp_pengaduan` AS `timestamp_pengaduan`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_pengaduan` `a` join `tb_instansi` `b`) where (`a`.`instansi_id` = `b`.`id_instansi`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pengumuman`
--
DROP TABLE IF EXISTS `v_pengumuman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pengumuman`  AS  select `a`.`id_pengumuman` AS `id_pengumuman`,`a`.`user_id` AS `user_id`,`a`.`judul_pengumuman` AS `judul_pengumuman`,`a`.`inisial_pengumuman` AS `inisial_pengumuman`,`a`.`slug_pengumuman` AS `slug_pengumuman`,`a`.`gambar_pengumuman` AS `gambar_pengumuman`,`a`.`isi_pengumuman` AS `isi_pengumuman`,`a`.`utama_kota_pengumuman` AS `utama_kota_pengumuman`,`a`.`utama_instansi_pengumuman` AS `utama_instansi_pengumuman`,`a`.`utama_lainnya_pengumuman` AS `utama_lainnya_pengumuman`,`a`.`jenis_pengumuman` AS `jenis_pengumuman`,`a`.`direktori_pengumuman` AS `direktori_pengumuman`,`a`.`warna_pengumuman` AS `warna_pengumuman`,`a`.`status_pengumuman` AS `status_pengumuman`,`a`.`hit_pengumuman` AS `hit_pengumuman`,`a`.`tanggal_pengumuman` AS `tanggal_pengumuman`,`a`.`timestamp_pengumuman` AS `timestamp_pengumuman`,`b`.`id_user` AS `id_user`,`b`.`password_user` AS `password_user`,`b`.`instansi_id` AS `instansi_id`,`b`.`level_user` AS `level_user`,`b`.`nama_user` AS `nama_user`,`b`.`alamat_user` AS `alamat_user`,`b`.`hp_user` AS `hp_user`,`b`.`email_user` AS `email_user`,`b`.`gambar_user` AS `gambar_user`,`b`.`status_user` AS `status_user`,`b`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`alamat_website` AS `alamat_website` from ((`tb_pengumuman` `a` join `v_user` `b`) join `tb_website` `c`) where ((`a`.`user_id` = convert(`b`.`id_user` using utf8)) and (convert(`b`.`instansi_id` using utf8) = `c`.`instansi_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_submenu`
--
DROP TABLE IF EXISTS `v_submenu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_submenu`  AS  select `a`.`id_menu` AS `id_menu`,`a`.`instansi_id` AS `instansi_id`,`a`.`nama_menu` AS `nama_menu`,`a`.`link_menu` AS `link_menu`,`a`.`urutan_menu` AS `urutan_menu`,`a`.`id_instansi` AS `id_instansi`,`a`.`nama_instansi` AS `nama_instansi`,`a`.`singkatan_instansi` AS `singkatan_instansi`,`a`.`urutan_instansi` AS `urutan_instansi`,`b`.`id_submenu` AS `id_submenu`,`b`.`nama_submenu` AS `nama_submenu`,`b`.`link_submenu` AS `link_submenu`,`b`.`urutan_submenu` AS `urutan_submenu` from (`v_menu` `a` join `tb_submenu` `b`) where (`a`.`id_menu` = `b`.`id_menu`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tanggapan`
--
DROP TABLE IF EXISTS `v_tanggapan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tanggapan`  AS  select `a`.`id_pengaduan` AS `id_pengaduan`,`a`.`instansi_id` AS `instansi_id`,`a`.`judul_pengaduan` AS `judul_pengaduan`,`a`.`slug_pengaduan` AS `slug_pengaduan`,`a`.`nama_pengaduan` AS `nama_pengaduan`,`a`.`gender_pengaduan` AS `gender_pengaduan`,`a`.`alamat_pengaduan` AS `alamat_pengaduan`,`a`.`kontak_pengaduan` AS `kontak_pengaduan`,`a`.`email_pengaduan` AS `email_pengaduan`,`a`.`whatsapp_pengaduan` AS `whatsapp_pengaduan`,`a`.`facebook_pengaduan` AS `facebook_pengaduan`,`a`.`twitter_pengaduan` AS `twitter_pengaduan`,`a`.`instagram_pengaduan` AS `instagram_pengaduan`,`a`.`file_pengaduan` AS `file_pengaduan`,`a`.`isi_pengaduan` AS `isi_pengaduan`,`a`.`status_pengaduan` AS `status_pengaduan`,`a`.`verifikator_pengaduan` AS `verifikator_pengaduan`,`a`.`waktu_verif_pengaduan` AS `waktu_verif_pengaduan`,`a`.`timestamp_pengaduan` AS `timestamp_pengaduan`,`b`.`id_tanggapan` AS `id_tanggapan`,`b`.`pengaduan_id` AS `pengaduan_id`,`b`.`user_id` AS `user_id`,`b`.`file_tanggapan` AS `file_tanggapan`,`b`.`isi_tanggapan` AS `isi_tanggapan`,`b`.`timestamp_tanggapan` AS `timestamp_tanggapan`,`c`.`id_instansi` AS `id_instansi`,`c`.`nama_instansi` AS `nama_instansi`,`c`.`singkatan_instansi` AS `singkatan_instansi`,`c`.`urutan_instansi` AS `urutan_instansi` from ((`tb_pengaduan` `a` join `tb_tanggapan` `b`) join `tb_instansi` `c`) where ((`a`.`id_pengaduan` = `b`.`pengaduan_id`) and (`a`.`instansi_id` = `c`.`id_instansi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user`  AS  select `a`.`id_user` AS `id_user`,`a`.`password_user` AS `password_user`,`a`.`instansi_id` AS `instansi_id`,`a`.`level_user` AS `level_user`,`a`.`nama_user` AS `nama_user`,`a`.`alamat_user` AS `alamat_user`,`a`.`hp_user` AS `hp_user`,`a`.`email_user` AS `email_user`,`a`.`gambar_user` AS `gambar_user`,`a`.`status_user` AS `status_user`,`a`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_user` `a` join `tb_instansi` `b`) where (`a`.`instansi_id` = `b`.`id_instansi`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_instansi`
--
DROP TABLE IF EXISTS `v_user_instansi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_instansi`  AS  select `a`.`id_user` AS `id_user`,`a`.`password_user` AS `password_user`,`a`.`instansi_id` AS `instansi_id`,`a`.`level_user` AS `level_user`,`a`.`nama_user` AS `nama_user`,`a`.`alamat_user` AS `alamat_user`,`a`.`hp_user` AS `hp_user`,`a`.`email_user` AS `email_user`,`a`.`gambar_user` AS `gambar_user`,`a`.`status_user` AS `status_user`,`a`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi`,`c`.`alamat_website` AS `alamat_website` from ((`tb_user` `a` join `tb_instansi` `b`) join `tb_website` `c`) where ((`a`.`instansi_id` = `b`.`id_instansi`) and (`a`.`instansi_id` = `c`.`instansi_id`) and (`a`.`level_user` = 'INSTANSI')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_kontributor`
--
DROP TABLE IF EXISTS `v_user_kontributor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_kontributor`  AS  select `tb_user`.`id_user` AS `id_user`,`tb_user`.`password_user` AS `password_user`,`tb_user`.`instansi_id` AS `instansi_id`,`tb_user`.`level_user` AS `level_user`,`tb_user`.`nama_user` AS `nama_user`,`tb_user`.`alamat_user` AS `alamat_user`,`tb_user`.`hp_user` AS `hp_user`,`tb_user`.`email_user` AS `email_user`,`tb_user`.`gambar_user` AS `gambar_user`,`tb_user`.`status_user` AS `status_user`,`tb_user`.`timestamp_user` AS `timestamp_user` from `tb_user` where (`tb_user`.`level_user` = 'KONTRIBUTOR') ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_kota`
--
DROP TABLE IF EXISTS `v_user_kota`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_kota`  AS  select `a`.`id_user` AS `id_user`,`a`.`password_user` AS `password_user`,`a`.`instansi_id` AS `instansi_id`,`a`.`level_user` AS `level_user`,`a`.`nama_user` AS `nama_user`,`a`.`alamat_user` AS `alamat_user`,`a`.`hp_user` AS `hp_user`,`a`.`email_user` AS `email_user`,`a`.`gambar_user` AS `gambar_user`,`a`.`status_user` AS `status_user`,`a`.`timestamp_user` AS `timestamp_user`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_user` `a` join `tb_instansi` `b`) where ((`a`.`instansi_id` = `b`.`id_instansi`) and (`a`.`level_user` = 'KOTA')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_umum`
--
DROP TABLE IF EXISTS `v_user_umum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_umum`  AS  select `tb_user`.`id_user` AS `id_user`,`tb_user`.`password_user` AS `password_user`,`tb_user`.`instansi_id` AS `instansi_id`,`tb_user`.`level_user` AS `level_user`,`tb_user`.`nama_user` AS `nama_user`,`tb_user`.`alamat_user` AS `alamat_user`,`tb_user`.`hp_user` AS `hp_user`,`tb_user`.`email_user` AS `email_user`,`tb_user`.`gambar_user` AS `gambar_user`,`tb_user`.`status_user` AS `status_user`,`tb_user`.`timestamp_user` AS `timestamp_user` from `tb_user` where (`tb_user`.`level_user` = 'UMUM') ;

-- --------------------------------------------------------

--
-- Structure for view `v_utama_instansi`
--
DROP TABLE IF EXISTS `v_utama_instansi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_utama_instansi`  AS  select `v_berita`.`id_berita` AS `id_utama`,`v_berita`.`judul_berita` AS `judul_utama`,`v_berita`.`slug_berita` AS `slug_utama`,`v_berita`.`gambar_berita` AS `gambar_utama`,`v_berita`.`nama_kategori` AS `kategori_utama`,`v_berita`.`slug_kategori` AS `slug_kategori`,`v_berita`.`inisial_berita` AS `inisial_utama`,`v_berita`.`id_instansi` AS `instansi_utama`,`v_berita`.`direktori_berita` AS `folder_utama`,`v_berita`.`warna_berita` AS `warna_utama`,`v_berita`.`tanggal_berita` AS `waktu_utama` from `v_berita` where ((`v_berita`.`utama_instansi_berita` = 'ON') and (`v_berita`.`instansi_berita` = 'ON')) union select `v_pengumuman`.`id_pengumuman` AS `id_pengumuman`,`v_pengumuman`.`judul_pengumuman` AS `judul_pengumuman`,`v_pengumuman`.`slug_pengumuman` AS `slug_pengumuman`,`v_pengumuman`.`gambar_pengumuman` AS `gambar_pengumuman`,`v_pengumuman`.`jenis_pengumuman` AS `jenis_pengumuman`,`v_pengumuman`.`inisial_pengumuman` AS `inisial_pengumuman`,`v_pengumuman`.`inisial_pengumuman` AS `inisial_pengumuman`,`v_pengumuman`.`id_instansi` AS `id_instansi`,`v_pengumuman`.`direktori_pengumuman` AS `direktori_pengumuman`,`v_pengumuman`.`warna_pengumuman` AS `warna_pengumuman`,`v_pengumuman`.`tanggal_pengumuman` AS `tanggal_pengumuman` from `v_pengumuman` where ((`v_pengumuman`.`utama_instansi_pengumuman` = 'ON') and (`v_pengumuman`.`status_pengumuman` = 'ON')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_utama_kota`
--
DROP TABLE IF EXISTS `v_utama_kota`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_utama_kota`  AS  select `v_berita_kota`.`id_berita` AS `id_utama`,`v_berita_kota`.`judul_berita` AS `judul_utama`,`v_berita_kota`.`slug_berita` AS `slug_utama`,`v_berita_kota`.`gambar_berita` AS `gambar_utama`,`v_berita_kota`.`nama_kategori` AS `kategori_utama`,`v_berita_kota`.`slug_kategori` AS `slug_kategori`,`v_berita_kota`.`jenis_berita` AS `jenis_utama`,`v_berita_kota`.`inisial_berita` AS `inisial_utama`,`v_berita_kota`.`id_instansi` AS `instansi_utama`,`v_berita_kota`.`direktori_berita` AS `folder_utama`,`v_berita_kota`.`warna_berita` AS `warna_utama`,`v_berita_kota`.`tanggal_berita` AS `waktu_utama`,`v_berita_kota`.`singkatan_instansi` AS `singkatan_utama`,`v_berita_kota`.`alamat_website` AS `alamat_utama` from `v_berita_kota` where ((`v_berita_kota`.`utama_kota_berita` = 'ON') and (`v_berita_kota`.`kota_berita` = 'ON')) union select `v_berita_lainnya`.`id_berita` AS `id_berita`,`v_berita_lainnya`.`judul_berita` AS `judul_berita`,`v_berita_lainnya`.`slug_berita` AS `slug_berita`,`v_berita_lainnya`.`gambar_berita` AS `gambar_berita`,`v_berita_lainnya`.`nama_kategori` AS `nama_kategori`,`v_berita_lainnya`.`slug_kategori` AS `slug_kategori`,`v_berita_lainnya`.`jenis_berita` AS `jenis_berita`,`v_berita_lainnya`.`inisial_berita` AS `inisial_berita`,`v_berita_lainnya`.`id_instansi` AS `id_instansi`,`v_berita_lainnya`.`direktori_berita` AS `direktori_berita`,`v_berita_lainnya`.`warna_berita` AS `warna_berita`,`v_berita_lainnya`.`tanggal_berita` AS `tanggal_berita`,`v_berita_lainnya`.`singkatan_instansi` AS `singkatan_instansi`,`v_berita_lainnya`.`alamat_website` AS `alamat_website` from `v_berita_lainnya` where ((`v_berita_lainnya`.`utama_kota_berita` = 'ON') and (`v_berita_lainnya`.`lainnya_berita` = 'ON')) union select `v_berita_instansi`.`id_berita` AS `id_berita`,`v_berita_instansi`.`judul_berita` AS `judul_berita`,`v_berita_instansi`.`slug_berita` AS `slug_berita`,`v_berita_instansi`.`gambar_berita` AS `gambar_berita`,`v_berita_instansi`.`nama_kategori` AS `nama_kategori`,`v_berita_instansi`.`slug_kategori` AS `slug_kategori`,`v_berita_instansi`.`jenis_berita` AS `jenis_berita`,`v_berita_instansi`.`inisial_berita` AS `inisial_berita`,`v_berita_instansi`.`id_instansi` AS `id_instansi`,`v_berita_instansi`.`direktori_berita` AS `direktori_berita`,`v_berita_instansi`.`warna_berita` AS `warna_berita`,`v_berita_instansi`.`tanggal_berita` AS `tanggal_berita`,`v_berita_instansi`.`singkatan_instansi` AS `singkatan_instansi`,`v_berita_instansi`.`alamat_website` AS `alamat_website` from `v_berita_instansi` where ((`v_berita_instansi`.`utama_kota_berita` = 'ON') and (`v_berita_instansi`.`instansi_berita` = 'ON')) union select `v_pengumuman`.`id_pengumuman` AS `id_pengumuman`,`v_pengumuman`.`judul_pengumuman` AS `judul_pengumuman`,`v_pengumuman`.`slug_pengumuman` AS `slug_pengumuman`,`v_pengumuman`.`gambar_pengumuman` AS `gambar_pengumuman`,`v_pengumuman`.`jenis_pengumuman` AS `jenis_pengumuman`,`v_pengumuman`.`inisial_pengumuman` AS `inisial_pengumuman`,`v_pengumuman`.`inisial_pengumuman` AS `inisial_pengumuman`,`v_pengumuman`.`inisial_pengumuman` AS `inisial_pengumuman`,`v_pengumuman`.`id_instansi` AS `id_instansi`,`v_pengumuman`.`direktori_pengumuman` AS `direktori_pengumuman`,`v_pengumuman`.`warna_pengumuman` AS `warna_pengumuman`,`v_pengumuman`.`tanggal_pengumuman` AS `tanggal_pengumuman`,`v_pengumuman`.`singkatan_instansi` AS `singkatan_instansi`,`v_pengumuman`.`alamat_website` AS `alamat_website` from `v_pengumuman` where ((`v_pengumuman`.`utama_kota_pengumuman` = 'ON') and (`v_pengumuman`.`status_pengumuman` = 'ON')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_website`
--
DROP TABLE IF EXISTS `v_website`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_website`  AS  select `a`.`id_website` AS `id_website`,`a`.`instansi_id` AS `instansi_id`,`a`.`nama_website` AS `nama_website`,`a`.`meta_description` AS `meta_description`,`a`.`meta_keyword` AS `meta_keyword`,`a`.`header_website` AS `header_website`,`a`.`logo_website` AS `logo_website`,`a`.`alamat_website` AS `alamat_website`,`a`.`facebook_website` AS `facebook_website`,`a`.`twitter_website` AS `twitter_website`,`a`.`instagram_website` AS `instagram_website`,`a`.`youtube_website` AS `youtube_website`,`a`.`kantor_website` AS `kantor_website`,`a`.`kontak_website` AS `kontak_website`,`a`.`email_website` AS `email_website`,`a`.`hit_website` AS `hit_website`,`b`.`id_instansi` AS `id_instansi`,`b`.`nama_instansi` AS `nama_instansi`,`b`.`singkatan_instansi` AS `singkatan_instansi`,`b`.`urutan_instansi` AS `urutan_instansi` from (`tb_website` `a` join `tb_instansi` `b`) where (`a`.`instansi_id` = `b`.`id_instansi`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_childmenu`
--
ALTER TABLE `tb_childmenu`
  ADD PRIMARY KEY (`id_childmenu`);

--
-- Indexes for table `tb_download`
--
ALTER TABLE `tb_download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `tb_halaman`
--
ALTER TABLE `tb_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tb_link`
--
ALTER TABLE `tb_link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_modul`
--
ALTER TABLE `tb_modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tb_submenu`
--
ALTER TABLE `tb_submenu`
  ADD PRIMARY KEY (`id_submenu`);

--
-- Indexes for table `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- Indexes for table `tb_tema`
--
ALTER TABLE `tb_tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_website`
--
ALTER TABLE `tb_website`
  ADD PRIMARY KEY (`id_website`);

--
-- Indexes for table `tlog_user`
--
ALTER TABLE `tlog_user`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `tlog_website`
--
ALTER TABLE `tlog_website`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
