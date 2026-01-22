
/*---------------------------------------------------------------
  SQL DB BACKUP 24.05.2023 09:52 
  HOST: localhost
  DATABASE: cbt
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `file_pendukung` VALUES   ('383','13','fileE.jpg',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `jenis` VALUES   ('UAS','Ujian Akhir Semester','aktif');
INSERT INTO `jenis` VALUES ('USBN','Ujian Sekolah Berstandar Nasonal','tidak');
INSERT INTO `jenis` VALUES ('UTS','Ujian Tengah Semester','tidak');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `kelas` VALUES   ('X AK','X','X AK',NULL,NULL);
INSERT INTO `kelas` VALUES ('X DR1','X','X DR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('X DR2','X','X DR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('X DR3','X','X DR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('X DX','X','X DX',NULL,NULL);
INSERT INTO `kelas` VALUES ('X PS','X','X PS',NULL,NULL);
INSERT INTO `kelas` VALUES ('X RX1','X','X RX1',NULL,NULL);
INSERT INTO `kelas` VALUES ('X RX2','X','X RX2',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TR1','X','X TR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TR2','X','X TR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TR3','X','X TR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TX','X','X TX',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI AK1','XI','XI AK1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI AK2','XI','XI AK2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI DR1','XI','XI DR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI DR2','XI','XI DR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI DR3','XI','XI DR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI DX','XI','XI DX',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI PS','XI','XI PS',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI RX1','XI','XI RX1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI RX2','XI','XI RX2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI RX3','XI','XI RX3',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI TR1','XI','XI TR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI TR2','XI','XI TR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI TR3','XI','XI TR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('XI TX','XI','XI TX',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `level` VALUES   ('X','X',NULL);
INSERT INTO `level` VALUES ('XI','XI',NULL);
INSERT INTO `level` VALUES ('XII','XII',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mapel` VALUES   ('10','XI_TJKT','a:1:{i:0;s:4:\"TJKT\";}','584','XI_TJKT','50','0','50','0','100','0','XI','5','a:1:{i:0;s:5:\"semua\";}','2023-05-22 09:48:20','1','70','');
INSERT INTO `mapel` VALUES ('12','X_RPL','a:1:{i:0;s:4:\"RPLG\";}','586','X_RPLG','50','0','50','0','100','0','X','5','a:1:{i:0;s:5:\"semua\";}','2023-05-22 09:55:55','1','70','');
INSERT INTO `mapel` VALUES ('13','X_TJKT','a:1:{i:0;s:4:\"TJKT\";}','584','X_TJKT','50','0','50','0','100','0','X','5','a:4:{i:0;s:5:\"X TR1\";i:1;s:5:\"X TR2\";i:2;s:5:\"X TR3\";i:3;s:4:\"X TX\";}','2023-05-22 09:54:14','1','70','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mata_pelajaran` VALUES   ('Agama','Pendidikan Agama dan Budi Pekerti',NULL);
INSERT INTO `mata_pelajaran` VALUES ('BahasaIndonesia','Bahasa Indonesia',NULL);
INSERT INTO `mata_pelajaran` VALUES ('BahasaInggris','Bahasa Inggris',NULL);
INSERT INTO `mata_pelajaran` VALUES ('Informatika','Informatika',NULL);
INSERT INTO `mata_pelajaran` VALUES ('IPA','IPA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('Matematika','Matematika',NULL);
INSERT INTO `mata_pelajaran` VALUES ('Penjas','Penjas Orkes',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PKK','Projek Kreatif dan Kewirausahaan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PPKn','Pendidikan Pancasila dan Kewarganegaraan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('Sejarah','Sejarah',NULL);
INSERT INTO `mata_pelajaran` VALUES ('SeniBudaya','Seni Budaya',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK','Konsentrasi Keahlian AK',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK2','Perpajakan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK3','Akuntansi Keuangan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK4','Akuntansi Perusahaan Jasa, Dagang dan Manufaktur',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKBS1','Ekonomi Bisnis dan Administrasi Umum',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKBS2','Komputer Akuntansi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKPBS_Pilihan','Pilihan | Public Speaking, Leadership, dan Problem Solving',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV','Konsentrasi Keahlian DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV1','Prinsip Dasar Desain dan Komunikasi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV2','Desain Grafis',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV3','Videography',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV4','Media Interaktif',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV5','3D Modelling',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV6','Desain Brief',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV_Pilihan','Pilihan | Content Creative',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_Mulok','Muatan Lokal | Conversation',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS','Konsentrasi Keahlian PBS',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS1','Ekonomi Islam',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS2','Layanan Lembaga Keuangan Syariah',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS3','Akuntasi Perbankan Syariah',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG','Konsentrasi Keahlian RPLG',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG1','Pemrograman Berorientasi Objek',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG2','Pemrograman Web dan Perangkat Bergerak',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG3','Basis Data',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG4','Pemodelan Perangkat Lunak',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG_Pilihan','Pilihan | Pemrograman Internet',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT','Konsentrasi Keahlian TJKT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_AIJ','Administrasi Infrastruktur Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_ASJ','Administrasi Sistem Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_ASKJ','Administrasi Sistem Keamanan Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_Pilihan','Pilihan | Aplikasi Perkantoran',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_TLJ','Teknologi Layanan Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AK','Dasar Kejuruan AK',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS1','Akuntansi dan Perbankan Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS2','Spreadsheet',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS3','Etika Profesi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV','Dasar Kejuruan DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV1','Dasar Dasar DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV2','Sketsa dan Ilustrasi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV3','Komputer Grafis dan Typography',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV4','Fotografi Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_Mulok','Muatan Lokal | Aplikasi Perkantoran',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_PBS','Dasar Kejuruan PBS',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG','Dasar Kejuruan RPLG',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG1','Pengantar RPLG',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG2','Pemrograman Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG3','Pemrograman Berbasis Desktop',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_TJKT','Dasar Kejuruan TJKT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_TJKT_A','A | Proses Bisnis TJKT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_TJKT_B','B | Dasar TJKT',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_TJKT_C','C | Network Instrument',NULL);

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `materi` VALUES   ('12','1','a:1:{i:0;s:5:\"semua\";}','COVID','COVID SUDAH USAI','<p>CONTOH MATERI</p>',NULL,'2020-07-05 21:00:00','https://www.youtube.com/watch?v=0-mwwfaSD44','2020-07-05 21:10:16',NULL);
INSERT INTO `materi` VALUES ('13','1','a:1:{i:0;s:5:\"semua\";}','COVID','CONTOH LAGI','<p><iframe src=\"https://www.youtube.com/embed/0-mwwfaSD44\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p><a href=\"https://www.youtube.com/watch?v=0-mwwfaSD44\" target=\"_blank\" rel=\"noopener\">TONTON VIDEO</a></p>',NULL,'2020-07-05 21:00:00','','2020-07-05 21:14:56',NULL);

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `nilai_temp`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai_temp`;
CREATE TABLE `nilai_temp` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
INSERT INTO `nilai_temp` VALUES   ('27','1','1','9','PTS','2023-05-20 07:26:18','2023-05-20 07:26:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1','1',NULL,NULL,NULL,'0','40,49,48,69,63,64,65,41,42,43,44,45,56,58,59,60,61,62,57,46,53,70,36,37,38,','B,A,D,E,C,D,E,A,B,C,C,A,D,B,E,E,D,A,C,B,B,A,D,E,C,D,C,A,E,B,A,B,C,D,E,C,B,E,D,A,D,B,E,C,A,B,D,A,C,E,E,B,D,C,A,B,E,A,C,D,E,C,B,A,D,E,A,B,C,D,A,D,B,E,C,A,E,D,B,C,C,D,E,A,B,B,C,E,A,D,E,A,C,B,D,B,C,E,D,A,C,B,A,D,E,E,C,B,A,D,A,B,D,E,C,A,C,D,B,E,E,A,C,D,B,',NULL,'0');

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `pengawas` VALUES   ('1','-','Administrator','','admin','$2y$10$71vk7q4neUIks9VfYZujTubMtuIMCqQ7fZdwbkOxkyyq4iUrj2gUa','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('511','-','Agus Fadly Taqwan Lubis, S.Pd.Gr.','XI TX','acuz','$2y$10$9k115AopwUhheyKnbvDybuIQvce.QZ4Zt3ktMKgJU14ED3ETofN9C','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('512','-','Ahmad Rizky Roenanda, S.Kom.','XI DR2','rizky','$2y$10$Zw0wypihN1frl2AMH8PESeLDwHuPVeExIvCVEosZIzZ.Wfpsydlt2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('513','-','Ahmad Taufik Irvan','','opik','$2y$10$Wk9KHr9jXkzBCHwVDi3gcOf4X0NBzNb/I7EUoMAF8oI0fbqOEGg5G','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('514','-','Ainun Mardiah','','ainun','$2y$10$/lVIHFooS2HTFVVSaOAqQeVnGmPWXI0pP1UuvoY5BuMuELwSclAey','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('515','-','Alfandi Dachlan Nasution, S.Pd.','','dahlan','$2y$10$VsoJ4.8RXVlh5SPiJ6NNZeeT6AYqZjjocaQQMI1wG/xiNS1vCKRy.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('516','-','Alwin Parulian','','alwin','$2y$10$pbSGOgah6Be.xx8XCTftAufPZEoUJlfbP3ujZLp7Ton3N1cqjt5Ny','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('517','-','Andika','','andika','$2y$10$BfyrNb/.9DGLlFNBFqgnveDiaif7BwhurllKzU3tUZh0NWy2aVBym','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('518','-','Andre Pratama, S.Kom.','XI TR3','ap','$2y$10$S63zAmZzZP3YFgsUiKLGK.gVskGVVguVEQDdQakQf1nNcWDoqfGyu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('519','-','Arfan Hendra','','arfan','$2y$10$fDTqniByLoYbJ3Vg6gurdO5F5t2s2LW2QKms2PaU85dqh63EFcTO6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('520','-','Ari Antika Pane','','pane','$2y$10$SefcixvY9nmjeHh4KqH8CuZmUENPoe0ME6FOQgjTfZTZVhf4vp2/i','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('521','-','Asril Putra, S.Pd.','','asril','$2y$10$ygNDPjeFn9FWZGtftb9wouPpt9aNAidmTpL/FAuBUY1gEJNH2UjiC','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('522','-','Dahrim Pohan','','dahrim','$2y$10$AVYLfuwNpoFSfSkxTtzmHOfZrReb9Zb.NFCCoS8O5iOLu6RgNdcNa','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('523','-','Darwis','','darwis','$2y$10$rYa4UZfRLZdWp/Y.n02qX.UvHPenP3cLr0Gvi2p0MFIx6Q.Gloeky','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('524','-','Dedek Serly Ramadhani','','serly','$2y$10$WUEnjaLmXulibpt9XReYQu2VOh3iVIj7qJbnZ2JOIK/R7ai4XL8QW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('525','-','Dedi Leman, M.Kom.','','dedi','$2y$10$9GrqppytBQfGKQIXf82tf.QZV3WC4D8PnLNW9loi4IdR78K1MaJOW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('526','-','Dira Urdi Permana','','dira','$2y$10$sBKJa287vpqAkVdDhho8G.buR5P5FBeFVQduVAXdVKNJK6H6ty4yy','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('527','-','Eliya Fitri Nasution, M.Pd.','XI PS','eliya','$2y$10$hdF0fyVb9Ebo26atNMJFYeFtInHNIX/0FN0WJljGFPlnEwntSZPJW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('528','-','Ernatati','','erna','$2y$10$rdId0V8xaGaCIlPcslvVxuCBk4WJmjIdIn52.q9nk767BuC7s5Zv2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('529','-','Faisal Irsan Pasaribu','','faisal','$2y$10$E9.bS6RbQPBJU0O/fOHf7u3AKtcgVDKn3V11kHBFcTwaa5ISIV2MS','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('530','-','Fatimah Dewi','','fatimah','$2y$10$112ZH0x0/4nNxuWr2CKE8.2xyxiCs5323KPxWMsBEmLiubKbA3rIq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('531','-','Fitri Mawaddah','','mawaddah','$2y$10$1xgj5HgL1JYMpEBSHQiL8.zFy9rr2f4cT4gaq6wv3NxVXx8WKYPNe','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('532','-','Fitriani Sitopu','','fitriani','$2y$10$g.gE9Vgb6rj0nT.EfPXt7.sf09IC8REApFH/NeAX0F.z4nY054hZG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('533','-','Fitriyani, M.Ak.','','fitriyani','$2y$10$Xzp5eaGa8YqUKFxqzWY8Iu4QxkTdZ4YcUTlTj1SjZAD2Z96LACfT6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('534','-','Hartati Tammamah Lubis, S.Kom.','','tama','$2y$10$.2SAPz1Lx2jcDYW9WgDT0OwB7X9TcN7MlNHQut5BaLkgCt5pY5yc.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('535','-','Ida Zuraida','','ida','$2y$10$93oZIqWCKE9JlSicy9fs7eyqzsYtWhCOoQxDpu5FQM0QaJMPsTmuW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('536','-','Irmansyah, S.Pd.','XI RX1','irman','$2y$10$WOpi0zKIGeIHr70/wMnkruY7jDq9/EvpzfDCB2dV1wPANxTPp067y','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('537','-','Irna Tri Aulia','','irna','$2y$10$NDLgHmo6gXaQgNFNy8p5Muf8H2dZ5H5.RnUm27tSTsjP2slsZ04ya','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('538','-','Islamadina Suwarsa, S.Kom.','','islam','$2y$10$ZF2EM6Audrnbv8vAq6nF.eFkL5q3k15q/2clXHykHHQwQ3zIVWYaK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('539','-','Ismail','','ismail','$2y$10$1F.3Mu1JzNv8EO3XoVNf/eEa3Jrk3c2VxEqt0DTOe.m3NPsDLJalO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('540','-','Jasmani, S.Pd.I','XI RX2','jasmani','$2y$10$Zony4yEzCEFjxmXm9.XRrO2qgYgcOEG655Zvc9.8nm58PfSNix8bK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('541','-','Karina Rahmadina','','karina','$2y$10$l5M.oAhXTk3cqtdMadsGx.AVITxqfNMCzfpO5A8w31LydTA2Q6bHi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('542','-','Kartina','','kartina','$2y$10$QFoUPyZM.5soGGN5ZWpRlOgZtNXWV1x0ofI.sAuescEpp9/aB1zJW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('543','-','Keddy Fadillah, S.E.','XI AK1','keddy','$2y$10$mfkQSRzS3Xmt0uoVQ.OqIOFGoemf8ku0ofvcSD8s6ZtHgGkrZr3k6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('544','-','Kianditara, M.M','','kian','$2y$10$4w7cDXzkmR9p5joSg1CYa.yOLjprirLQzU6YJjrZ7xbto2Hna5BGO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('545','-','Lanny Apriani','','lanny','$2y$10$wSdflcGbg1fGJYZ4FvwHye0U1wumyJ7AhYkwEy/3nyuIxs1q9klny','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('546','-','Lufita Sari Sitorus','','lufita','$2y$10$dY/2LSMC2Bsacx4yaVEdI.oA0hU0MJ7GtswyBxv0rg5C0lgr6nECi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('547','-','M. Fansuri Syuhada','','fansuri','$2y$10$Ye/JzSpfmio63KjQRqCm9u0ekRJS3ns1MoRs5xQFp1QdK/DevEkzG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('548','-','M. Herizal Sinambela, S.Pd.I','','herizal','$2y$10$yfWwUVd4xc6iLe5H7Eqsbe54eQbN77dn22pnlO.EKdBHWbcywc1/i','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('549','-','Maulia Rahman, M.Kom.','','maulia','$2y$10$S.bDUE/UJGwT1ZSjmOS37ufhv.punY9LPBDAbM7bKTZYtQprZL4LC','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('550','-','Meilani Sari Nasution, S.Pd.','XI AK2','meilani','$2y$10$RlKiiJBl6mWBAwWE/j6i1.46eRmZmkXBio3cQkv3yDX4gviQwHYe.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('551','-','Mona Maya Mita','','mona','$2y$10$/C94T3gKbyyocFcmkSJbGefPa.6JkfrHsToRxE/d7T05/s4KgTflO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('552','-','Mubarak, S.Kom.','','mubarak','$2y$10$VGah1fpNUSYoOjBm2sTSQehfd0cPTy07cYoCJvSTeCHLOxghGJBBi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('553','-','Muhammad Pakpahan','','pakpahan','$2y$10$EgI3/CRtamHZnSAMN4Dk7eO/aGWJAflEBh8Sz2NZr1pS6jwrBPyRm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('554','-','Neny Wahyuni Yusda','','neny','$2y$10$c/FbxoCJwfU33QacklJ/z.plT7ebAxtRoxGkfZq6eTYlUCI5y89ga','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('555','-','Netty Hartati','','netty','$2y$10$5gwR9fUhH4/a6oVxLCOLe.4BssuHa7u7ACGAv8.g4p6MtcBuClZJO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('556','-','Nina Juliana, S.Pd.','XI RX3','nina','$2y$10$aSeTNow9N.wUIrqLO18nq.nu7yabJ5mM.nCS4x0nw/u44I5Zuul1W','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('557','-','Nova Andarini','','nova','$2y$10$9p8xK8QeJViz4QhB1kXvlu/xzcC26EJvVwnht22gkPuSw/s8ZXYu6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('558','-','Nurdahlena','','lena','$2y$10$qdkO/qELbk/4eu6aBhRrD./ZG.PkO3IfUf2HtS.nOLPu2JueU6t2.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('559','-','Nurmala Sari Dewi, S.Pd.','XI DX','nurmala','$2y$10$QtSiBqIlUCVRq9QfkyJM4OlgyC4B6E7i/nTnznRXuXe/G0DAx/Shu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('560','-','Pranita','','pranita','$2y$10$X0tjcUK.HCpGjTYNXkAAyOarahmmY/IHd2wiMWUf/T6meDYbWOBju','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('561','-','Putra Ramadan Nasution, S.Kom.','','putra','$2y$10$YCqv0o0GmhJJ7WkB47O2COm2oYYByWmoXfulaiHTBGuV3jCdYgreq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('562','-','Raden Dwi Puspa','','raden','$2y$10$S4peOBkOjpeLOmq3R6.qzeuFCjn56Qqwy9TAMOFnMg31T3ZfriCxK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('563','-','Rahmad Syahputra','','rahmad','$2y$10$ozUD8dY5HBkRPlP/D0AbruipWluNChzRiJet6x0HfRzaX5HgjGoF.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('564','-','Retno Handoko, S.S','','retno','$2y$10$lJKyoWpKUF4EIF5YPx.jueEd8pDAbSREWhCqH7.IHHRYAwyLezYTG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('565','-','Riani Windasari','','riani','$2y$10$X8//lVfYLLdDUlwERqnFZul4A8Xpj8BKI5YhuNxDo.sSMMsm1uWE6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('566','-','Ridwan Hasayangan Siregar, S.Kom.','XI TR1','ridwan','$2y$10$yFmXkBkrRPza1954pSPR6.f4kVVwLBjODfq6Tan3aSWSHPmn.Kube','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('567','-','Risma Yanti Dewi','','risma','$2y$10$IGeC6MjGFPeM3PLbSmVegeZBMFdcsDOLXi9kAcOiyGfPYkvT8sma2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('568','-','Salsyanabila, S.Pd.','XI DR3','salsa','$2y$10$qTO3HfYzoigTdYi7xW93O.ahHPX7wvIJP.1sFq8W8lURDCLCxY6x.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('569','-','Sapta Kesuma','','sapta','$2y$10$7HcpFEmptlNnImzpR2qLkex5/GFl1phpjVFRnUcxhpOwojWjupo/6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('570','-','Sorimuda Dalimunte','','sorimuda','$2y$10$8YrzRSilJO32nh6VLgPGJuVkoIoCD/Vq.gdif5FtvI5dcJ4qpMOPm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('571','-','Sufaidah','','sufaidah','$2y$10$eBPp3AjKX2/bE.RbCI7HaeJubdHxxg3lUb3leERbg5381NcM774aq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('572','-','Suprianto','','prio','$2y$10$hlSTc6ny9JdzsV.LlC2sU.6Xtx/T7jr/8gxiYisbVsh2UVCafXSaS','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('573','-','Surwedi','','surwedi','$2y$10$X6VBFAq4C4MU40H5g8ocfubNnoHxVy.auPSxBUbx5Xy0VhoK9C.n2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('574','-','Syafrina Nasution','','syafrina','$2y$10$yAj.b9YjAyzd0O9QyER3s.T61bQbd8rWNUmPip.NOGOYHbjDTQ1om','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('575','-','Teguh Satria','','teguh','$2y$10$3p/qqD/BpNswF87bccZZpuyknSfUqmNTqA4Wv4zLi4i7pVXDzQgp2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('576','-','Tri Andini Ayuningtyas, M.Pd.','','andin','$2y$10$tsvzdSozlnNN99NWNs3Oau7zUqas8PqrMsbExk1aKZsYEWprCXwW.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('577','-','Ulasmawati','','ulas','$2y$10$Yjd3QGETsOmxMRLf5zHiF.LshpdOyH7jBcKGpGTkdp/mndeMWub3G','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('578','-','Weni Fikarunnisa','','weni','$2y$10$OLIJfxMPrNdWbDF8srFV4.jDaGskN20ItbBApsf7oHAXFknDnkQ8S','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('579','-','Wildan Rizky Harahap, A.Md. Kom.','XI DR1','wildan','$2y$10$O4fhStV/qnZQOmLt5ID8P.ZG0n9c4cUDRSAxUhJK3YMLlKXbMcdZa','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('580','-','Yuli Rahmadini , ST.','XI TR2','yuli','$2y$10$qj.qEoD4UJkRWdaMwOx0teQcE5ew5CJzXq325dDkttcUFOrwu6qPO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('581','-','Zakiyah','','zakiyah','$2y$10$uTYeRxlRxNJfPSVO6NLYAu9DuwEcNddD9nkrXhef9SANMAD.JXgsi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('583','-','Tama',NULL,'frivnb34','$2y$10$cyaHYAQzvPpm//BQf6CL5eQlD7LyBJLaSZTToANx9UlDuGvohjJNq','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('584','-','TJKT','','tjkt','$2y$10$U3COh9TeteerW/kwI8Kx7eMQY51UPgDDFCwKYsUJmTAVs1e06klbW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('585','-','DKV','','dkv','$2y$10$e.DD3mRW4n8ZGTbuss2A.OB15mUoW/bEez4Czk6zUel2Tv2NbKSHy','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('586','-','RPLG','','rplg','$2y$10$lyr2qA3kmgDLX9ypkAdMNOnimAEikO.HSTszgAdUlogPNW/UOC/Bq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('587','-','AK','','ak','$2y$10$YSlpM/Y1j3JefBoJXVILfOcRMxUeAGEMZFRRrIFXWbSc9tiOWg1JG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('588','-','PBS','','pbs','$2y$10$MN8QitSI8CIMuktANzgcg.aUPcKMgvWwtj4UQ9x2l/uwTYnMUtPO.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('589','-','Kian',NULL,'11','$2y$10$F8M.y4LwcCXJUAnlIS79lO0qLW2l/nwOwLOhkpG5Ioqdr8v0r1wAa','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `pk` VALUES   ('AK','Akuntansi',NULL);
INSERT INTO `pk` VALUES ('DKV','Desain Komunikasi Visual',NULL);
INSERT INTO `pk` VALUES ('PBS','Perbankan Syariah',NULL);
INSERT INTO `pk` VALUES ('RPLG','Rekaya Perangkat Lunak dan Gim',NULL);
INSERT INTO `pk` VALUES ('TJKT','Teknik Jaringan Komputer dan Telekomunikasi',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `ruang` VALUES   ('R1','R1');
INSERT INTO `ruang` VALUES ('R10','R10');
INSERT INTO `ruang` VALUES ('R11','R11');
INSERT INTO `ruang` VALUES ('R12','R12');
INSERT INTO `ruang` VALUES ('R13','R13');
INSERT INTO `ruang` VALUES ('R14','R14');
INSERT INTO `ruang` VALUES ('R15','R15');
INSERT INTO `ruang` VALUES ('R16','R16');
INSERT INTO `ruang` VALUES ('R17','R17');
INSERT INTO `ruang` VALUES ('R18','R18');
INSERT INTO `ruang` VALUES ('R19','R19');
INSERT INTO `ruang` VALUES ('R2','R2');
INSERT INTO `ruang` VALUES ('R20','R20');
INSERT INTO `ruang` VALUES ('R21','R21');
INSERT INTO `ruang` VALUES ('R22','R22');
INSERT INTO `ruang` VALUES ('R23','R23');
INSERT INTO `ruang` VALUES ('R24','R24');
INSERT INTO `ruang` VALUES ('R25','R25');
INSERT INTO `ruang` VALUES ('R26','R26');
INSERT INTO `ruang` VALUES ('R27','R27');
INSERT INTO `ruang` VALUES ('R28','R28');
INSERT INTO `ruang` VALUES ('R29','R29');
INSERT INTO `ruang` VALUES ('R3','R3');
INSERT INTO `ruang` VALUES ('R30','R30');
INSERT INTO `ruang` VALUES ('R31','R31');
INSERT INTO `ruang` VALUES ('R4','R4');
INSERT INTO `ruang` VALUES ('R5','R5');
INSERT INTO `ruang` VALUES ('R6','R6');
INSERT INTO `ruang` VALUES ('R7','R7');
INSERT INTO `ruang` VALUES ('R8','R8');
INSERT INTO `ruang` VALUES ('R9','R9');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `server` VALUES   ('SR01','SR01','aktif');
INSERT INTO `server` VALUES ('S3','S3','aktif');
INSERT INTO `server` VALUES ('S2','S2','aktif');
INSERT INTO `server` VALUES ('S1','S1','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `sesi` VALUES   ('1','1');
INSERT INTO `sesi` VALUES ('2','2');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `bc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `setting` VALUES   ('1','CBT Application','10261412','SMK Tritech Informatika','SMK','M. Herizal Sinambela, S.Pd.I','','Jl. Bhayangkara No.484, Indra Kasih<br />\r\n','Medan Tembung    ','Medan','-','-','smktritechinformatika.sch.id','smktritechinformatika@gmail.com','dist/img/logo97.png','','KARTU PESERTA<br>\nUJIAN AKHIR SEKOLAH','Ujian Akhir Semester','1.0','http://localhost/cbt','Asia/Jakarta','pusat','SR01','http://localhost/cbt','HO3FIrBYcFUMp0','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','1.0','dist/img/bc.jpg');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','','','0');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA3','soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'aktif',
  `online` int(1) DEFAULT 0,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `siswa` VALUES   ('1','X AK','AK','A.0186.22','A.0186.22','AMELIA BR SIMBOLON','X','R1','1','A100186','186332','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('2','X AK','AK','A.0187.22','A.0187.22','ANDINI MULKAN RAMBE','X','R1','1','A100187','187427','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('3','X AK','AK','A.0188.22','A.0188.22','ANNISA KHAIRANI','X','R1','1','A100188','188736','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('4','X AK','AK','A.0189.22','A.0189.22','ARTIKA DEWI PUSPITA','X','R1','1','A100189','189435','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('5','X AK','AK','A.0190.22','A.0190.22','AULIA CINTA MENTARI','X','R1','1','A100190','190203','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('6','X AK','AK','A.0191.22','A.0191.22','CINDY ADELIA NASUTION','X','R1','1','A100191','191270','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('7','X AK','AK','A.0192.22','A.0192.22','CUT MUTIA RAHMI','X','R1','1','A100192','192871','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('8','X AK','AK','A.0193.22','A.0193.22','FEBBY DWI MARSYA','X','R1','1','A100193','193562','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('9','X AK','AK','A.0194.22','A.0194.22','FILDZAH AHLINA','X','R1','1','A100194','194875','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('10','X AK','AK','A.0195.22','A.0195.22','KEYZIAH ZAHRA SIREGAR','X','R1','1','A100195','195384','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('11','X AK','AK','A.0196.22','A.0196.22','NADYA ALFARIANI','X','R1','1','A100196','196380','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('12','X AK','AK','A.0197.22','A.0197.22','NAYLA YUZA WIANDA','X','R1','1','A100197','197134','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('13','X AK','AK','A.0198.22','A.0198.22','NAZWA','X','R1','1','A100198','198715','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('14','X AK','AK','A.0199.22','A.0199.22','RAISYASYABILA ISKANDAR','X','R1','1','A100199','199375','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('15','X AK','AK','A.0200.22','A.0200.22','RALPA ALHADRAMI PASHA','X','R1','1','A100200','200780','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('16','X AK','AK','A.0201.22','A.0201.22','RIKI ATMAJA','X','R1','1','A100201','201251','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('17','X AK','AK','A.0202.22','A.0202.22','SASKIA NOFRIYANTI','X','R1','1','A100202','202674','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('18','X AK','AK','A.0203.22','A.0203.22','SAZKIA AMELIA','X','R1','1','A100203','203211','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('19','X AK','AK','A.0204.22','A.0204.22','SHELLA HALIM','X','R1','1','A100204','204316','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('20','X AK','AK','A.0205.22','A.0205.22','SYAHFINA ','X','R1','1','A100205','205755','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('21','X AK','AK','A.0206.22','A.0206.22','TIARA LIVIA','X','R1','1','A100206','206535','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('22','X AK','AK','A.0207.22','A.0207.22','ZAHRA DIANA BADRUSTAMAM','X','R1','1','A100207','207833','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('23','X PS','PBS','P.0090.22','P.0090.22','CHAIRUL NISSA','X','R2','1','P100090','090379','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('24','X PS','PBS','P.0091.22','P.0091.22','INTANIDA','X','R2','1','P100091','091340','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('25','X PS','PBS','P.0092.22','P.0092.22','JELITA OLIVIA SYAHIRA','X','R2','1','P100092','092538','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('26','X PS','PBS','P.0093.22','P.0093.22','MASHIDAYU FIU NANDA','X','R2','1','P100093','093835','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('27','X PS','PBS','P.0094.22','P.0094.22','NAHLA KHARIMA','X','R2','1','P100094','094227','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('28','X PS','PBS','P.0095.22','P.0095.22','NUR MAISYARAH LUBIS','X','R2','1','P100095','095760','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('29','X PS','PBS','P.0096.22','P.0096.22','RAMADHAN AKBAR HASIBUAN','X','R2','1','P100096','096687','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('30','X PS','PBS','P.0097.22','P.0097.22','SRI INDRIYANTI OCTAVIA HARAHAP','X','R2','1','P100097','097732','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('31','X PS','PBS','P.0098.22','P.0098.22','TIARA AULIA AZZANY','X','R2','1','P100098','098725','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('32','X RX1','RPLG','R.0198.22','R.0198.22','AHMAD AL BANNA','X','R2','1','R100198','198314','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('33','X RX1','RPLG','R.0199.22','R.0199.22','AHMAD DZAKWAN MUBAROQ','X','R2','1','R100199','199618','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('34','X RX1','RPLG','R.0201.22','R.0201.22','ALDO FIRMANSYAH','X','R2','1','R100201','201838','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('35','X RX1','RPLG','R.0204.22','R.0204.22','ALWIANSYAH NUGRAHA','X','R2','1','R100204','204688','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('36','X RX1','RPLG','R.0205.22','R.0205.22','ARINI BALQIS','X','R2','1','R100205','205754','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('37','X RX1','RPLG','R.0206.22','R.0206.22','DANIS HERLANA','X','R2','1','R100206','206926','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('38','X RX1','RPLG','R.0209.22','R.0209.22','FARIZ FIRMANSYAH SINAGA','X','R2','1','R100209','209750','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('39','X RX1','RPLG','R.0211.22','R.0211.22','HARITS NAKHLAH PUTRA','X','R2','1','R100211','211394','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('40','X RX1','RPLG','R.0215.22','R.0215.22','LUKMAN NUL HAKIM','X','R2','1','R100215','215185','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('41','X RX1','RPLG','R.0216.22','R.0216.22','M. JEGEDESEN','X','R2','1','R100216','216480','','S3',NULL,NULL,NULL,'HINDU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('42','X RX1','RPLG','R.0218.22','R.0218.22','M. RIZKY RAMBE','X','R2','1','R100218','218870','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('43','X RX1','RPLG','R.0219.22','R.0219.22','MHD. HIDAYATULLAH','X','R2','1','R100219','219837','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('44','X RX1','RPLG','R.0220.22','R.0220.22','MUHAMMAD FAIZUN KHOIR','X','R3','1','R100220','220579','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('45','X RX1','RPLG','R.0222.22','R.0222.22','MUHAMMAD HANIF ANANDA','X','R3','1','R100222','222425','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('46','X RX1','RPLG','R.0224.22','R.0224.22','MUHAMMAD RIYANTO','X','R3','1','R100224','224132','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('47','X RX1','RPLG','R.0225.22','R.0225.22','NABILA HANAFI','X','R3','1','R100225','225253','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('48','X RX1','RPLG','R.0230.22','R.0230.22','RAFI RAMADHAN','X','R3','1','R100230','230559','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('49','X RX1','RPLG','R.0232.22','R.0232.22','SAID MUHAMMAD NAUFAL','X','R3','1','R100232','232882','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('50','X RX1','RPLG','R.0234.22','R.0234.22','SYAUQI BILQISTHI','X','R3','1','R100234','234918','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('51','X RX1','RPLG','R.0236.22','R.0236.22','VINOUV RIZQ','X','R3','1','R100236','236216','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('52','X RX2','RPLG','R.0197.22','R.0197.22','AENOEL RIZIQ TANJUNG','X','R3','1','R100197','197845','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('53','X RX2','RPLG','R.0200.22','R.0200.22','AIRLANGGA JUNIOR PURBA','X','R3','1','R100200','200225','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('54','X RX2','RPLG','R.0202.22','R.0202.22','ALMAR MIFTAHUL KHOIRIAH','X','R3','1','R100202','202621','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('55','X RX2','RPLG','R.0203.22','R.0203.22','ALWAN MUZAKHI','X','R3','1','R100203','203808','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('56','X RX2','RPLG','R.0207.22','R.0207.22','FAJAR MAULANA MALIK','X','R3','1','R100207','207710','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('57','X RX2','RPLG','R.0208.22','R.0208.22','FAJAR RIZKY RAMADHAN','X','R3','1','R100208','208797','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('58','X RX2','RPLG','R.0210.22','R.0210.22','FRIZA NUGRAHA SITANGGANG','X','R3','1','R100210','210235','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('59','X RX2','RPLG','R.0212.22','R.0212.22','JIHAN AMARA','X','R3','1','R100212','212909','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('60','X RX2','RPLG','R.0213.22','R.0213.22','KABIRUDDIN','X','R3','1','R100213','213380','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('61','X RX2','RPLG','R.0217.22','R.0217.22','M. RAFLI PRATAMA','X','R3','1','R100217','217773','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('62','X RX2','RPLG','R.0223.22','R.0223.22','MUHAMMAD HIDAYAT','X','R3','1','R100223','223127','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('63','X RX2','RPLG','R.0226.22','R.0226.22','NAWFAL RAFFIF','X','R3','1','R100226','226656','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('64','X RX2','RPLG','R.0227.22','R.0227.22','NAYLA DWI SEPTI RIANA','X','R3','1','R100227','227359','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('65','X RX2','RPLG','R.0228.22','R.0228.22','PANJI WIBOWO','X','R4','1','R100228','228815','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('66','X RX2','RPLG','R.0229.22','R.0229.22','RAFFI ILLIYYIN SIREGAR','X','R4','1','R100229','229602','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('67','X RX2','RPLG','R.0231.22','R.0231.22','RAYVAN','X','R4','1','R100231','231475','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('68','X RX2','RPLG','R.0233.22','R.0233.22','SAIMAN ZAKI NASUTION','X','R4','1','R100233','233870','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('69','X RX2','RPLG','R.0235.22','R.0235.22','TR MHD DESVA SYAHREZA','X','R4','1','R100235','235707','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('70','X RX2','RPLG','R.0237.22','R.0237.22','YEHEZKIEL HUTAGALUNG ','X','R4','1','R100237','237978','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('71','X DX','DKV','M.0503.22','D.0503.22','ANANG PRAYOGI YUSDI','X','R4','1','D100503','503599','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('72','X DX','DKV','M.0504.22','D.0504.22','ANGEL RIZQIKA CAHYADI','X','R4','1','D100504','504644','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('73','X DX','DKV','M.0506.22','D.0506.22','AQSA FARANZI MUHAFIZ','X','R4','1','D100506','506618','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('74','X DX','DKV','M.0508.22','D.0508.22','AURALIA SYAHADITIA HARAHAP','X','R4','1','D100508','508904','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('75','X DX','DKV','M.0522.22','D.0522.22','HARDIANSYAH PINEM','X','R4','1','D100522','522399','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('76','X DX','DKV','M.0525.22','D.0525.22','IKHWAN QAEDI ABRAR','X','R4','1','D100525','525937','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('77','X DX','DKV','M.0527.22','D.0527.22','JIHAN NASYWA','X','R4','1','D100527','527869','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('78','X DX','DKV','M.0529.22','D.0529.22','KHAYLA PUTRI HARDIWINATA NST','X','R4','1','D100529','529238','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('79','X DX','DKV','M.0531.22','D.0531.22','M. ALFISYAH','X','R4','1','D100531','531407','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('80','X DX','DKV','M.0543.22','D.0543.22','MUHAMMAD RAFLI AZMI','X','R4','1','D100543','543713','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('81','X DX','DKV','M.0550.22','D.0550.22','NAYA AFRITA SARI','X','R4','1','D100550','550709','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('82','X DX','DKV','M.0551.22','D.0551.22','NUR SYAKIRAH FATHIYAH RIZKI','X','R4','1','D100551','551319','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('83','X DX','DKV','M.0553.22','D.0553.22','PUTRI DWI SEPTIANI','X','R4','1','D100553','553847','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('84','X DX','DKV','M.0559.22','D.0559.22','RAIHAN PRATAMA','X','R4','1','D100559','559686','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('85','X DX','DKV','M.0585.22','D.0585.22','RAJA AL ZORA','X','R4','1','D100585','585424','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('86','X DX','DKV','M.0563.22','D.0563.22','RIA FEBRIANI','X','R5','1','D100563','563968','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('87','X DX','DKV','M.0566.22','D.0566.22','SATRIA TUNGGAL PRASETIYO','X','R5','1','D100566','566867','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('88','X DX','DKV','M.0570.22','D.0570.22','SITI WIDADI','X','R5','1','D100570','570743','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('89','X DX','DKV','M.0573.22','D.0573.22','SYAFIQ ANUGRAH','X','R5','1','D100573','573820','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('90','X DX','DKV','M.0576.22','D.0576.22','SYASYA HUMAIRA','X','R5','1','D100576','576223','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('91','X DR1','DKV','M.0492.22','D.0492.22','ABID RAIHAN EL FAHRI','X','R5','1','D100492','492210','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('92','X DR1','DKV','M.0493.22','D.0493.22','ADENIZA HAFIDZ','X','R5','1','D100493','493868','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('93','X DR1','DKV','M.0494.22','D.0494.22','ADIB RAIHAN EL FAHRI','X','R5','1','D100494','494729','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('94','X DR1','DKV','M.0500.22','D.0500.22','AISYAH SUKOCO','X','R5','1','D100500','500464','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('95','X DR1','DKV','M.0502.22','D.0502.22','ALIF FAIZ HABIBULLAH','X','R5','1','D100502','502877','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('96','X DR1','DKV','M.0509.22','D.0509.22','AZIZAH AQILAH ALWI','X','R5','1','D100509','509307','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('97','X DR1','DKV','M.0511.22','D.0511.22','BARIEL RAFLY AR-ROHMAN','X','R5','1','D100511','511213','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('98','X DR1','DKV','M.0514.22','D.0514.22','DAFFA RIZKI AULIA','X','R5','1','D100514','514948','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('99','X DR1','DKV','M.0521.22','D.0521.22','FRISCA ADINDA MICHELLY','X','R5','1','D100521','521232','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('100','X DR1','DKV','M.0528.22','D.0528.22','KEISYHA AZKIA BILQYZHT','X','R5','1','D100528','528294','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('101','X DR1','DKV','M.0537.22','D.0537.22','M. AFTHONI ADIYATAMA','X','R5','1','D100537','537295','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('102','X DR1','DKV','M.0542.22','D.0542.22','MUHAMMAD IBNU DZILKIRAM NASUTION','X','R5','1','D100542','542174','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('103','X DR1','DKV','M.0546.22','D.0546.22','NADIA BILBINA SALSABIL','X','R5','1','D100546','546771','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('104','X DR1','DKV','M.0556.22','D.0556.22','ROFIQOH EMMALIYA YUSSA','X','R5','1','D100556','556113','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('105','X DR1','DKV','M.0558.22','D.0558.22','RAIHAN MAULIDDINO','X','R5','1','D100558','558290','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('106','X DR1','DKV','M.0560.22','D.0560.22','RAINA ZASKYA AZZAHRA','X','R5','1','D100560','560293','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('107','X DR1','DKV','M.0562.22','D.0562.22','RAMADHAN HIDAYAT PUTRA','X','R6','1','D100562','562289','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('108','X DR1','DKV','M.0564.22','D.0564.22','RIFFA NUR RIZWI','X','R6','1','D100564','564141','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('109','X DR1','DKV','M.0565.22','D.0565.22','SALWA PUTI AZ ZAHRA','X','R6','1','D100565','565598','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('110','X DR1','DKV','M.0568.22','D.0568.22','SHEYLLA SYAHIRAH','X','R6','1','D100568','568929','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('111','X DR1','DKV','M.0569.22','D.0569.22','SITI AYU SYAHPUTRI','X','R6','1','D100569','569594','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('112','X DR1','DKV','M.0572.22','D.0572.22','SRI RATU LESTARI','X','R6','1','D100572','572774','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('113','X DR1','DKV','M.0577.22','D.0577.22','T. RAFIF ALFARIZA','X','R6','1','D100577','577772','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('114','X DR1','DKV','M.0579.22','D.0579.22','UMAR NUGROHO','X','R6','1','D100579','579212','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('115','X DR2','DKV','M.0498.22','D.0498.22','AHMAD RA\'UF NASUTION','X','R6','1','D100498','498801','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('116','X DR2','DKV','M.0499.22','D.0499.22','AISYAH ALIFIA HARAHAP','X','R6','1','D100499','499949','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('117','X DR2','DKV','M.0507.22','D.0507.22','ARIL DIANTO','X','R6','1','D100507','507513','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('118','X DR2','DKV','M.0512.22','D.0512.22','BAYU DWI SATRIA','X','R6','1','D100512','512392','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('119','X DR2','DKV','M.0513.22','D.0513.22','DAFFA MIFTAHUL HUDA','X','R6','1','D100513','513303','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('120','X DR2','DKV','M.0517.22','D.0517.22','DWI SAHILA AZHARI','X','R6','1','D100517','517558','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('121','X DR2','DKV','M.0519.22','D.0519.22','FAJAR IMANUEL RADITYA TARIGAN','X','R6','1','D100519','519192','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('122','X DR2','DKV','M.0520.22','D.0520.22','FASSYA AYU GIATAMA','X','R6','1','D100520','520595','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('123','X DR2','DKV','M.0533.22','D.0533.22','M. TOPAN AHSAN AL HAFIDZ TANJUNG','X','R6','1','D100533','533257','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('124','X DR2','DKV','M.0534.22','D.0534.22','MHD. AQIL ALFIKRI HARAHAP','X','R6','1','D100534','534832','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('125','X DR2','DKV','M.0535.22','D.0535.22','MICHAEL CHANDRA','X','R6','1','D100535','535368','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('126','X DR2','DKV','M.0536.22','D.0536.22','MUHAMMAD ABHISTA RAMADHAN','X','R6','1','D100536','536130','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('127','X DR2','DKV','M.0538.22','D.0538.22','MUHAMMAD ANDRIE ZHAFRAN','X','R6','1','D100538','538848','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('128','X DR2','DKV','M.0539.22','D.0539.22','MUHAMMAD FARHAN','X','R7','1','D100539','539534','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('129','X DR2','DKV','M.0545.22','D.0545.22','MUHAMMAD SAMIR NASRI LUBIS','X','R7','1','D100545','545675','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('130','X DR2','DKV','M.0585.22','D.0585.22','NADINE LOUIS CHECILIA','X','R7','1','D100585','585873','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('131','X DR2','DKV','M.0547.22','D.0547.22','NADYA ZAHFIRA PUTRI','X','R7','1','D100547','547183','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('132','X DR2','DKV','M.0554.22','D.0554.22','PUTRI FEBRIYANTI','X','R7','1','D100554','554305','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('133','X DR2','DKV','M.0557.22','D.0557.22','RAIHAN ALIFIAYASHA','X','R7','1','D100557','557279','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('134','X DR2','DKV','M.0571.22','D.0571.22','SRI AULIA RIANTY SUPRAPTO','X','R7','1','D100571','571740','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('135','X DR2','DKV','M.0575.22','D.0575.22','SYAHIRAH NAWRA GALIH','X','R7','1','D100575','575937','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('136','X DR2','DKV','M.0578.22','D.0578.22','TASYA FADILLA','X','R7','1','D100578','578967','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('137','X DR2','DKV','M.0580.22','D.0580.22','WINDA AMEILIA','X','R7','1','D100580','580165','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('138','X DR2','DKV','M.0581.22','D.0581.22','WINDA KESUMA','X','R7','1','D100581','581960','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('139','X DR2','DKV','M.0584.22','D.0584.22','ZIVANA ZIHAN','X','R7','1','D100584','584296','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('140','X DR3','DKV','M.0495.22','D.0495.22','ADINDA SHAKILA','X','R7','1','D100495','495760','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('141','X DR3','DKV','M.0496.22','D.0496.22','AHMAD ABDUR RASYID RAIHAN','X','R7','1','D100496','496261','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('142','X DR3','DKV','M.0497.22','D.0497.22','AHMAD FAUZAN MA\'ARIF','X','R7','1','D100497','497814','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('143','X DR3','DKV','M.0501.22','D.0501.22','ALBHI GAIL RASYA SIREGAR','X','R7','1','D100501','501272','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('144','X DR3','DKV','M.0505.22','D.0505.22','ANISA KHALISA SIAGIAN','X','R7','1','D100505','505565','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('145','X DR3','DKV','M.0510.22','D.0510.22','AZRIL RAMADHAN','X','R7','1','D100510','510502','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('146','X DR3','DKV','M.0515.22','D.0515.22','DIVA CAHYANI','X','R7','1','D100515','515948','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('147','X DR3','DKV','M.0516.22','D.0516.22','DWI PRATIWI SIREGAR','X','R7','1','D100516','516566','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('148','X DR3','DKV','M.0518.22','D.0518.22','FAHRY FARIZY FADILLAH','X','R7','1','D100518','518223','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('149','X DR3','DKV','M.0523.22','D.0523.22','HARNUS RAFSANZANI','X','R8','1','D100523','523341','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('150','X DR3','DKV','M.0524.22','D.0524.22','HIDEAKI YUSUF RAHMANSYA','X','R8','1','D100524','524626','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('151','X DR3','DKV','M.0526.22','D.0526.22','ISKANDAR HELFI ALHAKIM','X','R8','1','D100526','526895','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('152','X DR3','DKV','M.0530.22','D.0530.22','LUKMAN HAKIM NASUTION','X','R8','1','D100530','530319','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('153','X DR3','DKV','M.0532.22','D.0532.22','M. ARIEL ADRIAN','X','R8','1','D100532','532981','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('154','X DR3','DKV','M.0540.22','D.0540.22','MUHAMMAD FARIS ALMUBARAK','X','R8','1','D100540','540964','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('155','X DR3','DKV','M.0544.22','D.0544.22','MUHAMMAD REVAL','X','R8','1','D100544','544428','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('156','X DR3','DKV','M.0548.22','D.0548.22','NAILA ALIFA ARIANTO','X','R8','1','D100548','548471','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('157','X DR3','DKV','M.0549.22','D.0549.22','NAILAH SADIYA PUTRI','X','R8','1','D100549','549229','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('158','X DR3','DKV','M.0552.22','D.0552.22','OCHA NAQIYA CITRA','X','R8','1','D100552','552759','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('159','X DR3','DKV','M.0555.22','D.0555.22','RAFALDO ALARIC IRAWAN','X','R8','1','D100555','555968','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('160','X DR3','DKV','M.0561.22','D.0561.22','RAISYA MEUTIA SARI','X','R8','1','D100561','561534','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('161','X DR3','DKV','M.0567.22','D.0567.22','SENORITA RAHMA AISYAH SIREGAR','X','R8','1','D100567','567512','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('162','X DR3','DKV','M.0574.22','D.0574.22','SYAHIRA NOVA DIRA','X','R8','1','D100574','574743','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('163','X DR3','DKV','M.0582.22','D.0582.22','YAVET SEPTIANUS SIMBOLON','X','R8','1','D100582','582615','','S2',NULL,NULL,NULL,'KHATOLIK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('164','X DR3','DKV','M.0583.22','D.0583.22','ZERIL AZYA SYAFA ','X','R8','1','D100583','583372','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('165','X TX','TJKT','T.0590.22','T.0590.22','AFIF IMANDA','X','R8','1','T100590','590383','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('166','X TX','TJKT','T.0696.22','T.0696.22','ALDIAN RISKY ','X','R8','1','T100696','696376','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('167','X TX','TJKT','T.0611.22','T.0611.22','DWI WINDA SYAHPUTRI','X','R8','1','T100611','611657','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('168','X TX','TJKT','T.0612.22','T.0612.22','DZUHRI AULIA','X','R8','1','T100612','612467','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('169','X TX','TJKT','T.0613.22','T.0613.22','EFRIANSYAH MADIAS','X','R8','1','T100613','613231','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('170','X TX','TJKT','T.0615.22','T.0615.22','FAHMI ARDINATA','X','R9','1','T100615','615150','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('171','X TX','TJKT','T.0620.22','T.0620.22','FATHAN ARRASYID','X','R9','1','T100620','620719','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('172','X TX','TJKT','T.0625.22','T.0625.22','GILANG RAHMADDIN AKBAR','X','R9','1','T100625','625819','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('173','X TX','TJKT','T.0626.22','T.0626.22','HAFIDZ ANDI ISMALLAH','X','R9','1','T100626','626517','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('174','X TX','TJKT','T.0628.22','T.0628.22','IFLAM DEFRIANSYAH','X','R9','1','T100628','628973','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('175','X TX','TJKT','T.0638.22','T.0638.22','M. SHAKI FAUZAN','X','R9','1','T100638','638928','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('176','X TX','TJKT','T.0644.22','T.0644.22','MUHAMMAD ADHITYA PRATAMA','X','R9','1','T100644','644583','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('177','X TX','TJKT','T.0648.22','T.0648.22','MUHAMMAD DAVA AL-TAQWA','X','R9','1','T100648','648231','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('178','X TX','TJKT','T.0651.22','T.0651.22','MUHAMMAD FAIZAL','X','R9','1','T100651','651402','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('179','X TX','TJKT','T.0659.22','T.0659.22','MUHAMMAD RIZWAN FARID','X','R9','1','T100659','659747','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('180','X TX','TJKT','T.0661.22','T.0661.22','MUTIARA SAKINAH','X','R9','1','T100661','661979','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('181','X TX','TJKT','T.0662.22','T.0662.22','NAUFAL PERDANA MAHEN','X','R9','1','T100662','662833','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('182','X TX','TJKT','T.0664.22','T.0664.22','NOVA SYAHFITRI LUBIS','X','R9','1','T100664','664384','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('183','X TX','TJKT','T.0673.22','T.0673.22','RAIHAN THARIQ ALPASYA','X','R9','1','T100673','673556','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('184','X TX','TJKT','T.0677.22','T.0677.22','RAUF ADMAJA NOVIANTO','X','R9','1','T100677','677809','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('185','X TX','TJKT','T.0685.22','T.0685.22','SATRIO DWI NATHA','X','R9','1','T100685','685763','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('186','X TX','TJKT','T.0692.22','T.0692.22','TIARA SAFITRI','X','R9','1','T100692','692210','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('187','X TR1','TJKT','T.0592.22','T.0592.22','AHMAD BAGUS PULUNGAN','X','R9','1','T100592','592767','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('188','X TR1','TJKT','T.0598.22','T.0598.22','ANNISA RAHMAH PURBA','X','R9','1','T100598','598604','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('189','X TR1','TJKT','T.0600.22','T.0600.22','AUFA HAFIZH ASSARY','X','R9','1','T100600','600606','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('190','X TR1','TJKT','T.0602.22','T.0602.22','BAMBANG ILHAM PRAJA HUTAHURUK','X','R9','1','T100602','602158','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('191','X TR1','TJKT','T.0604.22','T.0604.22','CHAIRRUL QODRI','X','R10','1','T100604','604277','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('192','X TR1','TJKT','T.0606.22','T.0606.22','DAVID ANDRIAN','X','R10','1','T100606','606843','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('193','X TR1','TJKT','T.0616.22','T.0616.22','FAHRI AKBAR LUBIS','X','R10','1','T100616','616981','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('194','X TR1','TJKT','T.0619.22','T.0619.22','FAIZ AMAR AL AMRI','X','R10','1','T100619','619636','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('195','X TR1','TJKT','T.0624.22','T.0624.22','FIKRI FATHONI AL HAZMI','X','R10','1','T100624','624129','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('196','X TR1','TJKT','T.0627.22','T.0627.22','HARRY MURTI WIBOWO','X','R10','1','T100627','627205','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('197','X TR1','TJKT','T.0632.22','T.0632.22','IRZA ASQALANI','X','R10','1','T100632','632137','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('198','X TR1','TJKT','T.0633.22','T.0633.22','JUAN ABRIO UTOMO','X','R10','1','T100633','633961','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('199','X TR1','TJKT','T.0636.22','T.0636.22','M. FARIZ AL BUQHRY','X','R10','1','T100636','636880','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('200','X TR1','TJKT','T.0637.22','T.0637.22','M. FATHIR ASY-SYAUQI','X','R10','1','T100637','637181','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('201','X TR1','TJKT','T.0645.22','T.0645.22','MUHAMMAD ALDINO PRAYOGA','X','R10','1','T100645','645939','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('202','X TR1','TJKT','T.0647.22','T.0647.22','MUHAMMAD ARIF LUBIS','X','R10','1','T100647','647936','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('203','X TR1','TJKT','T.0649.22','T.0649.22','MUHAMMAD DIVA ANUGRAH','X','R10','1','T100649','649607','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('204','X TR1','TJKT','T.0650.22','T.0650.22','MUHAMMAD FACHRI PRATAMA','X','R10','1','T100650','650653','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('205','X TR1','TJKT','T.0653.22','T.0653.22','MUHAMMAD NAUVAL ZAKI','X','R10','1','T100653','653833','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('206','X TR1','TJKT','T.0654.22','T.0654.22','MUHAMMAD NIKO ZULFAHRI','X','R10','1','T100654','654549','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('207','X TR1','TJKT','T.0655.22','T.0655.22','MUHAMMAD NOPIAN SYAHPUTRA','X','R10','1','T100655','655968','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('208','X TR1','TJKT','T.0658.22','T.0658.22','MUHAMMAD REZA FAHLEVI','X','R10','1','T100658','658410','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('209','X TR1','TJKT','T.0674.22','T.0674.22','RAMA OKTAVIANDI','X','R10','1','T100674','674126','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('210','X TR1','TJKT','T.0675.22','T.0675.22','RANGGA SANJAYA','X','R10','1','T100675','675868','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('211','X TR1','TJKT','T.0676.22','T.0676.22','RASYA SAYYIDINA','X','R11','1','T100676','676754','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('212','X TR1','TJKT','T.0684.22','T.0684.22','SALSABILA','X','R11','1','T100684','684985','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('213','X TR1','TJKT','T.0687.22','T.0687.22','SHUFY WALE','X','R11','1','T100687','687658','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('214','X TR1','TJKT','T.0688.22','T.0688.22','SITI AWALIYAH','X','R11','1','T100688','688217','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('215','X TR2','TJKT','T.0591.22','T.0591.22','AFIF NAN ZERLI','X','R11','1','T100591','591884','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('216','X TR2','TJKT','T.0593.22','T.0593.22','ALDI ZIANICO DALIMUNTHE','X','R11','1','T100593','593578','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('217','X TR2','TJKT','T.0596.22','T.0596.22','AMMAR GHANI MUAZ SALIM','X','R11','1','T100596','596835','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('218','X TR2','TJKT','T.0597.22','T.0597.22','ANNISA AURZANTI NASUTION','X','R11','1','T100597','597562','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('219','X TR2','TJKT','T.0601.22','T.0601.22','BAGAS RAHMAT DANI','X','R11','1','T100601','601662','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('220','X TR2','TJKT','T.0607.22','T.0607.22','DHIYAU HABIBI ROHMAN HRP','X','R11','1','T100607','607433','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('221','X TR2','TJKT','T.0608.22','T.0608.22','DINO AL FAJAR','X','R11','1','T100608','608613','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('222','X TR2','TJKT','T.0610.22','T.0610.22','DITHA AURA DAMANIK','X','R11','1','T100610','610205','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('223','X TR2','TJKT','T.0617.22','T.0617.22','FAHRUR SEPTY AWRI','X','R11','1','T100617','617709','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('224','X TR2','TJKT','T.0618.22','T.0618.22','FAISAL REZA ISMAIL HASIBUAN','X','R11','1','T100618','618844','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('225','X TR2','TJKT','T.0621.22','T.0621.22','FERDIANSYAH PRATAMA','X','R11','1','T100621','621480','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('226','X TR2','TJKT','T.0622.22','T.0622.22','FERDY HERMAWAN','X','R11','1','T100622','622443','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('227','X TR2','TJKT','T.0623.22','T.0623.22','FERRY HERMAWAN','X','R11','1','T100623','623838','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('228','X TR2','TJKT','T.0630.22','T.0630.22','IMAM SUMARJA','X','R11','1','T100630','630899','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('229','X TR2','TJKT','T.0635.22','T.0635.22','M. FACHRIL PUTRA NAPASHA','X','R11','1','T100635','635208','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('230','X TR2','TJKT','T.0639.22','T.0639.22','MAYSAHPUTRI ANGGRAINI','X','R11','1','T100639','639820','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('231','X TR2','TJKT','T.0640.22','T.0640.22','MHD. FAJRI','X','R12','1','T100640','640145','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('232','X TR2','TJKT','T.0642.22','T.0642.22','MHD. RAKHA','X','R12','1','T100642','642935','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('233','X TR2','TJKT','T.0660.22','T.0660.22','MUHAMMAD SYAFII','X','R12','1','T100660','660877','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('234','X TR2','TJKT','T.0666.22','T.0666.22','PANDU PRATAMA','X','R12','1','T100666','666723','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('235','X TR2','TJKT','T.0670.22','T.0670.22','RAFLY NUGRAHA','X','R12','1','T100670','670628','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('236','X TR2','TJKT','T.0671.22','T.0671.22','RAIHAN AFDAL MAULANA NASUTION','X','R12','1','T100671','671121','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('237','X TR2','TJKT','T.0672.22','T.0672.22','RAIHAN RIVALDI ','X','R12','1','T100672','672931','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('238','X TR2','TJKT','T.0678.22','T.0678.22','RICHI AGUNG WISANGGENI','X','R12','1','T100678','678261','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('239','X TR2','TJKT','T.0683.22','T.0683.22','SALSA KHAIRANI','X','R12','1','T100683','683245','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('240','X TR2','TJKT','T.0689.22','T.0689.22','SUNAN MUSTAJAB','X','R12','1','T100689','689865','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('241','X TR2','TJKT','T.0693.22','T.0693.22','WAHYU ARDINATA','X','R12','1','T100693','693651','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('242','X TR2','TJKT','T.0694.22','T.0694.22','ZAHRA FADILLAH','X','R12','1','T100694','694582','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('243','X TR2','TJKT','T.0695.22','T.0695.22','ZAKI UMARA H','X','R12','1','T100695','695525','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('244','X TR3','TJKT','T.0594.22','T.0594.22','ALIF JULIANSYAH','X','R12','1','T100594','594977','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('245','X TR3','TJKT','T.0595.22','T.0595.22','AMELYA SAPUTRI','X','R12','1','T100595','595271','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('246','X TR3','TJKT','T.0599.22','T.0599.22','ARMAN PINTORO','X','R12','1','T100599','599669','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('247','X TR3','TJKT','T.0603.22','T.0603.22','BUNGA','X','R12','1','T100603','603132','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('248','X TR3','TJKT','T.0605.22','T.0605.22','DAFA KAHLIL EFENDI','X','R12','1','T100605','605579','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('249','X TR3','TJKT','T.0609.22','T.0609.22','DIO MUHAMMAD TIRTA','X','R12','1','T100609','609582','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('250','X TR3','TJKT','T.0614.22','T.0614.22','FACHREZI RIZQI MAULI BATUBARA','X','R12','1','T100614','614779','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('251','X TR3','TJKT','T.0629.22','T.0629.22','ILHAM RADIANSYAH PUTRA','X','R13','1','T100629','629902','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('252','X TR3','TJKT','T.0631.22','T.0631.22','IRHAN ILMI','X','R13','1','T100631','631314','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('253','X TR3','TJKT','T.0634.22','T.0634.22','LIONEL MATTHEW MESSI SITOMPUL','X','R13','1','T100634','634763','','S1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('254','X TR3','TJKT','T.0641.22','T.0641.22','MHD. FAREL ATHAYA','X','R13','1','T100641','641247','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('255','X TR3','TJKT','T.0643.22','T.0643.22','MHM. AR RAFI AL BUKHORI','X','R13','1','T100643','643554','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('256','X TR3','TJKT','T.0652.22','T.0652.22','MUHAMMAD FAJRI KELANA','X','R13','1','T100652','652973','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('257','X TR3','TJKT','T.0656.22','T.0656.22','MUHAMMAD RAFLI RAMBE','X','R13','1','T100656','656340','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('258','X TR3','TJKT','T.0657.22','T.0657.22','MUHAMMAD RAKA PRADYTIA SETIAWAN','X','R13','1','T100657','657729','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('259','X TR3','TJKT','T.0663.22','T.0663.22','NAUVAL HIBRIZI AKBAR','X','R13','1','T100663','663653','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('260','X TR3','TJKT','T.0665.22','T.0665.22','OLIVIA PAULENN HUTAPEA ','X','R13','1','T100665','665516','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('261','X TR3','TJKT','T.0667.22','T.0667.22','PASHA AKBAR ISLAMY','X','R13','1','T100667','667901','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('262','X TR3','TJKT','T.0668.22','T.0668.22','RAFFI ACHMAD SOUZHA','X','R13','1','T100668','668592','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('263','X TR3','TJKT','T.0669.22','T.0669.22','RAFKA GIFACRI','X','R13','1','T100669','669180','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('264','X TR3','TJKT','T.0679.22','T.0679.22','RISKY AULIA PASARIBU','X','R13','1','T100679','679292','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('265','X TR3','TJKT','T.0680.22','T.0680.22','RIZKY ADITYA','X','R13','1','T100680','680861','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('266','X TR3','TJKT','T.0681.22','T.0681.22','RIZKY RAMADHAN','X','R13','1','T100681','681273','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('267','X TR3','TJKT','T.0682.22','T.0682.22','SALMAN AL-FARISYI','X','R13','1','T100682','682304','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('268','X TR3','TJKT','T.0686.22','T.0686.22','SATRYO','X','R13','1','T100686','686364','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('269','X TR3','TJKT','T.0690.22','T.0690.22','SYAHPUTRA FINANDA','X','R13','1','T100690','690954','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('270','X TR3','TJKT','T.0691.22','T.0691.22','SYAKILA RAHMAH AULIA','X','R13','1','T100691','691504','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('271','XI RX1','RPLG','R.0196.21','R.0196.21','BIMA AULIA','XI','R14','1','R100196','196260','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('272','XI RX1','RPLG','R.0148.21','R.0148.21','DAYA FIKRI SIREGAR','XI','R14','1','R100148','148858','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('273','XI RX1','RPLG','R.0153.21','R.0153.21','FADIL ALI AUFA','XI','R14','1','R100153','153812','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('274','XI RX1','RPLG','R.0155.21','R.0155.21','FAUZIAH','XI','R14','1','R100155','155195','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('275','XI RX1','RPLG','R.0156.21','R.0156.21','FIRDA NABILAH','XI','R14','1','R100156','156202','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('276','XI RX1','RPLG','R.0159.21','R.0159.21','GILANG PRASETYA','XI','R14','1','R100159','159818','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('277','XI RX1','RPLG','R.0162.21','R.0162.21','IMAM MAULANA','XI','R14','1','R100162','162747','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('278','XI RX1','RPLG','R.0164.21','R.0164.21','KHOIRUNNISA','XI','R14','1','R100164','164232','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('279','XI RX1','RPLG','R.0168.21','R.0168.21','M. QORY AL FATTAH','XI','R14','1','R100168','168241','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('280','XI RX1','RPLG','R.0169.21','R.0169.21','M. REYHAN AL FATHIR','XI','R14','1','R100169','169280','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('281','XI RX1','RPLG','R.0170.21','R.0170.21','MAULANA HAIKAL HUTASUHUT','XI','R14','1','R100170','170159','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('282','XI RX1','RPLG','R.0173.21','R.0173.21','MUHAMMAD NADHIF NUGRAHA','XI','R14','1','R100173','173250','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('283','XI RX1','RPLG','R.0174.21','R.0174.21','MUHAMMAD RAIHAN','XI','R14','1','R100174','174984','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('284','XI RX1','RPLG','R.0179.21','R.0179.21','NAFIL RIZQTRIANTO','XI','R14','1','R100179','179461','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('285','XI RX1','RPLG','R.0180.21','R.0180.21','OBED MICHAEL','XI','R14','1','R100180','180670','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('286','XI RX1','RPLG','R.0181.21','R.0181.21','RACHMAD SYAHPUTRA','XI','R14','1','R100181','181304','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('287','XI RX1','RPLG','R.0182.21','R.0182.21','RAFI AZMI SYUJA RYAN','XI','R14','1','R100182','182545','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('288','XI RX2','RPLG','R.0138.21','R.0138.21','ABIYYU HANIFAN','XI','R14','1','R100138','138752','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('289','XI RX2','RPLG','R.0144.21','R.0144.21','ARLAN MULIA QARDAYA S PANE','XI','R14','1','R100144','144679','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('290','XI RX2','RPLG','R.0146.21','R.0146.21','AURY KHALIDA NAZLAH','XI','R14','1','R100146','146624','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('291','XI RX2','RPLG','R.0147.21','R.0147.21','AYUNDA LESTARI','XI','R14','1','R100147','147957','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('292','XI RX2','RPLG','R.0150.21','R.0150.21','DIMAS SUAJI HABIBI','XI','R15','1','R100150','150978','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('293','XI RX2','RPLG','R.0151.21','R.0151.21','DIO BIMA PANGESTU','XI','R15','1','R100151','151981','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('294','XI RX2','RPLG','R.0154.21','R.0154.21','FADILAH SALSABILA ELPHI LAMENGGE','XI','R15','1','R100154','154930','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('295','XI RX2','RPLG','R.0158.21','R.0158.21','GHAZWAN DEWA PUTRA MUCHARI','XI','R15','1','R100158','158524','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('296','XI RX2','RPLG','R.0160.21','R.0160.21','GILANG RAMADHANSYAH','XI','R15','1','R100160','160537','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('297','XI RX2','RPLG','R.0161.21','R.0161.21','HANDRIAN RAMADHAN','XI','R15','1','R100161','161289','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('298','XI RX2','RPLG','R.0163.21','R.0163.21','IQBAL MUNAHAR','XI','R15','1','R100163','163223','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('299','XI RX2','RPLG','R.0166.21','R.0166.21','M. ARIF','XI','R15','1','R100166','166600','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('300','XI RX2','RPLG','R.0167.21','R.0167.21','M. HILMI SYUHADA','XI','R15','1','R100167','167575','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('301','XI RX2','RPLG','R.0178.21','R.0178.21','NADILA SHAMIMI','XI','R15','1','R100178','178888','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('302','XI RX2','RPLG','R.0183.21','R.0183.21','RAFLI AL GHIFARI NASUTION','XI','R15','1','R100183','183936','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('303','XI RX2','RPLG','R.0185.21','R.0185.21','ROID RUSYDI SIREGAR','XI','R15','1','R100185','185793','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('304','XI RX2','RPLG','R.0186.21','R.0186.21','SIRAJUDDIN','XI','R15','1','R100186','186686','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('305','XI RX2','RPLG','R.0188.21','R.0188.21','STEVEN YESAYA DARMAWAN SITUMORANG','XI','R15','1','R100188','188774','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('306','XI RX2','RPLG','R.0189.21','R.0189.21','VANI JULIAN PUTRI ZEBUA','XI','R15','1','R100189','189161','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('307','XI RX2','RPLG','R.0190.21','R.0190.21','VARIQRIEHAN EISYAHRA','XI','R15','1','R100190','190712','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('308','XI RX3','RPLG','R.0139.21','R.0139.21','ADITYA SAPUTRA','XI','R15','1','R100139','139772','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('309','XI RX3','RPLG','R.0140.21','R.0140.21','AGHA GHAISAN HAMDANI NASUTION','XI','R15','1','R100140','140746','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('310','XI RX3','RPLG','R.0141.21','R.0141.21','AISYAH ASMIRA','XI','R15','1','R100141','141188','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('311','XI RX3','RPLG','R.0142.21','R.0142.21','ANUGRAH PUTRA PERDANA','XI','R15','1','R100142','142301','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('312','XI RX3','RPLG','R.0143.21','R.0143.21','ARIQ AL IKRAM','XI','R15','1','R100143','143498','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('313','XI RX3','RPLG','R.0145.21','R.0145.21','ATHAYA KIYASAH PERMANA','XI','R16','1','R100145','145500','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('314','XI RX3','RPLG','R.0152.21','R.0152.21','FADEL FAJRI','XI','R16','1','R100152','152531','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('315','XI RX3','RPLG','R.0165.21','R.0165.21','LUTHFIA HASANAH','XI','R16','1','R100165','165219','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('316','XI RX3','RPLG','R.0171.21','R.0171.21','MHD. EVANDRA FACHREZY','XI','R16','1','R100171','171679','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('317','XI RX3','RPLG','R.0172.21','R.0172.21','MUHAMAD RIFKY','XI','R16','1','R100172','172328','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('318','XI RX3','RPLG','R.0175.21','R.0175.21','MUHAMMAD REIHAN SIDDIK SUHERI','XI','R16','1','R100175','175805','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('319','XI RX3','RPLG','R.0177.21','R.0177.21','MUHAMMAD ZAKI','XI','R16','1','R100177','177342','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('320','XI RX3','RPLG','R.0184.21','R.0184.21','RIDHO DARMAWAN','XI','R16','1','R100184','184779','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('321','XI RX3','RPLG','R.0187.21','R.0187.21','SITI ZAHARA','XI','R16','1','R100187','187590','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('322','XI RX3','RPLG','R.0191.21','R.0191.21','VILAR SIDDIK AVRIANSARI','XI','R16','1','R100191','191353','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('323','XI RX3','RPLG','R.0192.21','R.0192.21','YEHEZKIEL HAGANTA TARIGAN','XI','R16','1','R100192','192516','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('324','XI RX3','RPLG','R.0193.21','R.0193.21','ZAHIRAH AFIQAH BALQIS','XI','R16','1','R100193','193819','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('325','XI RX3','RPLG','R.0194.21','R.0194.21','ZASQIA DWI NAVITA','XI','R16','1','R100194','194732','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('326','XI RX3','RPLG','R.0195.21','R.0195.21','ZONA FERNANDO SINAGA','XI','R16','1','R100195','195127','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('327','XI TX','TJKT','T.0484.21','T.0484.21','ANDI LALA ARSA','XI','R16','1','T100484','484269','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('328','XI TX','TJKT','T.0485.21','T.0485.21','ANDRE KURNIAWAN BOANG MANALU','XI','R16','1','T100485','485313','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('329','XI TX','TJKT','T.0486.21','T.0486.21','AZRIL ARFANSYAH','XI','R16','1','T100486','486576','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('330','XI TX','TJKT','T.0487.21','T.0487.21','BAGAS FAUZAN EFENDI','XI','R16','1','T100487','487622','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('331','XI TX','TJKT','T.0488.21','T.0488.21','CHELSEA AULIA COA','XI','R16','1','T100488','488856','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('332','XI TX','TJKT','T.0489.21','T.0489.21','FACHREL QASITH RADITYA','XI','R16','1','T100489','489163','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('333','XI TX','TJKT','T.0490.21','T.0490.21','FATHIR RIZKY ALAMSYAH','XI','R16','1','T100490','490731','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('334','XI TX','TJKT','T.0491.21','T.0491.21','HUSNA HUSBANAH','XI','R17','1','T100491','491864','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('335','XI TX','TJKT','T.0492.21','T.0492.21','JAHRONIANSYAH','XI','R17','1','T100492','492855','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('336','XI TX','TJKT','T.0493.21','T.0493.21','KHAIRUNNISA SHALZABYLLA','XI','R17','1','T100493','493913','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('337','XI TX','TJKT','T.0494.21','T.0494.21','MUHAMMAD ARAFI AL FURQON','XI','R17','1','T100494','494928','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('338','XI TX','TJKT','T.0495.21','T.0495.21','MUHAMMAD FAHLEVI PUTRA RANGKUTI','XI','R17','1','T100495','495322','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('339','XI TX','TJKT','T.0496.21','T.0496.21','MUHAMMAD HAZMI YUSRA','XI','R17','1','T100496','496242','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('340','XI TX','TJKT','T.0497.21','T.0497.21','MUHAMMAD ILYAS NARU','XI','R17','1','T100497','497422','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('341','XI TX','TJKT','T.0498.21','T.0498.21','MUHAMMAD REYZA','XI','R17','1','T100498','498855','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('342','XI TX','TJKT','T.0499.21','T.0499.21','MUHAMMAD ZIDAN','XI','R17','1','T100499','499403','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('343','XI TX','TJKT','T.0500.21','T.0500.21','MUSA AL HADID','XI','R17','1','T100500','500431','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('344','XI TX','TJKT','T.0501.21','T.0501.21','NADIA PUSPITA','XI','R17','1','T100501','501414','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('345','XI TX','TJKT','T.0502.21','T.0502.21','PANDAWA HARYA WICAKSANA','XI','R17','1','T100502','502356','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('346','XI TX','TJKT','T.0503.21','T.0503.21','RAFFI IQAB MUSI','XI','R17','1','T100503','503511','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('347','XI TX','TJKT','T.0504.21','T.0504.21','RANGGA ALDIAN PRATAMA','XI','R17','1','T100504','504231','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('348','XI TX','TJKT','T.0505.21','T.0505.21','RASYID AL MUNAWWAR LUBIS','XI','R17','1','T100505','505920','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('349','XI TX','TJKT','T.0506.21','T.0506.21','REGHINA ADELLA','XI','R17','1','T100506','506560','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('350','XI TX','TJKT','T.0507.21','T.0507.21','TENGKU SYILVINA GHALIA','XI','R17','1','T100507','507299','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('351','XI TX','TJKT','T.0508.21','T.0508.21','VANISA AMELIA','XI','R17','1','T100508','508785','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('352','XI TR1','TJKT','T.0518.21','T.0518.21','ABDUL MAJID','XI','R17','1','T100518','518905','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('353','XI TR1','TJKT','T.0512.21','T.0512.21','ALFIN DWI SATRIA','XI','R17','1','T100512','512788','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('354','XI TR1','TJKT','T.0515.21','T.0515.21','ANTA MAULANA','XI','R17','1','T100515','515871','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('355','XI TR1','TJKT','T.0588.21','T.0588.21','BIMA DWI ADITYA','XI','R18','1','T100588','588965','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('356','XI TR1','TJKT','T.0520.21','T.0520.21','BEVAN PANJI PRAMUDITO','XI','R18','1','T100520','520275','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('357','XI TR1','TJKT','T.0521.21','T.0521.21','CHIKA PUTRI ATMAJA','XI','R18','1','T100521','521443','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('358','XI TR1','TJKT','T.0523.21','T.0523.21','DANIEL JANUARI SIAGIAN','XI','R18','1','T100523','523580','','S1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('359','XI TR1','TJKT','T.0524.21','T.0524.21','DAVA AIDIL PRATAMA','XI','R18','1','T100524','524755','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('360','XI TR1','TJKT','T.0525.21','T.0525.21','DICKY PERMANA','XI','R18','1','T100525','525436','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('361','XI TR1','TJKT','T.0529.21','T.0529.21','FITRIANSYAH SIDDIK','XI','R18','1','T100529','529971','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('362','XI TR1','TJKT','T.0533.21','T.0533.21','HABIB IMAMSYAHPUTERA ANANDA','XI','R18','1','T100533','533166','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('363','XI TR1','TJKT','T.0539.21','T.0539.21','ILHAM MAULANA','XI','R18','1','T100539','539381','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('364','XI TR1','TJKT','T.0549.21','T.0549.21','M. ALFAREZI HRP','XI','R18','1','T100549','549831','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('365','XI TR1','TJKT','T.0560.21','T.0560.21','M.LUCKY RIDLY','XI','R18','1','T100560','560250','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('366','XI TR1','TJKT','T.0556.21','T.0556.21','MHD.IHFAN ARDIANSYAH','XI','R18','1','T100556','556278','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('367','XI TR1','TJKT','T.0557.21','T.0557.21','MHD RAFLY ABDILLAH','XI','R18','1','T100557','557300','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('368','XI TR1','TJKT','T.0554.21','T.0554.21','MHD. ILHAM HARDIANSYA','XI','R18','1','T100554','554772','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('369','XI TR1','TJKT','T.0561.21','T.0561.21','MOHAMMAD CHOIRUL ROHMADI','XI','R18','1','T100561','561670','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('370','XI TR1','TJKT','T.0548.21','T.0548.21','MUHAMMAD FAUZAN AZHARI','XI','R18','1','T100548','548880','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('371','XI TR1','TJKT','T.0565.21','T.0565.21','RAFIF EFFENDY LUBIS','XI','R18','1','T100565','565427','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('372','XI TR1','TJKT','T.0568.21','T.0568.21','RAKA FASYAH ROHANDA','XI','R18','1','T100568','568539','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('373','XI TR1','TJKT','T.0575.21','T.0575.21','RYAN SYAH NA','XI','R18','1','T100575','575587','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('374','XI TR1','TJKT','T.0580.21','T.0580.21','SATRIA HERLAMBANG','XI','R18','1','T100580','580234','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('375','XI TR1','TJKT','T.0581.21','T.0581.21','SHADU TIARA','XI','R18','1','T100581','581431','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('376','XI TR1','TJKT','T.0582.21','T.0582.21','TIFANI FITRIA AGUSTINA','XI','R19','1','T100582','582229','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('377','XI TR2','TJKT','T.0513.21','T.0513.21','ABDUL LATIF','XI','R19','1','T100513','513519','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('378','XI TR2','TJKT','T.0587.21','T.0587.21','ADITYA SETIAWAN','XI','R19','1','T100587','587474','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('379','XI TR2','TJKT','T.0511.21','T.0511.21','AGIL SAPUTRA','XI','R19','1','T100511','511253','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('380','XI TR2','TJKT','T.0517.21','T.0517.21','AL AZRI PRATAMA','XI','R19','1','T100517','517654','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('381','XI TR2','TJKT','T.0516.21','T.0516.21','AL FARIZ ATHALLAH','XI','R19','1','T100516','516246','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('382','XI TR2','TJKT','T.0510.21','T.0510.21','ARI PRATAMA','XI','R19','1','T100510','510263','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('383','XI TR2','TJKT','T.0522.21','T.0522.21','CLARISYA JAELANI','XI','R19','1','T100522','522210','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('384','XI TR2','TJKT','T.0526.21','T.0526.21','ELANG MULIA PUTRA LAKSAMANA','XI','R19','1','T100526','526978','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('385','XI TR2','TJKT','T.0530.21','T.0530.21','FARHAN AL UZNI','XI','R19','1','T100530','530419','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('386','XI TR2','TJKT','T.0532.21','T.0532.21','GABRIEL PAKPAHAN','XI','R19','1','T100532','532616','','S1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('387','XI TR2','TJKT','T.0537.21','T.0537.21','IKHSAN HAFIZH','XI','R19','1','T100537','537125','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('388','XI TR2','TJKT','T.0540.21','T.0540.21','JODI FERDIAN ALPARIZI LUBIS','XI','R19','1','T100540','540507','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('389','XI TR2','TJKT','T.0558.21','T.0558.21','M. ADITYA RACHMAN','XI','R19','1','T100558','558556','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('390','XI TR2','TJKT','T.0559.21','T.0559.21','M. AMIN SYAHPUTRA','XI','R19','1','T100559','559625','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('391','XI TR2','TJKT','T.0555.21','T.0555.21','M. DAFFA TRIENDI','XI','R19','1','T100555','555817','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('392','XI TR2','TJKT','T.0546.21','T.0546.21','M. LUTHFI LUBIS','XI','R19','1','T100546','546262','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('393','XI TR2','TJKT','T.0553.21','T.0553.21','MARSYA','XI','R19','1','T100553','553932','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('394','XI TR2','TJKT','T.0552.21','T.0552.21','MUHAMMAD FACHRUL ROZI','XI','R19','1','T100552','552714','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('395','XI TR2','TJKT','T.0550.21','T.0550.21','MUHAMMAD FADHLIL DESWA','XI','R19','1','T100550','550955','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('396','XI TR2','TJKT','T.0547.21','T.0547.21','MUHAMMAD RIFQI WIBOWO','XI','R19','1','T100547','547961','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('397','XI TR2','TJKT','T.0567.21','T.0567.21','RAFIQ ZAKWAN','XI','R20','1','T100567','567333','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('398','XI TR2','TJKT','T.0569.21','T.0569.21','RASYA SLAVINA RUSLIANDY','XI','R20','1','T100569','569368','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('399','XI TR2','TJKT','T.0570.21','T.0570.21','RIZKY RAMADHANDY HASIBUAN','XI','R20','1','T100570','570436','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('400','XI TR2','TJKT','T.0572.21','T.0572.21','ROBI WIRAYUDHA','XI','R20','1','T100572','572693','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('401','XI TR2','TJKT','T.0577.21','T.0577.21','SHANDY RAMADHAN MANURUNG','XI','R20','1','T100577','577513','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('402','XI TR2','TJKT','T.0579.21','T.0579.21','SHIFA LAUDYA SYAFHIRA','XI','R20','1','T100579','579373','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('403','XI TR3','TJKT','T.0514.21','T.0514.21','AYU DIA ASHARI','XI','R20','1','T100514','514332','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('404','XI TR3','TJKT','T.0519.21','T.0519.21','BERKAT SEBUA TALUNOHI','XI','R20','1','T100519','519720','','S1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('405','XI TR3','TJKT','T.0527.21','T.0527.21','ELGIN','XI','R20','1','T100527','527187','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('406','XI TR3','TJKT','T.0531.21','T.0531.21','FIKRI ALFA NAFIS HASIBUAN','XI','R20','1','T100531','531755','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('407','XI TR3','TJKT','T.0528.21','T.0528.21','FIRDAN ALMIRZA','XI','R20','1','T100528','528329','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('408','XI TR3','TJKT','T.0534.21','T.0534.21','HABLI AS SIDIQ MARBUN','XI','R20','1','T100534','534722','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('409','XI TR3','TJKT','T.0535.21','T.0535.21','ADRIYAN RAHARDI','XI','R20','1','T100535','535193','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('410','XI TR3','TJKT','T.0538.21','T.0538.21','ILHAM DIMAS FADELIANTO','XI','R20','1','T100538','538133','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('411','XI TR3','TJKT','T.0542.21','T.0542.21','M. ALMAUDUDY NASUTION','XI','R20','1','T100542','542514','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('412','XI TR3','TJKT','T.0543.21','T.0543.21','MHD. REIFFAL PUTRA TAMA','XI','R20','1','T100543','543478','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('413','XI TR3','TJKT','T.0544.21','T.0544.21','MHD. REZA ALFHARIZI','XI','R20','1','T100544','544292','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('414','XI TR3','TJKT','T.0551.21','T.0551.21','MUHAMMAD ARYA SIDDIQ','XI','R20','1','T100551','551435','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('415','XI TR3','TJKT','T.0545.21','T.0545.21','MUHAMMAD RAIHAN HARAHAP','XI','R20','1','T100545','545119','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('416','XI TR3','TJKT','T.0541.21','T.0541.21','MUHAMMAD RIO PRAMADHANNU','XI','R20','1','T100541','541533','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('417','XI TR3','TJKT','T.0562.21','T.0562.21','NURUL LATIFAH HASANAH','XI','R20','1','T100562','562288','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('418','XI TR3','TJKT','T.0576.21','T.0576.21','RAFLI ADITYA ARDIANSYAH','XI','R21','1','T100576','576533','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('419','XI TR3','TJKT','T.0566.21','T.0566.21','RAFLI AULIA','XI','R21','1','T100566','566729','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('420','XI TR3','TJKT','T.0564.21','T.0564.21','RAFLY ALFARIZI','XI','R21','1','T100564','564554','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('421','XI TR3','TJKT','T.0574.21','T.0574.21','REGZA PRADITA WINATA','XI','R21','1','T100574','574477','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('422','XI TR3','TJKT','T.0563.21','T.0563.21','RESTU PRATAMA PUTRA','XI','R21','1','T100563','563240','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('423','XI TR3','TJKT','T.0573.21','T.0573.21','RIZKI CHAIRU HALFI','XI','R21','1','T100573','573154','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('424','XI TR3','TJKT','T.0578.21','T.0578.21','SHEYLA OVIANDRA ANDJANI','XI','R21','1','T100578','578588','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('425','XI TR3','TJKT','T.0584.21','T.0584.21','YAZID RIFKI EFENDI','XI','R21','1','T100584','584834','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('426','XI TR3','TJKT','T.0585.21','T.0585.21','ZAID AHMAD NASUTION','XI','R21','1','T100585','585428','','S1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('427','XI DX','DKV','M.0382.21','D.0382.21','AKHSAN ANGGARA HAFIZ','XI','R21','1','D100382','382511','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('428','XI DX','DKV','M.0383.21','D.0383.21','ALYAA HUMAIRAH','XI','R21','1','D100383','383357','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('429','XI DX','DKV','M.0384.21','D.0384.21','CHAIRUNNISA MAHENDRA','XI','R21','1','D100384','384527','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('430','XI DX','DKV','M.0385.21','D.0385.21','CHELSIE MEILINA','XI','R21','1','D100385','385294','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('431','XI DX','DKV','M.0386.21','D.0386.21','DAVA ARIANDA PUTRA KESUMA','XI','R21','1','D100386','386294','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('432','XI DX','DKV','M.0387.21','D.0387.21','DESLITA ZAHARA','XI','R21','1','D100387','387549','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('433','XI DX','DKV','M.0388.21','D.0388.21','IMAM','XI','R21','1','D100388','388397','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('434','XI DX','DKV','M.0389.21','D.0389.21','IMAM ABDURRAHIM','XI','R21','1','D100389','389187','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('435','XI DX','DKV','M.0390.21','D.0390.21','IRFAN HAKIM','XI','R21','1','D100390','390461','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('436','XI DX','DKV','M.0490.21','D.0490.21','FIYAZ ANDIRA','XI','R21','1','D100490','490129','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('437','XI DX','DKV','M.0391.21','D.0391.21','LUTHFIAH NUR AMANDA','XI','R21','1','D100391','391776','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('438','XI DX','DKV','M.0393.21','D.0393.21','M. AQIL AKBAR ALZAIDAN','XI','R21','1','D100393','393816','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('439','XI DX','DKV','M.0394.21','D.0394.21','M.SHOLEH ALADRI','XI','R22','1','D100394','394519','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('440','XI DX','DKV','M.0395.21','D.0395.21','MAGHFIRAH ANANDA RAHMAH','XI','R22','1','D100395','395188','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('441','XI DX','DKV','M.0396.21','D.0396.21','MHD. RAFIE PASYA','XI','R22','1','D100396','396934','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('442','XI DX','DKV','M.0397.21','D.0397.21','MUHAMMAD FIRMAN','XI','R22','1','D100397','397308','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('443','XI DX','DKV','M.0398.21','D.0398.21','MUHAMMAD NABIL','XI','R22','1','D100398','398298','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('444','XI DX','DKV','M.0399.21','D.0399.21','MUHAMMAD RIDWAN FADHILLAH','XI','R22','1','D100399','399958','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('445','XI DX','DKV','M.0400.21','D.0400.21','PUTRI AZZAHRANI','XI','R22','1','D100400','400294','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('446','XI DX','DKV','M.0401.21','D.0401.21','RIDWAN SYAHPUTRA','XI','R22','1','D100401','401935','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('447','XI DX','DKV','M.0402.21','D.0402.21','SUCI INDAH HAYATI','XI','R22','1','D100402','402502','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('448','XI DX','DKV','M.0403.21','D.0403.21','SULTAN TEGUH PASHA','XI','R22','1','D100403','403545','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('449','XI DX','DKV','M.0404.21','D.0404.21','TAUFIK AKBAR','XI','R22','1','D100404','404361','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('450','XI DX','DKV','M.0405.21','D.0405.21','ZALVY RASYA AL AZHAM LUBIS','XI','R22','1','D100405','405947','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('451','XI DX','DKV','M.0406.21','D.0406.21','ZIDANE AULIA','XI','R22','1','D100406','406450','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('452','XI DR1','DKV','M.0415.21','D.0415.21','ABI MANYU','XI','R22','1','D100415','415262','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('453','XI DR1','DKV','M.0413.21','D.0413.21','ADIYAT WICAKSANA','XI','R22','1','D100413','413461','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('454','XI DR1','DKV','M.0409.21','D.0409.21','ALIFA ARDHA SIREGAR','XI','R22','1','D100409','409700','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('455','XI DR1','DKV','M.0420.21','D.0420.21','AZKA SATRIA ANAZMAR LUBIS','XI','R22','1','D100420','420287','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('456','XI DR1','DKV','M.0412.21','D.0412.21','AZKIA AZZAHRAH','XI','R22','1','D100412','412372','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('457','XI DR1','DKV','M.0425.21','D.0425.21','DINDA LESTARI','XI','R22','1','D100425','425659','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('458','XI DR1','DKV','M.0488.21','D.0488.21','DHAWY MAULANA','XI','R22','1','D100488','488381','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('459','XI DR1','DKV','M.0438.21','D.0438.21','FAIRUZA RAMADANI','XI','R22','1','D100438','438315','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('460','XI DR1','DKV','M.0433.21','D.0433.21','FAUZAN AKBAR SIREGAR','XI','R23','1','D100433','433798','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('461','XI DR1','DKV','M.0437.21','D.0437.21','FIONA LOUISE ANASTASYA','XI','R23','1','D100437','437128','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('462','XI DR1','DKV','M.0439.21','D.0439.21','GALA ZIDAN AL AZIS','XI','R23','1','D100439','439128','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('463','XI DR1','DKV','M.0442.21','D.0442.21','HANANEL BETRAND SARAGIH','XI','R23','1','D100442','442741','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('464','XI DR1','DKV','M.0443.21','D.0443.21','IKHRAM EFRIANSYAH NST','XI','R23','1','D100443','443213','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('465','XI DR1','DKV','M.0456.21','D.0456.21','MHD NUR RANGGA SAPUTRA LUBIS','XI','R23','1','D100456','456223','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('466','XI DR1','DKV','M.0457.21','D.0457.21','MHD. ILHAM FAREL RADITYA','XI','R23','1','D100457','457208','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('467','XI DR1','DKV','M.0455.21','D.0455.21','MUHAMMAD FAUZZAN LUBIS','XI','R23','1','D100455','455209','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('468','XI DR1','DKV','M.0461.21','D.0461.21','MUHAMMAD RAFI MUHAJIR','XI','R23','1','D100461','461177','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('469','XI DR1','DKV','M.0447.21','D.0447.21','MUHAMMAD RIDHO ALFATIH DAULAY','XI','R23','1','D100447','447784','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('470','XI DR1','DKV','M.0454.21','D.0454.21','MUHAMMAD ZAKI AL FAHLEVI','XI','R23','1','D100454','454404','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('471','XI DR1','DKV','M.0460.21','D.0460.21','MUTIARA MEIDINA SANNI','XI','R23','1','D100460','460664','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('472','XI DR1','DKV','M.0489.22','D.0489.22','NATASYA RAHADATUL AISY','XI','R23','1','D100489','489769','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('473','XI DR1','DKV','M.0464.21','D.0464.21','NEYZA AMELIA','XI','R23','1','D100464','464276','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('474','XI DR1','DKV','M.0475.21','D.0475.21','RAGIL DELNOVE','XI','R23','1','D100475','475594','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('475','XI DR1','DKV','M.0470.21','D.0470.21','RAHMADANI QAULIYA','XI','R23','1','D100470','470819','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('476','XI DR1','DKV','M.0468.21','D.0468.21','REYHAN STEBYNO SINAGA','XI','R23','1','D100468','468738','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('477','XI DR1','DKV','M.0482.21','D.0482.21','SALSABILA PUTRI BIANTORO','XI','R23','1','D100482','482870','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('478','XI DR1','DKV','M.0486.21','D.0486.21','YUDHA SAHIRA','XI','R23','1','D100486','486490','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('479','XI DR2','DKV','M.0408.21','D.0408.21','ABID FADHILAH','XI','R23','1','D100408','408590','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('480','XI DR2','DKV','M.0414.21','D.0414.21','ADINDA KHAIRUNNISA','XI','R23','1','D100414','414489','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('481','XI DR2','DKV','M.0418.21','D.0418.21','AHMAD RAFAH DARMANSYAH','XI','R24','1','D100418','418751','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('482','XI DR2','DKV','M.0410.21','D.0410.21','AJUB MAHESA','XI','R24','1','D100410','410562','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('483','XI DR2','DKV','M.0419.21','D.0419.21','AL DHIKA RAMADHAN','XI','R24','1','D100419','419443','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('484','XI DR2','DKV','M.0407.21','D.0407.21','AULIA NURUL ASRI','XI','R24','1','D100407','407785','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('485','XI DR2','DKV','M.0421.21','D.0421.21','BOBY FALEVI FAJAR','XI','R24','1','D100421','421641','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('486','XI DR2','DKV','M.0423.21','D.0423.21','CRISTOVER SIMEEN ALONSHO SIMANJUNTAK','XI','R24','1','D100423','423969','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('487','XI DR2','DKV','M.0428.21','D.0428.21','DAFFA DZAKA FAUZI','XI','R24','1','D100428','428183','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('488','XI DR2','DKV','M.0435.21','D.0435.21','FITRAH RAIHANSYAH','XI','R24','1','D100435','435564','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('489','XI DR2','DKV','M.0441.21','D.0441.21','HABIYYU RAFFI','XI','R24','1','D100441','441889','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('490','XI DR2','DKV','M.0445.21','D.0445.21','JHUANZ SIMANJUNTAK','XI','R24','1','D100445','445271','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('491','XI DR2','DKV','M.0446.21','D.0446.21','JORDAN ZAINI','XI','R24','1','D100446','446420','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('492','XI DR2','DKV','M.0392.21','D.0392.21','M. ABDUL AZIZ','XI','R24','1','D100392','392224','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('493','XI DR2','DKV','M.0452.21','D.0452.21','M. RAFLY FAHREZI','XI','R24','1','D100452','452662','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('494','XI DR2','DKV','M.0448.21','D.0448.21','MEILISA AZZAHRA QISTI','XI','R24','1','D100448','448530','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('495','XI DR2','DKV','M.0458.21','D.0458.21','MHD AR RHOYTUL RIDHO HARAHAP','XI','R24','1','D100458','458425','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('496','XI DR2','DKV','M.0449.21','D.0449.21','MHD. ALFATHIR PERANGIN ANGIN','XI','R24','1','D100449','449519','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('497','XI DR2','DKV','M.0453.21','D.0453.21','MUTIARA MARDELLA','XI','R24','1','D100453','453385','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('498','XI DR2','DKV','M.0463.21','D.0463.21','NAISHA FARHANA BALQIS','XI','R24','1','D100463','463200','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('499','XI DR2','DKV','M.0467.21','D.0467.21','NAZLA YUSUF NASUTION','XI','R24','1','D100467','467378','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('500','XI DR2','DKV','M.0466.21','D.0466.21','NURUL HUDA','XI','R24','1','D100466','466388','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('501','XI DR2','DKV','M. 0491.21','D. 0491.21','RAIHAN FAJAR','XI','R24','1','D10 049','049611','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('502','XI DR2','DKV','M.0477.21','D.0477.21','RAIHAN RIFKY AFFANDY','XI','R25','1','D100477','477112','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('503','XI DR2','DKV','M.0473.21','D.0473.21','RESTU SATRIA PERDANA','XI','R25','1','D100473','473734','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('504','XI DR2','DKV','M.0471.21','D.0471.21','RIZKA AULIA SANJANA','XI','R25','1','D100471','471967','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('505','XI DR2','DKV','M.0481.21','D.0481.21','SLAMET ADE DARMAWAN','XI','R25','1','D100481','481667','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('506','XI DR2','DKV','M.0483.21','D.0483.21','SUCI LIDYA RAMADANI SURBAKTI','XI','R25','1','D100483','483364','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('507','XI DR3','DKV','M.0416.21','D.0416.21','AHMAD AQIL FAJARY','XI','R25','1','D100416','416660','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('508','XI DR3','DKV','M.0417.21','D.0417.21','ASHIRA RAMADANI NASUTION','XI','R25','1','D100417','417564','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('509','XI DR3','DKV','M.0422.21','D.0422.21','CHRISTIAN DELON MARCIANO NAIBAHO','XI','R25','1','D100422','422525','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('510','XI DR3','DKV','M.0427.21','D.0427.21','DIMAS AMBRI WARDANA','XI','R25','1','D100427','427175','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('511','XI DR3','DKV','M.0426.21','D.0426.21','DIMAS HANDIKA','XI','R25','1','D100426','426200','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('512','XI DR3','DKV','M.0429.21','D.0429.21','DIMAS PRIYANTO','XI','R25','1','D100429','429500','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('513','XI DR3','DKV','M.0424.21','D.0424.21','DIMAS SANDY ADITIA SITORUS','XI','R25','1','D100424','424447','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('514','XI DR3','DKV','M.0430.21','D.0430.21','DWI FADHILLAH','XI','R25','1','D100430','430405','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('515','XI DR3','DKV','M.0431.21','D.0431.21','FARUQ AL GHIFARY','XI','R25','1','D100431','431175','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('516','XI DR3','DKV','M.0434.21','D.0434.21','FATHINAH AZZAHRA','XI','R25','1','D100434','434617','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('517','XI DR3','DKV','M.0432.21','D.0432.21','FATIMAH AZ ZAHRA HASIBUAN','XI','R25','1','D100432','432762','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('518','XI DR3','DKV','M.0440.21','D.0440.21','HAAMID RAIS','XI','R25','1','D100440','440926','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('519','XI DR3','DKV','M.0459.21','D.0459.21','MICHAEL RAJAGUKGUK','XI','R25','1','D100459','459642','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('520','XI DR3','DKV','M.0450.21','D.0450.21','MUHAMMAD AULIANSAH PASARIBU','XI','R25','1','D100450','450487','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('521','XI DR3','DKV','M.0451.21','D.0451.21','MUHAMMAD FAJAR RIFALDI','XI','R25','1','D100451','451582','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('522','XI DR3','DKV','M.0465.21','D.0465.21','NADHIRA PUTRI MAULIDYAH','XI','R26','1','D100465','465959','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('523','XI DR3','DKV','M.0462.21','D.0462.21','NURTIARA BATUBARA','XI','R26','1','D100462','462115','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('524','XI DR3','DKV','M.0476.21','D.0476.21','RABIATUL ADAWIYAH','XI','R26','1','D100476','476463','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('525','XI DR3','DKV','M.0469.21','D.0469.21','RAKA RAMADHAN ALISA','XI','R26','1','D100469','469279','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('526','XI DR3','DKV','M.0472.21','D.0472.21','RAZIQ AHSAN NASUTION','XI','R26','1','D100472','472191','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('527','XI DR3','DKV','M.0474.21','D.0474.21','RIFQY AQILASYAH LUBIS','XI','R26','1','D100474','474735','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('528','XI DR3','DKV','M.0478.21','D.0478.21','STEVANI AMALITA','XI','R26','1','D100478','478483','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('529','XI DR3','DKV','M.0479.21','D.0479.21','SYAHKILAH WULAN SAHARA','XI','R26','1','D100479','479563','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('530','XI DR3','DKV','M.0480.21','D.0480.21','SYAKIRA MAYLANI NABILA','XI','R26','1','D100480','480415','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('531','XI DR3','DKV','M.0484.21','D.0484.21','VATIA LAYLA ZAHRA','XI','R26','1','D100484','484440','','S2',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('532','XI DR3','DKV','M.0485.21','D.0485.21','WENNY LESTARI SIAHAAN','XI','R26','1','D100485','485827','','S2',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('533','XI AK1','AK','A.0141.21','A.0141.21','ADE AULIA EFENDI','XI','R26','1','A100141','141918','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('534','XI AK1','AK','A.0143.21','A.0143.21','AJENG QORIRAH FAIS','XI','R26','1','A100143','143850','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('535','XI AK1','AK','A.0186.21','A.0186.21','AMANDA DEVINA','XI','R26','1','A100186','186401','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('536','XI AK1','AK','A.0142.21','A.0142.21','ANDINI LINDA MURTI','XI','R26','1','A100142','142592','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('537','XI AK1','AK','A.0144.21','A.0144.21','BALQIS NASYWA KHAIRIYAH','XI','R26','1','A100144','144139','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('538','XI AK1','AK','A.0145.21','A.0145.21','BRILIAN IZZI LESMANA','XI','R26','1','A100145','145791','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('539','XI AK1','AK','A.0147.21','A.0147.21','DEFF MUHAJIRIN PASHA','XI','R26','1','A100147','147274','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('540','XI AK1','AK','A.0150.21','A.0150.21','DIAN FADILA SARI','XI','R26','1','A100150','150744','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('541','XI AK1','AK','A.0152.21','A.0152.21','DINDA AWAN KUSTILLAH','XI','R26','1','A100152','152464','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('542','XI AK1','AK','A.0149.21','A.0149.21','DONI PRATAMA','XI','R27','1','A100149','149503','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('543','XI AK1','AK','A.0154.21','A.0154.21','HASLILA HAMDINI','XI','R27','1','A100154','154294','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('544','XI AK1','AK','A.0158.21','A.0158.21','JIHAN SAJIDAH HUTAJULU','XI','R27','1','A100158','158689','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('545','XI AK1','AK','A.0160.21','A.0160.21','KAMELIA DARMA','XI','R27','1','A100160','160695','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('546','XI AK1','AK','A.0161.21','A.0161.21','LILY RAMADHANI','XI','R27','1','A100161','161197','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('547','XI AK1','AK','A.0164.21','A.0164.21','MUTIARA KHAIRIYAH NAZRI','XI','R27','1','A100164','164948','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('548','XI AK1','AK','A.0165.21','A.0165.21','NAJLA AURA','XI','R27','1','A100165','165538','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('549','XI AK1','AK','A.0166.21','A.0166.21','NAZWA NABILLA','XI','R27','1','A100166','166448','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('550','XI AK1','AK','A.0167.21','A.0167.21','PUTRI ANGGRAINI','XI','R27','1','A100167','167467','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('551','XI AK1','AK','A.0169.21','A.0169.21','RAFIIF GHAALII SM','XI','R27','1','A100169','169372','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('552','XI AK1','AK','A.0187.21','A.0187.21','RAIHAN NUR WANDA','XI','R27','1','A100187','187500','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('553','XI AK1','AK','A.0170.21','A.0170.21','RANI HARFIAH','XI','R27','1','A100170','170315','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('554','XI AK1','AK','A.0175.21','A.0175.21','SHELFIRA DWI EFFENDI','XI','R27','1','A100175','175507','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('555','XI AK1','AK','A.0172.21','A.0172.21','SRI WARDANI PUTRI','XI','R27','1','A100172','172180','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('556','XI AK1','AK','A.0177.21','A.0177.21','SYADILA AYU LUTHFIYYAH','XI','R27','1','A100177','177190','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('557','XI AK2','AK','A.0146.21','A.0146.21','CIKITA ANANDA','XI','R27','1','A100146','146262','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('558','XI AK2','AK','A.0148.21','A.0148.21','DAYANA ROSSA','XI','R27','1','A100148','148446','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('559','XI AK2','AK','A.0151.21','A.0151.21','DILA ANGGRAINI ANOLA','XI','R27','1','A100151','151761','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('560','XI AK2','AK','A.0153.21','A.0153.21','EKA DIAH UTARI','XI','R27','1','A100153','153262','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('561','XI AK2','AK','A.0155.21','A.0155.21','HERLINA SIREGAR','XI','R27','1','A100155','155683','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('562','XI AK2','AK','A.0156.21','A.0156.21','IRFAH AMANDA','XI','R28','1','A100156','156782','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('563','XI AK2','AK','A.0157.21','A.0157.21','JASWI NUR BINTANG','XI','R28','1','A100157','157343','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('564','XI AK2','AK','A.0159.21','A.0159.21','JUMIATIK TASYA TRI UTAMI','XI','R28','1','A100159','159574','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('565','XI AK2','AK','A.0162.21','A.0162.21','LUTFIYAH WULANZAHIYAH NASUTION','XI','R28','1','A100162','162230','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('566','XI AK2','AK','A.0163.21','A.0163.21','MUTIA SALSHA AUDILA','XI','R28','1','A100163','163912','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('567','XI AK2','AK','A.0168.21','A.0168.21','PUTRI DONNA ALICYA','XI','R28','1','A100168','168393','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('568','XI AK2','AK','A.0188.21','A.0188.21','SABILAH RAHMAYANI','XI','R28','1','A100188','188120','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('569','XI AK2','AK','A.0176.21','A.0176.21','SAFIRA AUDRI HAZLI','XI','R28','1','A100176','176651','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('570','XI AK2','AK','A.0174.21','A.0174.21','SALSABILLAH ZAHRA','XI','R28','1','A100174','174567','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('571','XI AK2','AK','A.0178.21','A.0178.21','SUKMA MELATI','XI','R28','1','A100178','178214','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('572','XI AK2','AK','A.0171.21','A.0171.21','SYAFIRA HARVANI','XI','R28','1','A100171','171830','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('573','XI AK2','AK','A.0173.21','A.0173.21','SYAHREVA PRATIWI','XI','R28','1','A100173','173123','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('574','XI AK2','AK','A.0179.21','A.0179.21','SYENA AGNESIA','XI','R28','1','A100179','179808','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('575','XI AK2','AK','A.0180.21','A.0180.21','TENGKU AGHRIPHINA LISTYANI','XI','R28','1','A100180','180327','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('576','XI AK2','AK','A.0181.21','A.0181.21','TRYA MAWADDAH HARTIKA','XI','R28','1','A100181','181228','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('577','XI AK2','AK','A.0182.21','A.0182.21','WIDYA APRIANI','XI','R28','1','A100182','182571','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('578','XI AK2','AK','A.0183.21','A.0183.21','WYONA SASKY','XI','R28','1','A100183','183416','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('579','XI AK2','AK','A.0184.21','A.0184.21','ZAKILA HUMAIRA PUTRI','XI','R28','1','A100184','184429','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('580','XI AK2','AK','A.0185.21','A.0185.21','ZALFA INDRIA SIREGAR','XI','R28','1','A100185','185234','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('581','XI PS','PBS','P.0073.21','P.0073.21','ADE DELIMA','XI','R29','1','P100073','073920','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('582','XI PS','PBS','P.0074.21','P.0074.21','ALIKA AURA AGUSTIN','XI','R29','1','P100074','074266','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('583','XI PS','PBS','P.0075.21','P.0075.21','ALYA MUKHBITA RANGKUTI','XI','R29','1','P100075','075296','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('584','XI PS','PBS','P.0076.21','P.0076.21','AMANDA SYAQIRA','XI','R29','1','P100076','076559','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('585','XI PS','PBS','P.0077.21','P.0077.21','ARIQAH GIOVANNI','XI','R29','1','P100077','077266','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('586','XI PS','PBS','P.0078.21','P.0078.21','ATIYA NUR AZIZAH','XI','R29','1','P100078','078117','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('587','XI PS','PBS','P.0079.21','P.0079.21','BALQIS HUMAYRO','XI','R29','1','P100079','079832','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('588','XI PS','PBS','P.0080.21','P.0080.21','CINDY ANGGRAINI','XI','R29','1','P100080','080170','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('589','XI PS','PBS','P.0081.21','P.0081.21','DEAN SEPTI NIRHANA','XI','R29','1','P100081','081272','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('590','XI PS','PBS','P.0082.21','P.0082.21','DIRA SYAFIHANI','XI','R29','1','P100082','082794','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('591','XI PS','PBS','P.0083.21','P.0083.21','ELSA REGINA BR PURBA','XI','R29','1','P100083','083490','','S3',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('592','XI PS','PBS','P.0084.21','P.0084.21','M.ERLANGGA ADITYA','XI','R29','1','P100084','084123','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('593','XI PS','PBS','P.0085.21','P.0085.21','NAYLA SYAKIRA ILYAS','XI','R29','1','P100085','085690','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('594','XI PS','PBS','P.0086.21','P.0086.21','PUTRI SAIDAH BALQIES NASUTION','XI','R29','1','P100086','086464','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('595','XI PS','PBS','P.0087.21','P.0087.21','RIZKINA SYAHDILA BALQIST','XI','R29','1','P100087','087662','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('596','XI PS','PBS','P.0088.21','P.0088.21','SHASYA AUDRELYA TANJUNG','XI','R29','1','P100088','088573','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('597','XI PS','PBS','P.0089.21','P.0089.21','WAHYU MARWANSYAH','XI','R29','1','P100089','089225','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('598','XI PS','PBS','P.0090.21','P.0090.21','ZASKYA NABILA PUTRI','XI','R29','1','P100090','090819','','S3',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `soal` VALUES   ('22','10','1','Secara umum jaringan komputer terdiri dari di bawah ini kecuali….','1','Local Area Network','Metropolitan Area Network','Radio Area Network','Wide Area Network','Internet','C','','','','','','','');
INSERT INTO `soal` VALUES ('23','10','2','Yang tidak termasuk dalam sistem transmisi adalah...','1','Simplex','Half-duplex','Full-duplex','Duplex','Satu arah','D','','','','','','','');
INSERT INTO `soal` VALUES ('24','10','3','Alat yang digunakan untuk menghitung kehilangan energi yang didapat dari serat optik adalah…..','1','Loss Power Meter','Good Power Meter','MUlti Meter','Standar Power Meter','Spectrum Analyzer','A','','','','','','','');
INSERT INTO `soal` VALUES ('25','10','4','Ada dua jenis routing yaitu…..','1','Routing langsung dan tidak langsung','Routing cepat dan lambat','Routing searah dan multi arah','Routing sekelas dan tidak sekelas','Routing naik dan turun','A','','','','','','','');
INSERT INTO `soal` VALUES ('26','10','5','Untuk mengakses komputer lain, SSH lebih aman dibandingkan telnet karena data yang akan dikirim…..','1','lebih kecil','lebih besar','dijadikan paralel','diacak dulu','diformat dulu','A','','','','','','','');
INSERT INTO `soal` VALUES ('27','10','6','IP address terdiri atas dua bagian yaitu…..','1','bit dan nyble','network ID dan broadcast ID','kelas A dan kelas D','internet dan local','network ID dan host ID','E','','','','','','','');
INSERT INTO `soal` VALUES ('28','10','7','IP address kelas A diberikan untuk jaringan dengan jumlah host…..','1','sangat kecil','sangat besar','sedang','tidak tetap','berbeda','B','','','','','','','');
INSERT INTO `soal` VALUES ('29','10','8','Cara membaca IP Address kelas A, misalnya 113.46.5.6 adalah…..','1','network ID = 113 Host ID = 46.5.6','network ID = 113.46 Host ID = 5.6','network ID = 113.46.5 Host ID = 6','network ID = 113.46.5.6 Host ID = 0','network ID = 0 Host ID = 113.46.5.6','A','','','','','','','');
INSERT INTO `soal` VALUES ('30','10','9','Host ID untuk IP Address kelas C adalah…..','1','24 bit terakhir','18 bit terakhir','12 bit terakhir','8 bit terakhir','4 bit terakhir','D','','','','','','','');
INSERT INTO `soal` VALUES ('31','10','10','Domain Name System (DNS) adalah suatu sistem yang memungkinkan nama suatu host pada jaringan komputer atau internet ditranslasikan menjadi…..','1','broadcast address','host ID','IP address','home ID','Protocol','C','','','','','','','');
INSERT INTO `soal` VALUES ('32','10','11','Berikut yang bukan merupakan jenis kabel untuk jaringan komputer adalah…..','1','BNC','coaxial cable','UTP','fiber optic','STP','A','','','','','','','');
INSERT INTO `soal` VALUES ('33','10','12','Untuk melihat indikasi pada konfigurasi IP yang terpasang pada Komputer dengan sistem operasi windows dengan perintah…..','1','ifconfig','ipconfig','isconfig','cpconfig','lsconfig','B','','','','','','','');
INSERT INTO `soal` VALUES ('34','10','13','Untuk mendeteksi apakah hubungan komputer dengan jaringan sudah berjalan dengan baik, utilitas yang digunakan adalah…..','1','Is','clear','man','tracert','ping','E','','','','','','','');
INSERT INTO `soal` VALUES ('35','10','14','Jika nomor IP tidak dikenal dalam jaringan, maka akan muncul pesan…..','1','Request Time Out','Time to Live','Time to Leave','Data Pending','Repply for All','A','','','','','','','');
INSERT INTO `soal` VALUES ('36','10','15','Apa yang dimaksud dengan Transmitter…','1','Alat untuk memindahkan dan menyaring informasi','Asal/pengirim data','Cara untuk menghubungkan Source dan Destination','Tujuan pengiriman data','Alat penerima sinyal dari Transmission System','A','','','','','','','');
INSERT INTO `soal` VALUES ('37','12','1','<p>Suatu langkah untuk menyelesaikan sebuah masalah secara logis dan sistematis adalah...</p>','1','<p>Pseudocode</p>','<p>Fungsi</p>','<p>Array</p>','<p>Algoritma</p>','<p>Pemrograman</p>','D','','','','','','','');
INSERT INTO `soal` VALUES ('38','12','2','<p>Sintak yang tepat dan benar untuk mengeluarkan output \"Hello people\" di pemrograman C++ adalah...</p>','1','<p>Cin&gt;&gt;\"Hello people\";</p>','<p>Cin&gt;&gt;\"Hello people;</p>','<p>Cout&lt;&lt;\"Hello people</p>','<p>&nbsp;Cout&lt;&lt;\"Hello people\";</p>','<p>Create table Hello people</p>','D','','','','','','','');
INSERT INTO `soal` VALUES ('39','12','3','<p>Alat bantu untuk mengorganisasikan hasil analis adalah dengan...</p>','1','<p>&nbsp;Input - Proses - Output</p>','<p>&nbsp;Start - Proses - Input</p>','<p>Start - Proses - Output</p>','<p>&nbsp;Start - Input - End</p>','<p>Output - Input - Proses</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('40','12','4','<p>Setiap perintah dalam projek C++ selalu diakhiri dengan...</p>','1','<p>?&gt;</p>','<p>//</p>','<p>;</p>','<p>:</p>','<p>{}</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('41','12','5','<p>Suatu program yang memiliki statement serta instruksi yang bermaksud untuk tujuan tertentu disebut...</p>','1','<p>Aray</p>','<p>Looping</p>','<p>Fungsi</p>','<p>Variabel</p>','<p>Tipe data</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('42','12','6','<p>Bagian dari program yang memiliki peran sangat penting yang akan mempengaruhi setiap instruksi jalannya program adalah...</p>','1','<p>Aray</p>','<p>Looping</p>','<p>Fungsi</p>','<p>Variabel</p>','<p>Tipe data</p>','E','','','','','','','');
INSERT INTO `soal` VALUES ('43','12','7','<p>Cin dalam program C++ berati...</p>','1','<p>Untuk menhasilkan output</p>','<p>Untuk menginput data</p>','<p>Untuk membuat program</p>','<p>Untuk mengetahui adanya debug</p>','<p>Untuk menampilkan output</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('44','12','8','<p>C++ dikembangkan oleh...</p>','1','<p>Bjarne Stroustrup</p>','<p>Mark Lee</p>','<p>Khoiril Anwar</p>','<p>Bill Gates</p>','<p>Paul Alen</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('45','12','9','<p>Urutan instruksi untuk menyelesaikan masalah yang telah disusun secara logis dan sistematis dengan menggunakan bahasa pemrograman disebut...</p>','1','<p>Pseudocode</p>','<p>Fungsi</p>','<p>Array</p>','<p>Algoritma</p>','<p>Pemrograman</p>','E','','','','','','','');
INSERT INTO `soal` VALUES ('46','12','10','<p>&nbsp;Data yang harus diberikan pada komputer disebut...</p>','1','<p>Input</p>','<p>Output</p>','<p>Proses</p>','<p>Start</p>','<p>End</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('47','12','11','<p>Untuk menampilkan hasil yang sudah di input pada program c++ disebut...</p>','1','<p>Input</p>','<p>Output</p>','<p>Proses</p>','<p>Start</p>','<p>Pointer</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('48','12','12','<p>Tipe data bilangan bulat dalam C++ adalah...</p>','1','<p>Integer</p>','<p>String</p>','<p>Char</p>','<p>Boolean</p>','<p>Value</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('49','12','13','<p>Tipe data untuk menyimpan variabel berupa nilai teks adalah...</p>','1','<p>String</p>','<p>Strong</p>','<p>Boolean</p>','<p>Int</p>','<p>Char</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('50','12','14','<p>Tipe data untuk yang efisien untuk angka bilang bulat adalah...</p>','1','<p>String</p>','<p>Integer</p>','<p>Byte</p>','<p>Float</p>','<p>Char</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('51','12','15','<p>Tipe data terstruktur yang digunakan untuk menyimpan sejumlah data yang bertipe sama adalah...</p>','1','<p>Array</p>','<p>Int</p>','<p>Float</p>','<p>Loop</p>','<p>Char</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('52','13','1','<p>Apa yang harus dilakukan ketika kabel listrik bermasalah?</p>','1','<p>Memperbaikinya sendiri tanpa bantuan orang lain</p>','<p>Menghubungi petugas yang berwenang untuk memperbaikinya</p>','<p>Membiarkan kabel listrik bermasalah dan menggunakannya seperti biasa</p>','<p>Menghentikan pekerjaan dan tidak menggunakan kabel listrik yang bermasalah</p>','<p>Memotong kabel listrik yang bermasalah untuk memperbaikinya</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('53','13','2','Apa yang harus dilakukan jika menemukan perangkat komputer yang rusak di tempat kerja?','1','Mengambilnya dan memperbaikinya sendiri','Menyimpannya di tempat yang aman dan melaporkannya kepada atasan','Membuangnya ke tempat sampah','Mengabaikannya dan tetap menggunakan perangkat tersebut seperti biasa','Menjualnya dan memperoleh uang tambahan','B','','','','','','','');
INSERT INTO `soal` VALUES ('54','13','3','Apa yang harus dilakukan ketika terjadi kebakaran di tempat kerja?','1','Menyelamatkan barang-barang pribadi terlebih dahulu','Menelepon teman untuk meminta bantuan','Mencoba memadamkan api dengan air','Mencoba memadamkan api dengan alat pemadam kebakaran yang sesuai','Meninggalkan tempat kerja tanpa melakukan apa-apa','D','','','','','','','');
INSERT INTO `soal` VALUES ('55','13','4','Apa yang harus dilakukan sebelum membersihkan atau memperbaiki komputer?','1','Melepas semua kabel dan perangkat keras','Menggunakan bahan kimia yang kuat untuk membersihkan bagian dalam','Memasang kabel dan perangkat keras sebanyak mungkin','Menyalakan komputer dan mengecek apakah semuanya berfungsi','Menghubungi teknisi komputer terlebih dahulu','A','','','','','','','');
INSERT INTO `soal` VALUES ('56','13','5','Apa yang harus dilakukan untuk mengurangi dampak lingkungan dari limbah elektronik?','1','Membuangnya di tempat sampah biasa','Membakarnya di belakang rumah','Mendaur ulang bagian yang masih bisa dipakai','Membuangnya ke sungai atau laut','Menyimpannya di gudang tanpa melakukan apa-apa','C','','','','','','','');
INSERT INTO `soal` VALUES ('57','13','6','Apa yang harus dilakukan ketika komputer mengeluarkan suara aneh atau bau yang tidak wajar?','1','Meninggalkan komputer dan tetap menggunakan perangkat tersebut seperti biasa','Memperbaikinya sendiri tanpa bantuan orang lain','Menghubungi teknisi komputer terlebih dahulu','Mencoba mematikan komputer segera','Menyimpannya di tempat yang aman dan melaporkannya kepada atasan','C','','','','','','','');
INSERT INTO `soal` VALUES ('58','13','7','Apa yang harus dilakukan untuk mencegah cedera ketika mengangkat perangkat komputer yang berat?','1','Mengangkat dengan punggung yang lurus dan membungkuk di lutut','Membungkuk di pinggang saat mengangkat perangkat','Mengangkat perangkat dengan satu tangan saja','Menarik perangkat dengan sekuat tenaga','Menggunakan alat bantu angkat seperti handtruck atau forklift','A','','','','','','','');
INSERT INTO `soal` VALUES ('59','13','8','Apa yang harus dilakukan ketika ingin membersihkan komponen elektronik?','1','Menggunakan kain kering atau kain microfiber yang halus','Membersihkan dengan air atau alkohol','Membersihkan dengan sikat yang kasar','Membersihkan dengan bahan kimia yang kuat','Tidak membersihkan karena khawatir merusak komponen','A','','','','','','','');
INSERT INTO `soal` VALUES ('60','13','9','Apa yang harus dilakukan ketika menggunakan komputer dalam jangka waktu yang lama?','1','Mengecek posisi duduk dan memastikan kursi dan meja sesuai','Mengabaikan posisi duduk dan hanya fokus pada pekerjaan','Menggunakan komputer di tempat yang gelap','Menggunakan komputer tanpa jeda selama beberapa jam','Tidak memperhatikan posisi duduk saat menggunakan komputer','A','','','','','','','');
INSERT INTO `soal` VALUES ('61','13','10','Apa yang harus dilakukan ketika menemukan kabel listrik yang aus atau kabel yang terkelupas?','1','Menghubungi teknisi komputer untuk memperbaiki kabel','Membungkusnya dengan lakban untuk menutupi bagian yang aus','Memotong kabel yang aus dan mengganti dengan yang baru','Menggunakan kabel yang aus atau terkelupas seperti biasa','Membuang kabel listrik yang aus atau terkelupas','C','','','','','','','');
INSERT INTO `soal` VALUES ('62','13','11','Apa yang dimaksud dengan bandwidth?','1','Jumlah data yang dapat ditransfer melalui jaringan pada satu waktu','Jumlah orang yang dapat menggunakan jaringan pada satu waktu','Jumlah file yang dapat disimpan dalam server','Jumlah perangkat yang dapat terhubung dalam jaringan pada satu waktu','Jumlah lalu lintas jaringan dalam satu hari','A','','','','','','','');
INSERT INTO `soal` VALUES ('63','13','12','Apa yang dimaksud dengan topologi jaringan?','1','Cara di mana perangkat dalam jaringan terhubung satu sama lain','Jumlah perangkat yang dapat terhubung dalam jaringan pada satu waktu','Jenis koneksi jaringan yang digunakan dalam jaringan','Jenis perangkat keras yang digunakan dalam jaringan','Tingkat keamanan jaringan','A','','','','','','','');
INSERT INTO `soal` VALUES ('64','13','13','Apa yang dimaksud dengan Wi-Fi?','1','Teknologi yang memungkinkan komunikasi antara perangkat melalui gelombang radio','Teknologi yang digunakan untuk menghubungkan perangkat secara kabel','Teknologi yang digunakan untuk mengirim pesan singkat melalui jaringan seluler','Teknologi yang digunakan untuk menghubungkan perangkat melalui sinyal inframerah','Teknologi yang digunakan untuk menghubungkan perangkat melalui koneksi Bluetooth','A','','','','','','','');
INSERT INTO `soal` VALUES ('65','13','14','Apa yang dimaksud dengan router?','1','Perangkat yang digunakan untuk menghubungkan jaringan yang berbeda','Perangkat yang digunakan untuk menyimpan data','Perangkat yang digunakan untuk mengirim pesan email','Perangkat yang digunakan untuk menghubungkan perangkat ke internet','Perangkat yang digunakan untuk meningkatkan sinyal jaringan','A','','','','','','','');
INSERT INTO `soal` VALUES ('66','13','15','Apa fungsi dari Multimeter?','1','Untuk mengukur kekuatan sinyal jaringan WiFi','Untuk mengukur arus listrik dalam suatu rangkaian','Untuk mengukur tingkat kebisingan di sekitar komputer','Untuk memperbaiki masalah pada monitor komputer','Untuk memperbaiki kerusakan pada mouse komputer','B','','','','','','','');
INSERT INTO `soal` VALUES ('67','10','16','<p>Proses pengenalan peralatan, sistem operasi, kegiatan, aplikasi dan identitas user yang terhubung dengan jaringan komputer disebut &hellip;.</p>','1','<p>Enkripsi</p>','<p>Deskripsi</p>','<p>Autentikasi</p>','<p>Konfirmasi</p>','<p>Security</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('68','10','17','<p>Jaringan pribadi (bukan untuk akses umum) yang menggunakan medium nonpribadi (misalnya internet) untuk menghubungkan antar remote-site secara aman disebut &hellip;.</p>','1','<p>Dhcp</p>','<p>Ftp</p>','<p>Ssh</p>','<p>Vpn</p>','<p>Samba</p>','D','','','','','','','');
INSERT INTO `soal` VALUES ('69','10','18','<p>VPN adalah sebuah koneksi Virtual yang bersifat private, karena &hellip;.</p>','1','<p>Jaringan ini tidak ada secara fisik hanya berupa jaringan virtual</p>','<p>Jaringan ini merupakan jaringan yang sifatnya publik</p>','<p>Semua orang bisa mengakses jaringan ini</p>','<p>Jaringan ini bisa terlihat secara fisik</p>','<p>Jaringan ini bersifat tidak aman</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('70','10','19','<p>Proses yang dilakukan oleh firewall untuk \'menghadang\' dan memproses data dalam sebuah paket untuk menentukan bahwa paket tersebut diizinkan atau ditolak, berdasarkan kebijakan akses (access policy) yang diterapkan oleh seorang administrator disebut &hellip;.</p>','1','<p>Loss paket</p>','<p>Filtering paket</p>','<p>Inspeksi paket</p>','<p>Stateful paket</p>','<p>Snifer paket</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('71','10','20','<p>Sebuah sistem atau perangkat yang mengizinkan lalu lintas jaringan yang dianggap aman untuk melaluinya dan mencegah lalu lintas jaringan yang tidak aman adalah pengertian dari &hellip;.</p>','1','<p>Router</p>','<p>Server</p>','<p>Software security</p>','<p>Application management</p>','<p>Firewall</p>','E','','','','','','','');
INSERT INTO `soal` VALUES ('72','10','21','<p>Beberapa kriteria yang dilakukan firewall apakah memperbolehkan paket data lewati atau tidak antara lain &hellip;.</p>','1','<p>Alamat ip dari komputer sumber.</p>','<p>Port tcp/udp sumber dari sumber.</p>','<p>Port tcp/udp tujuan data pada komputer tujuan</p>','<p>Informasi dari header yang disimpan dalam paket data.</p>','<div>Semua jawaban benar</div>','E','','','','','','','');
INSERT INTO `soal` VALUES ('73','10','22','<p>Kepanjangan dari VPN adalah &hellip;.</p>','1','<p>Virtual Publik Network</p>','<p>Virtual Private Network</p>','<p>Virtual Personal Network</p>','<p>Vurnerability Private Network</p>','<p>Vurnerability Personal Network</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('74','10','23','<p>Kepanjangan dari NIC adalah &hellip;.</p>','1','<p>Network Interface Cards</p>','<p>Network Internet Cards</p>','<p>Network Interface Computer</p>','<p>Network Internet Cards</p>','<p>Network Identified Cards</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('75','10','24','<p>Mengecek apakah user terdaftar dalam database,sehingga sistem memberikan ijin kepada user yang terdaftar untuk bisa mengakses kedalam system adalah pengertian dari &hellip;</p>','1','<p>Autentikasi</p>','<p>Autorisasi</p>','<p>TACACS+</p>','<p>Accounting</p>','<p>Firewall</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('76','10','25','<p>Fungsi dari Authentication server adalah &hellip;</p>','1','<p>untuk mengenali user yang berintegrasi ke jaringan dan memuat semua informasi dari user tersebut.</p>','<p>Untuk melihat pengguna yang masuk</p>','<p>Untuk membatasi akun yang masuk</p>','<p>Jawaban B dan C benar</p>','<p>Semua jawaban salah</p>','A','','','','','','','');

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `token` VALUES   ('1','HKPKMX','2023-05-22 08:15:49','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `ulang_kkm` int(1) NOT NULL,
  `btn_selesai` int(11) NOT NULL,
  `pelanggaran` int(5) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
