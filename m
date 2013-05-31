Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og103.obsmtp.com ([64.18.0.145])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiSb5-0006nj-7Y
 for barebox@lists.infradead.org; Fri, 31 May 2013 16:54:37 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 May 2013 17:53:57 +0100
Message-Id: <1370019244-7873-2-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/8] ppc 8xxx: DDR headers
To: barebox@lists.infradead.org

These headers are imported from U-Boot as is.

This patch contains data structures related to DIMM characteristics
and functions prototypes.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/common_timing_params.h   |   56 +++++++++++++++
 arch/ppc/ddr-8xxx/ddr.h                    |  105 ++++++++++++++++++++++++++++
 arch/ppc/include/asm/fsl_ddr_dimm_params.h |   99 ++++++++++++++++++++++++++
 3 files changed, 260 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/common_timing_params.h
 create mode 100644 arch/ppc/ddr-8xxx/ddr.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_dimm_params.h

diff --git a/arch/ppc/ddr-8xxx/common_timing_params.h b/arch/ppc/ddr-8xxx/common_timing_params.h
new file mode 100644
index 0000000..06706ed
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/common_timing_params.h
@@ -0,0 +1,56 @@
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
+typedef struct {
+	/* parameters to constrict */
+
+	unsigned int tCKmin_X_ps;
+	unsigned int tCKmax_ps;
+	unsigned int tCKmax_max_ps;
+	unsigned int tRCD_ps;
+	unsigned int tRP_ps;
+	unsigned int tRAS_ps;
+
+	unsigned int tWR_ps;	/* maximum = 63750 ps */
+	unsigned int tWTR_ps;	/* maximum = 63750 ps */
+	unsigned int tRFC_ps;	/* maximum = 255 ns + 256 ns + .75 ns
+					   = 511750 ps */
+
+	unsigned int tRRD_ps;	/* maximum = 63750 ps */
+	unsigned int tRC_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+
+	unsigned int refresh_rate_ps;
+
+	unsigned int tIS_ps;	/* byte 32, spd->ca_setup */
+	unsigned int tIH_ps;	/* byte 33, spd->ca_hold */
+	unsigned int tDS_ps;	/* byte 34, spd->data_setup */
+	unsigned int tDH_ps;	/* byte 35, spd->data_hold */
+	unsigned int tRTP_ps;	/* byte 38, spd->trtp */
+	unsigned int tDQSQ_max_ps;	/* byte 44, spd->tdqsq */
+	unsigned int tQHS_ps;	/* byte 45, spd->tqhs */
+
+	unsigned int ndimms_present;
+	unsigned int lowest_common_SPD_caslat;
+	unsigned int highest_common_derated_caslat;
+	unsigned int additive_latency;
+	unsigned int all_DIMMs_burst_lengths_bitmask;
+	unsigned int all_DIMMs_registered;
+	unsigned int all_DIMMs_unbuffered;
+	unsigned int all_DIMMs_ECC_capable;
+
+	unsigned long long total_mem;
+	unsigned long long base_address;
+
+	/* DDR3 RDIMM */
+	unsigned char rcw[16];	/* Register Control Word 0-15 */
+} common_timing_params_t;
+
+#endif
diff --git a/arch/ppc/ddr-8xxx/ddr.h b/arch/ppc/ddr-8xxx/ddr.h
new file mode 100644
index 0000000..4dd55fc
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/ddr.h
@@ -0,0 +1,105 @@
+/*
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
+
+#include "common_timing_params.h"
+
+#if defined(CONFIG_DDR_SPD) || defined(CONFIG_SPD_EEPROM)
+/*
+ * Bind the main DDR setup driver's generic names
+ * to this specific DDR technology.
+ */
+static __inline__ int
+compute_dimm_parameters(const generic_spd_eeprom_t *spd,
+			dimm_params_t *pdimm,
+			unsigned int dimm_number)
+{
+	return ddr_compute_dimm_parameters(spd, pdimm, dimm_number);
+}
+#endif
+
+/*
+ * Data Structures
+ *
+ * All data structures have to be on the stack
+ */
+#define CONFIG_SYS_NUM_DDR_CTLRS CONFIG_NUM_DDR_CONTROLLERS
+#define CONFIG_SYS_DIMM_SLOTS_PER_CTLR CONFIG_DIMM_SLOTS_PER_CTLR
+
+typedef struct {
+	generic_spd_eeprom_t
+	   spd_installed_dimms[CONFIG_SYS_NUM_DDR_CTLRS][CONFIG_SYS_DIMM_SLOTS_PER_CTLR];
+	struct dimm_params_s
+	   dimm_params[CONFIG_SYS_NUM_DDR_CTLRS][CONFIG_SYS_DIMM_SLOTS_PER_CTLR];
+	memctl_options_t memctl_opts[CONFIG_SYS_NUM_DDR_CTLRS];
+	common_timing_params_t common_timing_params[CONFIG_SYS_NUM_DDR_CTLRS];
+	fsl_ddr_cfg_regs_t fsl_ddr_config_reg[CONFIG_SYS_NUM_DDR_CTLRS];
+} fsl_ddr_info_t;
+
+/* Compute steps */
+#define STEP_GET_SPD                 (1 << 0)
+#define STEP_COMPUTE_DIMM_PARMS      (1 << 1)
+#define STEP_COMPUTE_COMMON_PARMS    (1 << 2)
+#define STEP_GATHER_OPTS             (1 << 3)
+#define STEP_ASSIGN_ADDRESSES        (1 << 4)
+#define STEP_COMPUTE_REGS            (1 << 5)
+#define STEP_PROGRAM_REGS            (1 << 6)
+#define STEP_ALL                     0xFFF
+
+unsigned long long
+fsl_ddr_compute(fsl_ddr_info_t *pinfo, unsigned int start_step,
+				       unsigned int size_only);
+
+const char *step_to_string(unsigned int step);
+
+unsigned int compute_fsl_memctl_config_regs(const memctl_options_t *popts,
+			       fsl_ddr_cfg_regs_t *ddr,
+			       const common_timing_params_t *common_dimm,
+			       const dimm_params_t *dimm_parameters,
+			       unsigned int dbw_capacity_adjust,
+			       unsigned int size_only);
+unsigned int compute_lowest_common_dimm_parameters(
+				const dimm_params_t *dimm_params,
+				common_timing_params_t *outpdimm,
+				unsigned int number_of_dimms);
+unsigned int populate_memctl_options(int all_DIMMs_registered,
+				memctl_options_t *popts,
+				dimm_params_t *pdimm,
+				unsigned int ctrl_num);
+void check_interleaving_options(fsl_ddr_info_t *pinfo);
+
+unsigned int mclk_to_picos(unsigned int mclk);
+unsigned int get_memory_clk_period_ps(void);
+unsigned int picos_to_mclk(unsigned int picos);
+void fsl_ddr_set_lawbar(
+		const common_timing_params_t *memctl_common_params,
+		unsigned int memctl_interleaved,
+		unsigned int ctrl_num);
+
+int fsl_ddr_interactive_env_var_exists(void);
+unsigned long long fsl_ddr_interactive(fsl_ddr_info_t *pinfo, int var_is_set);
+void fsl_ddr_get_spd(generic_spd_eeprom_t *ctrl_dimms_spd,
+			   unsigned int ctrl_num);
+
+int do_reset(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[]);
+unsigned int check_fsl_memctl_config_regs(const fsl_ddr_cfg_regs_t *ddr);
+
+/* processor specific function */
+void fsl_ddr_set_memctl_regs(const fsl_ddr_cfg_regs_t *regs,
+				   unsigned int ctrl_num);
+
+/* board specific function */
+int fsl_ddr_get_dimm_params(dimm_params_t *pdimm,
+			unsigned int controller_number,
+			unsigned int dimm_number);
+#endif
diff --git a/arch/ppc/include/asm/fsl_ddr_dimm_params.h b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
new file mode 100644
index 0000000..ffe4db8
--- /dev/null
+++ b/arch/ppc/include/asm/fsl_ddr_dimm_params.h
@@ -0,0 +1,99 @@
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
+#define EDC_DATA_PARITY	1
+#define EDC_ECC		2
+#define EDC_AC_PARITY	4
+
+/* Parameters for a DDR2 dimm computed from the SPD */
+typedef struct dimm_params_s {
+
+	/* DIMM organization parameters */
+	char mpart[19];		/* guaranteed null terminated */
+
+	unsigned int n_ranks;
+	unsigned long long rank_density;
+	unsigned long long capacity;
+	unsigned int data_width;
+	unsigned int primary_sdram_width;
+	unsigned int ec_sdram_width;
+	unsigned int registered_dimm;
+
+	/* SDRAM device parameters */
+	unsigned int n_row_addr;
+	unsigned int n_col_addr;
+	unsigned int edc_config;	/* 0 = none, 1 = parity, 2 = ECC */
+	unsigned int n_banks_per_sdram_device;
+	unsigned int burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
+	unsigned int row_density;
+
+	/* used in computing base address of DIMMs */
+	unsigned long long base_address;
+	/* mirrored DIMMs */
+	unsigned int mirrored_dimm;	/* only for ddr3 */
+
+	/* DIMM timing parameters */
+
+	unsigned int mtb_ps;	/* medium timebase ps, only for ddr3 */
+	unsigned int ftb_10th_ps; /* fine timebase, in 1/10 ps, only for ddr3 */
+	unsigned int tAA_ps;	/* minimum CAS latency time, only for ddr3 */
+	unsigned int tFAW_ps;	/* four active window delay, only for ddr3 */
+
+	/*
+	 * SDRAM clock periods
+	 * The range for these are 1000-10000 so a short should be sufficient
+	 */
+	unsigned int tCKmin_X_ps;
+	unsigned int tCKmin_X_minus_1_ps;
+	unsigned int tCKmin_X_minus_2_ps;
+	unsigned int tCKmax_ps;
+
+	/* SPD-defined CAS latencies */
+	unsigned int caslat_X;
+	unsigned int caslat_X_minus_1;
+	unsigned int caslat_X_minus_2;
+
+	unsigned int caslat_lowest_derated;	/* Derated CAS latency */
+
+	/* basic timing parameters */
+	unsigned int tRCD_ps;
+	unsigned int tRP_ps;
+	unsigned int tRAS_ps;
+
+	unsigned int tWR_ps;	/* maximum = 63750 ps */
+	unsigned int tWTR_ps;	/* maximum = 63750 ps */
+	unsigned int tRFC_ps;   /* max = 255 ns + 256 ns + .75 ns
+				       = 511750 ps */
+
+	unsigned int tRRD_ps;	/* maximum = 63750 ps */
+	unsigned int tRC_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+
+	unsigned int refresh_rate_ps;
+
+	/* DDR3 doesn't need these as below */
+	unsigned int tIS_ps;	/* byte 32, spd->ca_setup */
+	unsigned int tIH_ps;	/* byte 33, spd->ca_hold */
+	unsigned int tDS_ps;	/* byte 34, spd->data_setup */
+	unsigned int tDH_ps;	/* byte 35, spd->data_hold */
+	unsigned int tRTP_ps;	/* byte 38, spd->trtp */
+	unsigned int tDQSQ_max_ps;	/* byte 44, spd->tdqsq */
+	unsigned int tQHS_ps;	/* byte 45, spd->tqhs */
+
+	/* DDR3 RDIMM */
+	unsigned char rcw[16];	/* Register Control Word 0-15 */
+} dimm_params_t;
+
+extern unsigned int ddr_compute_dimm_parameters(
+					 const generic_spd_eeprom_t *spd,
+					 dimm_params_t *pdimm,
+					 unsigned int dimm_number);
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
