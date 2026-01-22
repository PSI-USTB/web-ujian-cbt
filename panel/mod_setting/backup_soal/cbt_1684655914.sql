
/*---------------------------------------------------------------
  SQL DB BACKUP 21.05.2023 14:58 
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
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `file_pendukung` VALUES   ('363','1','1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('364','1','1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('365','1','2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('366','1','3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('367','1','1_5_2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('368','1','1_13_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('369','1','1_14_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('370','1','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('371','1','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('372','1','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('373','1','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('374','1','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('375','1','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('376','1','fileE.jpg',NULL);

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
INSERT INTO `jenis` VALUES   ('PAS','Penilian Akhir Semester','tidak');
INSERT INTO `jenis` VALUES ('PTS','Penilaian Tengah Semester','aktif');

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
INSERT INTO `kelas` VALUES   ('XITR1','XI','XI TR1',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITR2','XI','XI TR2',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITR3','XI','XI TR3',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITX','XI','XI TX',NULL,NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
INSERT INTO `mata_pelajaran` VALUES ('XI_AK2','Perpajakan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK3','Akuntansi Keuangan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AK4','Akuntansi Perusahaan Jasa, Dagang dan Manufaktur',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKBS1','Ekonomi Bisnis dan Administrasi Umum',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKBS2','Komputer Akuntansi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_AKPBS_Pilihan','Pilihan | Public Speaking, Leadership, dan Problem Solving',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV1','Prinsip Dasar Desain dan Komunikasi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV2','Desain Grafis',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV3','Videography',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV4','Media Interaktif',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV5','3D Modelling',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV6','Desain Brief',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_DKV_Pilihan','Pilihan | Content Creative',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_Mulok','Muatan Lokal | Conversation',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS1','Ekonomi Islam',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS2','Layanan Lembaga Keuangan Syariah',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_PBS3','Akuntasi Perbankan Syariah',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG1','Pemrograman Berorientasi Objek',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG2','Pemrograman Web dan Perangkat Bergerak',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG3','Basis Data',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG4','Pemodelan Perangkat Lunak',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_RPLG_Pilihan','Pilihan | Pemrograman Internet',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_AIJ','Administrasi Infrastruktur Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_ASJ','Administrasi Sistem Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_ASKJ','Administrasi Sistem Keamanan Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_Pilihan','Pilihan | Aplikasi Perkantoran',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TJKT_TLJ','Teknologi Layanan Jaringan',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS1','Akuntansi dan Perbankan Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS2','Spreadsheet',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_AKPBS3','Etika Profesi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV1','Dasar Dasar DKV',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV2','Sketsa dan Ilustrasi',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV3','Komputer Grafis dan Typography',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_DKV4','Fotografi Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_Mulok','Muatan Lokal | Aplikasi Perkantoran',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG1','Pengantar RPLG',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG2','Pemrograman Dasar',NULL);
INSERT INTO `mata_pelajaran` VALUES ('X_RPLG3','Pemrograman Berbasis Desktop',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `pengawas` VALUES   ('1','-','Administrator','','admin','$2y$10$/Bnu7lxNI34XlqIugwP0Zef/lsnxu7Kn.lzw61SZMQwfk9Y8hzeRu','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('298','-','Agus Fadly Taqwan Lubis, S.Pd.Gr.','XITX','acus','$2y$10$AC/CY1LQ7PplmCdp/Wg0DOtBT1u759yJoyusChmTE.z0sbXqSuCyu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('299','-','Ahmad Rizky Roenanda','','rizky','$2y$10$iCDPuVz1ma1VSVves2iknen3w2gMyISICPBZ5wTyRuQf2JDOhKqJ2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('300','-','Ahmad Taufik Irvan','','opik','$2y$10$gvpbFzMk8n7CNz6zgLpEXeyPWkdSsz.i9STTNk58PmCA4ck2ua9Yi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('301','-','Ainun Mardiah','','ainun','$2y$10$a5g3sOcxX0N/c7O05elfc.0ctnIwLQrnv6TAYBE0H1CFXxcdWCmN.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('302','-','Alfandi Dachlan Nasution, S.Pd.','','dahlan','$2y$10$5/ppkLMvf994MoBNt1rIyOqqCE2t5Tae9dK4zMWljAemugo44naZi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('303','-','Alwin Parulian','','alwin','$2y$10$m1zRE1CzjWGuYbZZ8iGFD.P3AHtSFJ4QecdV8C.l5xipXqeaWKLZW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('304','-','Andika','','andika','$2y$10$Ehl8lKObUkFRhdRQ2wvCgeJiUNdoUohL0unzapu2BobuoAMMh1Ncy','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('305','-','Andre Pratama, S.Kom.','XITR3','ap','$2y$10$FoZ7AUQn86acNZkipeT3deJTuEtGll83KIhy7ovX4AiZsVpr3Fk9W','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('306','-','Arfan Hendra','','arfan','$2y$10$OIjrf5QJBnH5yzNidogzdeEUvl3/JCBOkIb08pF4xykqo.QFyw56O','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('307','-','Ari Antika Pane','','pane','$2y$10$O5xlQ74lwE8YTGkpRLrUG.oU4ERKefuvqjNkYpZrYmLgbDM1TLPy6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('308','-','Asril Putra, S.Pd.','','asril','$2y$10$2C0j7AjrA89y0c8Iiri7h.IXgenRnONYr./GXMrN3.lPlL3mAq9n6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('309','-','Dahrim Pohan','','dahrim','$2y$10$Ba5ny0qKUKQJRW7..KOy5OOxj/a2.YBFYSFkbcMMqCkk.yL107seu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('310','-','Darwis','','darwis','$2y$10$eV7BbWhIHHKcTMcq6JLHHOfmuHaK8Ob8qyjluWs7gNK59CrT6L3tK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('311','-','Dedek Serly Ramadhani','','serly','$2y$10$7698.5d/N4/sI0Ks1qywH..fRWGBANUQ8OQmz0klvXhE7MjvgMxc2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('312','-','Dedi Leman, M.Kom.','','dedi','$2y$10$qBy4QYyyPq/HIomtGDfui.Eu2EOc.EwnGPxPZiiVyuS7Gk4R3sdza','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('313','-','Dira Urdi Permana','','dira','$2y$10$0LYrxa2mT/WkeSwVnZ6KRuVNkK50Jna1i3gw3WHsA11CYLFQalwjG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('314','-','Eliya Fitri','','eliya','$2y$10$THABVQDoQQl/ZZnzP4/5IOkTsLzatt.3cew7FmUWVTdHccUW.zznq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('315','-','Ernatati','','erna','$2y$10$.uicc67nozX8QdcB0FVNsePfZpSuBTvxES6PJTDhmx3IgzDmjNL8u','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('316','-','Faisal Irsan Pasaribu','','faisal','$2y$10$lZK2Y2hWe5ozQtdo2vKLtuRXeO1g1eNscUW1UcLJDkvmPprsiwEmS','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('317','-','Fatimah Dewi','','fatimah','$2y$10$Ews.DRZq6rAH.47A8W1z0uTTtxlKYKBhs.dBpnE4crNlDKlqNfNaK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('318','-','Fitri Mawaddah','','mawaddah','$2y$10$mgH9BszhdpiedUj3.Odysehx4p6G9GkNKJRV9sjMGL0E54mumrzFW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('319','-','Fitriani Sitopu','','fitriani','$2y$10$TwPyMYySv2JqTxZcs9GS1.00XuBJ31DDUmmBzu79sUcIxiDniGwDG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('320','-','Fitriyani, M.Ak.','','fitriyani','$2y$10$j.ZQXtUY0aJ5wJYjblSoVOnSUqVwTg0u8eIkGp5d02tcUNSuf2pAa','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('321','-','Hartati Tammamah Lubis, S.Kom.','','tama','$2y$10$qgTLMW1/1//BDTXW8VlequBhxWGKbCtzIukdOtV9/rpuFfhcUmcB6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('322','-','Ida Zuraida','','ida','$2y$10$a9/1ekLXuUD794m6ZBhmm.1xQBQzO5bJScRgBp36mDthPjhv7orZu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('323','-','Irmansyah','','irman','$2y$10$1eKMtwydELOql2yH5RzDt.6fli/zDR0gbSG6Oyci.hfpMmAUBYNJK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('324','-','Irna Tri Aulia','','irna','$2y$10$q8A6EiQXa6kjQdb5ieSN9uWs335UiY5YMZ6ae3iB7IFT.vZG8HcD2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('325','-','Islamadina Suwarsa, S.Kom.','','islam','$2y$10$PKW5DRs4r78YErzKGaBvfuZj2Ev/q.7haK6WG7V4QiaSHPf3PLQf.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('326','-','Ismail','','ismail','$2y$10$Zfr8DXu6A9ZiKxqRUfZJk.uB5URshZYo.6VIPfHitLmeXGANzhHU2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('327','-','Jasmani','','jasmani','$2y$10$oL8Aob1Gz72y4PqiS02H5.kPeX91tkqdPSnqCvS9COKqXfnwIHftm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('328','-','Karina Rahmadina','','karina','$2y$10$wqoD0zK1AmV./LDMviXDL.u.Wa2y/xxdoZqNfB2bHUDr2pcCunMQe','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('329','-','Kartina','','kartina','$2y$10$9N7W4bXIw3qzRrWsXgFgw.Cpt25KhUkb37i.kUe1Mi2Z3.Ls1siKe','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('330','-','Keddy Fadillah','','keddy','$2y$10$TEp9LHtFtkxz/gkPAZA4cuBMvvKZnvdy1VW6zA.BorYfgPb5x6Lrm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('331','-','Kianditara, M.M','','kian','$2y$10$inxLxjRoR7l7f5Qy0Ts2a.XiSiP7NAdHJG3J1tVInw.xteYvC5EHG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('332','-','Lanny Apriani','','lanny','$2y$10$/1ncE3eWOFi6tJV3ASqRfe25t4axCvNXu0jseFOsWl4rBqZUVH1KW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('333','-','Lufita Sari Sitorus','','lufita','$2y$10$8uIDwDeKQIBcRTvAsJfDDeM1laedBKXdFGFaIGWB3SodpK3zit8xG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('334','-','M. Fansuri Syuhada','','fansuri','$2y$10$/siKemWjrjs2VdBee.CMdO4fUyBHI/ZoLwgVHGPfwvHXRLh3zFJOG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('335','-','M. Herizal Sinambela, S.Pd.I','','herizal','$2y$10$iuO0qNPGxnWvjyj7.CDBguEWHNlDy.W076Az9oyJbUfipILMdbDoi','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('336','-','Maulia Rahman, M.Kom.','','maulia','$2y$10$S.IWrzqJbPiTLB59qOfLCOAR1aePr.fW0K6iSHs5/tQ6RLbhLytcq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('337','-','Meilani','','meilani','$2y$10$Dih/ZcZFQPR8aKuOQ21sier4Y6NDWngKX5mGXI1auxckf0ARNp4ra','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('338','-','Mona Maya Mita','','mona','$2y$10$pmiNZnvYsNdzxlsLZkiUQuyNs72XmrZVe5zaoB3BStg326oyHGcOu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('339','-','Mubarak, S.Kom.','','mubarak','$2y$10$9LLsIi7YKqQ182Pi5wmivOr00XdpSz4br23t3okiTXvWXyQoZba/G','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('340','-','Muhammad Pakpahan','','pakpahan','$2y$10$GvAnKVpGH2h6VPlXAmjIPOlII/LbME/jVnZE8giOazW8MAd4U.PI6','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('341','-','Neny Wahyuni Yusda','','neny','$2y$10$L4D4pZCSzaiMrAu51VWEleL/I/bpLioWFg0b3xiDCXo7LM5d380KO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('342','-','Netty Hartati','','netty','$2y$10$FscChp0mgWhUgH9JFP7G5uf8t26765UspM.51ShKx5m.1/7pmYdPO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('343','-','Nina Juliana','','nina','$2y$10$M/uFuW.On5DtWQMjDEaAu.HtneBptMLL372ChRqxIhpJ4cYaUvJYu','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('344','-','Nova Andarini','','nova','$2y$10$EExtcfMlbw2Tjuk9LFwRJOf.lBtq7NHhhg2KhNdOEWUxuhXtJjC1W','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('345','-','Nurdahlena','','lena','$2y$10$gZwo8NVhZirmjam0BlJFdun7BJ/d3XbobbdS5Gte0ykKwZzZY4cJm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('346','-','Nurmala Sari Dewi','','nurmala','$2y$10$fwReIdp6fSTHw5IVWoqvLu2b9KPp/uW5eErfIb3o32gcs1aw7BaqS','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('347','-','Pranita','','pranita','$2y$10$Rl4ZaruBEFA7GM42upuFEOOhPFyR0DvjWys5QNwfvmKTwJtnLf.gK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('348','-','Putra Ramadan Nasution, S.Kom.','','putra','$2y$10$OgjnXm75fSA2tGWee9ED1efmEfgCdGk17TAIAuQXhh5p7Soaxlcwa','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('349','-','Raden Dwi Puspa','','raden','$2y$10$5eccLLDjOn7GhlMv4bkN/e1dcHUByRrJqb.mNDHGUO.M32Emxpg0G','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('350','-','Rahmad Syahputra','','rahmad','$2y$10$BmfsuZu4asZb0tez54QBNuqzY/mgiu.edfu.cOPUmFSUeac0dm5nq','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('351','-','Retno Handoko, S.S','','retno','$2y$10$z4Ya33guN3Q9QJ3G6yi0BO29s2hQSHqXSH114LamSnl1tX68E349W','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('352','-','Riani Windasari','','riani','$2y$10$jUn9Mches6bKq27EL4YIOeZBFyMg1gvzzfmEV5eRc1PLfAYxQbBaC','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('353','-','Ridwan Hasayangan Siregar, S.Kom.','XITR1','ridwan','$2y$10$cHR78HioKi94K3qImiMNQ.XmmvAtATc7zy5r0m98AHy/RIje/uiTe','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('354','-','Risma Yanti Dewi','','risma','$2y$10$oc9/uW0CWswIcl04.r1uEuk85G4CjHP.FFvprQF4ngwPTLrr06ZZW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('355','-','Salsyanabila','','salsa','$2y$10$YuZgU/PKrBLYxiFhzV4D4OrQrcdWNOMiy7Tqas22w6o4trb70ze9O','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('356','-','Sapta Kesuma','','sapta','$2y$10$Fkf0G3n3TFPcPCfBMUNf9ORee3qOT2ef1sRlhi75YvEK7dfeCiG6a','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('357','-','Sorimuda Dalimunte','','sorimuda','$2y$10$DpP.gJ3Xnq1.TcXewXzE3.XScrLVsvanG8FC5sjBByvU/qkZqp17y','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('358','-','Sufaidah','','sufaidah','$2y$10$HFpxQ/wb6ZS5iyR6MxKJEO9GWahWrTPwb.0a4opjERLT52D.RRKse','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('359','-','Suprianto','','prio','$2y$10$D0LybXqC8KQoumPmDX.I4uPQnJkbzSCR3jfUlGhg8i436O0ZbY1gO','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('360','-','Surwedi','','surwedi','$2y$10$fCZxRAYUVx16/5ltag7BZeSMcXHhdx0IqmAwDnG.jSNmmrO9jaLd2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('361','-','Syafrina Nasution','','syafrina','$2y$10$s8FyA/c6dBduVabXVPcPveqIdB61ej/9AC561EFY9qnrZjq.KJVBG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('362','-','Teguh Satria','','teguh','$2y$10$Y28ePanSAyvy.SCaAEBNr.mhH/ODROOmHUEySeuKykX6N0nEVJ9E2','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('363','-','Tri Andini Ayuningtyas, M.Pd.','','andin','$2y$10$7Q4yIVIz6PxCBqJjxls6c.ICTCeOsjLC2iLzgr8HX/I1iI5/vVBLG','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('364','-','Ulasmawati','','ulas','$2y$10$1qVTs8PBlreASxEgKw4x6ujpeYVJLmbLvg6dSW831poYViH5vy3CS','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('365','-','Weni Fikarunnisa','','weni','$2y$10$JdGIqtlhwb9fYk1TkF784eV.wr1roF6bcl/ghq3YrpybMGR4zVyi.','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('366','-','Wildan Rizky Harahap','','wildan','$2y$10$sVe9rkFd58QMSa/F8S.zuuL/hne92CyLeKSvqIpgsTRdbgHuedXWK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('367','-','Yuli Rahmadini , ST.','XITR2','yuli','$2y$10$5DBjC2m9NnAzL9ISuUyQdeZwtKmzAG0cC8hoakMah8ipJoiCr/T8e','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('368','-','Zakiyah','','zakiyah','$2y$10$QJgEbpXhuye5KaT67U12uO8GCOtZrbWHDvwbXOtLZNbovqvzY2QhK','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
INSERT INTO `setting` VALUES   ('1','CBT Application','10261412','SMK Tritech Informatika','SMK','M. Herizal Sinambela, S.Pd.I','-','Jl. Bhayangkara No.484, Indra Kasih<br />\r\n','Medan Tembung  ','Medan','-','-','smktritechinformatika.sch.id','smktritechinformatika@gmail.com','dist/img/logo97.png','','KARTU PESERTA UJIAN','Penilaian Tengah Semester','1.0','http://localhost/cbt','Asia/Jakarta','pusat','SR01','http://localhost/cbt','HO3FIrBYcFUMp0','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','1.0','dist/img/bc.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `token` VALUES   ('1','PEZXSQ','2023-05-21 08:02:24','00:15:00');

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
