Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrQm2-0002ZH-P1
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 10:46:59 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 11:45:32 +0100
Message-Id: <1372157137-7602-4-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/8] ppc 8xxx: DDR headers
To: barebox@lists.infradead.org

Structures are defined to record the common DIMM parameters
and memory options on a per DIMM basis.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/common_timing_params.h |   44 ++++++++++++
 arch/ppc/ddr-8xxx/ddr.h                  |  105 ++++++++++++++++++++++++++++++
 2 files changed, 149 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/common_timing_params.h
 create mode 100644 arch/ppc/ddr-8xxx/ddr.h

diff --git a/arch/ppc/ddr-8xxx/common_timing_params.h b/arch/ppc/ddr-8xxx/common_timing_params.h
new file mode 100644
index 0000000..b262193
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/common_timing_params.h
@@ -0,0 +1,44 @@
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef COMMON_TIMING_PARAMS_H
+#define COMMON_TIMING_PARAMS_H
+
+struct common_timing_params_s {
+	uint32_t tCKmin_X_ps;
+	uint32_t tCKmax_ps;
+	uint32_t tCKmax_max_ps;
+	uint32_t tRCD_ps;
+	uint32_t tRP_ps;
+	uint32_t tRAS_ps;
+	uint32_t tWR_ps;	/* maximum = 63750 ps */
+	uint32_t tWTR_ps;	/* maximum = 63750 ps */
+	uint32_t tRFC_ps;	/* maximum = 255 ns + 256 ns + .75 ns
+					   = 511750 ps */
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
+	uint32_t ndimms_present;
+	uint32_t lowest_common_SPD_caslat;
+	uint32_t highest_common_derated_caslat;
+	uint32_t additive_latency;
+	uint32_t all_DIMMs_burst_lengths_bitmask;
+	uint32_t all_DIMMs_registered;
+	uint32_t all_DIMMs_ECC_capable;
+	uint64_t total_mem;
+	uint64_t base_address;
+};
+
+#endif
diff --git a/arch/ppc/ddr-8xxx/ddr.h b/arch/ppc/ddr-8xxx/ddr.h
new file mode 100644
index 0000000..6574500
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr.h
@@ -0,0 +1,105 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#ifndef FSL_DDR_MAIN_H
+#define FSL_DDR_MAIN_H
+
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_ddr_dimm_params.h>
+#include <mach/fsl_i2c.h>
+#include <mach/clock.h>
+#include "common_timing_params.h"
+
+#ifdef CONFIG_MPC85xx
+#include <mach/immap_85xx.h>
+#endif
+
+/* Record of computed register values. */
+struct fsl_ddr_cfg_regs_s {
+	struct {
+		uint32_t bnds;
+		uint32_t config;
+		uint32_t config_2;
+	} cs[MAX_CHIP_SELECTS_PER_CTRL];
+	uint32_t timing_cfg_3;
+	uint32_t timing_cfg_0;
+	uint32_t timing_cfg_1;
+	uint32_t timing_cfg_2;
+	uint32_t ddr_sdram_cfg;
+	uint32_t ddr_sdram_cfg_2;
+	uint32_t ddr_sdram_mode;
+	uint32_t ddr_sdram_mode_2;
+	uint32_t ddr_sdram_mode_3;
+	uint32_t ddr_sdram_mode_4;
+	uint32_t ddr_sdram_mode_5;
+	uint32_t ddr_sdram_mode_6;
+	uint32_t ddr_sdram_mode_7;
+	uint32_t ddr_sdram_mode_8;
+	uint32_t ddr_sdram_md_cntl;
+	uint32_t ddr_sdram_interval;
+	uint32_t ddr_data_init;
+	uint32_t ddr_sdram_clk_cntl;
+	uint32_t ddr_init_addr;
+	uint32_t ddr_init_ext_addr;
+	uint32_t err_disable;
+	uint32_t err_int_en;
+	uint32_t debug[32];
+};
+
+/*
+ * Data Structures
+ *
+ * All data structures have to be on the stack
+ */
+struct fsl_ddr_info_s {
+	generic_spd_eeprom_t
+	spd_installed_dimms[MAX_DIMM_SLOTS_PER_CTLR];
+	struct dimm_params_s
+		dimm_params[MAX_DIMM_SLOTS_PER_CTLR];
+	struct memctl_options_s memctl_opts;
+	struct common_timing_params_s common_timing_params;
+	struct fsl_ddr_cfg_regs_s fsl_ddr_config_reg;
+	struct ddr_board_info_s board_info;
+};
+
+uint32_t mclk_to_picos(uint32_t mclk);
+uint32_t get_memory_clk_period_ps(void);
+uint32_t picos_to_mclk(uint32_t picos);
+uint32_t check_fsl_memctl_config_regs(const struct fsl_ddr_cfg_regs_s *ddr);
+uint64_t fsl_ddr_compute(struct fsl_ddr_info_s *pinfo);
+uint32_t compute_fsl_memctl_config_regs(
+		const struct memctl_options_s *popts,
+		struct fsl_ddr_cfg_regs_s *ddr,
+		const struct common_timing_params_s *common_dimm,
+		const struct dimm_params_s *dimm_parameters,
+		uint32_t dbw_capacity_adjust);
+uint32_t compute_dimm_parameters(
+		const generic_spd_eeprom_t *spdin,
+		struct dimm_params_s *pdimm);
+uint32_t compute_lowest_common_dimm_parameters(
+		const struct dimm_params_s *dimm_params,
+		struct common_timing_params_s *outpdimm,
+		uint32_t number_of_dimms);
+uint32_t populate_memctl_options(
+		int all_DIMMs_registered,
+		struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm);
+int fsl_ddr_set_lawbar(
+		const struct common_timing_params_s *memctl_common_params,
+		uint32_t memctl_interleaved);
+int fsl_ddr_get_spd(
+		generic_spd_eeprom_t *ctrl_dimms_spd,
+		struct ddr_board_info_s *binfo);
+int fsl_ddr_set_memctl_regs(
+		const struct fsl_ddr_info_s *info);
+void fsl_ddr_board_options(
+		struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm);
+void fsl_ddr_board_info(struct ddr_board_info_s *info);
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
