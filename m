Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrQlf-0002YY-7t
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 10:46:36 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 11:45:31 +0100
Message-Id: <1372157137-7602-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/8] ppc asm: DDR headers
To: barebox@lists.infradead.org

Definitions and structures have been added to record DIMM parameters
and configure memory options.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/fsl_ddr_dimm_params.h |   60 +++++++++++++
 arch/ppc/include/asm/fsl_ddr_sdram.h       |  131 +++++++++++++++++++++++++++-
 2 files changed, 187 insertions(+), 4 deletions(-)
 create mode 100644 arch/ppc/include/asm/fsl_ddr_dimm_params.h

diff --git a/arch/ppc/include/asm/fsl_ddr_dimm_params.h b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
new file mode 100644
index 0000000..73c239b
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
@@ -0,0 +1,60 @@
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef DDR2_DIMM_PARAMS_H
+#define DDR2_DIMM_PARAMS_H
+
+#define EDC_ECC		2
+
+/* Parameters for a DDR2 dimm computed from the SPD */
+struct dimm_params_s {
+	char mpart[19];
+	uint32_t n_ranks;
+	uint64_t rank_density;
+	uint64_t capacity;
+	uint32_t data_width;
+	uint32_t primary_sdram_width;
+	uint32_t ec_sdram_width;
+	uint32_t registered_dimm;
+	uint32_t n_row_addr;
+	uint32_t n_col_addr;
+	uint32_t edc_config;		/* 0 = none, 1 = parity, 2 = ECC */
+	uint32_t n_banks_per_sdram_device;
+	uint32_t burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
+	uint32_t row_density;
+	uint64_t base_address;
+	/* SDRAM clock periods */
+	uint32_t tCKmin_X_ps;
+	uint32_t tCKmin_X_minus_1_ps;
+	uint32_t tCKmin_X_minus_2_ps;
+	uint32_t tCKmax_ps;
+	/* SPD-defined CAS latencies */
+	uint32_t caslat_X;
+	uint32_t caslat_X_minus_1;
+	uint32_t caslat_X_minus_2;
+	uint32_t caslat_lowest_derated;
+	/* basic timing parameters */
+	uint32_t tRCD_ps;
+	uint32_t tRP_ps;
+	uint32_t tRAS_ps;
+	uint32_t tWR_ps;	/* maximum = 63750 ps */
+	uint32_t tWTR_ps;	/* maximum = 63750 ps */
+	uint32_t tRFC_ps;	/* max = 255 ns + 256 ns + .75 ns = 511750 ps */
+	uint32_t tRRD_ps;	/* maximum = 63750 ps */
+	uint32_t tRC_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+	uint32_t refresh_rate_ps;
+	uint32_t tIS_ps;	/* byte 32, spd->ca_setup */
+	uint32_t tIH_ps;	/* byte 33, spd->ca_hold */
+	uint32_t tDS_ps;	/* byte 34, spd->data_setup */
+	uint32_t tDH_ps;	/* byte 35, spd->data_hold */
+	uint32_t tRTP_ps;	/* byte 38, spd->trtp */
+	uint32_t tDQSQ_max_ps;	/* byte 44, spd->tdqsq */
+	uint32_t tQHS_ps;	/* byte 45, spd->tqhs */
+};
+
+#endif
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/ppc/include/asm/fsl_ddr_sdram.h
index ef793c9..444bcbc 100644
--- a/arch/ppc/include/asm/fsl_ddr_sdram.h
+++ b/arch/ppc/include/asm/fsl_ddr_sdram.h
@@ -10,9 +10,40 @@
 #ifndef FSL_DDR_MEMCTL_H
 #define FSL_DDR_MEMCTL_H
 
-/*
- * DDR_SDRAM_CFG - DDR SDRAM Control Configuration
- */
+#include <ddr_spd.h>
+
+/* Basic DDR Technology. */
+#define SDRAM_TYPE_DDR1    2
+#define SDRAM_TYPE_DDR2    3
+#define SDRAM_TYPE_LPDDR1  6
+#define SDRAM_TYPE_DDR3    7
+
+#define DDR_BL4	4
+#define DDR_BL8	8
+
+#define DDR2_RTT_OFF		0
+#define DDR2_RTT_75_OHM		1
+#define DDR2_RTT_150_OHM	2
+#define DDR2_RTT_50_OHM		3
+
+#if defined(CONFIG_FSL_DDR2)
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR	(3)
+typedef struct ddr2_spd_eeprom_s generic_spd_eeprom_t;
+#define FSL_SDRAM_TYPE	SDRAM_TYPE_DDR2
+#endif
+
+#define FSL_DDR_ODT_NEVER		0x0
+#define FSL_DDR_ODT_CS			0x1
+#define FSL_DDR_ODT_ALL_OTHER_CS	0x2
+#define FSL_DDR_ODT_OTHER_DIMM		0x3
+#define FSL_DDR_ODT_ALL			0x4
+#define FSL_DDR_ODT_SAME_DIMM		0x5
+#define FSL_DDR_ODT_CS_AND_OTHER_DIMM	0x6
+#define FSL_DDR_ODT_OTHER_CS_ONSAMEDIMM	0x7
+
+#define SDRAM_CS_CONFIG_EN		0x80000000
+
+/* DDR_SDRAM_CFG - DDR SDRAM Control Configuration */
 #define SDRAM_CFG_MEM_EN		0x80000000
 #define SDRAM_CFG_SREN			0x40000000
 #define SDRAM_CFG_ECC_EN		0x20000000
@@ -23,11 +54,103 @@
 #define SDRAM_CFG_SDRAM_TYPE_SHIFT	24
 #define SDRAM_CFG_DYN_PWR		0x00200000
 #define SDRAM_CFG_32_BE			0x00080000
+#define SDRAM_CFG_16_BE			0x00100000
 #define SDRAM_CFG_8_BE			0x00040000
 #define SDRAM_CFG_NCAP			0x00020000
 #define SDRAM_CFG_2T_EN			0x00008000
 #define SDRAM_CFG_BI			0x00000001
 
-extern phys_size_t fixed_sdram(void);
+#define SDRAM_CFG2_D_INIT		0x00000010
+#define SDRAM_CFG2_ODT_CFG_MASK		0x00600000
+#define SDRAM_CFG2_ODT_NEVER		0
+#define SDRAM_CFG2_ODT_ONLY_WRITE	1
+#define SDRAM_CFG2_ODT_ONLY_READ	2
+#define SDRAM_CFG2_ODT_ALWAYS		3
+
+#define MAX_CHIP_SELECTS_PER_CTRL	4
+#define MAX_DIMM_SLOTS_PER_CTLR		4
+
+/*
+ * Memory controller characteristics and I2C parameters to
+ * read the SPD data.
+ */
+struct ddr_board_info_s {
+	uint32_t fsl_ddr_ver;
+	void __iomem *ddr_base;
+	uint32_t cs_per_ctrl;
+	uint32_t dimm_slots_per_ctrl;
+	uint32_t i2c_bus;
+	uint32_t i2c_slave;
+	uint32_t i2c_speed;
+	void __iomem *i2c_base;
+	uint8_t *spd_i2c_addr;
+};
 
+/*
+ * Generalized parameters for memory controller configuration,
+ * might be a little specific to the FSL memory controller
+ */
+struct memctl_options_s {
+	struct ddr_board_info_s *board_info;
+	uint32_t sdram_type;
+	/*
+	 * Memory organization parameters
+	 *
+	 * if DIMM is present in the system
+	 * where DIMMs are with respect to chip select
+	 * where chip selects are with respect to memory boundaries
+	 */
+	uint32_t registered_dimm_en;
+	/* Options local to a Chip Select */
+	struct cs_local_opts_s {
+		uint32_t auto_precharge;
+		uint32_t odt_rd_cfg;
+		uint32_t odt_wr_cfg;
+		uint32_t odt_rtt_norm;
+		uint32_t odt_rtt_wr;
+	} cs_local_opts[MAX_CHIP_SELECTS_PER_CTRL];
+	/* DLL reset disable */
+	uint32_t dll_rst_dis;
+	/* Operational mode parameters */
+	uint32_t ECC_mode;
+	uint32_t ECC_init_using_memctl;
+	uint32_t data_init;
+	/* Use DQS? maybe only with DDR2? */
+	uint32_t DQS_config;
+	uint32_t self_refresh_in_sleep;
+	uint32_t dynamic_power;
+	uint32_t data_bus_width;
+	uint32_t burst_length;
+	/* Global Timing Parameters */
+	uint32_t cas_latency_override;
+	uint32_t cas_latency_override_value;
+	uint32_t use_derated_caslat;
+	uint32_t additive_latency_override;
+	uint32_t additive_latency_override_value;
+	uint32_t clk_adjust;
+	uint32_t cpo_override;
+	uint32_t write_data_delay;
+	uint32_t half_strength_driver_enable;
+	uint32_t twoT_en;
+	uint32_t bstopre;
+	uint32_t tCKE_clock_pulse_width_ps;
+	uint32_t tFAW_window_four_activates_ps;
+	/* Rtt impedance */
+	uint32_t rtt_override;
+	uint32_t rtt_override_value;
+	/* Automatic self refresh */
+	uint32_t auto_self_refresh_en;
+	/* read-to-write turnaround */
+	uint32_t trwt_override;
+	uint32_t trwt;
+	/* Powerdon timings. */
+	uint32_t txp;
+	uint32_t taxpd;
+	uint32_t txard;
+	/* Load mode cycle time */
+	uint32_t tmrd;
+};
+
+extern phys_size_t fsl_ddr_sdram(void);
+extern phys_size_t fixed_sdram(void);
 #endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
