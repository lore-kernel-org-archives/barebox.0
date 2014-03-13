Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og119.obsmtp.com ([64.18.0.189])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA5n-0001bD-AQ
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:11:01 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:09:59 +0000
Message-Id: <1394734204-8181-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] common: DDR3 SPD verification support
To: barebox@lists.infradead.org

Add DDR3 SPD verification support for use by the PPC 8xxx DDR driver.

This is based on the equivalent files from U-Boot version git-be937b5.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 common/ddr_spd.c  |  24 +++++++++++
 include/ddr_spd.h | 116 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 140 insertions(+)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index c8b73ff..ea0b529 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -7,6 +7,7 @@
  */
 
 #include <common.h>
+#include <crc.h>
 #include <ddr_spd.h>
 
 uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd)
@@ -37,3 +38,26 @@ uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd)
 error:
 	return 1;
 }
+
+uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd)
+{
+	char crc_lsb, crc_msb;
+	int csum16, len;
+
+	/*
+	 * SPD byte0[7] - CRC coverage
+	 * 0 = CRC covers bytes 0~125
+	 * 1 = CRC covers bytes 0~116
+	 */
+
+	len = !(spd->info_size_crc & 0x80) ? 126 : 117;
+	csum16 = cyg_crc16((char *)spd, len);
+
+	crc_lsb = (char) (csum16 & 0xff);
+	crc_msb = (char) (csum16 >> 8);
+
+	if (spd->crc[0] != crc_lsb || spd->crc[1] != crc_msb)
+		return 1;
+
+	return 0;
+}
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index c8762a2..fc03bac 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -114,13 +114,126 @@ struct ddr2_spd_eeprom_s {
 	uint8_t mdate[2];    /* 93 Manufacturing Date */
 	uint8_t sernum[4];   /* 95 Assembly Serial Number */
 	uint8_t mspec[27];   /* 99-127 Manufacturer Specific Data */
+};
+
+struct ddr3_spd_eeprom_s {
+	/* General Section: Bytes 0-59 */
+	uint8_t info_size_crc;   /*  0 # bytes written into serial memory,
+					     CRC coverage */
+	uint8_t spd_rev;         /*  1 Total # bytes of SPD mem device */
+	uint8_t mem_type;        /*  2 Key Byte / Fundamental mem type */
+	uint8_t module_type;     /*  3 Key Byte / Module Type */
+	uint8_t density_banks;   /*  4 SDRAM Density and Banks */
+	uint8_t addressing;      /*  5 SDRAM Addressing */
+	uint8_t module_vdd;      /*  6 Module nominal voltage, VDD */
+	uint8_t organization;    /*  7 Module Organization */
+	uint8_t bus_width;       /*  8 Module Memory Bus Width */
+	uint8_t ftb_div;         /*  9 Fine Timebase (FTB)
+					     Dividend / Divisor */
+	uint8_t mtb_dividend;    /* 10 Medium Timebase (MTB) Dividend */
+	uint8_t mtb_divisor;     /* 11 Medium Timebase (MTB) Divisor */
+	uint8_t tck_min;         /* 12 SDRAM Minimum Cycle Time */
+	uint8_t res_13;          /* 13 Reserved */
+	uint8_t caslat_lsb;      /* 14 CAS Latencies Supported,
+					     Least Significant Byte */
+	uint8_t caslat_msb;      /* 15 CAS Latencies Supported,
+					     Most Significant Byte */
+	uint8_t taa_min;         /* 16 Min CAS Latency Time */
+	uint8_t twr_min;         /* 17 Min Write REcovery Time */
+	uint8_t trcd_min;        /* 18 Min RAS# to CAS# Delay Time */
+	uint8_t trrd_min;        /* 19 Min Row Active to
+					     Row Active Delay Time */
+	uint8_t trp_min;         /* 20 Min Row Precharge Delay Time */
+	uint8_t tras_trc_ext;    /* 21 Upper Nibbles for tRAS and tRC */
+	uint8_t tras_min_lsb;    /* 22 Min Active to Precharge
+					     Delay Time */
+	uint8_t trc_min_lsb;     /* 23 Min Active to Active/Refresh
+					     Delay Time, LSB */
+	uint8_t trfc_min_lsb;    /* 24 Min Refresh Recovery Delay Time */
+	uint8_t trfc_min_msb;    /* 25 Min Refresh Recovery Delay Time */
+	uint8_t twtr_min;        /* 26 Min Internal Write to
+					     Read Command Delay Time */
+	uint8_t trtp_min;        /* 27 Min Internal Read to Precharge
+					     Command Delay Time */
+	uint8_t tfaw_msb;        /* 28 Upper Nibble for tFAW */
+	uint8_t tfaw_min;        /* 29 Min Four Activate Window
+					     Delay Time*/
+	uint8_t opt_features;    /* 30 SDRAM Optional Features */
+	uint8_t therm_ref_opt;   /* 31 SDRAM Thermal and Refresh Opts */
+	uint8_t therm_sensor;    /* 32 Module Thermal Sensor */
+	uint8_t device_type;     /* 33 SDRAM device type */
+	int8_t fine_tck_min;     /* 34 Fine offset for tCKmin */
+	int8_t fine_taa_min;     /* 35 Fine offset for tAAmin */
+	int8_t fine_trcd_min;    /* 36 Fine offset for tRCDmin */
+	int8_t fine_trp_min;     /* 37 Fine offset for tRPmin */
+	int8_t fine_trc_min;     /* 38 Fine offset for tRCmin */
+	uint8_t res_39_59[21];   /* 39-59 Reserved, General Section */
+
+	/* Module-Specific Section: Bytes 60-116 */
+	union {
+		struct {
+			/* 60 (Unbuffered) Module Nominal Height */
+			uint8_t mod_height;
+			/* 61 (Unbuffered) Module Maximum Thickness */
+			uint8_t mod_thickness;
+			/* 62 (Unbuffered) Reference Raw Card Used */
+			uint8_t ref_raw_card;
+			/* 63 (Unbuffered) Address Mapping from
+			      Edge Connector to DRAM */
+			uint8_t addr_mapping;
+			/* 64-116 (Unbuffered) Reserved */
+			uint8_t res_64_116[53];
+		} unbuffered;
+		struct {
+			/* 60 (Registered) Module Nominal Height */
+			uint8_t mod_height;
+			/* 61 (Registered) Module Maximum Thickness */
+			uint8_t mod_thickness;
+			/* 62 (Registered) Reference Raw Card Used */
+			uint8_t ref_raw_card;
+			/* 63 DIMM Module Attributes */
+			uint8_t modu_attr;
+			/* 64 RDIMM Thermal Heat Spreader Solution */
+			uint8_t thermal;
+			/* 65 Register Manufacturer ID Code, LSB */
+			uint8_t reg_id_lo;
+			/* 66 Register Manufacturer ID Code, MSB */
+			uint8_t reg_id_hi;
+			/* 67 Register Revision Number */
+			uint8_t reg_rev;
+			/* 68 Register Type */
+			uint8_t reg_type;
+			/* 69-76 RC1,3,5..15 (MS Nib.)/RC0,2,4..14 (LS Nib.) */
+			uint8_t rcw[8];
+		} registered;
+		uint8_t uc[57]; /* 60-116 Module-Specific Section */
+	} mod_section;
+
+	/* Unique Module ID: Bytes 117-125 */
+	uint8_t mmid_lsb;        /* 117 Module MfgID Code LSB - JEP-106 */
+	uint8_t mmid_msb;        /* 118 Module MfgID Code MSB - JEP-106 */
+	uint8_t mloc;            /* 119 Mfg Location */
+	uint8_t mdate[2];        /* 120-121 Mfg Date */
+	uint8_t sernum[4];       /* 122-125 Module Serial Number */
+
+	/* CRC: Bytes 126-127 */
+	uint8_t crc[2];          /* 126-127 SPD CRC */
 
+	/* Other Manufacturer Fields and User Space: Bytes 128-255 */
+	uint8_t mpart[18];       /* 128-145 Mfg's Module Part Number */
+	uint8_t mrev[2];         /* 146-147 Module Revision Code */
+	uint8_t dmid_lsb;        /* 148 DRAM MfgID Code LSB - JEP-106 */
+	uint8_t dmid_msb;        /* 149 DRAM MfgID Code MSB - JEP-106 */
+	uint8_t msd[26];         /* 150-175 Mfg's Specific Data */
+	uint8_t cust[80];        /* 176-255 Open for Customer Use */
 };
 
+extern uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd);
 extern uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd);
 
 /* * Byte 2 Fundamental Memory Types. */
 #define SPD_MEMTYPE_DDR2	(0x08)
+#define SPD_MEMTYPE_DDR3	(0x0B)
 
 /* DIMM Type for DDR2 SPD (according to v1.3) */
 #define DDR2_SPD_DIMMTYPE_RDIMM		(0x01)
@@ -132,4 +245,7 @@ extern uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *spd);
 #define DDR2_SPD_DIMMTYPE_MINI_RDIMM	(0x10)
 #define DDR2_SPD_DIMMTYPE_MINI_UDIMM	(0x20)
 
+/* Byte 3 Key Byte / Module Type for DDR3 SPD */
+#define DDR3_SPD_MODULETYPE_MASK	(0x0F)
+#define DDR3_SPD_MODULETYPE_UDIMM	(0x02)
 #endif /* _DDR_SPD_H_ */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
