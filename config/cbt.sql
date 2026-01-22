
/*---------------------------------------------------------------
  SQL DB BACKUP 31.05.2023 07:59 
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
) ENGINE=InnoDB AUTO_INCREMENT=1074 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `file_pendukung` VALUES   ('384','14','14_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('385','35','mate1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('386','35','mate2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('387','35','mate3.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('388','35','mate4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('389','35','mate5.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('390','35','mate6.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('391','35','mate8.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('392','35','mate9.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('393','35','mate10.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('394','35','mate11.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('395','35','mate12.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('396','35','mate13.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('397','35','mate14.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('398','35','mate15.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('399','35','mate16.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('400','35','mate23.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('401','35','mate24.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('402','35','mate25.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('403','35','mate26.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('404','35','mate27.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('405','35','mate28.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('406','35','mate29.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('407','35','mate34.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('408','35','mate35.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('409','35','mate36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('410','35','mate37.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('411','35','mate1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('412','35','mate2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('413','35','mate3.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('414','35','mate4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('415','35','mate5.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('416','35','mate6.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('417','35','mate8.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('418','35','mate9.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('419','35','mate10.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('420','35','mate11.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('421','35','mate12.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('422','35','mate13.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('423','35','mate14.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('424','35','mate15.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('425','35','mate16.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('426','35','mate23.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('427','35','mate24.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('428','35','mate25.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('429','35','mate26.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('430','35','mate27.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('431','35','mate28.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('432','35','mate29.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('433','35','mate34.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('434','35','mate35.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('435','35','mate36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('436','35','mate37.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('437','35','mate1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('438','35','mate2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('439','35','mate3.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('440','35','mate4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('441','35','mate5.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('442','35','mate6.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('443','35','mate8.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('444','35','mate9.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('445','35','mate10.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('446','35','mate11.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('447','35','mate12.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('448','35','mate13.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('449','35','mate14.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('450','35','mate15.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('451','35','mate16.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('452','35','mate23.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('453','35','mate24.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('454','35','mate25.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('455','35','mate26.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('456','35','mate27.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('457','35','mate28.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('458','35','mate29.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('459','35','mate34.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('460','35','mate35.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('461','35','mate36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('462','35','mate37.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('493','38','mate1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('494','38','mate2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('495','38','mate3.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('496','38','mate4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('497','38','mate5.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('498','38','mate6.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('499','38','mate8.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('500','38','mate9.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('501','38','mate10.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('502','38','mate11.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('503','38','mate12.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('504','38','mate13.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('505','38','mate14.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('506','38','mate15.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('507','38','mate16.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('508','38','mate23.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('509','38','mate24.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('510','38','mate25.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('511','38','mate26.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('512','38','mate27.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('513','38','mate28.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('514','38','mate29.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('515','38','mate34.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('516','38','mate35.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('517','38','mate36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('518','38','mate37.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('519','37','37_36_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('520','37','soal36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('521','37','soal37.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('522','37','soal38.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('523','37','soal39.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('524','37','soal40.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('589','32','32_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('590','32','32_2_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('612','32','32_3_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('613','32','32_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('614','32','32_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('615','32','32_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('616','32','32_6_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('617','32','32_7_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('618','32','32_8_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('619','32','32_9_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('620','32','32_10_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('621','32','32_19_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('622','32','32_20_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('623','32','32_21_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('624','32','32_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('625','32','32_46_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('626','32','32_47_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('627','32','32_48_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('628','32','32_49_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('629','32','32_50_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('651','9','9_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('652','9','9_2_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('653','9','9_3_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('654','9','9_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('655','9','9_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('656','9','9_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('657','9','9_6_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('658','9','9_10_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('659','9','9_11_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('660','9','9_12_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('661','9','9_13_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('662','9','9_14_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('663','9','9_15_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('664','9','9_16_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('665','9','9_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('666','9','9_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('667','9','9_19_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('668','9','9_20_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('669','9','9_21_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('670','9','9_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('671','9','9_23_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('672','9','9_24_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('673','9','9_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('674','9','9_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('675','9','9_27_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('676','9','9_28_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('677','9','9_29_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('678','9','9_30_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('700','9','9_31_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('701','9','9_32_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('702','9','9_33_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('703','9','9_34_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('704','9','9_35_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('705','9','9_36_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('706','9','9_37_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('707','9','9_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('708','9','9_39_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('709','9','9_40_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('710','9','9_41_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('711','9','9_42_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('712','9','9_43_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('713','9','9_44_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('714','9','9_44_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('715','9','9_45_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('716','9','9_46_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('717','9','9_47_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('718','36','3a.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('719','36','3b.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('720','36','3c.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('721','36','3d.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('722','36','3e.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('723','36','gbr5.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('724','36','gbr6.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('725','36','gbr7.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('726','36','gbr8.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('727','36','gbr9.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('728','36','gbr10.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('729','36','gbr11.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('730','36','gbr12.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('731','36','gbr29.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('732','36','gbr30.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('733','36','gbr31.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('734','36','gbr32.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('735','36','gbr33.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('736','36','gbr34.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('737','36','gbr35.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('738','36','gbr36.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('739','11','11_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('740','11','11_2_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('741','11','11_3_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('742','11','11_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('743','11','11_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('744','11','11_6_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('745','11','11_10_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('746','11','11_11_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('747','11','11_12_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('748','11','11_13_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('749','11','11_14_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('750','11','11_15_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('751','11','11_16_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('752','11','11_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('753','11','11_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('754','11','11_19_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('755','11','11_20_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('756','11','11_21_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('757','11','11_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('758','11','11_23_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('759','11','11_24_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('760','11','11_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('761','11','11_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('762','11','11_27_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('763','11','11_28_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('764','11','11_29_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('765','11','11_30_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('766','11','11_31_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('767','11','11_32_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('768','11','11_33_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('769','11','11_34_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('770','11','11_34_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('771','11','11_35_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('772','11','11_36_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('773','11','11_37_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('774','11','11_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('775','11','11_39_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('776','11','11_40_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('777','11','11_41_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('778','11','11_42_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('779','11','11_43_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('780','11','11_44_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('781','11','11_45_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('782','11','11_46_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('783','11','11_47_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('825','10','10_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('826','10','10_2_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('827','10','10_3_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('828','10','10_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('829','10','10_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('830','10','10_6_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('831','10','10_10_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('832','10','10_11_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('833','10','10_12_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('834','10','10_13_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('835','10','10_14_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('836','10','10_15_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('837','10','10_16_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('838','10','10_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('839','10','10_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('840','10','10_19_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('841','10','10_20_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('842','10','10_21_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('843','10','10_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('844','10','10_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('845','10','10_23_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('846','10','10_24_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('847','10','10_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('848','10','10_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('849','10','10_27_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('850','10','10_28_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('851','10','10_29_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('852','10','10_30_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('853','10','10_31_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('854','10','10_32_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('855','10','10_33_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('856','10','10_34_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('857','10','10_35_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('858','10','10_36_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('859','10','10_37_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('860','10','10_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('861','10','10_39_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('862','10','10_40_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('863','10','10_41_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('864','10','10_41_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('865','10','10_42_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('871','10','10_43_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('872','10','10_44_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('873','10','10_45_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('874','10','10_46_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('875','10','10_47_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('876','12','12_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('877','12','12_2_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('878','12','12_3_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('879','12','12_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('880','12','12_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('881','12','12_6_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('882','12','12_10_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('883','12','12_11_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('884','12','12_12_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('885','12','12_13_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('886','12','12_14_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('887','12','12_15_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('888','12','12_16_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('889','12','12_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('890','12','12_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('891','12','12_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('892','12','12_19_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('893','12','12_20_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('894','12','12_21_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('895','21','4647.JPG',NULL);
INSERT INTO `file_pendukung` VALUES ('896','21','4647.JPG',NULL);
INSERT INTO `file_pendukung` VALUES ('897','21','484950.JPG',NULL);
INSERT INTO `file_pendukung` VALUES ('898','21','484950.JPG',NULL);
INSERT INTO `file_pendukung` VALUES ('899','21','484950.JPG',NULL);
INSERT INTO `file_pendukung` VALUES ('900','12','12_22_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('901','12','12_23_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('902','12','12_24_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('903','12','12_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('904','12','12_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('905','12','12_27_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('906','12','12_28_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('907','12','12_29_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('908','12','12_30_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('909','12','12_31_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('910','12','12_32_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('911','12','12_33_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('912','12','12_34_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('913','12','12_35_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('914','12','12_36_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('915','12','12_37_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('916','12','12_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('917','12','12_39_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('918','12','12_40_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('919','12','12_41_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('920','12','12_42_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('921','12','12_43_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('922','12','12_44_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('923','12','12_45_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('924','12','12_46_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('925','12','12_47_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('926','31','Thumbelina.png',NULL);
INSERT INTO `file_pendukung` VALUES ('927','31','Thumbelina.png',NULL);
INSERT INTO `file_pendukung` VALUES ('928','31','Report1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('929','31','Report1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('930','31','Report1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('931','31','Report1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('932','31','31_24_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('933','31','31_25_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('934','31','31_26_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('935','31','31_27_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('936','31','31_28_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('937','31','31_29_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('938','31','31_30_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('939','31','31_31_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('940','31','31_41_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('941','31','31_42_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('942','31','31_43_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('943','31','31_44_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('944','31','31_45_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('945','31','31_46_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('946','31','31_47_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('954','31','31_48_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('962','13','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('963','13','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('964','13','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('965','13','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('966','13','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('967','13','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('968','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('969','13','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('970','13','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('971','13','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('972','13','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('973','13','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('974','13','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('975','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('976','13','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('977','13','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('978','13','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('979','13','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('980','13','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('981','13','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('982','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('983','13','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('984','13','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('985','13','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('986','13','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('987','13','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('988','13','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('989','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('990','22','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('991','22','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('992','22','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('993','22','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('994','22','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('995','22','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('996','22','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('997','13','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('998','13','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('999','13','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1000','13','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1001','13','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1002','13','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1003','13','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1004','14','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1005','14','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1006','14','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1007','14','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1008','14','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1009','14','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1010','14','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1011','67','67_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1012','67','67_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1013','67','67_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1014','67','67_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1015','69',' ',NULL);
INSERT INTO `file_pendukung` VALUES ('1016','69',' ',NULL);
INSERT INTO `file_pendukung` VALUES ('1017','67','67_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1018','67','67_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1019','67','67_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1020','67','67_39_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1021','47','47_5_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1022','47','47_6_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1023','47','47_8_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1024','54','file1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1025','54','file1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1026','54','file2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1027','46','motherboard1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1028','46','pct1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1029','46','pct2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1030','46','pct3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1031','46','pct4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1032','66','66_35_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1033','66','66_36_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1034','66','66_37_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1035','66','66_38_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1036','66','66_39_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1037','66','66_40_1.jpeg',NULL);
INSERT INTO `file_pendukung` VALUES ('1038','72',' ',NULL);
INSERT INTO `file_pendukung` VALUES ('1039','73','Exposition1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1040','73','Exposition1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1041','73','PPT1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1042','73','Thumbelina.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1043','73','Thumbelina.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1044','73','Exposition2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1045','73','Exposition2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1046','73','Exposition2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1047','73','Exposition2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1048','73','Exposition2.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1049','73','Exposition3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1050','73','Exposition3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1051','73','Exposition3.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1052','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1053','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1054','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1055','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1056','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1057','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1058','73','Exposition4.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1059','73','Exposition5.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1060','73','Exposition5.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1061','73','Exposition5.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1062','73','Exposition5.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1063','73','Exposition5.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1064','73','Exposition6.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1065','73','Exposition6.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1066','65','67_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1067','65','67_5_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1068','65','67_17_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1069','65','67_18_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1070','65','67_25_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1071','65','67_26_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1072','65','67_38_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('1073','65','67_39_1.jpg',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
INSERT INTO `nilai_temp` VALUES   ('27','1','1','9','PTS','2023-05-20 07:26:18','2023-05-20 07:26:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1','1',NULL,NULL,NULL,'0','40,49,48,69,63,64,65,41,42,43,44,45,56,58,59,60,61,62,57,46,53,70,36,37,38,','B,A,D,E,C,D,E,A,B,C,C,A,D,B,E,E,D,A,C,B,B,A,D,E,C,D,C,A,E,B,A,B,C,D,E,C,B,E,D,A,D,B,E,C,A,B,D,A,C,E,E,B,D,C,A,B,E,A,C,D,E,C,B,A,D,E,A,B,C,D,A,D,B,E,C,A,E,D,B,C,C,D,E,A,B,B,C,E,A,D,E,A,C,B,D,B,C,E,D,A,C,B,A,D,E,E,C,B,A,D,A,B,D,E,C,A,C,D,B,E,E,A,C,D,B,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('32','3','16','269','UAS','2023-05-25 10:34:34','2023-05-25 10:35:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.195.1','0',NULL,NULL,NULL,'0','174,167,166,157,163,160,159,158,161,162,170,175,169,164,165,168,172,171,173,','B,E,A,D,C,E,B,D,C,A,B,E,A,C,D,A,C,E,D,B,C,B,A,E,D,E,D,A,C,B,B,E,C,D,A,C,B,A,E,D,A,B,C,D,E,C,A,D,B,E,A,B,D,E,C,A,D,C,B,E,A,D,C,B,E,B,C,D,E,A,C,E,B,A,D,A,D,C,B,E,D,B,C,E,A,A,E,B,C,D,B,C,A,D,E,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('44','4','25','192','UAS','2023-05-30 14:00:04','2023-05-30 14:00:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.3.202','0',NULL,NULL,NULL,'0','4457,4455,4445,4454,4487,4468,4469,4470,4446,4447,4467,4472,4473,4474,4460,4478,4480,4490,4491,4451,4452,4459,4444,4479,4475,4476,4477,4492,4471,4466,4485,4463,4458,4465,4484,4450,4481,4453,4448,4449,4486,4464,4488,4443,4482,4483,4461,4462,4489,4456,','A,C,E,B,D,D,B,C,E,A,D,C,A,B,E,C,B,D,A,E,C,B,D,A,E,E,D,C,B,A,C,B,E,D,A,E,A,D,C,B,C,A,E,D,B,B,A,D,C,E,C,A,E,D,B,B,D,A,E,C,D,E,B,C,A,C,A,D,B,E,D,B,E,A,C,D,E,B,A,C,C,B,E,D,A,A,B,C,D,E,B,C,A,E,D,C,D,E,A,B,B,C,A,E,D,A,E,C,B,D,A,E,D,B,C,C,E,B,D,A,D,E,B,C,A,C,D,A,E,B,D,C,A,B,E,B,C,D,E,A,C,A,D,B,E,C,D,E,A,B,D,E,C,A,B,D,A,E,C,B,E,A,C,D,B,C,B,A,E,D,E,C,D,A,B,E,C,B,D,A,C,A,E,B,D,E,D,C,B,A,C,D,E,A,B,B,D,A,E,C,E,B,D,C,A,E,C,B,A,D,B,C,D,A,E,D,A,C,E,B,E,A,B,D,C,B,E,C,A,D,B,E,D,A,C,A,B,D,C,E,E,C,B,A,D,B,D,A,E,C,',NULL,'0');

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
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `pengawas` VALUES   ('1','-','Administrator','','admin','$2y$10$f7A/.0wVbw3DiFg5lkbfP.zNPvOTL5ojeil8xiEJYcxJkl1qdNaCW','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
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
INSERT INTO `pengawas` VALUES ('590','-','Hartati Siregar','','hartati','$2y$10$5ABjjRgQxGMponyXBDS9PO5UKavCSqJ9z170qbYWLX7UAvnXLcDlC','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
INSERT INTO `setting` VALUES   ('1','CBT Application','10261412','SMK Tritech Informatika','SMK','M. Herizal Sinambela, S.Pd.I','','Jl. Bhayangkara No.484, Indra Kasih<br />\r\n','Medan Tembung           ','Medan','-','-','smktritechinformatika.sch.id','smktritechinformatika@gmail.com','dist/img/logo97.png','','KARTU PESERTA<br>\nUJIAN AKHIR SEMESTER GENAP','Ujian Akhir Semester','1.0','http://localhost/cbt','Asia/Jakarta','pusat','SR01','http://localhost/cbt','T5SVj9O2K4rHDu','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','1.0','dist/img/bc.jpg');

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
INSERT INTO `token` VALUES   ('1','OZWTVF','2023-05-30 13:46:56','00:15:00');

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
