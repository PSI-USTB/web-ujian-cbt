
/*---------------------------------------------------------------
  SQL DB BACKUP 29.03.2023 13:13 
  HOST: localhost
  DATABASE: candyold
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
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `file_pendukung` VALUES   ('363','1','1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('364','1','1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('365','1','2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('366','1','3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('367','1','1_5_2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('368','1','1_13_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('369','1','1_14_1.png',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `jawaban` VALUES   ('1','11','1','53','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('2','17','1','40','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('3','11','1','57','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('4','18','1','55','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('5','10','1','44','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('6','23','1','48','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('7','2','1','40','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('8','18','1','56','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('9','12','1','40','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('10','17','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('11','11','1','56','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('12','18','1','46','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('13','20','1','36','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('14','10','1','50','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('15','16','1','50','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('16','12','1','48','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('17','7','1','70','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('18','16','1','44','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('19','2','1','49','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('20','3','1','40','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('21','23','1','40','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('22','12','1','49','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('23','20','1','37','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('24','1','1','40','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('25','23','1','49','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('26','4','1','40','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('27','3','1','49','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('28','20','1','38','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('29','4','1','49','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('30','1','1','49','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('31','16','1','52','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('32','21','1','40','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('33','18','1','66','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('34','7','1','69','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('35','8','1','52','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('36','5','1','40','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('37','16','1','53','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('38','3','1','48','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('39','10','1','52','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('40','21','1','48','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('41','5','1','48','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('42','8','1','53','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('43','21','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('44','20','1','39','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('45','17','1','48','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('46','1','1','48','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('47','2','1','48','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('48','18','1','67','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('49','11','1','51','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('50','21','1','69','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('51','3','1','69','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('52','7','1','68','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('53','16','1','62','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('54','11','1','50','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('55','21','1','44','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('56','10','1','53','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('57','3','1','63','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('58','10','1','62','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('59','12','1','41','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('60','20','1','40','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('61','21','1','59','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('62','18','1','68','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('63','3','1','64','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('64','10','1','40','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('65','8','1','62','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('66','7','1','67','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('67','17','1','41','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('68','2','1','41','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('69','18','1','53','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('70','16','1','40','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('71','12','1','42','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('72','3','1','65','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('73','16','1','43','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('74','21','1','62','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('75','23','1','36','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('76','10','1','43','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('77','21','1','68','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('78','23','1','38','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('79','7','1','66','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('80','3','1','41','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('81','1','1','41','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('82','18','1','54','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('83','3','1','42','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('84','12','1','43','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('85','3','1','43','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('86','16','1','54','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('87','23','1','39','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('88','8','1','41','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('89','12','1','44','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('90','5','1','38','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('91','3','1','44','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('92','10','1','54','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('93','20','1','41','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('94','21','1','63','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('95','14','1','36','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('96','1','1','42','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('97','3','1','45','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('98','21','1','45','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('99','7','1','65','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('100','1','1','43','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('101','8','1','42','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('102','3','1','56','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('103','21','1','43','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('104','12','1','45','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('105','23','1','41','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('106','17','1','42','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('107','5','1','37','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('108','17','1','43','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('109','3','1','58','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('110','1','1','44','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('111','3','1','59','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('112','21','1','42','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('113','17','1','44','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('114','14','1','37','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('115','20','1','42','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('116','1','1','45','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('117','12','1','58','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('118','21','1','61','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('119','3','1','60','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('120','3','1','61','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('121','4','1','37','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('122','7','1','64','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('123','21','1','55','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('124','3','1','62','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('125','10','1','60','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('126','23','1','42','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('127','1','1','46','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('128','12','1','59','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('129','3','1','57','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('130','2','1','42','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('131','21','1','54','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('132','16','1','60','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('133','14','1','38','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('134','3','1','46','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('135','2','1','43','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('136','1','1','55','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('137','20','1','43','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('138','14','1','39','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('139','3','1','53','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('140','1','1','36','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('141','21','1','67','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('142','16','1','66','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('143','2','1','44','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('144','10','1','66','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('145','13','1','36','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('146','3','1','70','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('147','19','1','36','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('148','18','1','50','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('149','5','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('150','13','1','37','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('151','8','1','46','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('152','7','1','63','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('153','1','1','37','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('154','14','1','40','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('155','19','1','37','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('156','2','1','45','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('157','1','1','38','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('158','18','1','51','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('159','13','1','38','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('160','19','1','38','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('161','12','1','60','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('162','21','1','36','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('163','20','1','44','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('164','17','1','45','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('165','19','1','39','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('166','16','1','38','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('167','7','1','62','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('168','23','1','43','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('169','21','1','58','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('170','5','1','39','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('171','19','1','40','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('172','17','1','46','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('173','13','1','39','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('174','21','1','66','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('175','10','1','38','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('176','18','1','52','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('177','5','1','41','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('178','20','1','45','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('179','3','1','36','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('180','2','1','46','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('181','23','1','44','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('182','1','1','53','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('183','20','1','46','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('184','1','1','63','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('185','19','1','41','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('186','13','1','40','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('187','12','1','61','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('188','16','1','45','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('189','18','1','70','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('190','23','1','45','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('191','14','1','41','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('192','1','1','64','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('193','10','1','45','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('194','21','1','64','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('195','1','1','65','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('196','13','1','41','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('197','23','1','46','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('198','1','1','57','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('199','6','1','41','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('200','21','1','65','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('201','14','1','42','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('202','16','1','48','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('203','1','1','70','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('204','16','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('205','20','1','47','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('206','21','1','37','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('207','1','1','47','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('208','1','1','50','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('209','4','1','42','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('210','6','1','42','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('211','21','1','70','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('212','1','1','51','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('213','10','1','48','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('214','7','1','61','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('215','14','1','43','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('216','4','1','46','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('217','17','1','58','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('218','5','1','43','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('219','10','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('220','7','1','60','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('221','16','1','51','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('222','13','1','42','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('223','1','1','52','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('224','21','1','47','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('225','5','1','44','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('226','23','1','47','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('227','10','1','51','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('228','8','1','56','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('229','18','1','47','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('230','19','1','44','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('231','5','1','45','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('232','12','1','69','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('233','14','1','44','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('234','6','1','43','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('235','7','1','59','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('236','12','1','39','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('237','19','1','50','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('238','1','1','69','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('239','7','1','58','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('240','19','1','52','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('241','4','1','62','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('242','19','1','53','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('243','11','1','52','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('244','19','1','62','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('245','14','1','45','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('246','5','1','42','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('247','10','1','59','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('248','19','1','43','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('249','1','1','56','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('250','7','1','57','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('251','20','1','50','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('252','19','1','54','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('253','11','1','41','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('254','14','1','46','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('255','19','1','60','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('256','21','1','46','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('257','6','1','44','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('258','11','1','60','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('259','20','1','51','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('260','19','1','66','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('261','12','1','57','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('262','23','1','50','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('263','5','1','46','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('264','11','1','38','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('265','12','1','62','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('266','14','1','47','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('267','19','1','45','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('268','11','1','39','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('269','7','1','56','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('270','16','1','59','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('271','8','1','54','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('272','6','1','45','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('273','20','1','52','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('274','14','1','48','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('275','19','1','48','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('276','11','1','46','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('277','13','1','43','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('278','6','1','39','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('279','14','1','49','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('280','19','1','49','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('281','5','1','47','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('282','17','1','59','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('283','7','1','55','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('284','14','1','50','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('285','19','1','51','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('286','11','1','47','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('287','18','1','36','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('288','20','1','53','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('289','19','1','59','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('290','12','1','63','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('291','23','1','51','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('292','22','1','51','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('293','8','1','51','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('294','11','1','70','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('295','19','1','65','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('296','22','1','36','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('297','7','1','54','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('298','17','1','60','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('299','12','1','64','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('300','5','1','51','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('301','14','1','51','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('302','22','1','37','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('303','14','1','52','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('304','10','1','65','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('305','11','1','37','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('306','22','1','38','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('307','17','1','61','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('308','20','1','54','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('309','19','1','68','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('310','8','1','47','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('311','22','1','39','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('312','7','1','53','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('313','17','1','39','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('314','22','1','40','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('315','16','1','65','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('316','6','1','70','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('317','22','1','41','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('318','23','1','52','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('319','22','1','42','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('320','23','1','53','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('321','18','1','37','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('322','11','1','65','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('323','12','1','65','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('324','4','1','44','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('325','5','1','53','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('326','19','1','42','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('327','22','1','43','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('328','7','1','52','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('329','6','1','47','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('330','19','1','55','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('331','22','1','44','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('332','14','1','53','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('333','22','1','45','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('334','7','1','51','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('335','13','1','44','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('336','10','1','68','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('337','19','1','57','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('338','22','1','46','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('339','16','1','68','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('340','14','1','54','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('341','7','1','50','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('342','2','1','53','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('343','12','1','36','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('344','18','1','38','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('345','22','1','47','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('346','6','1','46','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('347','13','1','45','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('348','19','1','61','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('349','22','1','48','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('350','22','1','49','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('351','19','1','64','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('352','7','1','49','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('353','23','1','54','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('354','5','1','54','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('355','22','1','50','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('356','11','1','64','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('357','13','1','46','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('358','12','1','37','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('359','4','1','48','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('360','20','1','55','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('361','14','1','55','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('362','22','1','52','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('363','8','1','38','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('364','7','1','48','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('365','6','1','62','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('366','14','1','56','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('367','17','1','57','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('368','11','1','66','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('369','23','1','55','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('370','22','1','53','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('371','12','1','38','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('372','20','1','56','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('373','10','1','36','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('374','13','1','47','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('375','11','1','58','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('376','14','1','57','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('377','22','1','54','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('378','2','1','37','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('379','6','1','63','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('380','5','1','56','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('381','7','1','47','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('382','4','1','56','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('383','11','1','36','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('384','14','1','58','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('385','18','1','63','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('386','20','1','57','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('387','13','1','48','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('388','5','1','55','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('389','16','1','36','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('390','14','1','59','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('391','23','1','56','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('392','22','1','55','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('393','7','1','46','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('394','16','1','39','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('395','10','1','39','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('396','2','1','56','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('397','11','1','67','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('398','14','1','60','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('399','20','1','58','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('400','8','1','36','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('401','18','1','64','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('402','6','1','64','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('403','22','1','56','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('404','2','1','47','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('405','13','1','49','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('406','20','1','59','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('407','11','1','54','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('408','8','1','55','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('409','17','1','55','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('410','13','1','50','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('411','16','1','42','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('412','18','1','65','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('413','6','1','65','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('414','23','1','37','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('415','3','1','37','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('416','12','1','47','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('417','10','1','42','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('418','22','1','57','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('419','3','1','38','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('420','12','1','70','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('421','6','1','50','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('422','22','1','58','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('423','18','1','62','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('424','11','1','55','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('425','16','1','55','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('426','22','1','59','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('427','10','1','55','1','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('428','2','1','38','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('429','20','1','60','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('430','11','1','61','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('431','17','1','56','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('432','23','1','57','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('433','22','1','60','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('434','5','1','36','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('435','2','1','36','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('436','6','1','51','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('437','13','1','51','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('438','4','1','41','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('439','16','1','57','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('440','10','1','57','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('441','2','1','55','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('442','6','1','52','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('443','18','1','57','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('444','20','1','61','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('445','11','1','42','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('446','18','1','39','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('447','8','1','57','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('448','6','1','69','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('449','13','1','52','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('450','20','1','62','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('451','5','1','57','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('452','6','1','66','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('453','16','1','61','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('454','17','1','62','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('455','12','1','50','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('456','11','1','43','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('457','8','1','58','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('458','13','1','53','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('459','18','1','69','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('460','10','1','61','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('461','23','1','58','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('462','17','1','54','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('463','18','1','58','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('464','10','1','64','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('465','4','1','53','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('466','4','1','57','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('467','13','1','54','1','B','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('468','18','1','59','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('469','13','1','55','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('470','6','1','67','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('471','2','1','70','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('472','23','1','59','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('473','4','1','38','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('474','5','1','59','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('475','8','1','59','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('476','17','1','36','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('477','5','1','58','1','A','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('478','8','1','60','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('479','6','1','68','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('480','17','1','37','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('481','13','1','56','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('482','8','1','61','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('483','4','1','36','1','B','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('484','5','1','60','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('485','17','1','38','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('486','23','1','60','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('487','4','1','65','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('488','16','1','64','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('489','6','1','54','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('490','4','1','69','1','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('491','17','1','70','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('492','13','1','57','1','E','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('493','5','1','52','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('494','6','1','36','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('495','4','1','63','1','D','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('496','17','1','47','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('497','5','1','50','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('498','8','1','70','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('499','4','1','43','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('500','2','1','50','1','E','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('501','4','1','58','1','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('502','8','1','37','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('503','6','1','37','1','D','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('504','2','1','51','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('505','17','1','52','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('506','4','1','59','1','C','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('507','8','1','50','1','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('508','13','1','58','1','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('509','13','1','59','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('510','8','1','67','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('511','2','1','52','1','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('512','13','1','60','1','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('513','8','1','66','1','D','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('514','6','1','38','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('515','8','1','39','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('516','4','1','45','1','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('517','4','1','61','1','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('518','6','1','57','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('519','2','1','69','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('520','4','1','60','1','E','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('521','8','1','68','1','E','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('522','4','1','64','1','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('523','2','1','64','1','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('524','4','1','70','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('525','2','1','63','1','C','E','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('526','2','1','65','1','E','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('527','2','1','57','1','B','E','1',NULL,'0','0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
INSERT INTO `jenis` VALUES   ('PTS','Penilaian Tengah Semester','aktif');
INSERT INTO `jenis` VALUES ('USBK','Ujian Sekolah','tidak');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
INSERT INTO `kelas` VALUES   ('XITR3','XI','XITR3',NULL,NULL);

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
INSERT INTO `level` VALUES   ('XI','XI',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mapel` VALUES   ('1','MID_Genap_TLJ_XI','a:1:{i:0;s:3:\"TKJ\";}','296','XI_TLJ','35','0','25','0','100','0','XI','5','a:1:{i:0;s:5:\"XITR3\";}','2023-03-29 08:18:46','1','70','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `mata_pelajaran` VALUES   ('XI_AIJ','Administrasi Infrastruktur Jaringan XI',NULL);
INSERT INTO `mata_pelajaran` VALUES ('XI_TLJ','Teknologi Layanan Jaringan XI',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `nilai` VALUES   ('1','1','1','17','PTS','2023-03-29 08:55:37','2023-03-29 08:55:37','2023-03-29 09:23:43','17','8',NULL,'68','68',NULL,'192.168.100.176','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"B\";i:40;s:1:\"D\";i:41;s:1:\"B\";i:42;s:1:\"B\";i:43;s:1:\"D\";i:44;s:1:\"C\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"D\";i:49;s:1:\"E\";i:50;s:1:\"X\";i:51;s:1:\"X\";i:52;s:1:\"E\";i:53;s:1:\"X\";i:54;s:1:\"D\";i:55;s:1:\"B\";i:56;s:1:\"A\";i:57;s:1:\"D\";i:58;s:1:\"D\";i:59;s:1:\"C\";i:60;s:1:\"A\";i:61;s:1:\"B\";i:62;s:1:\"E\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','40,49,48,41,42,43,44,45,46,58,59,60,61,39,57,55,56,62,54,36,37,38,70,47,52,','D,B,E,C,A,A,C,B,E,D,A,D,C,E,B,E,B,A,D,C,D,A,C,B,E,C,D,E,B,A,C,E,A,B,D,C,E,B,A,D,C,D,B,A,E,C,E,D,A,B,A,B,E,D,C,E,A,B,D,C,E,C,D,B,A,C,A,E,D,B,D,C,E,B,A,C,D,A,E,B,D,A,B,C,E,E,C,A,B,D,D,A,C,B,E,D,B,E,C,A,D,E,A,C,B,A,C,D,B,E,A,C,E,D,B,E,D,A,B,C,A,C,E,D,B,',NULL,'0');
INSERT INTO `nilai` VALUES ('2','1','1','16','PTS','2023-03-29 08:55:46','2023-03-29 08:55:46','2023-03-29 09:22:38','6','19',NULL,'24','24',NULL,'192.168.100.182','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"X\";i:38;s:1:\"A\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"X\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"X\";i:47;s:1:\"X\";i:48;s:1:\"D\";i:49;s:1:\"E\";i:50;s:1:\"E\";i:51;s:1:\"E\";i:52;s:1:\"A\";i:53;s:1:\"C\";i:54;s:1:\"A\";i:55;s:1:\"E\";i:56;s:1:\"X\";i:57;s:1:\"D\";i:58;s:1:\"X\";i:59;s:1:\"D\";i:60;s:1:\"E\";i:61;s:1:\"C\";i:62;s:1:\"B\";i:63;s:1:\"X\";i:64;s:1:\"A\";i:65;s:1:\"E\";i:66;s:1:\"A\";i:67;s:1:\"X\";i:68;s:1:\"A\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','44,50,52,53,62,40,43,54,60,66,38,45,48,49,51,59,65,68,36,39,42,55,57,61,64,','A,E,D,B,C,E,C,D,A,B,A,B,C,D,E,A,C,B,D,E,B,E,D,C,A,E,B,A,C,D,C,B,D,A,E,C,D,A,E,B,A,D,C,E,B,D,E,A,C,B,E,D,A,B,C,D,C,A,E,B,E,A,B,D,C,D,C,A,E,B,A,C,E,D,B,A,B,C,E,D,D,C,B,E,A,B,D,A,C,E,D,C,E,A,B,E,D,C,B,A,E,C,D,A,B,A,C,E,B,D,E,D,C,A,B,B,A,D,C,E,A,E,B,C,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('3','1','1','22','PTS','2023-03-29 08:55:46','2023-03-29 08:55:46','2023-03-29 09:19:28','11','14',NULL,'44','44',NULL,'192.168.100.174','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"B\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"E\";i:45;s:1:\"B\";i:46;s:1:\"B\";i:47;s:1:\"C\";i:48;s:1:\"B\";i:49;s:1:\"C\";i:50;s:1:\"C\";i:51;s:1:\"E\";i:52;s:1:\"C\";i:53;s:1:\"C\";i:54;s:1:\"B\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"D\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,','A,C,D,E,B,D,C,B,A,E,B,A,C,D,E,B,C,D,A,E,E,A,B,C,D,E,D,C,A,B,E,D,C,A,B,B,C,E,A,D,A,E,D,B,C,E,A,D,B,C,E,A,B,C,D,B,D,E,A,C,C,D,E,B,A,C,E,A,B,D,E,D,A,B,C,B,A,C,D,E,A,D,E,B,C,A,D,E,C,B,B,A,D,E,C,D,B,C,A,E,B,D,A,E,C,C,B,E,A,D,A,B,C,D,E,A,D,C,B,E,C,A,D,B,E,',NULL,'0');
INSERT INTO `nilai` VALUES ('4','1','1','18','PTS','2023-03-29 08:55:48','2023-03-29 08:55:48','2023-03-29 09:21:12','10','15',NULL,'40','40',NULL,'192.168.100.180','0','a:35:{i:36;s:1:\"C\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"E\";i:40;s:1:\"X\";i:41;s:1:\"X\";i:42;s:1:\"X\";i:43;s:1:\"X\";i:44;s:1:\"X\";i:45;s:1:\"X\";i:46;s:1:\"A\";i:47;s:1:\"A\";i:48;s:1:\"X\";i:49;s:1:\"X\";i:50;s:1:\"C\";i:51;s:1:\"E\";i:52;s:1:\"A\";i:53;s:1:\"C\";i:54;s:1:\"E\";i:55;s:1:\"B\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"X\";i:61;s:1:\"X\";i:62;s:1:\"C\";i:63;s:1:\"D\";i:64;s:1:\"A\";i:65;s:1:\"E\";i:66;s:1:\"C\";i:67;s:1:\"A\";i:68;s:1:\"E\";i:69;s:1:\"C\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','55,56,46,66,67,68,53,54,50,51,52,70,47,36,37,38,63,64,65,62,57,39,69,58,59,','B,A,C,E,D,D,A,E,C,B,A,E,B,C,D,B,A,E,C,D,E,A,B,D,C,D,E,A,C,B,B,E,A,D,C,E,B,D,C,A,C,B,D,E,A,E,C,A,D,B,C,A,D,E,B,C,B,D,A,E,A,D,C,B,E,E,C,A,D,B,A,E,C,D,B,A,E,D,B,C,C,B,E,D,A,E,B,D,A,C,C,E,D,A,B,B,C,D,E,A,D,E,C,B,A,E,A,C,D,B,B,D,E,C,A,E,D,A,B,C,B,A,E,C,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('6','1','1','11','PTS','2023-03-29 08:55:54','2023-03-29 08:55:54','2023-03-29 09:21:05','20','5',NULL,'80','80',NULL,'192.168.100.179','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"B\";i:40;s:1:\"X\";i:41;s:1:\"C\";i:42;s:1:\"E\";i:43;s:1:\"D\";i:44;s:1:\"X\";i:45;s:1:\"X\";i:46;s:1:\"A\";i:47;s:1:\"A\";i:48;s:1:\"X\";i:49;s:1:\"X\";i:50;s:1:\"E\";i:51;s:1:\"C\";i:52;s:1:\"E\";i:53;s:1:\"E\";i:54;s:1:\"D\";i:55;s:1:\"B\";i:56;s:1:\"A\";i:57;s:1:\"B\";i:58;s:1:\"A\";i:59;s:1:\"X\";i:60;s:1:\"A\";i:61;s:1:\"B\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"A\";i:65;s:1:\"E\";i:66;s:1:\"D\";i:67;s:1:\"A\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','53,57,56,51,50,52,41,60,38,39,46,47,70,37,65,64,66,58,36,67,54,55,61,42,43,','A,E,B,D,C,D,A,E,C,B,E,C,D,B,A,E,C,A,D,B,A,C,B,E,D,A,E,B,D,C,E,A,B,C,D,D,A,E,C,B,A,D,B,E,C,B,A,D,E,C,C,D,B,A,E,D,A,E,B,C,D,B,C,A,E,B,E,D,C,A,B,A,C,D,E,E,D,B,A,C,D,B,E,A,C,D,E,C,A,B,D,E,A,C,B,B,C,A,D,E,C,E,B,D,A,C,E,D,A,B,C,E,D,A,B,D,B,C,A,E,C,A,B,E,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('7','1','1','4','PTS','2023-03-29 08:55:54','2023-03-29 08:55:54','2023-03-29 09:25:24','12','13',NULL,'48','48',NULL,'192.168.100.181','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"D\";i:39;s:1:\"X\";i:40;s:1:\"D\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"D\";i:45;s:1:\"C\";i:46;s:1:\"A\";i:47;s:1:\"X\";i:48;s:1:\"B\";i:49;s:1:\"B\";i:50;s:1:\"X\";i:51;s:1:\"X\";i:52;s:1:\"X\";i:53;s:1:\"C\";i:54;s:1:\"X\";i:55;s:1:\"X\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"E\";i:61;s:1:\"D\";i:62;s:1:\"B\";i:63;s:1:\"D\";i:64;s:1:\"B\";i:65;s:1:\"E\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"B\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','40,49,48,69,63,64,65,41,42,43,44,45,56,58,59,60,61,62,57,46,53,70,36,37,38,','D,A,C,E,B,B,A,D,E,C,D,B,E,A,C,C,B,A,D,E,A,E,C,B,D,B,D,E,C,A,B,E,D,A,C,C,A,B,E,D,D,E,B,C,A,D,A,B,C,E,C,A,B,D,E,D,A,C,B,E,D,C,E,B,A,D,C,A,E,B,D,C,B,A,E,D,C,E,A,B,A,E,D,B,C,C,E,A,D,B,E,B,C,D,A,C,D,B,E,A,C,B,A,D,E,A,E,B,C,D,C,E,D,B,A,C,D,A,B,E,C,D,E,B,A,',NULL,'0');
INSERT INTO `nilai` VALUES ('9','1','1','2','PTS','2023-03-29 08:56:01','2023-03-29 08:56:01','2023-03-29 09:26:02','13','12',NULL,'52','52',NULL,'192.168.100.178','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"X\";i:40;s:1:\"D\";i:41;s:1:\"A\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"D\";i:45;s:1:\"D\";i:46;s:1:\"A\";i:47;s:1:\"C\";i:48;s:1:\"B\";i:49;s:1:\"C\";i:50;s:1:\"E\";i:51;s:1:\"C\";i:52;s:1:\"C\";i:53;s:1:\"C\";i:54;s:1:\"X\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"B\";i:58;s:1:\"X\";i:59;s:1:\"X\";i:60;s:1:\"X\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"C\";i:64;s:1:\"A\";i:65;s:1:\"E\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"A\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','40,49,48,41,42,43,44,45,46,55,36,37,38,53,63,64,65,57,70,47,50,51,52,69,56,','E,D,C,B,A,C,D,E,B,A,D,B,C,E,A,C,A,B,D,E,D,C,B,A,E,C,D,B,A,E,B,D,C,E,A,D,A,E,C,B,B,C,A,E,D,C,D,B,A,E,B,D,A,C,E,C,E,A,B,D,B,C,A,E,D,A,D,E,C,B,D,B,E,A,C,B,E,C,A,D,B,D,C,E,A,D,A,E,C,B,E,A,D,B,C,D,B,A,C,E,D,E,A,C,B,B,D,C,A,E,C,E,B,A,D,A,D,C,B,E,A,D,C,E,B,',NULL,'0');
INSERT INTO `nilai` VALUES ('10','1','1','21','PTS','2023-03-29 08:56:02','2023-03-29 08:56:02','2023-03-29 09:19:05','8','17',NULL,'32','32',NULL,'192.168.100.166','0','a:35:{i:36;s:1:\"E\";i:37;s:1:\"A\";i:38;s:1:\"X\";i:39;s:1:\"X\";i:40;s:1:\"D\";i:41;s:1:\"X\";i:42;s:1:\"B\";i:43;s:1:\"D\";i:44;s:1:\"A\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"D\";i:49;s:1:\"E\";i:50;s:1:\"X\";i:51;s:1:\"X\";i:52;s:1:\"X\";i:53;s:1:\"X\";i:54;s:1:\"C\";i:55;s:1:\"C\";i:56;s:1:\"X\";i:57;s:1:\"X\";i:58;s:1:\"B\";i:59;s:1:\"E\";i:60;s:1:\"X\";i:61;s:1:\"D\";i:62;s:1:\"B\";i:63;s:1:\"A\";i:64;s:1:\"E\";i:65;s:1:\"A\";i:66;s:1:\"A\";i:67;s:1:\"E\";i:68;s:1:\"D\";i:69;s:1:\"B\";i:70;s:1:\"C\";}','a:0:{}',NULL,'0','40,48,49,69,44,59,62,68,63,45,43,42,61,55,54,67,36,58,66,64,65,37,70,47,46,','D,A,C,B,E,D,E,A,C,B,B,C,A,E,D,C,D,E,B,A,E,C,A,B,D,E,D,B,C,A,E,D,B,A,C,C,B,D,E,A,A,B,D,C,E,B,E,C,D,A,E,B,C,A,D,E,C,D,A,B,B,E,A,D,C,D,E,A,C,B,B,D,E,A,C,A,E,B,D,C,B,D,E,A,C,E,C,A,D,B,E,A,D,C,B,B,E,A,C,D,A,B,E,D,C,A,D,B,E,C,E,A,C,B,D,A,E,B,D,C,B,E,D,A,C,',NULL,'0');
INSERT INTO `nilai` VALUES ('11','1','1','1','PTS','2023-03-29 08:56:04','2023-03-29 08:56:04','2023-03-29 09:19:04','9','16',NULL,'36','36',NULL,'192.168.100.177','0','a:35:{i:36;s:1:\"C\";i:37;s:1:\"D\";i:38;s:1:\"C\";i:39;s:1:\"X\";i:40;s:1:\"C\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"C\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"E\";i:48;s:1:\"D\";i:49;s:1:\"E\";i:50;s:1:\"D\";i:51;s:1:\"C\";i:52;s:1:\"E\";i:53;s:1:\"A\";i:54;s:1:\"X\";i:55;s:1:\"D\";i:56;s:1:\"E\";i:57;s:1:\"B\";i:58;s:1:\"X\";i:59;s:1:\"X\";i:60;s:1:\"X\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"A\";i:64;s:1:\"E\";i:65;s:1:\"C\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"B\";i:70;s:1:\"C\";}','a:0:{}',NULL,'0','40,49,48,41,42,43,44,45,46,55,36,37,38,53,63,64,65,57,70,47,50,51,52,69,56,','B,A,C,E,D,A,C,E,D,B,C,B,D,E,A,A,C,D,E,B,B,C,E,A,D,C,E,D,B,A,B,E,D,A,C,A,B,E,D,C,C,B,A,E,D,C,E,A,D,B,D,B,A,E,C,E,C,D,B,A,D,B,E,C,A,D,A,C,B,E,B,E,C,D,A,E,C,D,B,A,B,D,C,A,E,D,C,B,A,E,C,A,E,B,D,B,E,D,A,C,A,E,B,D,C,D,A,E,B,C,A,B,C,E,D,B,C,E,D,A,B,A,C,E,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('12','1','1','8','PTS','2023-03-29 08:56:05','2023-03-29 08:56:05','2023-03-29 09:25:13','11','14',NULL,'44','44',NULL,'192.168.100.172','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"E\";i:40;s:1:\"X\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"X\";i:44;s:1:\"X\";i:45;s:1:\"X\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"X\";i:49;s:1:\"X\";i:50;s:1:\"C\";i:51;s:1:\"D\";i:52;s:1:\"B\";i:53;s:1:\"C\";i:54;s:1:\"D\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"D\";i:61;s:1:\"D\";i:62;s:1:\"C\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"D\";i:67;s:1:\"E\";i:68;s:1:\"E\";i:69;s:1:\"X\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','55,39,54,66,67,68,50,51,52,47,36,37,38,70,53,46,57,62,58,59,60,61,56,41,42,','B,C,E,A,D,B,C,A,D,E,B,A,D,E,C,A,D,B,E,C,D,B,A,C,E,C,A,D,B,E,A,E,B,C,D,B,A,E,C,D,B,A,D,E,C,A,B,E,C,D,A,E,D,B,C,B,E,D,A,C,D,A,C,B,E,A,E,C,D,B,D,C,A,E,B,A,B,C,D,E,D,E,C,B,A,A,D,C,B,E,B,E,A,D,C,E,B,C,D,A,B,C,E,A,D,B,A,C,E,D,E,B,C,D,A,A,E,C,B,D,B,E,A,C,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('13','1','1','10','PTS','2023-03-29 08:56:11','2023-03-29 08:56:11','2023-03-29 09:21:01','5','20',NULL,'20','20',NULL,'192.168.100.167','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"X\";i:38;s:1:\"A\";i:39;s:1:\"E\";i:40;s:1:\"E\";i:41;s:1:\"X\";i:42;s:1:\"A\";i:43;s:1:\"A\";i:44;s:1:\"A\";i:45;s:1:\"C\";i:46;s:1:\"X\";i:47;s:1:\"X\";i:48;s:1:\"C\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"E\";i:52;s:1:\"E\";i:53;s:1:\"C\";i:54;s:1:\"A\";i:55;s:1:\"B\";i:56;s:1:\"X\";i:57;s:1:\"D\";i:58;s:1:\"X\";i:59;s:1:\"D\";i:60;s:1:\"C\";i:61;s:1:\"C\";i:62;s:1:\"B\";i:63;s:1:\"X\";i:64;s:1:\"E\";i:65;s:1:\"A\";i:66;s:1:\"A\";i:67;s:1:\"X\";i:68;s:1:\"A\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','44,50,52,53,62,40,43,54,60,66,38,45,48,49,51,59,65,68,36,39,42,55,57,61,64,','B,E,A,C,D,E,A,C,D,B,B,D,E,C,A,D,E,B,A,C,E,C,D,B,A,C,A,B,E,D,A,D,B,E,C,B,A,E,D,C,B,A,D,E,C,D,C,B,E,A,C,A,E,D,B,A,B,D,C,E,E,C,D,B,A,D,A,B,E,C,E,B,D,A,C,E,C,A,D,B,C,E,A,D,B,C,B,D,A,E,A,B,D,C,E,C,B,A,D,E,A,E,C,B,D,D,C,B,A,E,A,D,C,E,B,C,D,A,B,E,E,B,C,D,A,',NULL,'0');
INSERT INTO `nilai` VALUES ('14','1','1','12','PTS','2023-03-29 08:56:13','2023-03-29 08:56:13','2023-03-29 09:20:30','9','16',NULL,'36','36',NULL,'192.168.100.170','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"D\";i:38;s:1:\"B\";i:39;s:1:\"B\";i:40;s:1:\"C\";i:41;s:1:\"D\";i:42;s:1:\"D\";i:43;s:1:\"C\";i:44;s:1:\"E\";i:45;s:1:\"B\";i:46;s:1:\"X\";i:47;s:1:\"A\";i:48;s:1:\"C\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"X\";i:52;s:1:\"X\";i:53;s:1:\"X\";i:54;s:1:\"X\";i:55;s:1:\"X\";i:56;s:1:\"X\";i:57;s:1:\"B\";i:58;s:1:\"D\";i:59;s:1:\"B\";i:60;s:1:\"E\";i:61;s:1:\"C\";i:62;s:1:\"C\";i:63;s:1:\"E\";i:64;s:1:\"A\";i:65;s:1:\"C\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"B\";i:70;s:1:\"A\";}','a:0:{}',NULL,'0','40,48,49,41,42,43,44,45,58,59,60,61,69,39,57,62,63,64,65,36,37,38,47,70,50,','E,B,D,C,A,D,E,C,B,A,C,A,B,D,E,A,C,B,D,E,E,B,C,D,A,C,E,A,B,D,C,B,A,D,E,C,D,B,A,E,E,C,B,D,A,C,B,A,E,D,A,E,B,D,C,A,B,D,C,E,D,B,C,A,E,C,A,B,E,D,C,B,D,A,E,A,D,E,C,B,A,B,C,E,D,C,B,D,A,E,B,E,A,C,D,B,D,E,A,C,A,C,B,E,D,B,A,D,E,C,C,A,B,E,D,C,E,D,A,B,E,C,D,B,A,',NULL,'0');
INSERT INTO `nilai` VALUES ('15','1','1','7','PTS','2023-03-29 08:56:26','2023-03-29 08:56:26','2023-03-29 09:16:50','7','18',NULL,'28','28',NULL,'192.168.100.164','0','a:35:{i:36;s:1:\"X\";i:37;s:1:\"X\";i:38;s:1:\"X\";i:39;s:1:\"X\";i:40;s:1:\"X\";i:41;s:1:\"X\";i:42;s:1:\"X\";i:43;s:1:\"X\";i:44;s:1:\"X\";i:45;s:1:\"X\";i:46;s:1:\"B\";i:47;s:1:\"C\";i:48;s:1:\"D\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"C\";i:52;s:1:\"A\";i:53;s:1:\"C\";i:54;s:1:\"A\";i:55;s:1:\"B\";i:56;s:1:\"A\";i:57;s:1:\"D\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"B\";i:61;s:1:\"D\";i:62;s:1:\"C\";i:63;s:1:\"C\";i:64;s:1:\"B\";i:65;s:1:\"D\";i:66;s:1:\"E\";i:67;s:1:\"A\";i:68;s:1:\"E\";i:69;s:1:\"E\";i:70;s:1:\"C\";}','a:0:{}',NULL,'0','70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,','E,C,B,A,D,E,A,B,D,C,D,A,B,E,C,E,A,D,C,B,B,D,E,C,A,D,C,A,E,B,D,A,B,C,E,D,A,B,C,E,D,A,B,C,E,A,D,E,C,B,E,D,C,A,B,B,D,A,E,C,E,D,C,A,B,D,C,B,A,E,B,C,D,A,E,A,E,C,B,D,C,B,E,D,A,B,A,E,D,C,E,A,D,C,B,B,C,E,D,A,B,D,E,A,C,D,C,A,B,E,E,D,B,A,C,B,D,C,A,E,A,C,B,E,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('16','1','1','3','PTS','2023-03-29 08:56:26','2023-03-29 08:56:26','2023-03-29 09:18:33','9','16',NULL,'36','36',NULL,'192.168.100.163','0','a:35:{i:36;s:1:\"C\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"X\";i:40;s:1:\"E\";i:41;s:1:\"A\";i:42;s:1:\"E\";i:43;s:1:\"E\";i:44;s:1:\"C\";i:45;s:1:\"C\";i:46;s:1:\"A\";i:47;s:1:\"X\";i:48;s:1:\"B\";i:49;s:1:\"E\";i:50;s:1:\"X\";i:51;s:1:\"X\";i:52;s:1:\"X\";i:53;s:1:\"E\";i:54;s:1:\"X\";i:55;s:1:\"X\";i:56;s:1:\"B\";i:57;s:1:\"B\";i:58;s:1:\"B\";i:59;s:1:\"D\";i:60;s:1:\"D\";i:61;s:1:\"B\";i:62;s:1:\"D\";i:63;s:1:\"C\";i:64;s:1:\"C\";i:65;s:1:\"B\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"D\";i:70;s:1:\"B\";}','a:0:{}',NULL,'0','40,49,48,69,63,64,65,41,42,43,44,45,56,58,59,60,61,62,57,46,53,70,36,37,38,','E,D,B,A,C,A,D,B,C,E,B,A,C,E,D,A,D,C,B,E,C,A,B,D,E,C,B,A,E,D,B,E,D,A,C,A,C,E,B,D,A,C,D,B,E,E,A,B,C,D,B,C,E,A,D,C,D,E,B,A,B,C,D,A,E,B,E,A,C,D,E,A,C,D,B,D,B,C,A,E,B,E,D,C,A,D,B,E,A,C,B,C,A,D,E,E,D,C,B,A,E,C,B,A,D,D,B,A,E,C,A,E,D,B,C,B,A,E,C,D,B,A,C,E,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('17','1','1','20','PTS','2023-03-29 08:56:28','2023-03-29 08:56:28','2023-03-29 09:20:22','9','16',NULL,'36','36',NULL,'192.168.100.171','0','a:35:{i:36;s:1:\"D\";i:37;s:1:\"A\";i:38;s:1:\"D\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"B\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"X\";i:49;s:1:\"X\";i:50;s:1:\"C\";i:51;s:1:\"E\";i:52;s:1:\"E\";i:53;s:1:\"C\";i:54;s:1:\"A\";i:55;s:1:\"D\";i:56;s:1:\"A\";i:57;s:1:\"B\";i:58;s:1:\"D\";i:59;s:1:\"D\";i:60;s:1:\"E\";i:61;s:1:\"D\";i:62;s:1:\"B\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','36,37,38,39,40,41,42,43,44,45,46,47,50,51,52,53,54,55,56,57,58,59,60,61,62,','A,B,E,C,D,C,A,E,B,D,C,E,D,A,B,E,B,D,C,A,D,B,E,C,A,A,C,B,D,E,C,A,E,D,B,A,B,D,C,E,E,B,A,D,C,E,A,C,D,B,D,C,E,B,A,B,E,C,A,D,D,A,B,C,E,D,C,A,B,E,C,D,A,E,B,A,C,D,B,E,D,C,E,A,B,A,C,B,E,D,C,A,B,E,D,D,E,C,B,A,E,C,D,A,B,B,E,C,D,A,B,A,E,D,C,C,A,E,D,B,E,D,C,A,B,',NULL,'0');
INSERT INTO `nilai` VALUES ('18','1','1','5','PTS','2023-03-29 09:00:20','2023-03-29 09:00:20','2023-03-29 09:23:49','13','12',NULL,'52','52',NULL,'192.168.100.175','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"A\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"A\";i:47;s:1:\"A\";i:48;s:1:\"E\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"D\";i:52;s:1:\"D\";i:53;s:1:\"C\";i:54;s:1:\"D\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"D\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','49,48,36,37,38,39,40,41,42,43,44,45,46,47,50,51,52,53,54,55,56,57,58,59,60,','A,D,C,E,B,E,B,C,A,D,E,B,C,D,A,C,E,D,B,A,D,E,A,B,C,E,D,B,A,C,C,D,E,A,B,A,D,C,E,B,D,B,E,C,A,B,A,D,E,C,D,A,E,C,B,C,B,A,E,D,A,B,E,C,D,A,C,B,D,E,B,D,C,A,E,C,E,A,D,B,C,E,B,A,D,B,A,E,C,D,E,C,D,B,A,E,D,B,A,C,C,E,A,D,B,E,D,C,B,A,D,B,C,E,A,A,E,C,B,D,B,E,C,A,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('19','1','1','23','PTS','2023-03-29 09:00:36','2023-03-29 09:00:36','2023-03-29 09:24:29','14','11',NULL,'56','56',NULL,'192.168.100.165','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"D\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"C\";i:42;s:1:\"D\";i:43;s:1:\"A\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"C\";i:49;s:1:\"C\";i:50;s:1:\"C\";i:51;s:1:\"D\";i:52;s:1:\"E\";i:53;s:1:\"C\";i:54;s:1:\"D\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"D\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"D\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,','B,E,D,C,A,B,E,A,D,C,D,C,A,B,E,C,E,A,D,B,A,E,C,B,D,D,B,C,A,E,E,B,D,A,C,E,B,A,D,C,D,B,C,E,A,B,A,C,D,E,C,D,B,E,A,C,E,D,A,B,B,A,E,D,C,D,A,E,C,B,B,D,E,A,C,E,B,C,D,A,B,E,A,C,D,A,C,E,D,B,E,D,B,C,A,B,A,E,C,D,D,B,C,A,E,C,A,E,B,D,B,D,E,A,C,D,B,E,C,A,A,E,B,D,C,',NULL,'0');
INSERT INTO `nilai` VALUES ('20','1','1','14','PTS','2023-03-29 09:02:21','2023-03-29 09:02:21','2023-03-29 09:19:18','4','21',NULL,'16','16',NULL,'192.168.100.159','0','a:35:{i:36;s:1:\"D\";i:37;s:1:\"D\";i:38;s:1:\"B\";i:39;s:1:\"E\";i:40;s:1:\"E\";i:41;s:1:\"D\";i:42;s:1:\"C\";i:43;s:1:\"A\";i:44;s:1:\"A\";i:45;s:1:\"A\";i:46;s:1:\"B\";i:47;s:1:\"A\";i:48;s:1:\"B\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"C\";i:52;s:1:\"C\";i:53;s:1:\"C\";i:54;s:1:\"D\";i:55;s:1:\"C\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"D\";i:59;s:1:\"D\";i:60;s:1:\"C\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,','D,C,E,B,A,A,B,D,E,C,E,B,A,C,D,B,E,C,D,A,E,B,C,A,D,D,A,B,C,E,A,C,B,D,E,C,B,D,A,E,B,C,E,D,A,B,A,E,C,D,D,C,A,E,B,A,E,C,B,D,A,D,B,C,E,A,D,E,C,B,E,C,D,A,B,C,A,B,D,E,C,B,D,A,E,A,C,D,B,E,C,E,D,A,B,B,C,D,A,E,E,D,C,A,B,C,B,A,E,D,D,A,E,B,C,A,D,B,C,E,B,C,D,E,A,',NULL,'0');
INSERT INTO `nilai` VALUES ('21','1','1','13','PTS','2023-03-29 09:03:50','2023-03-29 09:03:50','2023-03-29 09:24:52','13','12',NULL,'52','52',NULL,'192.168.100.173','0','a:35:{i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"E\";i:40;s:1:\"D\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"B\";i:47;s:1:\"C\";i:48;s:1:\"B\";i:49;s:1:\"E\";i:50;s:1:\"C\";i:51;s:1:\"C\";i:52;s:1:\"C\";i:53;s:1:\"C\";i:54;s:1:\"B\";i:55;s:1:\"B\";i:56;s:1:\"A\";i:57;s:1:\"E\";i:58;s:1:\"A\";i:59;s:1:\"C\";i:60;s:1:\"D\";i:61;s:1:\"X\";i:62;s:1:\"X\";i:63;s:1:\"X\";i:64;s:1:\"X\";i:65;s:1:\"X\";i:66;s:1:\"X\";i:67;s:1:\"X\";i:68;s:1:\"X\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,','D,B,C,A,E,C,D,A,E,B,B,D,E,A,C,C,A,E,B,D,B,A,D,C,E,D,A,B,E,C,E,C,D,B,A,C,E,D,A,B,A,C,E,D,B,E,B,A,D,C,A,C,D,B,E,C,E,D,A,B,B,D,C,E,A,B,D,A,E,C,E,D,B,C,A,D,E,B,C,A,D,B,A,C,E,A,B,C,D,E,D,E,C,A,B,E,B,A,C,D,B,E,A,D,C,E,C,A,B,D,E,A,C,D,B,E,D,A,B,C,D,B,A,C,E,',NULL,'0');
INSERT INTO `nilai` VALUES ('23','1','1','6','PTS','2023-03-29 09:05:52','2023-03-29 09:05:52','2023-03-29 09:24:29','3','22',NULL,'12','12',NULL,'192.168.100.160','0','a:35:{i:36;s:1:\"A\";i:37;s:1:\"D\";i:38;s:1:\"A\";i:39;s:1:\"E\";i:40;s:1:\"X\";i:41;s:1:\"C\";i:42;s:1:\"C\";i:43;s:1:\"C\";i:44;s:1:\"A\";i:45;s:1:\"D\";i:46;s:1:\"B\";i:47;s:1:\"E\";i:48;s:1:\"X\";i:49;s:1:\"X\";i:50;s:1:\"D\";i:51;s:1:\"C\";i:52;s:1:\"B\";i:53;s:1:\"X\";i:54;s:1:\"D\";i:55;s:1:\"X\";i:56;s:1:\"X\";i:57;s:1:\"C\";i:58;s:1:\"X\";i:59;s:1:\"X\";i:60;s:1:\"X\";i:61;s:1:\"X\";i:62;s:1:\"A\";i:63;s:1:\"D\";i:64;s:1:\"E\";i:65;s:1:\"E\";i:66;s:1:\"A\";i:67;s:1:\"A\";i:68;s:1:\"B\";i:69;s:1:\"E\";i:70;s:1:\"C\";}','a:0:{}',NULL,'0','41,42,43,44,45,39,70,47,46,62,63,64,65,50,51,52,69,66,67,68,54,36,37,38,57,','B,C,A,E,D,E,B,C,D,A,C,A,D,B,E,C,B,E,D,A,C,A,E,D,B,A,E,B,C,D,B,E,C,D,A,C,E,D,B,A,A,D,B,E,C,C,A,D,B,E,C,B,A,D,E,C,D,B,A,E,E,A,C,B,D,B,C,D,E,A,A,E,C,B,D,D,A,E,C,B,E,C,B,D,A,B,A,D,E,C,C,B,A,D,E,B,D,A,E,C,C,E,A,B,D,C,B,D,A,E,B,E,C,D,A,E,D,C,A,B,E,B,D,A,C,',NULL,'0');
INSERT INTO `nilai` VALUES ('24','1','1','19','PTS','2023-03-29 09:08:42','2023-03-29 09:08:42','2023-03-29 09:18:04','7','18',NULL,'28','28',NULL,'192.168.100.161','0','a:35:{i:36;s:1:\"C\";i:37;s:1:\"A\";i:38;s:1:\"C\";i:39;s:1:\"C\";i:40;s:1:\"E\";i:41;s:1:\"C\";i:42;s:1:\"A\";i:43;s:1:\"D\";i:44;s:1:\"E\";i:45;s:1:\"C\";i:46;s:1:\"X\";i:47;s:1:\"X\";i:48;s:1:\"D\";i:49;s:1:\"C\";i:50;s:1:\"C\";i:51;s:1:\"E\";i:52;s:1:\"C\";i:53;s:1:\"C\";i:54;s:1:\"B\";i:55;s:1:\"B\";i:56;s:1:\"X\";i:57;s:1:\"C\";i:58;s:1:\"X\";i:59;s:1:\"B\";i:60;s:1:\"C\";i:61;s:1:\"C\";i:62;s:1:\"C\";i:63;s:1:\"X\";i:64;s:1:\"A\";i:65;s:1:\"E\";i:66;s:1:\"C\";i:67;s:1:\"X\";i:68;s:1:\"D\";i:69;s:1:\"X\";i:70;s:1:\"X\";}','a:0:{}',NULL,'0','44,50,52,53,62,40,43,54,60,66,38,45,48,49,51,59,65,68,36,39,42,55,57,61,64,','D,A,C,B,E,E,D,A,B,C,D,C,E,A,B,A,D,B,E,C,A,C,D,E,B,D,C,A,E,B,E,C,A,D,B,A,B,E,D,C,D,C,E,A,B,A,E,C,D,B,B,D,C,E,A,A,C,B,D,E,C,E,B,A,D,B,D,A,C,E,A,C,D,E,B,A,D,E,C,B,D,B,A,E,C,A,E,B,D,C,E,A,B,D,C,C,A,D,B,E,D,A,C,E,B,A,D,B,C,E,B,D,E,C,A,B,D,C,E,A,B,D,E,C,A,',NULL,'0');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `pengawas` VALUES   ('1','-','Administrator','','admin','$2y$10$/Bnu7lxNI34XlqIugwP0Zef/lsnxu7Kn.lzw61SZMQwfk9Y8hzeRu','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('273','-','PAJAR SIDIK NURFAKHRI',NULL,'pajar','$2y$10$dWbPDis7J9Phe.ATXkt2L..kwq9h5W2Q5Bubv1KE86DWVZ2F3afgi','pengawas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ONLINE');
INSERT INTO `pengawas` VALUES ('296','-','Andre Pratama, S.Kom.','XITR3','andre','$2y$10$iz8epMKS5li6CSpPWxXHaOctF/oipgZJMniVyULZ6nRDWcE0JKgnC','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
INSERT INTO `pk` VALUES   ('TKJ','TKJ',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `ruang` VALUES   ('XITR3','XITR3');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
INSERT INTO `sesi` VALUES   ('1','1');

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
INSERT INTO `setting` VALUES   ('1','CBT Application','10261412','SMK Tritech Informatika','SMK','M. Herizal Sinambela, S.Pd.I','-','Jl. Bhayangkara No.484, Indra Kasih<br />\r\n','Medan Tembung  ','Medan','-','-','smktritechinformatika.sch.id','smktritechinformatika@gmail.com','dist/img/logo97.png','','KARTU PESERTA CBT\naaaaaa','Penilaian Tengah Semester','2.9','http://localhost/candycbt','Asia/Jakarta','pusat','SR01','http://pts.smkhsagung.sch.id/','HO3FIrBYcFUMp0','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.9.3','dist/img/bc.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
INSERT INTO `siswa` VALUES   ('1','XITR3','TKJ','-','1','Ayu','XI','XITR3','1','hs001','ps001','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('2','XITR3','TKJ','-','2','Berkat','XI','XITR3','1','hs002','ps002','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('3','XITR3','TKJ','-','3','Elgin','XI','XITR3','1','hs003','ps003','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('4','XITR3','TKJ','-','4','Fikri','XI','XITR3','1','hs004','ps004','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('5','XITR3','TKJ','-','5','Firdan','XI','XITR3','1','hs005','ps005','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('6','XITR3','TKJ','-','6','Habli','XI','XITR3','1','hs006','ps006','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('7','XITR3','TKJ','-','7','Adrian','XI','XITR3','1','hs007','ps007','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('8','XITR3','TKJ','-','8','Dimas','XI','XITR3','1','hs008','ps008','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('9','XITR3','TKJ','-','9','Almaududy','XI','XITR3','1','hs009','ps009','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('10','XITR3','TKJ','-','10','Reiffal','XI','XITR3','1','hs010','ps010','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('11','XITR3','TKJ','-','11','Arya','XI','XITR3','1','hs011','ps011','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('12','XITR3','TKJ','-','12','Raihan','XI','XITR3','1','hs012','ps012','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('13','XITR3','TKJ','-','13','Rio','XI','XITR3','1','hs013','ps013','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('14','XITR3','TKJ','-','14','Nurul','XI','XITR3','1','hs014','ps014','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('15','XITR3','TKJ','-','15','Rafli Aditya','XI','XITR3','1','hs015','ps015','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('16','XITR3','TKJ','-','16','Rafli Aulia','XI','XITR3','1','hs016','ps016','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('17','XITR3','TKJ','-','17','Rafli Alfarizi','XI','XITR3','1','hs017','ps017','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','1');
INSERT INTO `siswa` VALUES ('18','XITR3','TKJ','-','18','Regza','XI','XITR3','1','hs018','ps018','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('19','XITR3','TKJ','-','19','Restu','XI','XITR3','1','hs019','ps019','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('20','XITR3','TKJ','-','20','Halfi','XI','XITR3','1','hs020','ps020','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','1');
INSERT INTO `siswa` VALUES ('21','XITR3','TKJ','-','21','Sheyla','XI','XITR3','1','hs021','ps021','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('22','XITR3','TKJ','-','22','Yazid','XI','XITR3','1','hs022','ps022','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('23','XITR3','TKJ','-','23','Zaid','XI','XITR3','1','hs023','ps023','','SR01',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO `soal` VALUES   ('36','1','1','Kumpulan dari fakta atau simbol merupakan pengertian...','1','Komunikasi','Data','Informasi','Komunikasi Data','Himpunan','B','','','','','','','');
INSERT INTO `soal` VALUES ('37','1','2','Proses interaksi antar seseorang/beberapa orang dengan kelompok atau lingkungan masyarakat menggunakan informasi agar saling terhubung satu sama lain, pengertian dari...','1','Komunikasi','Data','Informasi','Komunikasi Data','Fakta','A','','','','','','','');
INSERT INTO `soal` VALUES ('38','1','3','Sekumpulan data yang sudah diolah menjadi data yang lebih valid, pengertian…','1','Komunikasi','Data','Informasi','Komunikasi Data','Fakta','C','','','','','','','');
INSERT INTO `soal` VALUES ('39','1','4','Salah satu jalur yang digunakan untuk berkomunikasi data adalah...','1','Bus','Satelit','Bandwitdh','Throughput','Topologi','B','','','','','','','');
INSERT INTO `soal` VALUES ('40','1','5','<p>Gambar berikut menunjukkan bagan dari transmisi komunikasi...</p>','1','<p>Suara</p>','<p>Audio</p>','<p>Audio-Video</p>','<p>Data</p>','<p>Signal/Gelombang</p>','D','','1_5_2.png','','','','','');
INSERT INTO `soal` VALUES ('41','1','6','Transmitter adalah …','1','Alat untuk memindahkan dan menyaring informasi','?Cara untuk menghubungkan Source dan Destination','Alat penerima sinyal dari Transmission System','Asal/pengirim data','Tujuan pengiriman data','A','','','','','','','');
INSERT INTO `soal` VALUES ('42','1','7','Apa yang dimaksud dengan Transmission System?','1','Alat untuk memindahkan dan menyaring informasi','?Cara untuk menghubungkan Source dan Destination','Alat penerima sinyal dari Transmission System','Asal/pengirim data','Tujuan pengiriman data','B','','','','','','','');
INSERT INTO `soal` VALUES ('43','1','8','Apa yang dimaksud dengan Source?','1','Alat untuk memindahkan dan menyaring informasi','?Cara untuk menghubungkan Source dan Destination','Alat penerima sinyal dari Transmission System','Asal/pengirim data','Tujuan pengiriman data','D','','','','','','','');
INSERT INTO `soal` VALUES ('44','1','9','?Apa yang dimaksud dengan Destination?','1','Alat untuk memindahkan dan menyaring informasi','?Cara untuk menghubungkan Source dan Destination','Alat penerima sinyal dari Transmission System','Asal/pengirim data','Tujuan pengiriman data','E','','','','','','','');
INSERT INTO `soal` VALUES ('45','1','10','Apa yang dimaksud dengan Receiver?','1','Alat untuk memindahkan dan menyaring informasi','?Cara untuk menghubungkan Source dan Destination','Alat penerima sinyal dari Transmission System','Asal/pengirim data','Tujuan pengiriman data','C','','','','','','','');
INSERT INTO `soal` VALUES ('46','1','11','Radio siaran termasuk jenis komunikasi...','1','Suara','Audio','Audio-Video','Data','Signal/Gelombang','A','','','','','','','');
INSERT INTO `soal` VALUES ('47','1','12','Proses pengiriman dan penerimaan data dari dua perangkat (device) atau lebih yang terhubung dalam satu jaringan, merupakan pengertian dari…','1','Komunikasi Data','Komunikasi Suara','Komunikasi Audio-Video','Komunikasi Radio','Telepon','A','','','','','','','');
INSERT INTO `soal` VALUES ('48','1','13','<p>gambar tersebut menunjukkan komunikasi...</p>','1','<p>Suara</p>','<p>Radio Panggil</p>','<p>Radio Siaran</p>','<p>Telepon</p>','<p>Radio Amatir</p>','C','1_13_1.png','','','','','','');
INSERT INTO `soal` VALUES ('49','1','14','<p>gambar tersebut menunjukkan komunikasi...</p>','1','<p>Suara</p>','<p>Audio</p>','<p>Audio-Video</p>','<p>Data</p>','<p>Signal/Gelombang</p>','C','1_14_1.png','','','','','','');
INSERT INTO `soal` VALUES ('50','1','15','Tugas dari DCE (Data Communication Equipment) adalah...','1','Melakukan konversi sandi ? ? ? ? ? ? ? ? ?','Melakukan pengujian kesalahan ? ? ??','Mengatur masuk-keluarnya informasi/data','Mengatur error recovery','Menyalurkan data antar lokasi','E','','','','','','','');
INSERT INTO `soal` VALUES ('51','1','16','Tugas dari DTE (Data Terminal Equipment) adalah...','1','Melakukan konversi sandi ? ? ? ? ? ? ? ? ?','Melakukan pengujian kesalahan ? ? ??','Mengatur masuk-keluarnya informasi/data','Mengatur error recovery','Menyalurkan data antar lokasi','C','','','','','','','');
INSERT INTO `soal` VALUES ('52','1','17','Tugas dari DCCU (Data Communication Control Unit), kecuali...','1','Melakukan konversi sandi ? ? ? ? ? ? ? ? ?','Melakukan pengujian kesalahan ? ? ??','Melakukan sinkronisasi karakter','Mengatur error recovery','Menyalurkan data antar lokasi','E','','','','','','','');
INSERT INTO `soal` VALUES ('53','1','18','Yang tidak termasuk dalam sistem transmisi adalah…','1','Simplex','Full-Duplex','Satu Arah','Half-Duplex','Duplex','E','','','','','','','');
INSERT INTO `soal` VALUES ('54','1','19','Contoh perangkat yang menggunakan sistem transmisi Full-duplex...','1','Pager','Radio','HT','Telepon','Kamera','D','','','','','','','');
INSERT INTO `soal` VALUES ('55','1','20','Berikut media pengiriman data, kecuali...','1','Twisted Pair','BNC','Fiber Optic','Wireless','Coaxial','B','','','','','','','');
INSERT INTO `soal` VALUES ('56','1','21','Yang termasuk teknologi jaringan WAN, kecuali...','1','Tidak ada ATM','Packet Switching','Frame Relay','Asyncronous Transfer Mode','Circuit Switching','A','','','','','','','');
INSERT INTO `soal` VALUES ('57','1','22','Yang tidak termasuk dalam fungsi protokol...','1','Connection control ? ? ?','Input/Output control???','Encaptulation','Circuit switching','Error control','B','','','','','','','');
INSERT INTO `soal` VALUES ('58','1','23','Luas atau lebar cakupan frekuensi yang digunakan oleh sinyal dalam medium transmisi adalah...','1','Bandwidth','Troughput','Bandwidth pada hosting','Bandwitdh pada jaringan','Bus','A','','','','','','','');
INSERT INTO `soal` VALUES ('59','1','24','?Bandwidth yang ditentukan seberapa banyak kita mengupload atau mendownload adalah...','1','Bandwidth','Troughput','Bandwidth pada hosting','Bandwitdh pada jaringan','Bus','C','','','','','','','');
INSERT INTO `soal` VALUES ('60','1','25','Transfer rate/jumlah data yang dapat dibawa dari sebuah titik ke titik lain dalam jangka waktu tertentu (pada umumnya dalam detik) adalah...','1','Bandwidth','Troughput','Bandwidth pada hosting','Bandwitdh pada jaringan','Bus','D','','','','','','','');
INSERT INTO `soal` VALUES ('61','1','26','Bandwidth yang sebenarnya (aktual) pada suatu waktu tertentu dan pada kondisi dan jaringan\ninternet tertentu adalah…','1','Bandwidth','Troughput','Bandwidth pada hosting','Bandwitdh pada jaringan','Bus','B','','','','','','','');
INSERT INTO `soal` VALUES ('62','1','27','?Dibawah ini media komunikasi dan informasi, kecuali...','1','E-mail','WWW','FTP','Chat','Sharing Device','E','','','','','','','');
INSERT INTO `soal` VALUES ('63','1','28','?Pengertian standar komunikasi organisasi...','1','Kebijakan Sebuah Organisasi dalam mengatur sistem dan pembangian komunikasi yang ada dalam ruang lingkup Organisasi','Himpunan kaidah yang mengatur proses komunikasi data','Standar protokol jaringan komunikasi yang dibuat oleh ARPA','?Paduan dari bagian-bagian yang satu sama lainnya saling bergantung','Protokol jaringan komunikasi data yang diterapkan oleh ISO (International Standards Organizations)','A','','','','','','','');
INSERT INTO `soal` VALUES ('64','1','29','Pengertian Protokol adalah...','1','Kebijakan Sebuah Organisasi dalam mengatur sistem dan pembangian komunikasi yang ada dalam ruang lingkup Organisasi','Himpunan kaidah yang mengatur proses komunikasi data','Standar protokol jaringan komunikasi yang dibuat oleh ARPA','?Paduan dari bagian-bagian yang satu sama lainnya saling bergantung','Protokol jaringan komunikasi data yang diterapkan oleh ISO (International Standards Organizations)','B','','','','','','','');
INSERT INTO `soal` VALUES ('65','1','30','Pengertian TCP/IP yaitu...','1','Kebijakan Sebuah Organisasi dalam mengatur sistem dan pembangian komunikasi yang ada dalam ruang lingkup Organisasi','Himpunan kaidah yang mengatur proses komunikasi data','Standar protokol jaringan komunikasi yang dibuat oleh ARPA','?Paduan dari bagian-bagian yang satu sama lainnya saling bergantung','Protokol jaringan komunikasi data yang diterapkan oleh ISO (International Standards Organizations)','C','','','','','','','');
INSERT INTO `soal` VALUES ('66','1','31','Media komunikasi internet untuk bertatap muka yang terpisah oleh jarak dan waktu ialah...','1','SMS','WAP','VoIP','Teleconference','Mailing List','D','','','','','','','');
INSERT INTO `soal` VALUES ('67','1','32','Fasilitas pengiriman pesan dari internet ke handphone, tidak untuk dua arah ialah...','1','SMS','WAP','VoIP','Teleconference','Mailing List','A','','','','','','','');
INSERT INTO `soal` VALUES ('68','1','33','?Komunikasi telepon atau suara melalui jaringan internet sehingga komunikasi SLJJ maupun SLI dapat dilakukan dengan biaya lokal. Pengertian dari...','1','SMS','WAP','VoIP','Teleconference','Mailing List','C','','','','','','','');
INSERT INTO `soal` VALUES ('69','1','34','?Apa keuntungan dari menggunakan layanan VoIP?','1','Biaya lebih mahal untuk sambungan jarak jauh','Memanfaatkan infrastruktur jaringan data yang sudah ada untuk suara','Sambungan (koneksi) yang lama','?Kualitas suara rendah karena gangguan jarak yang jauh','Membutuhkan perangkat tambahan','B','','','','','','','');
INSERT INTO `soal` VALUES ('70','1','35','proses memenuhi kebutuhan melalui aktivitas orang lain secara langsung','1','Layanan','Kebutuhan','Keinginan','Kepuasan','Tidak ada jawaban yang benar','A','','','','','','','');

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
INSERT INTO `token` VALUES   ('1','EWQCXO','2023-03-25 15:59:41','00:15:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
INSERT INTO `ujian` VALUES   ('1','MID_Genap_TLJ_XI','a:1:{i:0;s:3:\"TKJ\";}','1','1','PTS','MID_Genap_TLJ_XI','35','0','100','5','0','25','0','30','2023-03-29 08:55:00','2023-03-29 09:30:00','08:55:00',NULL,'XI','a:1:{i:0;s:5:\"XITR3\";}','1','1','0','1','1','70','1','','0','0','10','5');
