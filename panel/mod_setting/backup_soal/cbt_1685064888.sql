
/*---------------------------------------------------------------
  SQL DB BACKUP 26.05.2023 08:34 
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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `file_pendukung` VALUES   ('383','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('384','14','14_1_1.jpg',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
INSERT INTO `kelas` VALUES   ('X TR1','X','X TR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TR2','X','X TR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TR3','X','X TR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('X TX','X','X TX',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mapel` VALUES   ('1','X_TJKT','a:1:{i:0;s:4:\"TJKT\";}','511','X_TJKT','15','0','15','0','100','0','X','5','a:1:{i:0;s:5:\"semua\";}','2023-05-25 10:38:20','1','70','');
INSERT INTO `mapel` VALUES ('2','XI','a:1:{i:0;s:4:\"TJKT\";}','511','XI_TJKT','50','0','50','0','100','0','XI','5','a:1:{i:0;s:5:\"semua\";}','2023-05-26 08:07:54','1','70','');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
INSERT INTO `nilai_temp` VALUES   ('27','1','1','9','PTS','2023-05-20 07:26:18','2023-05-20 07:26:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1','1',NULL,NULL,NULL,'0','40,49,48,69,63,64,65,41,42,43,44,45,56,58,59,60,61,62,57,46,53,70,36,37,38,','B,A,D,E,C,D,E,A,B,C,C,A,D,B,E,E,D,A,C,B,B,A,D,E,C,D,C,A,E,B,A,B,C,D,E,C,B,E,D,A,D,B,E,C,A,B,D,A,C,E,E,B,D,C,A,B,E,A,C,D,E,C,B,A,D,E,A,B,C,D,A,D,B,E,C,A,E,D,B,C,C,D,E,A,B,B,C,E,A,D,E,A,C,B,D,B,C,E,D,A,C,B,A,D,E,E,C,B,A,D,A,B,D,E,C,A,C,D,B,E,E,A,C,D,B,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('32','3','16','269','UAS','2023-05-25 10:34:34','2023-05-25 10:35:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.195.1','0',NULL,NULL,NULL,'0','174,167,166,157,163,160,159,158,161,162,170,175,169,164,165,168,172,171,173,','B,E,A,D,C,E,B,D,C,A,B,E,A,C,D,A,C,E,D,B,C,B,A,E,D,E,D,A,C,B,B,E,C,D,A,C,B,A,E,D,A,B,C,D,E,C,A,D,B,E,A,B,D,E,C,A,D,C,B,E,A,D,C,B,E,B,C,D,E,A,C,E,B,A,D,A,D,C,B,E,D,B,C,E,A,A,E,B,C,D,B,C,A,D,E,',NULL,'0');

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
INSERT INTO `ruang` VALUES ('R401','R401');
INSERT INTO `ruang` VALUES ('R402','R402');
INSERT INTO `ruang` VALUES ('R403','R403');
INSERT INTO `ruang` VALUES ('R404','R404');
INSERT INTO `ruang` VALUES ('R405','R405');
INSERT INTO `ruang` VALUES ('R406','R406');
INSERT INTO `ruang` VALUES ('R407','R407');
INSERT INTO `ruang` VALUES ('R408','R408');
INSERT INTO `ruang` VALUES ('R409','R409');
INSERT INTO `ruang` VALUES ('R410','R410');
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
INSERT INTO `server` VALUES   ('SR1','SR1','aktif');

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
INSERT INTO `setting` VALUES   ('1','CBT Application','10261412','SMK Tritech Informatika','SMK','M. Herizal Sinambela, S.Pd.I','','Jl. Bhayangkara No.484, Indra Kasih<br />\r\n','Medan Tembung       ','Medan','-','-','smktritechinformatika.sch.id','smktritechinformatika@gmail.com','dist/img/logo97.png','','KARTU PESERTA<br>\nUJIAN AKHIR SEKOLAH','Ujian Akhir Semester','1.0','http://localhost/cbt','Asia/Jakarta','pusat','SR01','http://localhost/cbt','T5SVj9O2K4rHDu','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','1.0','dist/img/bc.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `siswa` VALUES   ('1','X TX','TJKT','T.0590.22','T.0590.22','AFIF IMANDA','X','R401','1','T100590','590383','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('2','X TX','TJKT','T.0696.22','T.0696.22','ALDIAN RISKY ','X','R401','1','T100696','696376','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('3','X TX','TJKT','T.0611.22','T.0611.22','DWI WINDA SYAHPUTRI','X','R401','1','T100611','611657','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('4','X TX','TJKT','T.0612.22','T.0612.22','DZUHRI AULIA','X','R401','1','T100612','612467','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('5','X TX','TJKT','T.0613.22','T.0613.22','EFRIANSYAH MADIAS','X','R401','1','T100613','613231','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('6','X TX','TJKT','T.0615.22','T.0615.22','FAHMI ARDINATA','X','R401','1','T100615','615150','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('7','X TX','TJKT','T.0620.22','T.0620.22','FATHAN ARRASYID','X','R401','1','T100620','620719','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('8','X TX','TJKT','T.0625.22','T.0625.22','GILANG RAHMADDIN AKBAR','X','R401','1','T100625','625819','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('9','X TX','TJKT','T.0626.22','T.0626.22','HAFIDZ ANDI ISMALLAH','X','R401','1','T100626','626517','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('10','X TX','TJKT','T.0628.22','T.0628.22','IFLAM DEFRIANSYAH','X','R401','1','T100628','628973','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('11','X TX','TJKT','T.0638.22','T.0638.22','M. SHAKI FAUZAN','X','R401','1','T100638','638928','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('12','X TX','TJKT','T.0644.22','T.0644.22','MUHAMMAD ADHITYA PRATAMA','X','R401','1','T100644','644583','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('13','X TX','TJKT','T.0648.22','T.0648.22','MUHAMMAD DAVA AL-TAQWA','X','R401','1','T100648','648231','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('14','X TX','TJKT','T.0651.22','T.0651.22','MUHAMMAD FAIZAL','X','R401','1','T100651','651402','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('15','X TX','TJKT','T.0659.22','T.0659.22','MUHAMMAD RIZWAN FARID','X','R401','1','T100659','659747','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('16','X TX','TJKT','T.0661.22','T.0661.22','MUTIARA SAKINAH','X','R401','1','T100661','661979','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('17','X TX','TJKT','T.0662.22','T.0662.22','NAUFAL PERDANA MAHEN','X','R401','1','T100662','662833','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('18','X TX','TJKT','T.0664.22','T.0664.22','NOVA SYAHFITRI LUBIS','X','R401','1','T100664','664384','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('19','X TX','TJKT','T.0673.22','T.0673.22','RAIHAN THARIQ ALPASYA','X','R401','1','T100673','673556','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('20','X TX','TJKT','T.0677.22','T.0677.22','RAUF ADMAJA NOVIANTO','X','R401','1','T100677','677809','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('21','X TX','TJKT','T.0685.22','T.0685.22','SATRIO DWI NATHA','X','R401','1','T100685','685763','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('22','X TX','TJKT','T.0692.22','T.0692.22','TIARA SAFITRI','X','R401','1','T100692','692210','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('23','X TR1','TJKT','T.0592.22','T.0592.22','AHMAD BAGUS PULUNGAN','X','R402','1','T100592','592767','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('24','X TR1','TJKT','T.0598.22','T.0598.22','ANNISA RAHMAH PURBA','X','R402','1','T100598','598604','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('25','X TR1','TJKT','T.0600.22','T.0600.22','AUFA HAFIZH ASSARY','X','R402','1','T100600','600606','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('26','X TR1','TJKT','T.0602.22','T.0602.22','BAMBANG ILHAM PRAJA HUTAHURUK','X','R402','1','T100602','602158','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('27','X TR1','TJKT','T.0604.22','T.0604.22','CHAIRRUL QODRI','X','R402','1','T100604','604277','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('28','X TR1','TJKT','T.0606.22','T.0606.22','DAVID ANDRIAN','X','R402','1','T100606','606843','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('29','X TR1','TJKT','T.0616.22','T.0616.22','FAHRI AKBAR LUBIS','X','R402','1','T100616','616981','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('30','X TR1','TJKT','T.0619.22','T.0619.22','FAIZ AMAR AL AMRI','X','R402','1','T100619','619636','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('31','X TR1','TJKT','T.0624.22','T.0624.22','FIKRI FATHONI AL HAZMI','X','R402','1','T100624','624129','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('32','X TR1','TJKT','T.0627.22','T.0627.22','HARRY MURTI WIBOWO','X','R402','1','T100627','627205','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('33','X TR1','TJKT','T.0632.22','T.0632.22','IRZA ASQALANI','X','R402','1','T100632','632137','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('34','X TR1','TJKT','T.0633.22','T.0633.22','JUAN ABRIO UTOMO','X','R402','1','T100633','633961','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('35','X TR1','TJKT','T.0636.22','T.0636.22','M. FARIZ AL BUQHRY','X','R402','1','T100636','636880','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('36','X TR1','TJKT','T.0637.22','T.0637.22','M. FATHIR ASY-SYAUQI','X','R402','1','T100637','637181','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('37','X TR1','TJKT','T.0645.22','T.0645.22','MUHAMMAD ALDINO PRAYOGA','X','R402','1','T100645','645939','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('38','X TR1','TJKT','T.0647.22','T.0647.22','MUHAMMAD ARIF LUBIS','X','R402','1','T100647','647936','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('39','X TR1','TJKT','T.0649.22','T.0649.22','MUHAMMAD DIVA ANUGRAH','X','R402','1','T100649','649607','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('40','X TR1','TJKT','T.0650.22','T.0650.22','MUHAMMAD FACHRI PRATAMA','X','R402','1','T100650','650653','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('41','X TR1','TJKT','T.0653.22','T.0653.22','MUHAMMAD NAUVAL ZAKI','X','R402','1','T100653','653833','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('42','X TR1','TJKT','T.0654.22','T.0654.22','MUHAMMAD NIKO ZULFAHRI','X','R402','1','T100654','654549','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('43','X TR1','TJKT','T.0655.22','T.0655.22','MUHAMMAD NOPIAN SYAHPUTRA','X','R402','1','T100655','655968','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('44','X TR1','TJKT','T.0658.22','T.0658.22','MUHAMMAD REZA FAHLEVI','X','R403','1','T100658','658410','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('45','X TR1','TJKT','T.0674.22','T.0674.22','RAMA OKTAVIANDI','X','R403','1','T100674','674126','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('46','X TR1','TJKT','T.0675.22','T.0675.22','RANGGA SANJAYA','X','R403','1','T100675','675868','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('47','X TR1','TJKT','T.0676.22','T.0676.22','RASYA SAYYIDINA','X','R403','1','T100676','676754','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('48','X TR1','TJKT','T.0684.22','T.0684.22','SALSABILA','X','R403','1','T100684','684985','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('49','X TR1','TJKT','T.0687.22','T.0687.22','SHUFY WALE','X','R403','1','T100687','687658','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('50','X TR1','TJKT','T.0688.22','T.0688.22','SITI AWALIYAH','X','R403','1','T100688','688217','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('51','X TR2','TJKT','T.0591.22','T.0591.22','AFIF NAN ZERLI','X','R403','1','T100591','591884','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('52','X TR2','TJKT','T.0593.22','T.0593.22','ALDI ZIANICO DALIMUNTHE','X','R403','1','T100593','593578','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('53','X TR2','TJKT','T.0596.22','T.0596.22','AMMAR GHANI MUAZ SALIM','X','R403','1','T100596','596835','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('54','X TR2','TJKT','T.0597.22','T.0597.22','ANNISA AURZANTI NASUTION','X','R403','1','T100597','597562','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('55','X TR2','TJKT','T.0601.22','T.0601.22','BAGAS RAHMAT DANI','X','R403','1','T100601','601662','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('56','X TR2','TJKT','T.0607.22','T.0607.22','DHIYAU HABIBI ROHMAN HRP','X','R403','1','T100607','607433','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('57','X TR2','TJKT','T.0608.22','T.0608.22','DINO AL FAJAR','X','R403','1','T100608','608613','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('58','X TR2','TJKT','T.0610.22','T.0610.22','DITHA AURA DAMANIK','X','R403','1','T100610','610205','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('59','X TR2','TJKT','T.0617.22','T.0617.22','FAHRUR SEPTY AWRI','X','R403','1','T100617','617709','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('60','X TR2','TJKT','T.0618.22','T.0618.22','FAISAL REZA ISMAIL HASIBUAN','X','R403','1','T100618','618844','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('61','X TR2','TJKT','T.0621.22','T.0621.22','FERDIANSYAH PRATAMA','X','R403','1','T100621','621480','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('62','X TR2','TJKT','T.0622.22','T.0622.22','FERDY HERMAWAN','X','R403','1','T100622','622443','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('63','X TR2','TJKT','T.0623.22','T.0623.22','FERRY HERMAWAN','X','R403','1','T100623','623838','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('64','X TR2','TJKT','T.0630.22','T.0630.22','IMAM SUMARJA','X','R403','1','T100630','630899','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('65','X TR2','TJKT','T.0635.22','T.0635.22','M. FACHRIL PUTRA NAPASHA','X','R404','1','T100635','635208','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('66','X TR2','TJKT','T.0639.22','T.0639.22','MAYSAHPUTRI ANGGRAINI','X','R404','1','T100639','639820','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('67','X TR2','TJKT','T.0640.22','T.0640.22','MHD. FAJRI','X','R404','1','T100640','640145','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('68','X TR2','TJKT','T.0642.22','T.0642.22','MHD. RAKHA','X','R404','1','T100642','642935','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('69','X TR2','TJKT','T.0660.22','T.0660.22','MUHAMMAD SYAFII','X','R404','1','T100660','660877','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('70','X TR2','TJKT','T.0666.22','T.0666.22','PANDU PRATAMA','X','R404','1','T100666','666723','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('71','X TR2','TJKT','T.0670.22','T.0670.22','RAFLY NUGRAHA','X','R404','1','T100670','670628','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('72','X TR2','TJKT','T.0671.22','T.0671.22','RAIHAN AFDAL MAULANA NASUTION','X','R404','1','T100671','671121','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('73','X TR2','TJKT','T.0672.22','T.0672.22','RAIHAN RIVALDI ','X','R404','1','T100672','672931','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('74','X TR2','TJKT','T.0678.22','T.0678.22','RICHI AGUNG WISANGGENI','X','R404','1','T100678','678261','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('75','X TR2','TJKT','T.0683.22','T.0683.22','SALSA KHAIRANI','X','R404','1','T100683','683245','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('76','X TR2','TJKT','T.0689.22','T.0689.22','SUNAN MUSTAJAB','X','R404','1','T100689','689865','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('77','X TR2','TJKT','T.0693.22','T.0693.22','WAHYU ARDINATA','X','R404','1','T100693','693651','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('78','X TR2','TJKT','T.0694.22','T.0694.22','ZAHRA FADILLAH','X','R404','1','T100694','694582','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('79','X TR2','TJKT','T.0695.22','T.0695.22','ZAKI UMARA H','X','R404','1','T100695','695525','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('80','X TR3','TJKT','T.0594.22','T.0594.22','ALIF JULIANSYAH','X','R404','1','T100594','594977','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('81','X TR3','TJKT','T.0595.22','T.0595.22','AMELYA SAPUTRI','X','R404','1','T100595','595271','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('82','X TR3','TJKT','T.0599.22','T.0599.22','ARMAN PINTORO','X','R404','1','T100599','599669','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('83','X TR3','TJKT','T.0603.22','T.0603.22','BUNGA','X','R404','1','T100603','603132','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('84','X TR3','TJKT','T.0605.22','T.0605.22','DAFA KAHLIL EFENDI','X','R404','1','T100605','605579','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('85','X TR3','TJKT','T.0609.22','T.0609.22','DIO MUHAMMAD TIRTA','X','R404','1','T100609','609582','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('86','X TR3','TJKT','T.0614.22','T.0614.22','FACHREZI RIZQI MAULI BATUBARA','X','R405','1','T100614','614779','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('87','X TR3','TJKT','T.0629.22','T.0629.22','ILHAM RADIANSYAH PUTRA','X','R405','1','T100629','629902','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('88','X TR3','TJKT','T.0631.22','T.0631.22','IRHAN ILMI','X','R405','1','T100631','631314','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('89','X TR3','TJKT','T.0634.22','T.0634.22','LIONEL MATTHEW MESSI SITOMPUL','X','R405','1','T100634','634763','','SR1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('90','X TR3','TJKT','T.0641.22','T.0641.22','MHD. FAREL ATHAYA','X','R405','1','T100641','641247','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('91','X TR3','TJKT','T.0643.22','T.0643.22','MHM. AR RAFI AL BUKHORI','X','R405','1','T100643','643554','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('92','X TR3','TJKT','T.0652.22','T.0652.22','MUHAMMAD FAJRI KELANA','X','R405','1','T100652','652973','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('93','X TR3','TJKT','T.0656.22','T.0656.22','MUHAMMAD RAFLI RAMBE','X','R405','1','T100656','656340','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('94','X TR3','TJKT','T.0657.22','T.0657.22','MUHAMMAD RAKA PRADYTIA SETIAWAN','X','R405','1','T100657','657729','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('95','X TR3','TJKT','T.0663.22','T.0663.22','NAUVAL HIBRIZI AKBAR','X','R405','1','T100663','663653','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('96','X TR3','TJKT','T.0665.22','T.0665.22','OLIVIA PAULENN HUTAPEA ','X','R405','1','T100665','665516','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('97','X TR3','TJKT','T.0667.22','T.0667.22','PASHA AKBAR ISLAMY','X','R405','1','T100667','667901','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('98','X TR3','TJKT','T.0668.22','T.0668.22','RAFFI ACHMAD SOUZHA','X','R405','1','T100668','668592','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('99','X TR3','TJKT','T.0669.22','T.0669.22','RAFKA GIFACRI','X','R405','1','T100669','669180','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('100','X TR3','TJKT','T.0679.22','T.0679.22','RISKY AULIA PASARIBU','X','R405','1','T100679','679292','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('101','X TR3','TJKT','T.0680.22','T.0680.22','RIZKY ADITYA','X','R405','1','T100680','680861','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('102','X TR3','TJKT','T.0681.22','T.0681.22','RIZKY RAMADHAN','X','R405','1','T100681','681273','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('103','X TR3','TJKT','T.0682.22','T.0682.22','SALMAN AL-FARISYI','X','R405','1','T100682','682304','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('104','X TR3','TJKT','T.0686.22','T.0686.22','SATRYO','X','R405','1','T100686','686364','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('105','X TR3','TJKT','T.0690.22','T.0690.22','SYAHPUTRA FINANDA','X','R405','1','T100690','690954','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('106','X TR3','TJKT','T.0691.22','T.0691.22','SYAKILA RAHMAH AULIA','X','R405','1','T100691','691504','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('107','XI TX','TJKT','T.0484.21','T.0484.21','ANDI LALA ARSA','XI','R406','1','T100484','484269','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('108','XI TX','TJKT','T.0485.21','T.0485.21','ANDRE KURNIAWAN BOANG MANALU','XI','R406','1','T100485','485313','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('109','XI TX','TJKT','T.0486.21','T.0486.21','AZRIL ARFANSYAH','XI','R406','1','T100486','486576','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('110','XI TX','TJKT','T.0487.21','T.0487.21','BAGAS FAUZAN EFENDI','XI','R406','1','T100487','487622','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('111','XI TX','TJKT','T.0488.21','T.0488.21','CHELSEA AULIA COA','XI','R406','1','T100488','488856','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('112','XI TX','TJKT','T.0489.21','T.0489.21','FACHREL QASITH RADITYA','XI','R406','1','T100489','489163','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('113','XI TX','TJKT','T.0490.21','T.0490.21','FATHIR RIZKY ALAMSYAH','XI','R406','1','T100490','490731','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('114','XI TX','TJKT','T.0491.21','T.0491.21','HUSNA HUSBANAH','XI','R406','1','T100491','491864','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('115','XI TX','TJKT','T.0492.21','T.0492.21','JAHRONIANSYAH','XI','R406','1','T100492','492855','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('116','XI TX','TJKT','T.0493.21','T.0493.21','KHAIRUNNISA SHALZABYLLA','XI','R406','1','T100493','493913','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('117','XI TX','TJKT','T.0494.21','T.0494.21','MUHAMMAD ARAFI AL FURQON','XI','R406','1','T100494','494928','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('118','XI TX','TJKT','T.0495.21','T.0495.21','MUHAMMAD FAHLEVI PUTRA RANGKUTI','XI','R406','1','T100495','495322','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('119','XI TX','TJKT','T.0496.21','T.0496.21','MUHAMMAD HAZMI YUSRA','XI','R406','1','T100496','496242','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('120','XI TX','TJKT','T.0497.21','T.0497.21','MUHAMMAD ILYAS NARU','XI','R406','1','T100497','497422','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('121','XI TX','TJKT','T.0498.21','T.0498.21','MUHAMMAD REYZA','XI','R406','1','T100498','498855','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('122','XI TX','TJKT','T.0499.21','T.0499.21','MUHAMMAD ZIDAN','XI','R406','1','T100499','499403','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('123','XI TX','TJKT','T.0500.21','T.0500.21','MUSA AL HADID','XI','R406','1','T100500','500431','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('124','XI TX','TJKT','T.0501.21','T.0501.21','NADIA PUSPITA','XI','R406','1','T100501','501414','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('125','XI TX','TJKT','T.0502.21','T.0502.21','PANDAWA HARYA WICAKSANA','XI','R406','1','T100502','502356','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('126','XI TX','TJKT','T.0503.21','T.0503.21','RAFFI IQAB MUSI','XI','R406','1','T100503','503511','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('127','XI TX','TJKT','T.0504.21','T.0504.21','RANGGA ALDIAN PRATAMA','XI','R407','1','T100504','504231','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('128','XI TX','TJKT','T.0505.21','T.0505.21','RASYID AL MUNAWWAR LUBIS','XI','R407','1','T100505','505920','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('129','XI TX','TJKT','T.0506.21','T.0506.21','REGHINA ADELLA','XI','R407','1','T100506','506560','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('130','XI TX','TJKT','T.0507.21','T.0507.21','TENGKU SYILVINA GHALIA','XI','R407','1','T100507','507299','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('131','XI TX','TJKT','T.0508.21','T.0508.21','VANISA AMELIA','XI','R407','1','T100508','508785','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('132','XI TR1','TJKT','T.0518.21','T.0518.21','ABDUL MAJID','XI','R407','1','T100518','518905','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('133','XI TR1','TJKT','T.0512.21','T.0512.21','ALFIN DWI SATRIA','XI','R407','1','T100512','512788','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('134','XI TR1','TJKT','T.0515.21','T.0515.21','ANTA MAULANA','XI','R407','1','T100515','515871','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('135','XI TR1','TJKT','T.0588.21','T.0588.21','BIMA DWI ADITYA','XI','R407','1','T100588','588965','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('136','XI TR1','TJKT','T.0520.21','T.0520.21','BEVAN PANJI PRAMUDITO','XI','R407','1','T100520','520275','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('137','XI TR1','TJKT','T.0521.21','T.0521.21','CHIKA PUTRI ATMAJA','XI','R407','1','T100521','521443','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('138','XI TR1','TJKT','T.0523.21','T.0523.21','DANIEL JANUARI SIAGIAN','XI','R407','1','T100523','523580','','SR1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('139','XI TR1','TJKT','T.0524.21','T.0524.21','DAVA AIDIL PRATAMA','XI','R407','1','T100524','524755','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('140','XI TR1','TJKT','T.0525.21','T.0525.21','DICKY PERMANA','XI','R407','1','T100525','525436','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('141','XI TR1','TJKT','T.0529.21','T.0529.21','FITRIANSYAH SIDDIK','XI','R407','1','T100529','529971','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('142','XI TR1','TJKT','T.0533.21','T.0533.21','HABIB IMAMSYAHPUTERA ANANDA','XI','R407','1','T100533','533166','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('143','XI TR1','TJKT','T.0539.21','T.0539.21','ILHAM MAULANA','XI','R407','1','T100539','539381','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('144','XI TR1','TJKT','T.0549.21','T.0549.21','M. ALFAREZI HRP','XI','R407','1','T100549','549831','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('145','XI TR1','TJKT','T.0560.21','T.0560.21','M.LUCKY RIDLY','XI','R407','1','T100560','560250','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('146','XI TR1','TJKT','T.0556.21','T.0556.21','MHD.IHFAN ARDIANSYAH','XI','R407','1','T100556','556278','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('147','XI TR1','TJKT','T.0557.21','T.0557.21','MHD RAFLY ABDILLAH','XI','R408','1','T100557','557300','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('148','XI TR1','TJKT','T.0554.21','T.0554.21','MHD. ILHAM HARDIANSYA','XI','R408','1','T100554','554772','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('149','XI TR1','TJKT','T.0561.21','T.0561.21','MOHAMMAD CHOIRUL ROHMADI','XI','R408','1','T100561','561670','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('150','XI TR1','TJKT','T.0548.21','T.0548.21','MUHAMMAD FAUZAN AZHARI','XI','R408','1','T100548','548880','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('151','XI TR1','TJKT','T.0565.21','T.0565.21','RAFIF EFFENDY LUBIS','XI','R408','1','T100565','565427','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('152','XI TR1','TJKT','T.0568.21','T.0568.21','RAKA FASYAH ROHANDA','XI','R408','1','T100568','568539','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('153','XI TR1','TJKT','T.0575.21','T.0575.21','RYAN SYAH NA','XI','R408','1','T100575','575587','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('154','XI TR1','TJKT','T.0580.21','T.0580.21','SATRIA HERLAMBANG','XI','R408','1','T100580','580234','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('155','XI TR1','TJKT','T.0581.21','T.0581.21','SHADU TIARA','XI','R408','1','T100581','581431','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('156','XI TR1','TJKT','T.0582.21','T.0582.21','TIFANI FITRIA AGUSTINA','XI','R408','1','T100582','582229','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('157','XI TR2','TJKT','T.0513.21','T.0513.21','ABDUL LATIF','XI','R408','1','T100513','513519','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('158','XI TR2','TJKT','T.0587.21','T.0587.21','ADITYA SETIAWAN','XI','R408','1','T100587','587474','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('159','XI TR2','TJKT','T.0511.21','T.0511.21','AGIL SAPUTRA','XI','R408','1','T100511','511253','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('160','XI TR2','TJKT','T.0517.21','T.0517.21','AL AZRI PRATAMA','XI','R408','1','T100517','517654','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('161','XI TR2','TJKT','T.0516.21','T.0516.21','AL FARIZ ATHALLAH','XI','R408','1','T100516','516246','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('162','XI TR2','TJKT','T.0510.21','T.0510.21','ARI PRATAMA','XI','R408','1','T100510','510263','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('163','XI TR2','TJKT','T.0522.21','T.0522.21','CLARISYA JAELANI','XI','R408','1','T100522','522210','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('164','XI TR2','TJKT','T.0526.21','T.0526.21','ELANG MULIA PUTRA LAKSAMANA','XI','R408','1','T100526','526978','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('165','XI TR2','TJKT','T.0530.21','T.0530.21','FARHAN AL UZNI','XI','R408','1','T100530','530419','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('166','XI TR2','TJKT','T.0532.21','T.0532.21','GABRIEL PAKPAHAN','XI','R408','1','T100532','532616','','SR1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('167','XI TR2','TJKT','T.0537.21','T.0537.21','IKHSAN HAFIZH','XI','R409','1','T100537','537125','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('168','XI TR2','TJKT','T.0540.21','T.0540.21','JODI FERDIAN ALPARIZI LUBIS','XI','R409','1','T100540','540507','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('169','XI TR2','TJKT','T.0558.21','T.0558.21','M. ADITYA RACHMAN','XI','R409','1','T100558','558556','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('170','XI TR2','TJKT','T.0559.21','T.0559.21','M. AMIN SYAHPUTRA','XI','R409','1','T100559','559625','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('171','XI TR2','TJKT','T.0555.21','T.0555.21','M. DAFFA TRIENDI','XI','R409','1','T100555','555817','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('172','XI TR2','TJKT','T.0546.21','T.0546.21','M. LUTHFI LUBIS','XI','R409','1','T100546','546262','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('173','XI TR2','TJKT','T.0553.21','T.0553.21','MARSYA','XI','R409','1','T100553','553932','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('174','XI TR2','TJKT','T.0552.21','T.0552.21','MUHAMMAD FACHRUL ROZI','XI','R409','1','T100552','552714','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('175','XI TR2','TJKT','T.0550.21','T.0550.21','MUHAMMAD FADHLIL DESWA','XI','R409','1','T100550','550955','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('176','XI TR2','TJKT','T.0547.21','T.0547.21','MUHAMMAD RIFQI WIBOWO','XI','R409','1','T100547','547961','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('177','XI TR2','TJKT','T.0567.21','T.0567.21','RAFIQ ZAKWAN','XI','R409','1','T100567','567333','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('178','XI TR2','TJKT','T.0569.21','T.0569.21','RASYA SLAVINA RUSLIANDY','XI','R409','1','T100569','569368','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('179','XI TR2','TJKT','T.0570.21','T.0570.21','RIZKY RAMADHANDY HASIBUAN','XI','R409','1','T100570','570436','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('180','XI TR2','TJKT','T.0572.21','T.0572.21','ROBI WIRAYUDHA','XI','R409','1','T100572','572693','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('181','XI TR2','TJKT','T.0577.21','T.0577.21','SHANDY RAMADHAN MANURUNG','XI','R409','1','T100577','577513','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('182','XI TR2','TJKT','T.0579.21','T.0579.21','SHIFA LAUDYA SYAFHIRA','XI','R409','1','T100579','579373','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('183','XI TR3','TJKT','T.0514.21','T.0514.21','AYU DIA ASHARI','XI','R409','1','T100514','514332','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('184','XI TR3','TJKT','T.0519.21','T.0519.21','BERKAT SEBUA TALUNOHI','XI','R409','1','T100519','519720','','SR1',NULL,NULL,NULL,'KRISTEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('185','XI TR3','TJKT','T.0527.21','T.0527.21','ELGIN','XI','R409','1','T100527','527187','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('186','XI TR3','TJKT','T.0531.21','T.0531.21','FIKRI ALFA NAFIS HASIBUAN','XI','R409','1','T100531','531755','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('187','XI TR3','TJKT','T.0528.21','T.0528.21','FIRDAN ALMIRZA','XI','R410','1','T100528','528329','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('188','XI TR3','TJKT','T.0534.21','T.0534.21','HABLI AS SIDIQ MARBUN','XI','R410','1','T100534','534722','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('189','XI TR3','TJKT','T.0535.21','T.0535.21','ADRIYAN RAHARDI','XI','R410','1','T100535','535193','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('190','XI TR3','TJKT','T.0538.21','T.0538.21','ILHAM DIMAS FADELIANTO','XI','R410','1','T100538','538133','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('191','XI TR3','TJKT','T.0542.21','T.0542.21','M. ALMAUDUDY NASUTION','XI','R410','1','T100542','542514','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('192','XI TR3','TJKT','T.0543.21','T.0543.21','MHD. REIFFAL PUTRA TAMA','XI','R410','1','T100543','543478','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('193','XI TR3','TJKT','T.0544.21','T.0544.21','MHD. REZA ALFHARIZI','XI','R410','1','T100544','544292','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('194','XI TR3','TJKT','T.0551.21','T.0551.21','MUHAMMAD ARYA SIDDIQ','XI','R410','1','T100551','551435','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('195','XI TR3','TJKT','T.0545.21','T.0545.21','MUHAMMAD RAIHAN HARAHAP','XI','R410','1','T100545','545119','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('196','XI TR3','TJKT','T.0541.21','T.0541.21','MUHAMMAD RIO PRAMADHANNU','XI','R410','1','T100541','541533','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('197','XI TR3','TJKT','T.0562.21','T.0562.21','NURUL LATIFAH HASANAH','XI','R410','1','T100562','562288','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('198','XI TR3','TJKT','T.0576.21','T.0576.21','RAFLI ADITYA ARDIANSYAH','XI','R410','1','T100576','576533','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('199','XI TR3','TJKT','T.0566.21','T.0566.21','RAFLI AULIA','XI','R410','1','T100566','566729','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('200','XI TR3','TJKT','T.0564.21','T.0564.21','RAFLY ALFARIZI','XI','R410','1','T100564','564554','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('201','XI TR3','TJKT','T.0574.21','T.0574.21','REGZA PRADITA WINATA','XI','R410','1','T100574','574477','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('202','XI TR3','TJKT','T.0563.21','T.0563.21','RESTU PRATAMA PUTRA','XI','R410','1','T100563','563240','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('203','XI TR3','TJKT','T.0573.21','T.0573.21','RIZKI CHAIRU HALFI','XI','R410','1','T100573','573154','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('204','XI TR3','TJKT','T.0578.21','T.0578.21','SHEYLA OVIANDRA ANDJANI','XI','R410','1','T100578','578588','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('205','XI TR3','TJKT','T.0584.21','T.0584.21','YAZID RIFKI EFENDI','XI','R410','1','T100584','584834','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('206','XI TR3','TJKT','T.0585.21','T.0585.21','ZAID AHMAD NASUTION','XI','R410','1','T100585','585428','','SR1',NULL,NULL,NULL,'ISLAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `soal` VALUES   ('1','1','1','<p>Apa yang harus dilakukan ketika kabel listrik bermasalah?</p>','1','<p>Memperbaikinya sendiri tanpa bantuan orang lain</p>','<p>Menghubungi petugas yang berwenang untuk memperbaikinya</p>','<p>Membiarkan kabel listrik bermasalah dan menggunakannya seperti biasa</p>','<p>Menghentikan pekerjaan dan tidak menggunakan kabel listrik yang bermasalah</p>','<p>Memotong kabel listrik yang bermasalah untuk memperbaikinya</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('2','1','2','Apa yang harus dilakukan jika menemukan perangkat komputer yang rusak di tempat kerja?','1','Mengambilnya dan memperbaikinya sendiri','Menyimpannya di tempat yang aman dan melaporkannya kepada atasan','Membuangnya ke tempat sampah','Mengabaikannya dan tetap menggunakan perangkat tersebut seperti biasa','Menjualnya dan memperoleh uang tambahan','B','','','','','','','');
INSERT INTO `soal` VALUES ('3','1','3','Apa yang harus dilakukan ketika terjadi kebakaran di tempat kerja?','1','Menyelamatkan barang-barang pribadi terlebih dahulu','Menelepon teman untuk meminta bantuan','Mencoba memadamkan api dengan air','Mencoba memadamkan api dengan alat pemadam kebakaran yang sesuai','Meninggalkan tempat kerja tanpa melakukan apa-apa','D','','','','','','','');
INSERT INTO `soal` VALUES ('4','1','4','Apa yang harus dilakukan sebelum membersihkan atau memperbaiki komputer?','1','Melepas semua kabel dan perangkat keras','Menggunakan bahan kimia yang kuat untuk membersihkan bagian dalam','Memasang kabel dan perangkat keras sebanyak mungkin','Menyalakan komputer dan mengecek apakah semuanya berfungsi','Menghubungi teknisi komputer terlebih dahulu','A','','','','','','','');
INSERT INTO `soal` VALUES ('5','1','5','Apa yang harus dilakukan untuk mengurangi dampak lingkungan dari limbah elektronik?','1','Membuangnya di tempat sampah biasa','Membakarnya di belakang rumah','Mendaur ulang bagian yang masih bisa dipakai','Membuangnya ke sungai atau laut','Menyimpannya di gudang tanpa melakukan apa-apa','C','','','','','','','');
INSERT INTO `soal` VALUES ('6','1','6','Apa yang harus dilakukan ketika komputer mengeluarkan suara aneh atau bau yang tidak wajar?','1','Meninggalkan komputer dan tetap menggunakan perangkat tersebut seperti biasa','Memperbaikinya sendiri tanpa bantuan orang lain','Menghubungi teknisi komputer terlebih dahulu','Mencoba mematikan komputer segera','Menyimpannya di tempat yang aman dan melaporkannya kepada atasan','C','','','','','','','');
INSERT INTO `soal` VALUES ('7','1','7','Apa yang harus dilakukan untuk mencegah cedera ketika mengangkat perangkat komputer yang berat?','1','Mengangkat dengan punggung yang lurus dan membungkuk di lutut','Membungkuk di pinggang saat mengangkat perangkat','Mengangkat perangkat dengan satu tangan saja','Menarik perangkat dengan sekuat tenaga','Menggunakan alat bantu angkat seperti handtruck atau forklift','A','','','','','','','');
INSERT INTO `soal` VALUES ('8','1','8','Apa yang harus dilakukan ketika ingin membersihkan komponen elektronik?','1','Menggunakan kain kering atau kain microfiber yang halus','Membersihkan dengan air atau alkohol','Membersihkan dengan sikat yang kasar','Membersihkan dengan bahan kimia yang kuat','Tidak membersihkan karena khawatir merusak komponen','A','','','','','','','');
INSERT INTO `soal` VALUES ('9','1','9','Apa yang harus dilakukan ketika menggunakan komputer dalam jangka waktu yang lama?','1','Mengecek posisi duduk dan memastikan kursi dan meja sesuai','Mengabaikan posisi duduk dan hanya fokus pada pekerjaan','Menggunakan komputer di tempat yang gelap','Menggunakan komputer tanpa jeda selama beberapa jam','Tidak memperhatikan posisi duduk saat menggunakan komputer','A','','','','','','','');
INSERT INTO `soal` VALUES ('10','1','10','Apa yang harus dilakukan ketika menemukan kabel listrik yang aus atau kabel yang terkelupas?','1','Menghubungi teknisi komputer untuk memperbaiki kabel','Membungkusnya dengan lakban untuk menutupi bagian yang aus','Memotong kabel yang aus dan mengganti dengan yang baru','Menggunakan kabel yang aus atau terkelupas seperti biasa','Membuang kabel listrik yang aus atau terkelupas','C','','','','','','','');
INSERT INTO `soal` VALUES ('11','1','11','Apa yang dimaksud dengan bandwidth?','1','Jumlah data yang dapat ditransfer melalui jaringan pada satu waktu','Jumlah orang yang dapat menggunakan jaringan pada satu waktu','Jumlah file yang dapat disimpan dalam server','Jumlah perangkat yang dapat terhubung dalam jaringan pada satu waktu','Jumlah lalu lintas jaringan dalam satu hari','A','','','','','','','');
INSERT INTO `soal` VALUES ('12','1','12','Apa yang dimaksud dengan topologi jaringan?','1','Cara di mana perangkat dalam jaringan terhubung satu sama lain','Jumlah perangkat yang dapat terhubung dalam jaringan pada satu waktu','Jenis koneksi jaringan yang digunakan dalam jaringan','Jenis perangkat keras yang digunakan dalam jaringan','Tingkat keamanan jaringan','A','','','','','','','');
INSERT INTO `soal` VALUES ('13','1','13','Apa yang dimaksud dengan Wi-Fi?','1','Teknologi yang memungkinkan komunikasi antara perangkat melalui gelombang radio','Teknologi yang digunakan untuk menghubungkan perangkat secara kabel','Teknologi yang digunakan untuk mengirim pesan singkat melalui jaringan seluler','Teknologi yang digunakan untuk menghubungkan perangkat melalui sinyal inframerah','Teknologi yang digunakan untuk menghubungkan perangkat melalui koneksi Bluetooth','A','','','','','','','');
INSERT INTO `soal` VALUES ('14','1','14','Apa yang dimaksud dengan router?','1','Perangkat yang digunakan untuk menghubungkan jaringan yang berbeda','Perangkat yang digunakan untuk menyimpan data','Perangkat yang digunakan untuk mengirim pesan email','Perangkat yang digunakan untuk menghubungkan perangkat ke internet','Perangkat yang digunakan untuk meningkatkan sinyal jaringan','A','','','','','','','');
INSERT INTO `soal` VALUES ('15','1','15','Apa fungsi dari Multimeter?','1','Untuk mengukur kekuatan sinyal jaringan WiFi','Untuk mengukur arus listrik dalam suatu rangkaian','Untuk mengukur tingkat kebisingan di sekitar komputer','Untuk memperbaiki masalah pada monitor komputer','Untuk memperbaiki kerusakan pada mouse komputer','B','','','','','','','');
INSERT INTO `soal` VALUES ('31','2','1','Secara umum jaringan komputer terdiri dari di bawah ini kecuali….','1','Local Area Network','Metropolitan Area Network','Radio Area Network','Wide Area Network','Internet','C','','','','','','','');
INSERT INTO `soal` VALUES ('32','2','2','Yang tidak termasuk dalam sistem transmisi adalah...','1','Simplex','Half-duplex','Full-duplex','Duplex','Satu arah','D','','','','','','','');
INSERT INTO `soal` VALUES ('33','2','3','Alat yang digunakan untuk menghitung kehilangan energi yang didapat dari serat optik adalah…..','1','Loss Power Meter','Good Power Meter','MUlti Meter','Standar Power Meter','Spectrum Analyzer','A','','','','','','','');
INSERT INTO `soal` VALUES ('34','2','4','Ada dua jenis routing yaitu…..','1','Routing langsung dan tidak langsung','Routing cepat dan lambat','Routing searah dan multi arah','Routing sekelas dan tidak sekelas','Routing naik dan turun','A','','','','','','','');
INSERT INTO `soal` VALUES ('35','2','5','Untuk mengakses komputer lain, SSH lebih aman dibandingkan telnet karena data yang akan dikirim…..','1','lebih kecil','lebih besar','dijadikan paralel','diacak dulu','diformat dulu','A','','','','','','','');
INSERT INTO `soal` VALUES ('36','2','6','IP address terdiri atas dua bagian yaitu…..','1','bit dan nyble','network ID dan broadcast ID','kelas A dan kelas D','internet dan local','network ID dan host ID','E','','','','','','','');
INSERT INTO `soal` VALUES ('37','2','7','IP address kelas A diberikan untuk jaringan dengan jumlah host…..','1','sangat kecil','sangat besar','sedang','tidak tetap','berbeda','B','','','','','','','');
INSERT INTO `soal` VALUES ('38','2','8','Cara membaca IP Address kelas A, misalnya 113.46.5.6 adalah…..','1','network ID = 113 Host ID = 46.5.6','network ID = 113.46 Host ID = 5.6','network ID = 113.46.5 Host ID = 6','network ID = 113.46.5.6 Host ID = 0','network ID = 0 Host ID = 113.46.5.6','A','','','','','','','');
INSERT INTO `soal` VALUES ('39','2','9','Host ID untuk IP Address kelas C adalah…..','1','24 bit terakhir','18 bit terakhir','12 bit terakhir','8 bit terakhir','4 bit terakhir','D','','','','','','','');
INSERT INTO `soal` VALUES ('40','2','10','Domain Name System (DNS) adalah suatu sistem yang memungkinkan nama suatu host pada jaringan komputer atau internet ditranslasikan menjadi…..','1','broadcast address','host ID','IP address','home ID','Protocol','C','','','','','','','');
INSERT INTO `soal` VALUES ('41','2','11','Berikut yang bukan merupakan jenis kabel untuk jaringan komputer adalah…..','1','BNC','coaxial cable','UTP','fiber optic','STP','A','','','','','','','');
INSERT INTO `soal` VALUES ('42','2','12','Untuk melihat indikasi pada konfigurasi IP yang terpasang pada Komputer dengan sistem operasi windows dengan perintah…..','1','ifconfig','ipconfig','isconfig','cpconfig','lsconfig','B','','','','','','','');
INSERT INTO `soal` VALUES ('43','2','13','Untuk mendeteksi apakah hubungan komputer dengan jaringan sudah berjalan dengan baik, utilitas yang digunakan adalah…..','1','Is','clear','man','tracert','ping','E','','','','','','','');
INSERT INTO `soal` VALUES ('44','2','14','Jika nomor IP tidak dikenal dalam jaringan, maka akan muncul pesan…..','1','Request Time Out','Time to Live','Time to Leave','Data Pending','Repply for All','A','','','','','','','');
INSERT INTO `soal` VALUES ('45','2','15','Apa yang dimaksud dengan Transmitter…','1','Alat untuk memindahkan dan menyaring informasi','Asal/pengirim data','Cara untuk menghubungkan Source dan Destination','Tujuan pengiriman data','Alat penerima sinyal dari Transmission System','A','','','','','','','');
INSERT INTO `soal` VALUES ('46','2','16','<p>Proses pengenalan peralatan, sistem operasi, kegiatan, aplikasi dan identitas user yang terhubung dengan jaringan komputer disebut &hellip;.</p>','1','<p>Enkripsi</p>','<p>Deskripsi</p>','<p>Autentikasi</p>','<p>Konfirmasi</p>','<p>Security</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('47','2','17','<p>Jaringan pribadi (bukan untuk akses umum) yang menggunakan medium nonpribadi (misalnya internet) untuk menghubungkan antar remote-site secara aman disebut &hellip;.</p>','1','<p>Dhcp</p>','<p>Ftp</p>','<p>Ssh</p>','<p>Vpn</p>','<p>Samba</p>','D','','','','','','','');
INSERT INTO `soal` VALUES ('48','2','18','<p>VPN adalah sebuah koneksi Virtual yang bersifat private, karena &hellip;.</p>','1','<p>Jaringan ini tidak ada secara fisik hanya berupa jaringan virtual</p>','<p>Jaringan ini merupakan jaringan yang sifatnya publik</p>','<p>Semua orang bisa mengakses jaringan ini</p>','<p>Jaringan ini bisa terlihat secara fisik</p>','<p>Jaringan ini bersifat tidak aman</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('49','2','19','<p>Proses yang dilakukan oleh firewall untuk \'menghadang\' dan memproses data dalam sebuah paket untuk menentukan bahwa paket tersebut diizinkan atau ditolak, berdasarkan kebijakan akses (access policy) yang diterapkan oleh seorang administrator disebut &hellip;.</p>','1','<p>Loss paket</p>','<p>Filtering paket</p>','<p>Inspeksi paket</p>','<p>Stateful paket</p>','<p>Snifer paket</p>','C','','','','','','','');
INSERT INTO `soal` VALUES ('50','2','20','<p>Sebuah sistem atau perangkat yang mengizinkan lalu lintas jaringan yang dianggap aman untuk melaluinya dan mencegah lalu lintas jaringan yang tidak aman adalah pengertian dari &hellip;.</p>','1','<p>Router</p>','<p>Server</p>','<p>Software security</p>','<p>Application management</p>','<p>Firewall</p>','E','','','','','','','');
INSERT INTO `soal` VALUES ('51','2','21','<p>Beberapa kriteria yang dilakukan firewall apakah memperbolehkan paket data lewati atau tidak antara lain &hellip;.</p>','1','<p>Alamat ip dari komputer sumber.</p>','<p>Port tcp/udp sumber dari sumber.</p>','<p>Port tcp/udp tujuan data pada komputer tujuan</p>','<p>Informasi dari header yang disimpan dalam paket data.</p>','<div>Semua jawaban benar</div>','E','','','','','','','');
INSERT INTO `soal` VALUES ('52','2','22','<p>Kepanjangan dari VPN adalah &hellip;.</p>','1','<p>Virtual Publik Network</p>','<p>Virtual Private Network</p>','<p>Virtual Personal Network</p>','<p>Vurnerability Private Network</p>','<p>Vurnerability Personal Network</p>','B','','','','','','','');
INSERT INTO `soal` VALUES ('53','2','23','<p>Kepanjangan dari NIC adalah &hellip;.</p>','1','<p>Network Interface Cards</p>','<p>Network Internet Cards</p>','<p>Network Interface Computer</p>','<p>Network Internet Cards</p>','<p>Network Identified Cards</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('54','2','24','<p>Mengecek apakah user terdaftar dalam database,sehingga sistem memberikan ijin kepada user yang terdaftar untuk bisa mengakses kedalam system adalah pengertian dari &hellip;</p>','1','<p>Autentikasi</p>','<p>Autorisasi</p>','<p>TACACS+</p>','<p>Accounting</p>','<p>Firewall</p>','A','','','','','','','');
INSERT INTO `soal` VALUES ('55','2','25','<p>Fungsi dari Authentication server adalah &hellip;</p>','1','<p>untuk mengenali user yang berintegrasi ke jaringan dan memuat semua informasi dari user tersebut.</p>','<p>Untuk melihat pengguna yang masuk</p>','<p>Untuk membatasi akun yang masuk</p>','<p>Jawaban B dan C benar</p>','<p>Semua jawaban salah</p>','A','','','','','','','');

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
INSERT INTO `token` VALUES   ('1','YACMUC','2023-05-24 15:18:50','00:15:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `ujian` VALUES   ('1','X_TJKT','a:1:{i:0;s:4:\"TJKT\";}','1','1','UAS','X_TJKT','15','0','100','5','0','15','0','60','2023-05-25 10:00:00','2023-05-25 11:00:00','10:00:00',NULL,'X','a:1:{i:0;s:5:\"semua\";}','1','1','0','1','0','70','1','','0','0','0','1');
