Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Ok-0007xQ-73
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:57 +0100
Message-Id: <20190313094202.14901-11-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/15] ddr: fsl: Add Freescale ddr driver
To: Barebox List <barebox@lists.infradead.org>

This adds the Freescale ddr driver used on various PowerPC and
Layerscape SoCs. This is based on U-Boot-2019.01 but with many
adjustments:

- PowerPC support has been removed
- CPP #ifdeffery replaced with C
- No more global variables/functions expected from the driver,
  configuration is passed by the board code which calls the driver

We already have the driver in the tree in an older version forked from
U-Boot-2013.04. This version lacks Layerscape support and many quirks
in the driver are PowerPC specific. Since the existing driver should
work on all known PowerPC and PowerPC is a dead end I decided not to
improve the existing driver and instead add a new Layerscape specific
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig                         |    1 +
 drivers/Makefile                        |    1 +
 drivers/ddr/Kconfig                     |    1 +
 drivers/ddr/Makefile                    |    1 +
 drivers/ddr/fsl/Kconfig                 |   16 +
 drivers/ddr/fsl/Makefile                |   12 +
 drivers/ddr/fsl/arm_ddr_gen3.c          |  204 ++
 drivers/ddr/fsl/ctrl_regs.c             | 2539 +++++++++++++++++++++++
 drivers/ddr/fsl/ddr1_dimm_params.c      |  319 +++
 drivers/ddr/fsl/ddr2_dimm_params.c      |  320 +++
 drivers/ddr/fsl/ddr3_dimm_params.c      |  325 +++
 drivers/ddr/fsl/ddr4_dimm_params.c      |  352 ++++
 drivers/ddr/fsl/fsl_ddr.h               |  234 +++
 drivers/ddr/fsl/fsl_ddr_gen4.c          |  501 +++++
 drivers/ddr/fsl/lc_common_dimm_params.c |  542 +++++
 drivers/ddr/fsl/main.c                  |  444 ++++
 drivers/ddr/fsl/options.c               | 1133 ++++++++++
 drivers/ddr/fsl/util.c                  |   98 +
 include/soc/fsl/fsl_ddr_sdram.h         |  558 +++++
 include/soc/fsl/fsl_immap.h             |  184 ++
 20 files changed, 7785 insertions(+)
 create mode 100644 drivers/ddr/Kconfig
 create mode 100644 drivers/ddr/Makefile
 create mode 100644 drivers/ddr/fsl/Kconfig
 create mode 100644 drivers/ddr/fsl/Makefile
 create mode 100644 drivers/ddr/fsl/arm_ddr_gen3.c
 create mode 100644 drivers/ddr/fsl/ctrl_regs.c
 create mode 100644 drivers/ddr/fsl/ddr1_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr2_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr3_dimm_params.c
 create mode 100644 drivers/ddr/fsl/ddr4_dimm_params.c
 create mode 100644 drivers/ddr/fsl/fsl_ddr.h
 create mode 100644 drivers/ddr/fsl/fsl_ddr_gen4.c
 create mode 100644 drivers/ddr/fsl/lc_common_dimm_params.c
 create mode 100644 drivers/ddr/fsl/main.c
 create mode 100644 drivers/ddr/fsl/options.c
 create mode 100644 drivers/ddr/fsl/util.c
 create mode 100644 include/soc/fsl/fsl_ddr_sdram.h
 create mode 100644 include/soc/fsl/fsl_immap.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index d6fbcbfe16..f75da26982 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -40,5 +40,6 @@ source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
 source "drivers/soc/imx/Kconfig"
 source "drivers/nvme/Kconfig"
+source "drivers/ddr/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 65fd488ce9..fb7fcd3fc2 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -40,3 +40,4 @@ obj-$(CONFIG_AIODEV) += aiodev/
 obj-y	+= memory/
 obj-y	+= soc/imx/
 obj-y	+= nvme/
+obj-y	+= ddr/
diff --git a/drivers/ddr/Kconfig b/drivers/ddr/Kconfig
new file mode 100644
index 0000000000..4ea71598af
--- /dev/null
+++ b/drivers/ddr/Kconfig
@@ -0,0 +1 @@
+source "drivers/ddr/fsl/Kconfig"
diff --git a/drivers/ddr/Makefile b/drivers/ddr/Makefile
new file mode 100644
index 0000000000..faf2f9e1d6
--- /dev/null
+++ b/drivers/ddr/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_DDR_FSL) += fsl/
diff --git a/drivers/ddr/fsl/Kconfig b/drivers/ddr/fsl/Kconfig
new file mode 100644
index 0000000000..9cae9028a2
--- /dev/null
+++ b/drivers/ddr/fsl/Kconfig
@@ -0,0 +1,16 @@
+config DDR_FSL
+	bool
+
+if DDR_FSL
+
+config DDR_FSL_DDR1
+	bool "Enable DDR1 support"
+config DDR_FSL_DDR2
+	bool "Enable DDR2 support"
+config DDR_FSL_DDR3
+	bool "Enable DDR3 support"
+config DDR_FSL_DDR4
+	bool "Enable DDR4 support"
+
+endif
+
diff --git a/drivers/ddr/fsl/Makefile b/drivers/ddr/fsl/Makefile
new file mode 100644
index 0000000000..86ac4b820a
--- /dev/null
+++ b/drivers/ddr/fsl/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright 2008-2014 Freescale Semiconductor, Inc.
+
+pbl-y += main.o util.o ctrl_regs.o options.o lc_common_dimm_params.o
+
+pbl-y += ddr1_dimm_params.o
+pbl-y += ddr2_dimm_params.o
+pbl-y += ddr3_dimm_params.o
+pbl-y += ddr4_dimm_params.o
+obj-y += arm_ddr_gen3.o
+pbl-y += fsl_ddr_gen4.o
diff --git a/drivers/ddr/fsl/arm_ddr_gen3.c b/drivers/ddr/fsl/arm_ddr_gen3.c
new file mode 100644
index 0000000000..c016917a3f
--- /dev/null
+++ b/drivers/ddr/fsl/arm_ddr_gen3.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2013 Freescale Semiconductor, Inc.
+ *
+ * Derived from mpc85xx_ddr_gen3.c, removed all workarounds
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/fsl_immap.h>
+#include <soc/fsl/immap_lsch2.h>
+#include "fsl_ddr.h"
+
+/*
+ * regs has the to-be-set values for DDR controller registers
+ * ctrl_num is the DDR controller number
+ * step: 0 goes through the initialization in one pass
+ *       1 sets registers and returns before enabling controller
+ *       2 resumes from step 1 and continues to initialize
+ * Dividing the initialization to two steps to deassert DDR reset signal
+ * to comply with JEDEC specs for RDIMMs.
+ */
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
+{
+	struct ccsr_ddr __iomem *ddr = c->base;
+	const fsl_ddr_cfg_regs_t *regs = &c->fsl_ddr_config_reg;
+	unsigned int i, bus_width;
+	u32 temp_sdram_cfg;
+	u32 total_gb_size_per_controller;
+	int timeout;
+
+	if (step == 2)
+		goto step2;
+
+	if (regs->ddr_eor)
+		ddr_out32(&ddr->eor, regs->ddr_eor);
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (i == 0) {
+			ddr_out32(&ddr->cs0_bnds, regs->cs[i].bnds);
+			ddr_out32(&ddr->cs0_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs0_config_2, regs->cs[i].config_2);
+
+		} else if (i == 1) {
+			ddr_out32(&ddr->cs1_bnds, regs->cs[i].bnds);
+			ddr_out32(&ddr->cs1_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs1_config_2, regs->cs[i].config_2);
+
+		} else if (i == 2) {
+			ddr_out32(&ddr->cs2_bnds, regs->cs[i].bnds);
+			ddr_out32(&ddr->cs2_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs2_config_2, regs->cs[i].config_2);
+
+		} else if (i == 3) {
+			ddr_out32(&ddr->cs3_bnds, regs->cs[i].bnds);
+			ddr_out32(&ddr->cs3_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs3_config_2, regs->cs[i].config_2);
+		}
+	}
+
+	ddr_out32(&ddr->timing_cfg_3, regs->timing_cfg_3);
+	ddr_out32(&ddr->timing_cfg_0, regs->timing_cfg_0);
+	ddr_out32(&ddr->timing_cfg_1, regs->timing_cfg_1);
+	ddr_out32(&ddr->timing_cfg_2, regs->timing_cfg_2);
+	ddr_out32(&ddr->sdram_mode, regs->ddr_sdram_mode);
+	ddr_out32(&ddr->sdram_mode_2, regs->ddr_sdram_mode_2);
+	ddr_out32(&ddr->sdram_mode_3, regs->ddr_sdram_mode_3);
+	ddr_out32(&ddr->sdram_mode_4, regs->ddr_sdram_mode_4);
+	ddr_out32(&ddr->sdram_mode_5, regs->ddr_sdram_mode_5);
+	ddr_out32(&ddr->sdram_mode_6, regs->ddr_sdram_mode_6);
+	ddr_out32(&ddr->sdram_mode_7, regs->ddr_sdram_mode_7);
+	ddr_out32(&ddr->sdram_mode_8, regs->ddr_sdram_mode_8);
+	ddr_out32(&ddr->sdram_md_cntl, regs->ddr_sdram_md_cntl);
+	ddr_out32(&ddr->sdram_interval, regs->ddr_sdram_interval);
+	ddr_out32(&ddr->sdram_data_init, regs->ddr_data_init);
+	ddr_out32(&ddr->sdram_clk_cntl, regs->ddr_sdram_clk_cntl);
+	ddr_out32(&ddr->timing_cfg_4, regs->timing_cfg_4);
+	ddr_out32(&ddr->timing_cfg_5, regs->timing_cfg_5);
+	ddr_out32(&ddr->ddr_zq_cntl, regs->ddr_zq_cntl);
+	ddr_out32(&ddr->ddr_wrlvl_cntl, regs->ddr_wrlvl_cntl);
+	if (regs->ddr_wrlvl_cntl_2)
+		ddr_out32(&ddr->ddr_wrlvl_cntl_2, regs->ddr_wrlvl_cntl_2);
+	if (regs->ddr_wrlvl_cntl_3)
+		ddr_out32(&ddr->ddr_wrlvl_cntl_3, regs->ddr_wrlvl_cntl_3);
+
+	ddr_out32(&ddr->ddr_sr_cntr, regs->ddr_sr_cntr);
+	ddr_out32(&ddr->ddr_sdram_rcw_1, regs->ddr_sdram_rcw_1);
+	ddr_out32(&ddr->ddr_sdram_rcw_2, regs->ddr_sdram_rcw_2);
+	ddr_out32(&ddr->ddr_cdr1, regs->ddr_cdr1);
+
+	if (is_warm_boot()) {
+		ddr_out32(&ddr->sdram_cfg_2,
+			  regs->ddr_sdram_cfg_2 & ~SDRAM_CFG2_D_INIT);
+		ddr_out32(&ddr->init_addr, c->common_timing_params.base_address);
+		ddr_out32(&ddr->init_ext_addr, DDR_INIT_ADDR_EXT_UIA);
+
+		/* DRAM VRef will not be trained */
+		ddr_out32(&ddr->ddr_cdr2,
+			  regs->ddr_cdr2 & ~DDR_CDR2_VREF_TRAIN_EN);
+	} else {
+		ddr_out32(&ddr->sdram_cfg_2, regs->ddr_sdram_cfg_2);
+		ddr_out32(&ddr->init_addr, regs->ddr_init_addr);
+		ddr_out32(&ddr->init_ext_addr, regs->ddr_init_ext_addr);
+		ddr_out32(&ddr->ddr_cdr2, regs->ddr_cdr2);
+	}
+	ddr_out32(&ddr->err_disable, regs->err_disable);
+	ddr_out32(&ddr->err_int_en, regs->err_int_en);
+	for (i = 0; i < 32; i++) {
+		if (regs->debug[i]) {
+			debug("Write to debug_%d as %08x\n", i + 1,
+			      regs->debug[i]);
+			ddr_out32(&ddr->debug[i], regs->debug[i]);
+		}
+	}
+
+	/*
+	 * For RDIMMs, JEDEC spec requires clocks to be stable before reset is
+	 * deasserted. Clocks start when any chip select is enabled and clock
+	 * control register is set. Because all DDR components are connected to
+	 * one reset signal, this needs to be done in two steps. Step 1 is to
+	 * get the clocks started. Step 2 resumes after reset signal is
+	 * deasserted.
+	 */
+	if (step == 1) {
+		udelay(200);
+		return;
+	}
+
+step2:
+	/* Set, but do not enable the memory */
+	temp_sdram_cfg = regs->ddr_sdram_cfg;
+	temp_sdram_cfg &= ~(SDRAM_CFG_MEM_EN);
+	ddr_out32(&ddr->sdram_cfg, temp_sdram_cfg);
+
+	/*
+	 * 500 painful micro-seconds must elapse between
+	 * the DDR clock setup and the DDR config enable.
+	 * DDR2 need 200 us, and DDR3 need 500 us from spec,
+	 * we choose the max, that is 500 us for all of case.
+	 */
+	udelay(500);
+	asm volatile("dsb sy;isb");
+
+	if (is_warm_boot()) {
+		/* enter self-refresh */
+		temp_sdram_cfg = ddr_in32(&ddr->sdram_cfg_2);
+		temp_sdram_cfg |= SDRAM_CFG2_FRC_SR;
+		ddr_out32(&ddr->sdram_cfg_2, temp_sdram_cfg);
+
+		temp_sdram_cfg = (ddr_in32(&ddr->sdram_cfg) | SDRAM_CFG_BI);
+	} else {
+		temp_sdram_cfg = ddr_in32(&ddr->sdram_cfg) & ~SDRAM_CFG_BI;
+	}
+	/* Let the controller go */
+	ddr_out32(&ddr->sdram_cfg, temp_sdram_cfg | SDRAM_CFG_MEM_EN);
+	asm volatile("dsb sy;isb");
+
+	total_gb_size_per_controller = 0;
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (!(regs->cs[i].config & 0x80000000))
+			continue;
+		total_gb_size_per_controller += 1 << (
+			((regs->cs[i].config >> 14) & 0x3) + 2 +
+			((regs->cs[i].config >> 8) & 0x7) + 12 +
+			((regs->cs[i].config >> 0) & 0x7) + 8 +
+			3 - ((regs->ddr_sdram_cfg >> 19) & 0x3) -
+			26);			/* minus 26 (count of 64M) */
+	}
+	if (regs->cs[0].config & 0x20000000) {
+		/* 2-way interleaving */
+		total_gb_size_per_controller <<= 1;
+	}
+	/*
+	 * total memory / bus width = transactions needed
+	 * transactions needed / data rate = seconds
+	 * to add plenty of buffer, double the time
+	 * For example, 2GB on 666MT/s 64-bit bus takes about 402ms
+	 * Let's wait for 800ms
+	 */
+	bus_width = 3 - ((ddr_in32(&ddr->sdram_cfg) & SDRAM_CFG_DBW_MASK)
+			>> SDRAM_CFG_DBW_SHIFT);
+	timeout = ((total_gb_size_per_controller << (6 - bus_width)) * 100 /
+		(c->ddr_freq >> 20)) << 1;
+	total_gb_size_per_controller >>= 4;	/* shift down to gb size */
+	debug("total %d GB\n", total_gb_size_per_controller);
+	debug("Need to wait up to %d * 10ms\n", timeout);
+
+	/* Poll DDR_SDRAM_CFG_2[D_INIT] bit until auto-data init is done.  */
+	while ((ddr_in32(&ddr->sdram_cfg_2) & SDRAM_CFG2_D_INIT) &&
+		(timeout >= 0)) {
+		udelay(10000);		/* throttle polling rate */
+		timeout--;
+	}
+
+	if (timeout <= 0)
+		printf("Waiting for D_INIT timeout. Memory may not work.\n");
+
+	if (is_warm_boot()) {
+		/* exit self-refresh */
+		temp_sdram_cfg = ddr_in32(&ddr->sdram_cfg_2);
+		temp_sdram_cfg &= ~SDRAM_CFG2_FRC_SR;
+		ddr_out32(&ddr->sdram_cfg_2, temp_sdram_cfg);
+	}
+}
diff --git a/drivers/ddr/fsl/ctrl_regs.c b/drivers/ddr/fsl/ctrl_regs.c
new file mode 100644
index 0000000000..4957320d60
--- /dev/null
+++ b/drivers/ddr/fsl/ctrl_regs.c
@@ -0,0 +1,2539 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2008-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+/*
+ * Generic driver for Freescale DDR/DDR2/DDR3/DDR4 memory controller.
+ * Based on code from spd_sdram.c
+ * Author: James Yang [at freescale.com]
+ */
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/fsl_immap.h>
+#include <io.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <linux/log2.h>
+#include "fsl_ddr.h"
+
+/*
+ * Determine Rtt value.
+ *
+ * This should likely be either board or controller specific.
+ *
+ * Rtt(nominal) - DDR2:
+ *	0 = Rtt disabled
+ *	1 = 75 ohm
+ *	2 = 150 ohm
+ *	3 = 50 ohm
+ * Rtt(nominal) - DDR3:
+ *	0 = Rtt disabled
+ *	1 = 60 ohm
+ *	2 = 120 ohm
+ *	3 = 40 ohm
+ *	4 = 20 ohm
+ *	5 = 30 ohm
+ *
+ */
+static inline int fsl_ddr_get_rtt(const memctl_options_t *popts)
+{
+	if (is_ddr2(popts))
+		return 3;
+	else
+		return 0;
+}
+
+/*
+ * compute CAS write latency according to DDR4 spec
+ * CWL = 9 for <= 1600MT/s
+ *       10 for <= 1866MT/s
+ *       11 for <= 2133MT/s
+ *       12 for <= 2400MT/s
+ *       14 for <= 2667MT/s
+ *       16 for <= 2933MT/s
+ *       18 for higher
+ */
+static inline unsigned int compute_cas_write_latency_ddr4(struct fsl_ddr_controller *c)
+{
+	unsigned int cwl;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+	if (mclk_ps >= 1250)
+		cwl = 9;
+	else if (mclk_ps >= 1070)
+		cwl = 10;
+	else if (mclk_ps >= 935)
+		cwl = 11;
+	else if (mclk_ps >= 833)
+		cwl = 12;
+	else if (mclk_ps >= 750)
+		cwl = 14;
+	else if (mclk_ps >= 681)
+		cwl = 16;
+	else
+		cwl = 18;
+
+	return cwl;
+}
+
+/*
+ * compute the CAS write latency according to DDR3 spec
+ * CWL = 5 if tCK >= 2.5ns
+ *       6 if 2.5ns > tCK >= 1.875ns
+ *       7 if 1.875ns > tCK >= 1.5ns
+ *       8 if 1.5ns > tCK >= 1.25ns
+ *       9 if 1.25ns > tCK >= 1.07ns
+ *       10 if 1.07ns > tCK >= 0.935ns
+ *       11 if 0.935ns > tCK >= 0.833ns
+ *       12 if 0.833ns > tCK >= 0.75ns
+ */
+static inline unsigned int compute_cas_write_latency_ddr3(struct fsl_ddr_controller *c)
+{
+	unsigned int cwl;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+
+	if (mclk_ps >= 2500)
+		cwl = 5;
+	else if (mclk_ps >= 1875)
+		cwl = 6;
+	else if (mclk_ps >= 1500)
+		cwl = 7;
+	else if (mclk_ps >= 1250)
+		cwl = 8;
+	else if (mclk_ps >= 1070)
+		cwl = 9;
+	else if (mclk_ps >= 935)
+		cwl = 10;
+	else if (mclk_ps >= 833)
+		cwl = 11;
+	else if (mclk_ps >= 750)
+		cwl = 12;
+	else {
+		cwl = 12;
+		printf("Warning: CWL is out of range\n");
+	}
+	return cwl;
+}
+
+/* Chip Select Configuration (CSn_CONFIG) */
+static void set_csn_config(int dimm_number, int i, fsl_ddr_cfg_regs_t *ddr,
+			       const memctl_options_t *popts,
+			       const struct dimm_params *dimm_params)
+{
+	unsigned int cs_n_en = 0; /* Chip Select enable */
+	unsigned int intlv_en = 0; /* Memory controller interleave enable */
+	unsigned int intlv_ctl = 0; /* Interleaving control */
+	unsigned int ap_n_en = 0; /* Chip select n auto-precharge enable */
+	unsigned int odt_rd_cfg = 0; /* ODT for reads configuration */
+	unsigned int odt_wr_cfg = 0; /* ODT for writes configuration */
+	unsigned int ba_bits_cs_n = 0; /* Num of bank bits for SDRAM on CSn */
+	unsigned int row_bits_cs_n = 0; /* Num of row bits for SDRAM on CSn */
+	unsigned int col_bits_cs_n = 0; /* Num of ocl bits for SDRAM on CSn */
+	int go_config = 0;
+	unsigned int bg_bits_cs_n = 0; /* Num of bank group bits */
+	unsigned int n_banks_per_sdram_device;
+
+	/* Compute CS_CONFIG only for existing ranks of each DIMM.  */
+	switch (i) {
+	case 0:
+		if (dimm_params[dimm_number].n_ranks > 0) {
+			go_config = 1;
+			/* These fields only available in CS0_CONFIG */
+			if (!popts->memctl_interleaving)
+				break;
+			switch (popts->memctl_interleaving_mode) {
+			case FSL_DDR_256B_INTERLEAVING:
+			case FSL_DDR_CACHE_LINE_INTERLEAVING:
+			case FSL_DDR_PAGE_INTERLEAVING:
+			case FSL_DDR_BANK_INTERLEAVING:
+			case FSL_DDR_SUPERBANK_INTERLEAVING:
+				intlv_en = popts->memctl_interleaving;
+				intlv_ctl = popts->memctl_interleaving_mode;
+				break;
+			default:
+				break;
+			}
+		}
+		break;
+	case 1:
+		if ((dimm_number == 0 && dimm_params[0].n_ranks > 1) || \
+		    (dimm_number == 1 && dimm_params[1].n_ranks > 0))
+			go_config = 1;
+		break;
+	case 2:
+		if ((dimm_number == 0 && dimm_params[0].n_ranks > 2) || \
+		   (dimm_number >= 1 && dimm_params[dimm_number].n_ranks > 0))
+			go_config = 1;
+		break;
+	case 3:
+		if ((dimm_number == 0 && dimm_params[0].n_ranks > 3) || \
+		    (dimm_number == 1 && dimm_params[1].n_ranks > 1) || \
+		    (dimm_number == 3 && dimm_params[3].n_ranks > 0))
+			go_config = 1;
+		break;
+	default:
+		break;
+	}
+	if (go_config) {
+		cs_n_en = 1;
+		ap_n_en = popts->cs_local_opts[i].auto_precharge;
+		odt_rd_cfg = popts->cs_local_opts[i].odt_rd_cfg;
+		odt_wr_cfg = popts->cs_local_opts[i].odt_wr_cfg;
+		if (is_ddr4(popts)) {
+			ba_bits_cs_n = dimm_params[dimm_number].bank_addr_bits;
+			bg_bits_cs_n = dimm_params[dimm_number].bank_group_bits;
+		} else {
+			n_banks_per_sdram_device
+				= dimm_params[dimm_number].n_banks_per_sdram_device;
+			ba_bits_cs_n = ilog2(n_banks_per_sdram_device) - 2;
+		}
+		row_bits_cs_n = dimm_params[dimm_number].n_row_addr - 12;
+		col_bits_cs_n = dimm_params[dimm_number].n_col_addr - 8;
+	}
+	ddr->cs[i].config = (0
+		| ((cs_n_en & 0x1) << 31)
+		| ((intlv_en & 0x3) << 29)
+		| ((intlv_ctl & 0xf) << 24)
+		| ((ap_n_en & 0x1) << 23)
+
+		/* XXX: some implementation only have 1 bit starting at left */
+		| ((odt_rd_cfg & 0x7) << 20)
+
+		/* XXX: Some implementation only have 1 bit starting at left */
+		| ((odt_wr_cfg & 0x7) << 16)
+
+		| ((ba_bits_cs_n & 0x3) << 14)
+		| ((row_bits_cs_n & 0x7) << 8)
+		| ((bg_bits_cs_n & 0x3) << 4)
+		| ((col_bits_cs_n & 0x7) << 0)
+		);
+	debug("FSLDDR: cs[%d]_config = 0x%08x\n", i,ddr->cs[i].config);
+}
+
+/* Chip Select Configuration 2 (CSn_CONFIG_2) */
+/* FIXME: 8572 */
+static void set_csn_config_2(int i, fsl_ddr_cfg_regs_t *ddr)
+{
+	unsigned int pasr_cfg = 0;	/* Partial array self refresh config */
+
+	ddr->cs[i].config_2 = ((pasr_cfg & 7) << 24);
+	debug("FSLDDR: cs[%d]_config_2 = 0x%08x\n", i, ddr->cs[i].config_2);
+}
+
+/* -3E = 667 CL5, -25 = CL6 800, -25E = CL5 800 */
+
+/*
+ * Check DIMM configuration, return 2 if quad-rank or two dual-rank
+ * Return 1 if other two slots configuration. Return 0 if single slot.
+ */
+static inline int avoid_odt_overlap(struct fsl_ddr_controller *c,
+				    const struct dimm_params *dimm_params)
+{
+	if (c->dimm_slots_per_ctrl == 1)
+		if (dimm_params[0].n_ranks == 4)
+			return 2;
+
+	if (c->dimm_slots_per_ctrl == 2) {
+		if ((dimm_params[0].n_ranks == 2) &&
+			(dimm_params[1].n_ranks == 2))
+			return 2;
+
+		if ((dimm_params[0].n_ranks != 0) &&
+			(dimm_params[2].n_ranks != 0))
+			return 1;
+	}
+
+	return 0;
+}
+
+/*
+ * DDR SDRAM Timing Configuration 0 (TIMING_CFG_0)
+ *
+ * Avoid writing for DDR I.  The new PQ38 DDR controller
+ * dreams up non-zero default values to be backwards compatible.
+ */
+static void set_timing_cfg_0(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct dimm_params *dimm_params = c->dimm_params;
+	unsigned char trwt_mclk = 0;   /* Read-to-write turnaround */
+	unsigned char twrt_mclk = 0;   /* Write-to-read turnaround */
+	/* 7.5 ns on -3E; 0 means WL - CL + BL/2 + 1 */
+	unsigned char trrt_mclk = 0;   /* Read-to-read turnaround */
+	unsigned char twwt_mclk = 0;   /* Write-to-write turnaround */
+
+	/* Active powerdown exit timing (tXARD and tXARDS). */
+	unsigned char act_pd_exit_mclk;
+	/* Precharge powerdown exit timing (tXP). */
+	unsigned char pre_pd_exit_mclk;
+	/* ODT powerdown exit timing (tAXPD). */
+	unsigned char taxpd_mclk = 0;
+	/* Mode register set cycle time (tMRD). */
+	unsigned char tmrd_mclk;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+
+	if (is_ddr4(popts)) {
+		/* tXP=max(4nCK, 6ns) */
+		int txp = max((int)mclk_ps * 4, 6000); /* unit=ps */
+		unsigned int data_rate = c->ddr_freq;
+
+		/* for faster clock, need more time for data setup */
+		trwt_mclk = (data_rate/1000000 > 1900) ? 3 : 2;
+
+		/*
+		 * for single quad-rank DIMM and two-slot DIMMs
+		 * to avoid ODT overlap
+		 */ 
+		switch (avoid_odt_overlap(c, dimm_params)) {
+		case 2:
+			twrt_mclk = 2;
+			twwt_mclk = 2;
+			trrt_mclk = 2;
+			break;
+		default:
+			twrt_mclk = 1;
+			twwt_mclk = 1;
+			trrt_mclk = 0;
+			break;
+		}
+
+		act_pd_exit_mclk = picos_to_mclk(c, txp);
+		pre_pd_exit_mclk = act_pd_exit_mclk;
+		/*
+		 * MRS_CYC = max(tMRD, tMOD)
+		 * tMRD = 8nCK, tMOD = max(24nCK, 15ns)
+		 */
+		tmrd_mclk = max(24U, picos_to_mclk(c, 15000));
+	} else if (is_ddr3(popts)) {
+		unsigned int data_rate = c->ddr_freq;
+		int txp;
+		unsigned int ip_rev;
+		int odt_overlap;
+		/*
+		 * (tXARD and tXARDS). Empirical?
+		 * The DDR3 spec has not tXARD,
+		 * we use the tXP instead of it.
+		 * tXP=max(3nCK, 7.5ns) for DDR3-800, 1066
+		 *     max(3nCK, 6ns) for DDR3-1333, 1600, 1866, 2133
+		 * spec has not the tAXPD, we use
+		 * tAXPD=1, need design to confirm.
+		 */
+		txp = max((int)mclk_ps * 3, (mclk_ps > 1540 ? 7500 : 6000));
+
+		ip_rev = fsl_ddr_get_version(c);
+		if (ip_rev >= 0x40700) {
+			/*
+			 * MRS_CYC = max(tMRD, tMOD)
+			 * tMRD = 4nCK (8nCK for RDIMM)
+			 * tMOD = max(12nCK, 15ns)
+			 */
+			tmrd_mclk = max((unsigned int)12, picos_to_mclk(c, 15000));
+		} else {
+			/*
+			 * MRS_CYC = tMRD
+			 * tMRD = 4nCK (8nCK for RDIMM)
+			 */
+			if (popts->registered_dimm_en)
+				tmrd_mclk = 8;
+			else
+				tmrd_mclk = 4;
+		}
+
+		/* set the turnaround time */
+
+		/*
+		 * for single quad-rank DIMM and two-slot DIMMs
+		 * to avoid ODT overlap
+		 */
+		odt_overlap = avoid_odt_overlap(c, dimm_params);
+		switch (odt_overlap) {
+		case 2:
+			twwt_mclk = 2;
+			trrt_mclk = 1;
+			break;
+		case 1:
+			twwt_mclk = 1;
+			trrt_mclk = 0;
+			break;
+		default:
+			break;
+		}
+
+		/* for faster clock, need more time for data setup */
+		trwt_mclk = (data_rate/1000000 > 1800) ? 2 : 1;
+
+		if ((data_rate/1000000 > 1150) || (popts->memctl_interleaving))
+			twrt_mclk = 1;
+
+		if (popts->dynamic_power == 0) {	/* powerdown is not used */
+			act_pd_exit_mclk = 1;
+			pre_pd_exit_mclk = 1;
+			taxpd_mclk = 1;
+		} else {
+			/* act_pd_exit_mclk = tXARD, see above */
+			act_pd_exit_mclk = picos_to_mclk(c, txp);
+			/* Mode register MR0[A12] is '1' - fast exit */
+			pre_pd_exit_mclk = act_pd_exit_mclk;
+			taxpd_mclk = 1;
+		}
+	} else if (is_ddr2(popts)) {
+		/*
+		 * (tXARD and tXARDS). Empirical?
+		 * tXARD = 2 for DDR2
+		 * tXP=2
+		 * tAXPD=8
+		 */
+		act_pd_exit_mclk = 2;
+		pre_pd_exit_mclk = 2;
+		taxpd_mclk = 8;
+		tmrd_mclk = 2;
+	} else {
+		return;
+	}
+
+	if (popts->trwt_override)
+		trwt_mclk = popts->trwt;
+
+	ddr->timing_cfg_0 = (0
+		| ((trwt_mclk & 0x3) << 30)	/* RWT */
+		| ((twrt_mclk & 0x3) << 28)	/* WRT */
+		| ((trrt_mclk & 0x3) << 26)	/* RRT */
+		| ((twwt_mclk & 0x3) << 24)	/* WWT */
+		| ((act_pd_exit_mclk & 0xf) << 20)  /* ACT_PD_EXIT */
+		| ((pre_pd_exit_mclk & 0xF) << 16)  /* PRE_PD_EXIT */
+		| ((taxpd_mclk & 0xf) << 8)	/* ODT_PD_EXIT */
+		| ((tmrd_mclk & 0x1f) << 0)	/* MRS_CYC */
+		);
+	debug("FSLDDR: timing_cfg_0 = 0x%08x\n", ddr->timing_cfg_0);
+}
+
+/* DDR SDRAM Timing Configuration 3 (TIMING_CFG_3) */
+static void set_timing_cfg_3(struct fsl_ddr_controller *c,
+			     unsigned int cas_latency,
+			     unsigned int additive_latency)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	/* Extended precharge to activate interval (tRP) */
+	unsigned int ext_pretoact = 0;
+	/* Extended Activate to precharge interval (tRAS) */
+	unsigned int ext_acttopre = 0;
+	/* Extended activate to read/write interval (tRCD) */
+	unsigned int ext_acttorw = 0;
+	/* Extended refresh recovery time (tRFC) */
+	unsigned int ext_refrec;
+	/* Extended MCAS latency from READ cmd */
+	unsigned int ext_caslat = 0;
+	/* Extended additive latency */
+	unsigned int ext_add_lat = 0;
+	/* Extended last data to precharge interval (tWR) */
+	unsigned int ext_wrrec = 0;
+	/* Control Adjust */
+	unsigned int cntl_adj = 0;
+
+	ext_pretoact = picos_to_mclk(c, common_dimm->trp_ps) >> 4;
+	ext_acttopre = picos_to_mclk(c, common_dimm->tras_ps) >> 4;
+	ext_acttorw = picos_to_mclk(c, common_dimm->trcd_ps) >> 4;
+	ext_caslat = (2 * cas_latency - 1) >> 4;
+	ext_add_lat = additive_latency >> 4;
+
+	if (is_ddr4(popts))
+		ext_refrec = (picos_to_mclk(c, common_dimm->trfc1_ps) - 8) >> 4;
+	else
+		ext_refrec = (picos_to_mclk(c, common_dimm->trfc_ps) - 8) >> 4;
+	/* ext_wrrec only deals with 16 clock and above, or 14 with OTF */
+
+	ext_wrrec = (picos_to_mclk(c, common_dimm->twr_ps) +
+		(popts->otf_burst_chop_en ? 2 : 0)) >> 4;
+
+	ddr->timing_cfg_3 = (0
+		| ((ext_pretoact & 0x1) << 28)
+		| ((ext_acttopre & 0x3) << 24)
+		| ((ext_acttorw & 0x1) << 22)
+		| ((ext_refrec & 0x3F) << 16)
+		| ((ext_caslat & 0x3) << 12)
+		| ((ext_add_lat & 0x1) << 10)
+		| ((ext_wrrec & 0x1) << 8)
+		| ((cntl_adj & 0x7) << 0)
+		);
+	debug("FSLDDR: timing_cfg_3 = 0x%08x\n", ddr->timing_cfg_3);
+}
+
+/* DDR SDRAM Timing Configuration 1 (TIMING_CFG_1) */
+static void set_timing_cfg_1(struct fsl_ddr_controller *c, unsigned int cas_latency)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	/* Precharge-to-activate interval (tRP) */
+	unsigned char pretoact_mclk;
+	/* Activate to precharge interval (tRAS) */
+	unsigned char acttopre_mclk;
+	/*  Activate to read/write interval (tRCD) */
+	unsigned char acttorw_mclk;
+	/* CASLAT */
+	unsigned char caslat_ctrl;
+	/*  Refresh recovery time (tRFC) ; trfc_low */
+	unsigned char refrec_ctrl;
+	/* Last data to precharge minimum interval (tWR) */
+	unsigned char wrrec_mclk;
+	/* Activate-to-activate interval (tRRD) */
+	unsigned char acttoact_mclk;
+	/* Last write data pair to read command issue interval (tWTR) */
+	unsigned char wrtord_mclk;
+
+	pretoact_mclk = picos_to_mclk(c, common_dimm->trp_ps);
+	acttopre_mclk = picos_to_mclk(c, common_dimm->tras_ps);
+	acttorw_mclk = picos_to_mclk(c, common_dimm->trcd_ps);
+
+	/*
+	 * Translate CAS Latency to a DDR controller field value:
+	 *
+	 *      CAS Lat DDR I   DDR II  Ctrl
+	 *      Clocks  SPD Bit SPD Bit Value
+	 *      ------- ------- ------- -----
+	 *      1.0     0               0001
+	 *      1.5     1               0010
+	 *      2.0     2       2       0011
+	 *      2.5     3               0100
+	 *      3.0     4       3       0101
+	 *      3.5     5               0110
+	 *      4.0             4       0111
+	 *      4.5                     1000
+	 *      5.0             5       1001
+	 */
+	if (is_ddr1(popts)) {
+		caslat_ctrl = (cas_latency + 1) & 0x07;
+	} else if (is_ddr2(popts)) {
+		caslat_ctrl = 2 * cas_latency - 1;
+	} else {
+		/*
+		 * if the CAS latency more than 8 cycle,
+		 * we need set extend bit for it at
+		 * TIMING_CFG_3[EXT_CASLAT]
+		 */
+		if (fsl_ddr_get_version(c) <= 0x40400)
+			caslat_ctrl = 2 * cas_latency - 1;
+		else
+			caslat_ctrl = (cas_latency - 1) << 1;
+	}
+
+	if (is_ddr4(popts)) {
+		/* DDR4 supports 10, 12, 14, 16, 18, 20, 24 */
+		static const u8 wrrec_table[] = {
+			10, 10, 10, 10, 10,
+			10, 10, 10, 10, 10,
+			12, 12, 14, 14, 16,
+			16, 18, 18, 20, 20,
+			24, 24, 24, 24
+		};
+
+		refrec_ctrl = picos_to_mclk(c, common_dimm->trfc1_ps) - 8;
+		wrrec_mclk = picos_to_mclk(c, common_dimm->twr_ps);
+		acttoact_mclk = max(picos_to_mclk(c, common_dimm->trrds_ps), 4U);
+		wrtord_mclk = max(2U, picos_to_mclk(c, 2500));
+		if ((wrrec_mclk < 1) || (wrrec_mclk > 24))
+			printf("Error: WRREC doesn't support %d clocks\n", wrrec_mclk);
+		else
+			wrrec_mclk = wrrec_table[wrrec_mclk - 1];
+	} else {
+		/* DDR_SDRAM_MODE doesn't support 9,11,13,15 */
+		static const u8 wrrec_table[] = {
+			1, 2, 3, 4, 5, 6, 7, 8, 10, 10, 12, 12, 14, 14, 0, 0
+		};
+
+		refrec_ctrl = picos_to_mclk(c, common_dimm->trfc_ps) - 8;
+		wrrec_mclk = picos_to_mclk(c, common_dimm->twr_ps);
+		acttoact_mclk = picos_to_mclk(c, common_dimm->trrd_ps);
+		wrtord_mclk = picos_to_mclk(c, common_dimm->twtr_ps);
+		if ((wrrec_mclk < 1) || (wrrec_mclk > 16))
+			printf("Error: WRREC doesn't support %d clocks\n", wrrec_mclk);
+		else
+			wrrec_mclk = wrrec_table[wrrec_mclk - 1];
+	}
+
+	if (popts->otf_burst_chop_en)
+		wrrec_mclk += 2;
+
+	/*
+	 * JEDEC has min requirement for tRRD
+	 */
+	if (is_ddr3(popts) && acttoact_mclk < 4)
+		acttoact_mclk = 4;
+
+	/*
+	 * JEDEC has some min requirements for tWTR
+	 */
+	if (is_ddr2(popts) && wrtord_mclk < 2)
+		wrtord_mclk = 2;
+
+	if (is_ddr3(popts) && wrtord_mclk < 4)
+		wrtord_mclk = 4;
+
+	if (popts->otf_burst_chop_en)
+		wrtord_mclk += 2;
+
+	ddr->timing_cfg_1 = (0
+		| ((pretoact_mclk & 0x0F) << 28)
+		| ((acttopre_mclk & 0x0F) << 24)
+		| ((acttorw_mclk & 0xF) << 20)
+		| ((caslat_ctrl & 0xF) << 16)
+		| ((refrec_ctrl & 0xF) << 12)
+		| ((wrrec_mclk & 0x0F) << 8)
+		| ((acttoact_mclk & 0x0F) << 4)
+		| ((wrtord_mclk & 0x0F) << 0)
+		);
+	debug("FSLDDR: timing_cfg_1 = 0x%08x\n", ddr->timing_cfg_1);
+}
+
+/* DDR SDRAM Timing Configuration 2 (TIMING_CFG_2) */
+static void set_timing_cfg_2(struct fsl_ddr_controller *c,
+			     unsigned int cas_latency,
+			     unsigned int additive_latency)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	/* Additive latency */
+	unsigned char add_lat_mclk;
+	/* CAS-to-preamble override */
+	unsigned short cpo;
+	/* Write latency */
+	unsigned char wr_lat;
+	/*  Read to precharge (tRTP) */
+	unsigned char rd_to_pre;
+	/* Write command to write data strobe timing adjustment */
+	unsigned char wr_data_delay;
+	/* Minimum CKE pulse width (tCKE) */
+	unsigned char cke_pls;
+	/* Window for four activates (tFAW) */
+	unsigned short four_act;
+	unsigned int mclk_ps;
+
+	/* FIXME add check that this must be less than acttorw_mclk */
+	add_lat_mclk = additive_latency;
+	cpo = popts->cpo_override;
+
+	if (is_ddr1(popts)) {
+		/*
+		 * This is a lie.  It should really be 1, but if it is
+		 * set to 1, bits overlap into the old controller's
+		 * otherwise unused ACSM field.  If we leave it 0, then
+		 * the HW will magically treat it as 1 for DDR 1.  Oh Yea.
+		 */
+		wr_lat = 0;
+	} else if (is_ddr2(popts)) {
+		wr_lat = cas_latency - 1;
+	} else if (is_ddr3(popts)) {
+		wr_lat = compute_cas_write_latency_ddr3(c);
+	} else {
+		wr_lat = compute_cas_write_latency_ddr4(c);
+	}
+
+	if (is_ddr4(popts))
+		rd_to_pre = picos_to_mclk(c, 7500);
+	else
+		rd_to_pre = picos_to_mclk(c, common_dimm->trtp_ps);
+
+	/*
+	 * JEDEC has some min requirements for tRTP
+	 */
+	if (is_ddr2(popts) && rd_to_pre < 2)
+		rd_to_pre  = 2;
+
+	if (is_ddr3_4(popts) && rd_to_pre < 4)
+		rd_to_pre = 4;
+
+	if (popts->otf_burst_chop_en)
+		rd_to_pre += 2; /* according to UM */
+
+	wr_data_delay = popts->write_data_delay;
+
+	if (is_ddr4(popts)) {
+		cpo = 0;
+		cke_pls = max(3U, picos_to_mclk(c, 5000));
+	} else if (is_ddr3(popts)) {
+		mclk_ps = get_memory_clk_period_ps(c);
+
+		/*
+		 * cke pulse = max(3nCK, 7.5ns) for DDR3-800
+		 *             max(3nCK, 5.625ns) for DDR3-1066, 1333
+		 *             max(3nCK, 5ns) for DDR3-1600, 1866, 2133
+		 */
+		cke_pls = max(3U, picos_to_mclk(c, mclk_ps > 1870 ? 7500 :
+			  (mclk_ps > 1245 ? 5625 : 5000)));
+	} else if (is_ddr2(popts)) {
+		cke_pls = FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR2;
+	} else {
+		cke_pls = FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR1;
+	}
+
+	four_act = picos_to_mclk(c, popts->tfaw_window_four_activates_ps);
+
+	ddr->timing_cfg_2 = (0
+		| ((add_lat_mclk & 0xf) << 28)
+		| ((cpo & 0x1f) << 23)
+		| ((wr_lat & 0xf) << 19)
+		| (((wr_lat & 0x10) >> 4) << 18)
+		| ((rd_to_pre & RD_TO_PRE_MASK) << RD_TO_PRE_SHIFT)
+		| ((wr_data_delay & WR_DATA_DELAY_MASK) << WR_DATA_DELAY_SHIFT)
+		| ((cke_pls & 0x7) << 6)
+		| ((four_act & 0x3f) << 0)
+		);
+	debug("FSLDDR: timing_cfg_2 = 0x%08x\n", ddr->timing_cfg_2);
+}
+
+/* DDR SDRAM Register Control Word */
+static void set_ddr_sdram_rcw(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int ddr_freq = c->ddr_freq / 1000000;
+	unsigned int rc0a, rc0f;
+
+	if (common_dimm->all_dimms_registered &&
+	    !common_dimm->all_dimms_unbuffered)	{
+		if (popts->rcw_override) {
+			ddr->ddr_sdram_rcw_1 = popts->rcw_1;
+			ddr->ddr_sdram_rcw_2 = popts->rcw_2;
+			ddr->ddr_sdram_rcw_3 = popts->rcw_3;
+		} else {
+			rc0a = ddr_freq > 3200 ? 0x7 :
+			       (ddr_freq > 2933 ? 0x6 :
+				(ddr_freq > 2666 ? 0x5 :
+				 (ddr_freq > 2400 ? 0x4 :
+				  (ddr_freq > 2133 ? 0x3 :
+				   (ddr_freq > 1866 ? 0x2 :
+				    (ddr_freq > 1600 ? 1 : 0))))));
+			rc0f = ddr_freq > 3200 ? 0x3 :
+			       (ddr_freq > 2400 ? 0x2 :
+				(ddr_freq > 2133 ? 0x1 : 0));
+			ddr->ddr_sdram_rcw_1 =
+				common_dimm->rcw[0] << 28 | \
+				common_dimm->rcw[1] << 24 | \
+				common_dimm->rcw[2] << 20 | \
+				common_dimm->rcw[3] << 16 | \
+				common_dimm->rcw[4] << 12 | \
+				common_dimm->rcw[5] << 8 | \
+				common_dimm->rcw[6] << 4 | \
+				common_dimm->rcw[7];
+			ddr->ddr_sdram_rcw_2 =
+				common_dimm->rcw[8] << 28 | \
+				common_dimm->rcw[9] << 24 | \
+				rc0a << 20 | \
+				common_dimm->rcw[11] << 16 | \
+				common_dimm->rcw[12] << 12 | \
+				common_dimm->rcw[13] << 8 | \
+				common_dimm->rcw[14] << 4 | \
+				rc0f;
+			ddr->ddr_sdram_rcw_3 =
+				((ddr_freq - 1260 + 19) / 20) << 8;
+		}
+		debug("FSLDDR: ddr_sdram_rcw_1 = 0x%08x\n",
+		      ddr->ddr_sdram_rcw_1);
+		debug("FSLDDR: ddr_sdram_rcw_2 = 0x%08x\n",
+		      ddr->ddr_sdram_rcw_2);
+		debug("FSLDDR: ddr_sdram_rcw_3 = 0x%08x\n",
+		      ddr->ddr_sdram_rcw_3);
+	}
+}
+
+/* DDR SDRAM control configuration (DDR_SDRAM_CFG) */
+static void set_ddr_sdram_cfg(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int mem_en;		/* DDR SDRAM interface logic enable */
+	unsigned int sren;		/* Self refresh enable (during sleep) */
+	unsigned int ecc_en = 0;	/* ECC enable. */
+	unsigned int rd_en;		/* Registered DIMM enable */
+	unsigned int sdram_type;	/* Type of SDRAM */
+	unsigned int dyn_pwr;		/* Dynamic power management mode */
+	unsigned int dbw;		/* DRAM dta bus width */
+	unsigned int eight_be = 0;	/* 8-beat burst enable, DDR2 is zero */
+	unsigned int ncap = 0;		/* Non-concurrent auto-precharge */
+	unsigned int threet_en;		/* Enable 3T timing */
+	unsigned int twot_en;		/* Enable 2T timing */
+	unsigned int ba_intlv_ctl;	/* Bank (CS) interleaving control */
+	unsigned int x32_en = 0;	/* x32 enable */
+	unsigned int pchb8 = 0;		/* precharge bit 8 enable */
+	unsigned int hse;		/* Global half strength override */
+	unsigned int acc_ecc_en = 0;	/* Accumulated ECC enable */
+	unsigned int mem_halt = 0;	/* memory controller halt */
+	unsigned int bi = 0;		/* Bypass initialization */
+
+	mem_en = 1;
+	sren = popts->self_refresh_in_sleep;
+	if (common_dimm->all_dimms_ecc_capable)
+		ecc_en = 1;
+
+	if (common_dimm->all_dimms_registered &&
+	    !common_dimm->all_dimms_unbuffered)	{
+		rd_en = 1;
+		twot_en = 0;
+	} else {
+		rd_en = 0;
+		twot_en = popts->twot_en;
+	}
+
+	sdram_type = popts->ddrtype;
+
+	dyn_pwr = popts->dynamic_power;
+	dbw = popts->data_bus_width;
+	/* 8-beat burst enable DDR-III case
+	 * we must clear it when use the on-the-fly mode,
+	 * must set it when use the 32-bits bus mode.
+	 */
+	if (is_ddr3_4(popts)) {
+		if (popts->burst_length == DDR_BL8)
+			eight_be = 1;
+		if (popts->burst_length == DDR_OTF)
+			eight_be = 0;
+		if (dbw == 0x1)
+			eight_be = 1;
+	}
+
+	threet_en = popts->threet_en;
+	ba_intlv_ctl = popts->ba_intlv_ctl;
+	hse = popts->half_strength_driver_enable;
+
+	/* set when ddr bus width < 64 */
+	acc_ecc_en = (dbw != 0 && ecc_en == 1) ? 1 : 0;
+
+	ddr->ddr_sdram_cfg = (0
+			| ((mem_en & 0x1) << 31)
+			| ((sren & 0x1) << 30)
+			| ((ecc_en & 0x1) << 29)
+			| ((rd_en & 0x1) << 28)
+			| ((sdram_type & 0x7) << 24)
+			| ((dyn_pwr & 0x1) << 21)
+			| ((dbw & 0x3) << 19)
+			| ((eight_be & 0x1) << 18)
+			| ((ncap & 0x1) << 17)
+			| ((threet_en & 0x1) << 16)
+			| ((twot_en & 0x1) << 15)
+			| ((ba_intlv_ctl & 0x7F) << 8)
+			| ((x32_en & 0x1) << 5)
+			| ((pchb8 & 0x1) << 4)
+			| ((hse & 0x1) << 3)
+			| ((acc_ecc_en & 0x1) << 2)
+			| ((mem_halt & 0x1) << 1)
+			| ((bi & 0x1) << 0)
+			);
+	debug("FSLDDR: ddr_sdram_cfg = 0x%08x\n", ddr->ddr_sdram_cfg);
+}
+
+/* DDR SDRAM control configuration 2 (DDR_SDRAM_CFG_2) */
+static void set_ddr_sdram_cfg_2(struct fsl_ddr_controller *c,
+			       const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int frc_sr = 0;	/* Force self refresh */
+	unsigned int sr_ie = 0;		/* Self-refresh interrupt enable */
+	unsigned int odt_cfg = 0;	/* ODT configuration */
+	unsigned int num_pr;		/* Number of posted refreshes */
+	unsigned int slow = 0;		/* DDR will be run less than 1250 */
+	unsigned int x4_en = 0;		/* x4 DRAM enable */
+	unsigned int obc_cfg;		/* On-The-Fly Burst Chop Cfg */
+	unsigned int ap_en;		/* Address Parity Enable */
+	unsigned int d_init;		/* DRAM data initialization */
+	unsigned int rcw_en = 0;	/* Register Control Word Enable */
+	unsigned int md_en = 0;		/* Mirrored DIMM Enable */
+	unsigned int qd_en = 0;		/* quad-rank DIMM Enable */
+	int i;
+	unsigned int dll_rst_dis;	/* DLL reset disable */
+	unsigned int dqs_cfg;		/* DQS configuration */
+
+	if (is_ddr4(popts)) {
+		dll_rst_dis = 0;
+		dqs_cfg = 0;
+	} else {
+		dqs_cfg = popts->dqs_config;
+		dll_rst_dis = 1;
+	}
+
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (popts->cs_local_opts[i].odt_rd_cfg
+			|| popts->cs_local_opts[i].odt_wr_cfg) {
+			odt_cfg = SDRAM_CFG2_ODT_ONLY_READ;
+			break;
+		}
+	}
+	sr_ie = popts->self_refresh_interrupt_en;
+	num_pr = popts->package_3ds + 1;
+
+	/*
+	 * 8572 manual says
+	 *     {TIMING_CFG_1[PRETOACT]
+	 *      + [DDR_SDRAM_CFG_2[NUM_PR]
+	 *        * ({EXT_REFREC || REFREC} + 8 + 2)]}
+	 *      << DDR_SDRAM_INTERVAL[REFINT]
+	 */
+	if (is_ddr3_4(popts))
+		obc_cfg = popts->otf_burst_chop_en;
+	else
+		obc_cfg = 0;
+
+	slow = c->ddr_freq < 1249000000;
+
+	if (popts->registered_dimm_en)
+		rcw_en = 1;
+
+	/* DDR4 can have address parity for UDIMM and discrete */
+	if (!is_ddr4(popts) && !popts->registered_dimm_en) {
+		ap_en = 0;
+	} else {
+		ap_en = popts->ap_en;
+	}
+
+	x4_en = popts->x4_en ? 1 : 0;
+
+	/* Use the DDR controller to auto initialize memory. */
+	d_init = common_dimm->all_dimms_ecc_capable ? 1 : 0;;
+	ddr->ddr_data_init = 0xdeadbeef;
+
+	if (is_ddr3_4(popts))
+		md_en = popts->mirrored_dimm;
+
+	qd_en = popts->quad_rank_present ? 1 : 0;
+	ddr->ddr_sdram_cfg_2 = (0
+		| ((frc_sr & 0x1) << 31)
+		| ((sr_ie & 0x1) << 30)
+		| ((dll_rst_dis & 0x1) << 29)
+		| ((dqs_cfg & 0x3) << 26)
+		| ((odt_cfg & 0x3) << 21)
+		| ((num_pr & 0xf) << 12)
+		| ((slow & 1) << 11)
+		| (x4_en << 10)
+		| (qd_en << 9)
+		| (unq_mrs_en << 8)
+		| ((obc_cfg & 0x1) << 6)
+		| ((ap_en & 0x1) << 5)
+		| ((d_init & 0x1) << 4)
+		| ((rcw_en & 0x1) << 2)
+		| ((md_en & 0x1) << 0)
+		);
+	debug("FSLDDR: ddr_sdram_cfg_2 = 0x%08x\n", ddr->ddr_sdram_cfg_2);
+}
+
+/* DDR SDRAM Mode configuration 2 (DDR_SDRAM_MODE_2) */
+static void set_ddr4_sdram_mode_2(struct fsl_ddr_controller *c,
+				const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned short esdmode2 = 0;	/* Extended SDRAM mode 2 */
+	unsigned short esdmode3 = 0;	/* Extended SDRAM mode 3 */
+	int i;
+	unsigned int wr_crc = 0;	/* Disable */
+	unsigned int rtt_wr = 0;	/* Rtt_WR - dynamic ODT off */
+	unsigned int srt = 0;	/* self-refresh temerature, normal range */
+	unsigned int cwl = compute_cas_write_latency_ddr4(c) - 9;
+	unsigned int mpr = 0;	/* serial */
+	unsigned int wc_lat;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+
+	if (popts->rtt_override)
+		rtt_wr = popts->rtt_wr_override_value;
+	else
+		rtt_wr = popts->cs_local_opts[0].odt_rtt_wr;
+
+	if (common_dimm->extended_op_srt)
+		srt = common_dimm->extended_op_srt;
+
+	esdmode2 = (0
+		| ((wr_crc & 0x1) << 12)
+		| ((rtt_wr & 0x3) << 9)
+		| ((srt & 0x3) << 6)
+		| ((cwl & 0x7) << 3));
+
+	if (mclk_ps >= 1250)
+		wc_lat = 0;
+	else if (mclk_ps >= 833)
+		wc_lat = 1;
+	else
+		wc_lat = 2;
+
+	esdmode3 = (0
+		| ((mpr & 0x3) << 11)
+		| ((wc_lat & 0x3) << 9));
+
+	ddr->ddr_sdram_mode_2 = (0
+				 | ((esdmode2 & 0xFFFF) << 16)
+				 | ((esdmode3 & 0xFFFF) << 0)
+				 );
+	debug("FSLDDR: ddr_sdram_mode_2 = 0x%08x\n", ddr->ddr_sdram_mode_2);
+
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			if (popts->rtt_override)
+				rtt_wr = popts->rtt_wr_override_value;
+			else
+				rtt_wr = popts->cs_local_opts[i].odt_rtt_wr;
+
+			esdmode2 &= 0xF9FF;	/* clear bit 10, 9 */
+			esdmode2 |= (rtt_wr & 0x3) << 9;
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_4 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_6 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_8 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_4 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_4);
+		debug("FSLDDR: ddr_sdram_mode_6 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_6);
+		debug("FSLDDR: ddr_sdram_mode_8 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_8);
+	}
+}
+
+/* DDR SDRAM Mode configuration 2 (DDR_SDRAM_MODE_2) */
+static void set_ddr3_sdram_mode_2(struct fsl_ddr_controller *c,
+				const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned short esdmode2 = 0;	/* Extended SDRAM mode 2 */
+	unsigned short esdmode3 = 0;	/* Extended SDRAM mode 3 */
+	int i;
+	unsigned int rtt_wr = 0;	/* Rtt_WR - dynamic ODT off */
+	unsigned int srt = 0;	/* self-refresh temerature, normal range */
+	unsigned int asr = 0;	/* auto self-refresh disable */
+	unsigned int cwl = compute_cas_write_latency_ddr3(c) - 5;
+	unsigned int pasr = 0;	/* partial array self refresh disable */
+
+	if (popts->rtt_override)
+		rtt_wr = popts->rtt_wr_override_value;
+	else
+		rtt_wr = popts->cs_local_opts[0].odt_rtt_wr;
+
+	if (common_dimm->extended_op_srt)
+		srt = common_dimm->extended_op_srt;
+
+	esdmode2 = (0
+		| ((rtt_wr & 0x3) << 9)
+		| ((srt & 0x1) << 7)
+		| ((asr & 0x1) << 6)
+		| ((cwl & 0x7) << 3)
+		| ((pasr & 0x7) << 0));
+	ddr->ddr_sdram_mode_2 = (0
+				 | ((esdmode2 & 0xFFFF) << 16)
+				 | ((esdmode3 & 0xFFFF) << 0)
+				 );
+	debug("FSLDDR: ddr_sdram_mode_2 = 0x%08x\n", ddr->ddr_sdram_mode_2);
+
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			if (popts->rtt_override)
+				rtt_wr = popts->rtt_wr_override_value;
+			else
+				rtt_wr = popts->cs_local_opts[i].odt_rtt_wr;
+
+			esdmode2 &= 0xF9FF;	/* clear bit 10, 9 */
+			esdmode2 |= (rtt_wr & 0x3) << 9;
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_4 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_6 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_8 = (0
+					| ((esdmode2 & 0xFFFF) << 16)
+					| ((esdmode3 & 0xFFFF) << 0)
+					);
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_4 = 0x%08x\n",
+			ddr->ddr_sdram_mode_4);
+		debug("FSLDDR: ddr_sdram_mode_6 = 0x%08x\n",
+			ddr->ddr_sdram_mode_6);
+		debug("FSLDDR: ddr_sdram_mode_8 = 0x%08x\n",
+			ddr->ddr_sdram_mode_8);
+	}
+}
+
+/* DDR SDRAM Mode configuration 2 (DDR_SDRAM_MODE_2) */
+static void set_ddr1_2_sdram_mode_2(struct fsl_ddr_controller *c,
+				const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	unsigned short esdmode2 = 0;	/* Extended SDRAM mode 2 */
+	unsigned short esdmode3 = 0;	/* Extended SDRAM mode 3 */
+
+	ddr->ddr_sdram_mode_2 = (0
+				 | ((esdmode2 & 0xFFFF) << 16)
+				 | ((esdmode3 & 0xFFFF) << 0)
+				 );
+	debug("FSLDDR: ddr_sdram_mode_2 = 0x%08x\n", ddr->ddr_sdram_mode_2);
+}
+
+/* DDR SDRAM Mode configuration 9 (DDR_SDRAM_MODE_9) */
+static void set_ddr_sdram_mode_9(struct fsl_ddr_controller *c,
+				const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	int i;
+	unsigned short esdmode4 = 0;	/* Extended SDRAM mode 4 */
+	unsigned short esdmode5;	/* Extended SDRAM mode 5 */
+	int rtt_park = 0;
+	bool four_cs = false;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(0);
+
+	if ((ddr->cs[0].config & SDRAM_CS_CONFIG_EN) &&
+	    (ddr->cs[1].config & SDRAM_CS_CONFIG_EN) &&
+	    (ddr->cs[2].config & SDRAM_CS_CONFIG_EN) &&
+	    (ddr->cs[3].config & SDRAM_CS_CONFIG_EN))
+		four_cs = true;
+
+	if (ddr->cs[0].config & SDRAM_CS_CONFIG_EN) {
+		esdmode5 = 0x00000500;	/* Data mask enable, RTT_PARK CS0 */
+		rtt_park = four_cs ? 0 : 1;
+	} else {
+		esdmode5 = 0x00000400;	/* Data mask enabled */
+	}
+
+	/*
+	 * For DDR3, set C/A latency if address parity is enabled.
+	 * For DDR4, set C/A latency for UDIMM only. For RDIMM the delay is
+	 * handled by register chip and RCW settings.
+	 */
+	if ((ddr->ddr_sdram_cfg_2 & SDRAM_CFG2_AP_EN) &&
+	    (!is_ddr4(popts) || !popts->registered_dimm_en)) {
+		if (mclk_ps >= 935) {
+			/* for DDR4-1600/1866/2133 */
+			esdmode5 |= DDR_MR5_CA_PARITY_LAT_4_CLK;
+		} else if (mclk_ps >= 833) {
+			/* for DDR4-2400 */
+			esdmode5 |= DDR_MR5_CA_PARITY_LAT_5_CLK;
+		} else {
+			printf("parity: mclk_ps = %d not supported\n", mclk_ps);
+		}
+	}
+
+	ddr->ddr_sdram_mode_9 = (0
+				 | ((esdmode4 & 0xffff) << 16)
+				 | ((esdmode5 & 0xffff) << 0)
+				);
+
+	/* Normally only the first enabled CS use 0x500, others use 0x400
+	 * But when four chip-selects are all enabled, all mode registers
+	 * need 0x500 to park.
+	 */
+
+	debug("FSLDDR: ddr_sdram_mode_9 = 0x%08x\n", ddr->ddr_sdram_mode_9);
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			if (!rtt_park &&
+			    (ddr->cs[i].config & SDRAM_CS_CONFIG_EN)) {
+				esdmode5 |= 0x00000500;	/* RTT_PARK */
+				rtt_park = four_cs ? 0 : 1;
+			} else {
+				esdmode5 = 0x00000400;
+			}
+
+			if ((ddr->ddr_sdram_cfg_2 & SDRAM_CFG2_AP_EN) &&
+			    (!is_ddr4(popts) || !popts->registered_dimm_en)) {
+				if (mclk_ps >= 935) {
+					/* for DDR4-1600/1866/2133 */
+					esdmode5 |= DDR_MR5_CA_PARITY_LAT_4_CLK;
+				} else if (mclk_ps >= 833) {
+					/* for DDR4-2400 */
+					esdmode5 |= DDR_MR5_CA_PARITY_LAT_5_CLK;
+				} else {
+					printf("parity: mclk_ps = %d not supported\n",
+					       mclk_ps);
+				}
+			}
+
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_11 = (0
+					| ((esdmode4 & 0xFFFF) << 16)
+					| ((esdmode5 & 0xFFFF) << 0)
+					);
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_13 = (0
+					| ((esdmode4 & 0xFFFF) << 16)
+					| ((esdmode5 & 0xFFFF) << 0)
+					);
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_15 = (0
+					| ((esdmode4 & 0xFFFF) << 16)
+					| ((esdmode5 & 0xFFFF) << 0)
+					);
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_11 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_11);
+		debug("FSLDDR: ddr_sdram_mode_13 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_13);
+		debug("FSLDDR: ddr_sdram_mode_15 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_15);
+	}
+}
+
+/* DDR SDRAM Mode configuration 10 (DDR_SDRAM_MODE_10) */
+static void set_ddr_sdram_mode_10(struct fsl_ddr_controller *c,
+				const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	int i;
+	unsigned short esdmode6 = 0;	/* Extended SDRAM mode 6 */
+	unsigned short esdmode7 = 0;	/* Extended SDRAM mode 7 */
+	unsigned int tccdl_min = picos_to_mclk(c, common_dimm->tccdl_ps);
+
+	esdmode6 = ((tccdl_min - 4) & 0x7) << 10;
+
+	if (popts->ddr_cdr2 & DDR_CDR2_VREF_RANGE_2)
+		esdmode6 |= 1 << 6;	/* Range 2 */
+
+	ddr->ddr_sdram_mode_10 = (0
+				 | ((esdmode6 & 0xffff) << 16)
+				 | ((esdmode7 & 0xffff) << 0)
+				);
+	debug("FSLDDR: ddr_sdram_mode_10 = 0x%08x\n", ddr->ddr_sdram_mode_10);
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_12 = (0
+					| ((esdmode6 & 0xFFFF) << 16)
+					| ((esdmode7 & 0xFFFF) << 0)
+					);
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_14 = (0
+					| ((esdmode6 & 0xFFFF) << 16)
+					| ((esdmode7 & 0xFFFF) << 0)
+					);
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_16 = (0
+					| ((esdmode6 & 0xFFFF) << 16)
+					| ((esdmode7 & 0xFFFF) << 0)
+					);
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_12 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_12);
+		debug("FSLDDR: ddr_sdram_mode_14 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_14);
+		debug("FSLDDR: ddr_sdram_mode_16 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_16);
+	}
+}
+
+/* DDR SDRAM Interval Configuration (DDR_SDRAM_INTERVAL) */
+static void set_ddr_sdram_interval(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int refint;	/* Refresh interval */
+	unsigned int bstopre;	/* Precharge interval */
+
+	refint = picos_to_mclk(c, common_dimm->refresh_rate_ps);
+
+	bstopre = popts->bstopre;
+
+	/* refint field used 0x3FFF in earlier controllers */
+	ddr->ddr_sdram_interval = (0
+				   | ((refint & 0xFFFF) << 16)
+				   | ((bstopre & 0x3FFF) << 0)
+				   );
+	debug("FSLDDR: ddr_sdram_interval = 0x%08x\n", ddr->ddr_sdram_interval);
+}
+
+/* DDR SDRAM Mode configuration set (DDR_SDRAM_MODE) */
+static void set_ddr_sdram_mode_ddr4(struct fsl_ddr_controller *c,
+			       unsigned int cas_latency,
+			       unsigned int additive_latency,
+			       const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	int i;
+	unsigned short esdmode;		/* Extended SDRAM mode */
+	unsigned short sdmode;		/* SDRAM mode */
+
+	/* Mode Register - MR1 */
+	unsigned int qoff = 0;		/* Output buffer enable 0=yes, 1=no */
+	unsigned int tdqs_en = 0;	/* TDQS Enable: 0=no, 1=yes */
+	unsigned int rtt;
+	unsigned int wrlvl_en = 0;	/* Write level enable: 0=no, 1=yes */
+	unsigned int al = 0;		/* Posted CAS# additive latency (AL) */
+	unsigned int dic = 0;		/* Output driver impedance, 40ohm */
+	unsigned int dll_en = 1;	/* DLL Enable  1=Enable (Normal),
+						       0=Disable (Test/Debug) */
+
+	/* Mode Register - MR0 */
+	unsigned int wr = 0;	/* Write Recovery */
+	unsigned int dll_rst;	/* DLL Reset */
+	unsigned int mode;	/* Normal=0 or Test=1 */
+	unsigned int caslat = 4;/* CAS# latency, default set as 6 cycles */
+	/* BT: Burst Type (0=Nibble Sequential, 1=Interleaved) */
+	unsigned int bt;
+	unsigned int bl;	/* BL: Burst Length */
+
+	unsigned int wr_mclk;
+	/* DDR4 support WR 10, 12, 14, 16, 18, 20, 24 */
+	static const u8 wr_table[] = {
+		0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 6, 6};
+	/* DDR4 support CAS 9, 10, 11, 12, 13, 14, 15, 16, 18, 20, 22, 24 */
+	static const u8 cas_latency_table[] = {
+		0, 1, 2, 3, 4, 5, 6, 7, 8, 8,
+		9, 9, 10, 10, 11, 11};
+
+	if (popts->rtt_override)
+		rtt = popts->rtt_override_value;
+	else
+		rtt = popts->cs_local_opts[0].odt_rtt_norm;
+
+	if (additive_latency == (cas_latency - 1))
+		al = 1;
+	if (additive_latency == (cas_latency - 2))
+		al = 2;
+
+	if (popts->quad_rank_present)
+		dic = 1;	/* output driver impedance 240/7 ohm */
+
+	/*
+	 * The esdmode value will also be used for writing
+	 * MR1 during write leveling for DDR3, although the
+	 * bits specifically related to the write leveling
+	 * scheme will be handled automatically by the DDR
+	 * controller. so we set the wrlvl_en = 0 here.
+	 */
+	esdmode = (0
+		| ((qoff & 0x1) << 12)
+		| ((tdqs_en & 0x1) << 11)
+		| ((rtt & 0x7) << 8)
+		| ((wrlvl_en & 0x1) << 7)
+		| ((al & 0x3) << 3)
+		| ((dic & 0x3) << 1)   /* DIC field is split */
+		| ((dll_en & 0x1) << 0)
+		);
+
+	/*
+	 * DLL control for precharge PD
+	 * 0=slow exit DLL off (tXPDLL)
+	 * 1=fast exit DLL on (tXP)
+	 */
+
+	wr_mclk = picos_to_mclk(c, common_dimm->twr_ps);
+	if (wr_mclk <= 24) {
+		wr = wr_table[wr_mclk - 10];
+	} else {
+		printf("Error: unsupported write recovery for mode register wr_mclk = %d\n",
+		       wr_mclk);
+	}
+
+	dll_rst = 0;	/* dll no reset */
+	mode = 0;	/* normal mode */
+
+	/* look up table to get the cas latency bits */
+	if (cas_latency >= 9 && cas_latency <= 24)
+		caslat = cas_latency_table[cas_latency - 9];
+	else
+		printf("Error: unsupported cas latency for mode register\n");
+
+	bt = 0;	/* Nibble sequential */
+
+	switch (popts->burst_length) {
+	case DDR_BL8:
+		bl = 0;
+		break;
+	case DDR_OTF:
+		bl = 1;
+		break;
+	case DDR_BC4:
+		bl = 2;
+		break;
+	default:
+		printf("Error: invalid burst length of %u specified. ",
+		       popts->burst_length);
+		printf("Defaulting to on-the-fly BC4 or BL8 beats.\n");
+		bl = 1;
+		break;
+	}
+
+	sdmode = (0
+		  | ((wr & 0x7) << 9)
+		  | ((dll_rst & 0x1) << 8)
+		  | ((mode & 0x1) << 7)
+		  | (((caslat >> 1) & 0x7) << 4)
+		  | ((bt & 0x1) << 3)
+		  | ((caslat & 1) << 2)
+		  | ((bl & 0x3) << 0)
+		  );
+
+	ddr->ddr_sdram_mode = (0
+			       | ((esdmode & 0xFFFF) << 16)
+			       | ((sdmode & 0xFFFF) << 0)
+			       );
+
+	debug("FSLDDR: ddr_sdram_mode = 0x%08x\n", ddr->ddr_sdram_mode);
+
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			if (popts->rtt_override)
+				rtt = popts->rtt_override_value;
+			else
+				rtt = popts->cs_local_opts[i].odt_rtt_norm;
+
+			esdmode &= 0xF8FF;	/* clear bit 10,9,8 for rtt */
+			esdmode |= (rtt & 0x7) << 8;
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_3 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_5 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_7 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_3 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_3);
+		debug("FSLDDR: ddr_sdram_mode_5 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_5);
+		debug("FSLDDR: ddr_sdram_mode_5 = 0x%08x\n",
+		      ddr->ddr_sdram_mode_5);
+	}
+}
+
+/* DDR SDRAM Mode configuration set (DDR_SDRAM_MODE) */
+static void set_ddr_sdram_mode_ddr3(struct fsl_ddr_controller *c,
+			       unsigned int cas_latency,
+			       unsigned int additive_latency,
+			       const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	int i;
+	unsigned short esdmode;		/* Extended SDRAM mode */
+	unsigned short sdmode;		/* SDRAM mode */
+
+	/* Mode Register - MR1 */
+	unsigned int qoff = 0;		/* Output buffer enable 0=yes, 1=no */
+	unsigned int tdqs_en = 0;	/* TDQS Enable: 0=no, 1=yes */
+	unsigned int rtt;
+	unsigned int wrlvl_en = 0;	/* Write level enable: 0=no, 1=yes */
+	unsigned int al = 0;		/* Posted CAS# additive latency (AL) */
+	unsigned int dic = 0;		/* Output driver impedance, 40ohm */
+	unsigned int dll_en = 0;	/* DLL Enable  0=Enable (Normal),
+						       1=Disable (Test/Debug) */
+
+	/* Mode Register - MR0 */
+	unsigned int dll_on;	/* DLL control for precharge PD, 0=off, 1=on */
+	unsigned int wr = 0;	/* Write Recovery */
+	unsigned int dll_rst;	/* DLL Reset */
+	unsigned int mode;	/* Normal=0 or Test=1 */
+	unsigned int caslat = 4;/* CAS# latency, default set as 6 cycles */
+	/* BT: Burst Type (0=Nibble Sequential, 1=Interleaved) */
+	unsigned int bt;
+	unsigned int bl;	/* BL: Burst Length */
+
+	unsigned int wr_mclk;
+	/*
+	 * DDR_SDRAM_MODE doesn't support 9,11,13,15
+	 * Please refer JEDEC Standard No. 79-3E for Mode Register MR0
+	 * for this table
+	 */
+	static const u8 wr_table[] = {1, 2, 3, 4, 5, 5, 6, 6, 7, 7, 0, 0};
+
+	if (popts->rtt_override)
+		rtt = popts->rtt_override_value;
+	else
+		rtt = popts->cs_local_opts[0].odt_rtt_norm;
+
+	if (additive_latency == (cas_latency - 1))
+		al = 1;
+	if (additive_latency == (cas_latency - 2))
+		al = 2;
+
+	if (popts->quad_rank_present)
+		dic = 1;	/* output driver impedance 240/7 ohm */
+
+	/*
+	 * The esdmode value will also be used for writing
+	 * MR1 during write leveling for DDR3, although the
+	 * bits specifically related to the write leveling
+	 * scheme will be handled automatically by the DDR
+	 * controller. so we set the wrlvl_en = 0 here.
+	 */
+	esdmode = (0
+		| ((qoff & 0x1) << 12)
+		| ((tdqs_en & 0x1) << 11)
+		| ((rtt & 0x4) << 7)   /* rtt field is split */
+		| ((wrlvl_en & 0x1) << 7)
+		| ((rtt & 0x2) << 5)   /* rtt field is split */
+		| ((dic & 0x2) << 4)   /* DIC field is split */
+		| ((al & 0x3) << 3)
+		| ((rtt & 0x1) << 2)  /* rtt field is split */
+		| ((dic & 0x1) << 1)   /* DIC field is split */
+		| ((dll_en & 0x1) << 0)
+		);
+
+	/*
+	 * DLL control for precharge PD
+	 * 0=slow exit DLL off (tXPDLL)
+	 * 1=fast exit DLL on (tXP)
+	 */
+	dll_on = 1;
+
+	wr_mclk = picos_to_mclk(c, common_dimm->twr_ps);
+	if (wr_mclk <= 16) {
+		wr = wr_table[wr_mclk - 5];
+	} else {
+		printf("Error: unsupported write recovery for mode register "
+		       "wr_mclk = %d\n", wr_mclk);
+	}
+
+	dll_rst = 0;	/* dll no reset */
+	mode = 0;	/* normal mode */
+
+	/* look up table to get the cas latency bits */
+	if (cas_latency >= 5 && cas_latency <= 16) {
+		unsigned char cas_latency_table[] = {
+			0x2,	/* 5 clocks */
+			0x4,	/* 6 clocks */
+			0x6,	/* 7 clocks */
+			0x8,	/* 8 clocks */
+			0xa,	/* 9 clocks */
+			0xc,	/* 10 clocks */
+			0xe,	/* 11 clocks */
+			0x1,	/* 12 clocks */
+			0x3,	/* 13 clocks */
+			0x5,	/* 14 clocks */
+			0x7,	/* 15 clocks */
+			0x9,	/* 16 clocks */
+		};
+		caslat = cas_latency_table[cas_latency - 5];
+	} else {
+		printf("Error: unsupported cas latency for mode register\n");
+	}
+
+	bt = 0;	/* Nibble sequential */
+
+	switch (popts->burst_length) {
+	case DDR_BL8:
+		bl = 0;
+		break;
+	case DDR_OTF:
+		bl = 1;
+		break;
+	case DDR_BC4:
+		bl = 2;
+		break;
+	default:
+		printf("Error: invalid burst length of %u specified. "
+			" Defaulting to on-the-fly BC4 or BL8 beats.\n",
+			popts->burst_length);
+		bl = 1;
+		break;
+	}
+
+	sdmode = (0
+		  | ((dll_on & 0x1) << 12)
+		  | ((wr & 0x7) << 9)
+		  | ((dll_rst & 0x1) << 8)
+		  | ((mode & 0x1) << 7)
+		  | (((caslat >> 1) & 0x7) << 4)
+		  | ((bt & 0x1) << 3)
+		  | ((caslat & 1) << 2)
+		  | ((bl & 0x3) << 0)
+		  );
+
+	ddr->ddr_sdram_mode = (0
+			       | ((esdmode & 0xFFFF) << 16)
+			       | ((sdmode & 0xFFFF) << 0)
+			       );
+
+	debug("FSLDDR: ddr_sdram_mode = 0x%08x\n", ddr->ddr_sdram_mode);
+
+	if (unq_mrs_en) {	/* unique mode registers are supported */
+		for (i = 1; i < c->chip_selects_per_ctrl; i++) {
+			if (popts->rtt_override)
+				rtt = popts->rtt_override_value;
+			else
+				rtt = popts->cs_local_opts[i].odt_rtt_norm;
+
+			esdmode &= 0xFDBB;	/* clear bit 9,6,2 */
+			esdmode |= (0
+				| ((rtt & 0x4) << 7)   /* rtt field is split */
+				| ((rtt & 0x2) << 5)   /* rtt field is split */
+				| ((rtt & 0x1) << 2)  /* rtt field is split */
+				);
+			switch (i) {
+			case 1:
+				ddr->ddr_sdram_mode_3 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			case 2:
+				ddr->ddr_sdram_mode_5 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			case 3:
+				ddr->ddr_sdram_mode_7 = (0
+				       | ((esdmode & 0xFFFF) << 16)
+				       | ((sdmode & 0xFFFF) << 0)
+				       );
+				break;
+			}
+		}
+		debug("FSLDDR: ddr_sdram_mode_3 = 0x%08x\n",
+			ddr->ddr_sdram_mode_3);
+		debug("FSLDDR: ddr_sdram_mode_5 = 0x%08x\n",
+			ddr->ddr_sdram_mode_5);
+		debug("FSLDDR: ddr_sdram_mode_5 = 0x%08x\n",
+			ddr->ddr_sdram_mode_5);
+	}
+}
+
+static void set_ddr_sdram_mode_ddr12(struct fsl_ddr_controller *c,
+			       unsigned int cas_latency,
+			       unsigned int additive_latency,
+			       const unsigned int unq_mrs_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned short esdmode;		/* Extended SDRAM mode */
+	unsigned short sdmode;		/* SDRAM mode */
+
+	/*
+	 * FIXME: This ought to be pre-calculated in a
+	 * technology-specific routine,
+	 * e.g. compute_DDR2_mode_register(), and then the
+	 * sdmode and esdmode passed in as part of common_dimm.
+	 */
+
+	/* Extended Mode Register */
+	unsigned int mrs = 0;		/* Mode Register Set */
+	unsigned int outputs = 0;	/* 0=Enabled, 1=Disabled */
+	unsigned int rdqs_en = 0;	/* RDQS Enable: 0=no, 1=yes */
+	unsigned int dqs_en = 0;	/* DQS# Enable: 0=enable, 1=disable */
+	unsigned int ocd = 0;		/* 0x0=OCD not supported,
+					   0x7=OCD default state */
+	unsigned int rtt;
+	unsigned int al;		/* Posted CAS# additive latency (AL) */
+	unsigned int ods = 0;		/* Output Drive Strength:
+						0 = Full strength (18ohm)
+						1 = Reduced strength (4ohm) */
+	unsigned int dll_en = 0;	/* DLL Enable  0=Enable (Normal),
+						       1=Disable (Test/Debug) */
+
+	/* Mode Register (MR) */
+	unsigned int mr;	/* Mode Register Definition */
+	unsigned int pd;	/* Power-Down Mode */
+	unsigned int wr;	/* Write Recovery */
+	unsigned int dll_res;	/* DLL Reset */
+	unsigned int mode;	/* Normal=0 or Test=1 */
+	unsigned int caslat = 0;/* CAS# latency */
+	/* BT: Burst Type (0=Sequential, 1=Interleaved) */
+	unsigned int bt;
+	unsigned int bl;	/* BL: Burst Length */
+
+	dqs_en = !popts->dqs_config;
+	rtt = fsl_ddr_get_rtt(popts);
+
+	al = additive_latency;
+
+	esdmode = (0
+		| ((mrs & 0x3) << 14)
+		| ((outputs & 0x1) << 12)
+		| ((rdqs_en & 0x1) << 11)
+		| ((dqs_en & 0x1) << 10)
+		| ((ocd & 0x7) << 7)
+		| ((rtt & 0x2) << 5)   /* rtt field is split */
+		| ((al & 0x7) << 3)
+		| ((rtt & 0x1) << 2)   /* rtt field is split */
+		| ((ods & 0x1) << 1)
+		| ((dll_en & 0x1) << 0)
+		);
+
+	mr = 0;		 /* FIXME: CHECKME */
+
+	/*
+	 * 0 = Fast Exit (Normal)
+	 * 1 = Slow Exit (Low Power)
+	 */
+	pd = 0;
+
+	if (is_ddr1(popts))
+		wr = 0;       /* Historical */
+	else
+		wr = picos_to_mclk(c, common_dimm->twr_ps);
+
+	dll_res = 0;
+	mode = 0;
+
+	if (is_ddr1(popts)) {
+		if (1 <= cas_latency && cas_latency <= 4) {
+			unsigned char mode_caslat_table[4] = {
+				0x5,	/* 1.5 clocks */
+				0x2,	/* 2.0 clocks */
+				0x6,	/* 2.5 clocks */
+				0x3	/* 3.0 clocks */
+			};
+			caslat = mode_caslat_table[cas_latency - 1];
+		} else {
+			printf("Warning: unknown cas_latency %d\n", cas_latency);
+		}
+	} else if (is_ddr2(popts)) {
+		caslat = cas_latency;
+	}
+
+	bt = 0;
+
+	switch (popts->burst_length) {
+	case DDR_BL4:
+		bl = 2;
+		break;
+	case DDR_BL8:
+		bl = 3;
+		break;
+	default:
+		printf("Error: invalid burst length of %u specified. "
+			" Defaulting to 4 beats.\n",
+			popts->burst_length);
+		bl = 2;
+		break;
+	}
+
+	sdmode = (0
+		  | ((mr & 0x3) << 14)
+		  | ((pd & 0x1) << 12)
+		  | ((wr & 0x7) << 9)
+		  | ((dll_res & 0x1) << 8)
+		  | ((mode & 0x1) << 7)
+		  | ((caslat & 0x7) << 4)
+		  | ((bt & 0x1) << 3)
+		  | ((bl & 0x7) << 0)
+		  );
+
+	ddr->ddr_sdram_mode = (0
+			       | ((esdmode & 0xFFFF) << 16)
+			       | ((sdmode & 0xFFFF) << 0)
+			       );
+	debug("FSLDDR: ddr_sdram_mode = 0x%08x\n", ddr->ddr_sdram_mode);
+}
+
+/*
+ * DDR SDRAM Clock Control (DDR_SDRAM_CLK_CNTL)
+ * The old controller on the 8540/60 doesn't have this register.
+ * Hope it's OK to set it (to 0) anyway.
+ */
+static void set_ddr_sdram_clk_cntl(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	unsigned int clk_adjust;	/* Clock adjust */
+	unsigned int ss_en = 0;		/* Source synchronous enable */
+
+	if (fsl_ddr_get_version(c) >= 0x40701) {
+		/* clk_adjust in 5-bits on T-series and LS-series */
+		clk_adjust = (popts->clk_adjust & 0x1F) << 22;
+	} else {
+		/* clk_adjust in 4-bits on earlier MPC85xx and P-series */
+		clk_adjust = (popts->clk_adjust & 0xF) << 23;
+	}
+
+	ddr->ddr_sdram_clk_cntl = (0
+				   | ((ss_en & 0x1) << 31)
+				   | clk_adjust
+				   );
+	debug("FSLDDR: clk_cntl = 0x%08x\n", ddr->ddr_sdram_clk_cntl);
+}
+
+/* DDR Initialization Address (DDR_INIT_ADDR) */
+static void set_ddr_init_addr(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	unsigned int init_addr = 0;	/* Initialization address */
+
+	ddr->ddr_init_addr = init_addr;
+}
+
+/* DDR Initialization Address (DDR_INIT_EXT_ADDR) */
+static void set_ddr_init_ext_addr(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	unsigned int uia = 0;	/* Use initialization address */
+	unsigned int init_ext_addr = 0;	/* Initialization address */
+
+	ddr->ddr_init_ext_addr = (0
+				  | ((uia & 0x1) << 31)
+				  | (init_ext_addr & 0xF)
+				  );
+}
+
+/* DDR SDRAM Timing Configuration 4 (TIMING_CFG_4) */
+static void set_timing_cfg_4(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	unsigned int rwt = 0; /* Read-to-write turnaround for same CS */
+	unsigned int wrt = 0; /* Write-to-read turnaround for same CS */
+	unsigned int rrt = 0; /* Read-to-read turnaround for same CS */
+	unsigned int wwt = 0; /* Write-to-write turnaround for same CS */
+	unsigned int trwt_mclk = 0;	/* ext_rwt */
+	unsigned int dll_lock = 0; /* DDR SDRAM DLL Lock Time */
+
+	if (is_ddr3_4(popts)) {
+		if (popts->burst_length == DDR_BL8) {
+			/* We set BL/2 for fixed BL8 */
+			rrt = 0;	/* BL/2 clocks */
+			wwt = 0;	/* BL/2 clocks */
+		} else {
+			/* We need to set BL/2 + 2 to BC4 and OTF */
+			rrt = 2;	/* BL/2 + 2 clocks */
+			wwt = 2;	/* BL/2 + 2 clocks */
+		}
+	}
+
+	if (is_ddr4(popts))
+		dll_lock = 2;	/* tDLLK = 1024 clocks */
+	else if (is_ddr3(popts))
+		dll_lock = 1;	/* tDLLK = 512 clocks from spec */
+
+	if (popts->trwt_override)
+		trwt_mclk = popts->trwt;
+
+	ddr->timing_cfg_4 = (0
+			     | ((rwt & 0xf) << 28)
+			     | ((wrt & 0xf) << 24)
+			     | ((rrt & 0xf) << 20)
+			     | ((wwt & 0xf) << 16)
+			     | ((trwt_mclk & 0xc) << 12)
+			     | (dll_lock & 0x3)
+			     );
+	debug("FSLDDR: timing_cfg_4 = 0x%08x\n", ddr->timing_cfg_4);
+}
+
+/* DDR SDRAM Timing Configuration 5 (TIMING_CFG_5) */
+static void set_timing_cfg_5(struct fsl_ddr_controller *c, unsigned int cas_latency)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	unsigned int rodt_on = 0;	/* Read to ODT on */
+	unsigned int rodt_off = 0;	/* Read to ODT off */
+	unsigned int wodt_on = 0;	/* Write to ODT on */
+	unsigned int wodt_off = 0;	/* Write to ODT off */
+
+	if (is_ddr3_4(popts)) {
+		unsigned int wr_lat = ((ddr->timing_cfg_2 & 0x00780000) >> 19) +
+				      ((ddr->timing_cfg_2 & 0x00040000) >> 14);
+		/* rodt_on = timing_cfg_1[caslat] - timing_cfg_2[wrlat] + 1 */
+		if (cas_latency >= wr_lat)
+			rodt_on = cas_latency - wr_lat + 1;
+		rodt_off = 4;	/*  4 clocks */
+		wodt_on = 1;	/*  1 clocks */
+		wodt_off = 4;	/*  4 clocks */
+	}
+
+	ddr->timing_cfg_5 = (0
+			     | ((rodt_on & 0x1f) << 24)
+			     | ((rodt_off & 0x7) << 20)
+			     | ((wodt_on & 0x1f) << 12)
+			     | ((wodt_off & 0x7) << 8)
+			     );
+	debug("FSLDDR: timing_cfg_5 = 0x%08x\n", ddr->timing_cfg_5);
+}
+
+static void set_timing_cfg_6(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	unsigned int hs_caslat = 0;
+	unsigned int hs_wrlat = 0;
+	unsigned int hs_wrrec = 0;
+	unsigned int hs_clkadj = 0;
+	unsigned int hs_wrlvl_start = 0;
+
+	ddr->timing_cfg_6 = (0
+			     | ((hs_caslat & 0x1f) << 24)
+			     | ((hs_wrlat & 0x1f) << 19)
+			     | ((hs_wrrec & 0x1f) << 12)
+			     | ((hs_clkadj & 0x1f) << 6)
+			     | ((hs_wrlvl_start & 0x1f) << 0)
+			    );
+	debug("FSLDDR: timing_cfg_6 = 0x%08x\n", ddr->timing_cfg_6);
+}
+
+static void set_timing_cfg_7(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int txpr, tcksre, tcksrx;
+	unsigned int cke_rst, cksre, cksrx, par_lat = 0, cs_to_cmd;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+
+	txpr = max(5U, picos_to_mclk(c, common_dimm->trfc1_ps + 10000));
+	tcksre = max(5U, picos_to_mclk(c, 10000));
+	tcksrx = max(5U, picos_to_mclk(c, 10000));
+
+	if (ddr->ddr_sdram_cfg_2 & SDRAM_CFG2_AP_EN && is_ddr4(popts)) {
+		/* for DDR4 only */
+		par_lat = (ddr->ddr_sdram_rcw_2 & 0xf) + 1;
+		debug("PAR_LAT = %u for mclk_ps = %d\n", par_lat, mclk_ps);
+	}
+
+	cs_to_cmd = 0;
+
+	if (txpr <= 200)
+		cke_rst = 0;
+	else if (txpr <= 256)
+		cke_rst = 1;
+	else if (txpr <= 512)
+		cke_rst = 2;
+	else
+		cke_rst = 3;
+
+	if (tcksre <= 19)
+		cksre = tcksre - 5;
+	else
+		cksre = 15;
+
+	if (tcksrx <= 19)
+		cksrx = tcksrx - 5;
+	else
+		cksrx = 15;
+
+	ddr->timing_cfg_7 = (0
+			     | ((cke_rst & 0x3) << 28)
+			     | ((cksre & 0xf) << 24)
+			     | ((cksrx & 0xf) << 20)
+			     | ((par_lat & 0xf) << 16)
+			     | ((cs_to_cmd & 0xf) << 4)
+			    );
+	debug("FSLDDR: timing_cfg_7 = 0x%08x\n", ddr->timing_cfg_7);
+}
+
+static void set_timing_cfg_8(struct fsl_ddr_controller *c, unsigned int cas_latency)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	int rwt_bg, wrt_bg, rrt_bg, wwt_bg;
+	unsigned int acttoact_bg, wrtord_bg, pre_all_rec;
+	int tccdl = picos_to_mclk(c, common_dimm->tccdl_ps);
+	int wr_lat = ((ddr->timing_cfg_2 & 0x00780000) >> 19) +
+		      ((ddr->timing_cfg_2 & 0x00040000) >> 14);
+
+	rwt_bg = cas_latency + 2 + 4 - wr_lat;
+	if (rwt_bg < tccdl)
+		rwt_bg = tccdl - rwt_bg;
+	else
+		rwt_bg = 0;
+
+	wrt_bg = wr_lat + 4 + 1 - cas_latency;
+	if (wrt_bg < tccdl)
+		wrt_bg = tccdl - wrt_bg;
+	else
+		wrt_bg = 0;
+
+	if (popts->burst_length == DDR_BL8) {
+		rrt_bg = tccdl - 4;
+		wwt_bg = tccdl - 4;
+	} else {
+		rrt_bg = tccdl - 2;
+		wwt_bg = tccdl - 2;
+	}
+
+	acttoact_bg = picos_to_mclk(c, common_dimm->trrdl_ps);
+	wrtord_bg = max(4U, picos_to_mclk(c, 7500));
+	if (popts->otf_burst_chop_en)
+		wrtord_bg += 2;
+
+	pre_all_rec = 0;
+
+	ddr->timing_cfg_8 = (0
+			     | ((rwt_bg & 0xf) << 28)
+			     | ((wrt_bg & 0xf) << 24)
+			     | ((rrt_bg & 0xf) << 20)
+			     | ((wwt_bg & 0xf) << 16)
+			     | ((acttoact_bg & 0xf) << 12)
+			     | ((wrtord_bg & 0xf) << 8)
+			     | ((pre_all_rec & 0x1f) << 0)
+			    );
+
+	debug("FSLDDR: timing_cfg_8 = 0x%08x\n", ddr->timing_cfg_8);
+}
+
+static void set_timing_cfg_9(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	unsigned int refrec_cid_mclk = 0;
+	unsigned int acttoact_cid_mclk = 0;
+
+	if (popts->package_3ds) {
+		refrec_cid_mclk =
+			picos_to_mclk(c, common_dimm->trfc_slr_ps);
+		acttoact_cid_mclk = 4U;	/* tRRDS_slr */
+	}
+
+	ddr->timing_cfg_9 = (refrec_cid_mclk & 0x3ff) << 16	|
+			    (acttoact_cid_mclk & 0xf) << 8;
+
+	debug("FSLDDR: timing_cfg_9 = 0x%08x\n", ddr->timing_cfg_9);
+}
+
+/* This function needs to be called after set_ddr_sdram_cfg() is called */
+static void set_ddr_dq_mapping(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const struct dimm_params *dimm_params = c->dimm_params;
+	unsigned int acc_ecc_en = (ddr->ddr_sdram_cfg >> 2) & 0x1;
+	int i;
+
+	for (i = 0; i < c->dimm_slots_per_ctrl; i++) {
+		if (dimm_params[i].n_ranks)
+			break;
+	}
+	if (i >= c->dimm_slots_per_ctrl) {
+		printf("DDR error: no DIMM found!\n");
+		return;
+	}
+
+	ddr->dq_map_0 = ((dimm_params[i].dq_mapping[0] & 0x3F) << 26) |
+			((dimm_params[i].dq_mapping[1] & 0x3F) << 20) |
+			((dimm_params[i].dq_mapping[2] & 0x3F) << 14) |
+			((dimm_params[i].dq_mapping[3] & 0x3F) << 8) |
+			((dimm_params[i].dq_mapping[4] & 0x3F) << 2);
+
+	ddr->dq_map_1 = ((dimm_params[i].dq_mapping[5] & 0x3F) << 26) |
+			((dimm_params[i].dq_mapping[6] & 0x3F) << 20) |
+			((dimm_params[i].dq_mapping[7] & 0x3F) << 14) |
+			((dimm_params[i].dq_mapping[10] & 0x3F) << 8) |
+			((dimm_params[i].dq_mapping[11] & 0x3F) << 2);
+
+	ddr->dq_map_2 = ((dimm_params[i].dq_mapping[12] & 0x3F) << 26) |
+			((dimm_params[i].dq_mapping[13] & 0x3F) << 20) |
+			((dimm_params[i].dq_mapping[14] & 0x3F) << 14) |
+			((dimm_params[i].dq_mapping[15] & 0x3F) << 8) |
+			((dimm_params[i].dq_mapping[16] & 0x3F) << 2);
+
+	/* dq_map for ECC[4:7] is set to 0 if accumulated ECC is enabled */
+	ddr->dq_map_3 = ((dimm_params[i].dq_mapping[17] & 0x3F) << 26) |
+			((dimm_params[i].dq_mapping[8] & 0x3F) << 20) |
+			(acc_ecc_en ? 0 :
+			 (dimm_params[i].dq_mapping[9] & 0x3F) << 14) |
+			dimm_params[i].dq_mapping_ors;
+
+	debug("FSLDDR: dq_map_0 = 0x%08x\n", ddr->dq_map_0);
+	debug("FSLDDR: dq_map_1 = 0x%08x\n", ddr->dq_map_1);
+	debug("FSLDDR: dq_map_2 = 0x%08x\n", ddr->dq_map_2);
+	debug("FSLDDR: dq_map_3 = 0x%08x\n", ddr->dq_map_3);
+}
+static void set_ddr_sdram_cfg_3(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	int rd_pre;
+
+	rd_pre = popts->quad_rank_present ? 1 : 0;
+
+	ddr->ddr_sdram_cfg_3 = (rd_pre & 0x1) << 16;
+	/* Disable MRS on parity error for RDIMMs */
+	ddr->ddr_sdram_cfg_3 |= popts->registered_dimm_en ? 1 : 0;
+
+	if (popts->package_3ds) {	/* only 2,4,8 are supported */
+		if ((popts->package_3ds + 1) & 0x1) {
+			printf("Error: Unsupported 3DS DIMM with %d die\n",
+			       popts->package_3ds + 1);
+		} else {
+			ddr->ddr_sdram_cfg_3 |= ((popts->package_3ds + 1) >> 1)
+						<< 4;
+		}
+	}
+
+	debug("FSLDDR: ddr_sdram_cfg_3 = 0x%08x\n", ddr->ddr_sdram_cfg_3);
+}
+
+/* DDR ZQ Calibration Control (DDR_ZQ_CNTL) */
+static void set_ddr_zq_cntl(struct fsl_ddr_controller *c,
+			    unsigned int zq_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+	unsigned int zqinit; /* POR ZQ Calibration Time (tZQinit) */
+	unsigned int zqoper; /* Normal Operation Full Calibration Time (tZQoper) */
+	unsigned int zqcs; /* Normal Operation Short Calibration Time (tZQCS) */
+	unsigned int zqcs_init;
+
+	if (!zq_en) {
+		ddr->ddr_zq_cntl = 0;
+		goto out;
+	}
+
+	if (is_ddr4(popts)) {
+		zqinit = 10;	/* 1024 clocks */
+		zqoper = 9;	/* 512 clocks */
+		zqcs = 7;	/* 128 clocks */
+		zqcs_init = 5;	/* 1024 refresh sequences */
+	} else {
+		zqinit = 9;	/* 512 clocks */
+		zqoper = 8;	/* 256 clocks */
+		zqcs = 6;	/* 64 clocks */
+		zqcs_init = 0;
+	}
+
+	ddr->ddr_zq_cntl = ((zq_en & 0x1) << 31)
+			    | ((zqinit & 0xF) << 24)
+			    | ((zqoper & 0xF) << 16)
+			    | ((zqcs & 0xF) << 8)
+			    | (zqcs_init & 0xF);
+
+out:
+	debug("FSLDDR: zq_cntl = 0x%08x\n", ddr->ddr_zq_cntl);
+}
+
+/* DDR Write Leveling Control (DDR_WRLVL_CNTL) */
+static void set_ddr_wrlvl_cntl(struct fsl_ddr_controller *c, unsigned int wrlvl_en)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+
+	/*
+	 * First DQS pulse rising edge after margining mode
+	 * is programmed (tWL_MRD)
+	 */
+	unsigned int wrlvl_mrd = 0;
+	/* ODT delay after margining mode is programmed (tWL_ODTEN) */
+	unsigned int wrlvl_odten = 0;
+	/* DQS/DQS_ delay after margining mode is programmed (tWL_DQSEN) */
+	unsigned int wrlvl_dqsen = 0;
+	/* WRLVL_SMPL: Write leveling sample time */
+	unsigned int wrlvl_smpl = 0;
+	/* WRLVL_WLR: Write leveling repeition time */
+	unsigned int wrlvl_wlr = 0;
+	/* WRLVL_START: Write leveling start time */
+	unsigned int wrlvl_start = 0;
+
+	/* suggest enable write leveling for DDR3 due to fly-by topology */
+	if (wrlvl_en) {
+		/* tWL_MRD min = 40 nCK, we set it 64 */
+		wrlvl_mrd = 0x6;
+		/* tWL_ODTEN 128 */
+		wrlvl_odten = 0x7;
+		/* tWL_DQSEN min = 25 nCK, we set it 32 */
+		wrlvl_dqsen = 0x5;
+		/*
+		 * Write leveling sample time at least need 6 clocks
+		 * higher than tWLO to allow enough time for progagation
+		 * delay and sampling the prime data bits.
+		 */
+		wrlvl_smpl = 0xf;
+		/*
+		 * Write leveling repetition time
+		 * at least tWLO + 6 clocks clocks
+		 * we set it 64
+		 */
+		wrlvl_wlr = 0x6;
+		/*
+		 * Write leveling start time
+		 * The value use for the DQS_ADJUST for the first sample
+		 * when write leveling is enabled. It probably needs to be
+		 * overridden per platform.
+		 */
+		wrlvl_start = 0x8;
+		/*
+		 * Override the write leveling sample and start time
+		 * according to specific board
+		 */
+		if (popts->wrlvl_override) {
+			wrlvl_smpl = popts->wrlvl_sample;
+			wrlvl_start = popts->wrlvl_start;
+		}
+	}
+
+	ddr->ddr_wrlvl_cntl = (0
+			       | ((wrlvl_en & 0x1) << 31)
+			       | ((wrlvl_mrd & 0x7) << 24)
+			       | ((wrlvl_odten & 0x7) << 20)
+			       | ((wrlvl_dqsen & 0x7) << 16)
+			       | ((wrlvl_smpl & 0xf) << 12)
+			       | ((wrlvl_wlr & 0x7) << 8)
+			       | ((wrlvl_start & 0x1F) << 0)
+			       );
+	debug("FSLDDR: wrlvl_cntl = 0x%08x\n", ddr->ddr_wrlvl_cntl);
+	ddr->ddr_wrlvl_cntl_2 = popts->wrlvl_ctl_2;
+	debug("FSLDDR: wrlvl_cntl_2 = 0x%08x\n", ddr->ddr_wrlvl_cntl_2);
+	ddr->ddr_wrlvl_cntl_3 = popts->wrlvl_ctl_3;
+	debug("FSLDDR: wrlvl_cntl_3 = 0x%08x\n", ddr->ddr_wrlvl_cntl_3);
+
+}
+
+/* DDR Self Refresh Counter (DDR_SR_CNTR) */
+static void set_ddr_sr_cntr(struct fsl_ddr_controller *c, unsigned int sr_it)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+
+	/* Self Refresh Idle Threshold */
+	ddr->ddr_sr_cntr = (sr_it & 0xF) << 16;
+}
+
+static void set_ddr_eor(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+
+	if (popts->addr_hash) {
+		ddr->ddr_eor = 0x40000000;	/* address hash enable */
+		printf("Address hashing enabled.\n");
+	}
+}
+
+static void set_ddr_cdr1(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+
+	ddr->ddr_cdr1 = popts->ddr_cdr1;
+	debug("FSLDDR: ddr_cdr1 = 0x%08x\n", ddr->ddr_cdr1);
+}
+
+static void set_ddr_cdr2(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const memctl_options_t *popts = &c->memctl_opts;
+
+	ddr->ddr_cdr2 = popts->ddr_cdr2;
+	debug("FSLDDR: ddr_cdr2 = 0x%08x\n", ddr->ddr_cdr2);
+}
+
+static unsigned int
+check_fsl_memctl_config_regs(struct fsl_ddr_controller *c)
+{
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	unsigned int res = 0;
+
+	/*
+	 * Check that DDR_SDRAM_CFG[RD_EN] and DDR_SDRAM_CFG[2T_EN] are
+	 * not set at the same time.
+	 */
+	if (ddr->ddr_sdram_cfg & 0x10000000
+	    && ddr->ddr_sdram_cfg & 0x00008000) {
+		printf("Error: DDR_SDRAM_CFG[RD_EN] and DDR_SDRAM_CFG[2T_EN] "
+				" should not be set at the same time.\n");
+		res++;
+	}
+
+	return res;
+}
+
+unsigned int
+compute_fsl_memctl_config_regs(struct fsl_ddr_controller *c)
+{
+	const memctl_options_t *popts = &c->memctl_opts;
+	fsl_ddr_cfg_regs_t *ddr = &c->fsl_ddr_config_reg;
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	const struct dimm_params *dimm_params = c->dimm_params;
+	unsigned int i;
+	unsigned int cas_latency;
+	unsigned int additive_latency;
+	unsigned int sr_it;
+	unsigned int wrlvl_en;
+	unsigned int ip_rev = 0;
+	unsigned int unq_mrs_en = 0;
+	int cs_en = 1;
+	unsigned int ddr_freq;
+	struct ccsr_ddr __iomem *ddrc = c->base;
+
+	memset(ddr, 0, sizeof(fsl_ddr_cfg_regs_t));
+
+	if (common_dimm == NULL) {
+		printf("Error: subset DIMM params struct null pointer\n");
+		return 1;
+	}
+
+	/*
+	 * Process overrides first.
+	 *
+	 * FIXME: somehow add dereated caslat to this
+	 */
+	cas_latency = (popts->cas_latency_override)
+		? popts->cas_latency_override_value
+		: common_dimm->lowest_common_spd_caslat;
+
+	additive_latency = (popts->additive_latency_override)
+		? popts->additive_latency_override_value
+		: common_dimm->additive_latency;
+
+	sr_it = (popts->auto_self_refresh_en)
+		? popts->sr_it
+		: 0;
+	/* write leveling */
+	wrlvl_en = (popts->wrlvl_en) ? 1 : 0;
+
+	/* Chip Select Memory Bounds (CSn_BNDS) */
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		unsigned long long ea, sa;
+		unsigned int cs_per_dimm
+			= c->chip_selects_per_ctrl / c->dimm_slots_per_ctrl;
+		unsigned int dimm_number
+			= i / cs_per_dimm;
+		unsigned long long rank_density
+			= dimm_params[dimm_number].rank_density >> c->dbw_capacity_adjust;
+
+		if (dimm_params[dimm_number].n_ranks == 0) {
+			debug("Skipping setup of CS%u "
+				"because n_ranks on DIMM %u is 0\n", i, dimm_number);
+			continue;
+		}
+		if (popts->memctl_interleaving) {
+			switch (popts->ba_intlv_ctl & FSL_DDR_CS0_CS1_CS2_CS3) {
+			case FSL_DDR_CS0_CS1_CS2_CS3:
+				break;
+			case FSL_DDR_CS0_CS1:
+			case FSL_DDR_CS0_CS1_AND_CS2_CS3:
+				if (i > 1)
+					cs_en = 0;
+				break;
+			case FSL_DDR_CS2_CS3:
+			default:
+				if (i > 0)
+					cs_en = 0;
+				break;
+			}
+			sa = common_dimm->base_address;
+			ea = sa + common_dimm->total_mem - 1;
+		} else if (!popts->memctl_interleaving) {
+			/*
+			 * If memory interleaving between controllers is NOT
+			 * enabled, the starting address for each memory
+			 * controller is distinct.  However, because rank
+			 * interleaving is enabled, the starting and ending
+			 * addresses of the total memory on that memory
+			 * controller needs to be programmed into its
+			 * respective CS0_BNDS.
+			 */
+			switch (popts->ba_intlv_ctl & FSL_DDR_CS0_CS1_CS2_CS3) {
+			case FSL_DDR_CS0_CS1_CS2_CS3:
+				sa = common_dimm->base_address;
+				ea = sa + common_dimm->total_mem - 1;
+				break;
+			case FSL_DDR_CS0_CS1_AND_CS2_CS3:
+				if ((i >= 2) && (dimm_number == 0)) {
+					sa = dimm_params[dimm_number].base_address +
+					      2 * rank_density;
+					ea = sa + 2 * rank_density - 1;
+				} else {
+					sa = dimm_params[dimm_number].base_address;
+					ea = sa + 2 * rank_density - 1;
+				}
+				break;
+			case FSL_DDR_CS0_CS1:
+				if (dimm_params[dimm_number].n_ranks > (i % cs_per_dimm)) {
+					sa = dimm_params[dimm_number].base_address;
+					ea = sa + rank_density - 1;
+					if (i != 1)
+						sa += (i % cs_per_dimm) * rank_density;
+					ea += (i % cs_per_dimm) * rank_density;
+				} else {
+					sa = 0;
+					ea = 0;
+				}
+				if (i == 0)
+					ea += rank_density;
+				break;
+			case FSL_DDR_CS2_CS3:
+				if (dimm_params[dimm_number].n_ranks > (i % cs_per_dimm)) {
+					sa = dimm_params[dimm_number].base_address;
+					ea = sa + rank_density - 1;
+					if (i != 3)
+						sa += (i % cs_per_dimm) * rank_density;
+					ea += (i % cs_per_dimm) * rank_density;
+				} else {
+					sa = 0;
+					ea = 0;
+				}
+				if (i == 2)
+					ea += (rank_density >> c->dbw_capacity_adjust);
+				break;
+			default:  /* No bank(chip-select) interleaving */
+				sa = dimm_params[dimm_number].base_address;
+				ea = sa + rank_density - 1;
+				if (dimm_params[dimm_number].n_ranks > (i % cs_per_dimm)) {
+					sa += (i % cs_per_dimm) * rank_density;
+					ea += (i % cs_per_dimm) * rank_density;
+				} else {
+					sa = 0;
+					ea = 0;
+				}
+				break;
+			}
+		}
+
+		sa >>= 24;
+		ea >>= 24;
+
+		if (cs_en) {
+			ddr->cs[i].bnds = (0
+				| ((sa & 0xffff) << 16) /* starting address */
+				| ((ea & 0xffff) << 0)	/* ending address */
+				);
+		} else {
+			/* setting bnds to 0xffffffff for inactive CS */
+			ddr->cs[i].bnds = 0xffffffff;
+		}
+
+		debug("FSLDDR: cs[%d]_bnds = 0x%08x\n", i, ddr->cs[i].bnds);
+		set_csn_config(dimm_number, i, ddr, popts, dimm_params);
+		set_csn_config_2(i, ddr);
+	}
+
+	set_ddr_eor(c);
+
+	if (!is_ddr1(popts))
+		set_timing_cfg_0(c);
+
+	set_timing_cfg_3(c, cas_latency,
+			 additive_latency);
+	set_timing_cfg_1(c, cas_latency);
+	set_timing_cfg_2(c, cas_latency, additive_latency);
+
+	set_ddr_cdr1(c);
+	set_ddr_cdr2(c);
+	set_ddr_sdram_cfg(c);
+	ip_rev = fsl_ddr_get_version(c);
+	if (ip_rev > 0x40400)
+		unq_mrs_en = 1;
+
+	if ((ip_rev > 0x40700) && (popts->cswl_override != 0))
+		ddr->debug[18] = popts->cswl_override;
+
+	set_ddr_sdram_cfg_2(c, unq_mrs_en);
+	if (is_ddr4(popts)) {
+		set_ddr_sdram_mode_ddr4(c, cas_latency, additive_latency, unq_mrs_en);
+		set_ddr4_sdram_mode_2(c, unq_mrs_en);
+		set_ddr_sdram_mode_9(c, unq_mrs_en);
+		set_ddr_sdram_mode_10(c, unq_mrs_en);
+	} else if (is_ddr3(popts)) {
+		set_ddr_sdram_mode_ddr3(c, cas_latency, additive_latency, unq_mrs_en);
+		set_ddr3_sdram_mode_2(c, unq_mrs_en);
+	} else {
+		set_ddr_sdram_mode_ddr12(c, cas_latency, additive_latency, unq_mrs_en);
+		set_ddr1_2_sdram_mode_2(c, unq_mrs_en);
+	}
+
+	set_ddr_sdram_rcw(c);
+
+	set_ddr_sdram_interval(c);
+
+	ddr->ddr_data_init = 0xdeadbeef;
+
+	set_ddr_sdram_clk_cntl(c);
+	set_ddr_init_addr(c);
+	set_ddr_init_ext_addr(c);
+	set_timing_cfg_4(c);
+	set_timing_cfg_5(c, cas_latency);
+
+	if (is_ddr4(popts)) {
+		set_ddr_sdram_cfg_3(c);
+		set_timing_cfg_6(c);
+		set_timing_cfg_7(c);
+		set_timing_cfg_8(c, cas_latency);
+		set_timing_cfg_9(c);
+		set_ddr_dq_mapping(c);
+	}
+
+	set_ddr_zq_cntl(c, popts->zq_en);
+	set_ddr_wrlvl_cntl(c, wrlvl_en);
+
+	set_ddr_sr_cntr(c, sr_it);
+
+	if (c->erratum_A004508 && ip_rev >= 0x40000 && ip_rev < 0x40400)
+		ddr->debug[2] |= 0x00000200;	/* set bit 22 */
+
+	/* Erratum applies when accumulated ECC is used, or DBI is enabled */
+#define IS_ACC_ECC_EN(v) ((v) & 0x4)
+#define IS_DBI(v) ((((v) >> 12) & 0x3) == 0x2)
+	if (c->erratum_A008378) {
+		if (IS_ACC_ECC_EN(ddr->ddr_sdram_cfg) ||
+		    IS_DBI(ddr->ddr_sdram_cfg_3)) {
+			ddr->debug[28] = ddr_in32(&ddrc->debug[28]);
+			ddr->debug[28] |= (0x9 << 20);
+		}
+	}
+
+	if (c->erratum_A009942) {
+		ddr_freq = c->ddr_freq / 1000000;
+		ddr->debug[28] |= ddr_in32(&ddrc->debug[28]);
+		ddr->debug[28] &= 0xff0fff00;
+		if (ddr_freq <= 1333)
+			ddr->debug[28] |= 0x0080006a;
+		else if (ddr_freq <= 1600)
+			ddr->debug[28] |= 0x0070006f;
+		else if (ddr_freq <= 1867)
+			ddr->debug[28] |= 0x00700076;
+		else if (ddr_freq <= 2133)
+			ddr->debug[28] |= 0x0060007b;
+		if (popts->cpo_sample)
+			ddr->debug[28] = (ddr->debug[28] & 0xffffff00) |
+					popts->cpo_sample;
+	}
+
+	return check_fsl_memctl_config_regs(c);
+}
diff --git a/drivers/ddr/fsl/ddr1_dimm_params.c b/drivers/ddr/fsl/ddr1_dimm_params.c
new file mode 100644
index 0000000000..268bf5bde4
--- /dev/null
+++ b/drivers/ddr/fsl/ddr1_dimm_params.c
@@ -0,0 +1,319 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ */
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <linux/log2.h>
+#include "fsl_ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Study these table from Byte 31 of JEDEC SPD Spec.
+ *
+ *		DDR I	DDR II
+ *	Bit	Size	Size
+ *	---	-----	------
+ *	7 high	512MB	512MB
+ *	6	256MB	256MB
+ *	5	128MB	128MB
+ *	4	 64MB	 16GB
+ *	3	 32MB	  8GB
+ *	2	 16MB	  4GB
+ *	1	  2GB	  2GB
+ *	0 low	  1GB	  1GB
+ *
+ * Reorder Table to be linear by stripping the bottom
+ * 2 or 5 bits off and shifting them up to the top.
+ */
+
+static unsigned long long
+compute_ranksize(unsigned int mem_type, unsigned char row_dens)
+{
+	unsigned long long bsize;
+
+	/* Bottom 2 bits up to the top. */
+	bsize = ((row_dens >> 2) | ((row_dens & 3) << 6));
+	bsize <<= 24ULL;
+	debug("DDR: DDR I rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * Convert a two-nibble BCD value into a cycle time.
+ * While the spec calls for nano-seconds, picos are returned.
+ *
+ * This implements the tables for bytes 9, 23 and 25 for both
+ * DDR I and II.  No allowance for distinguishing the invalid
+ * fields absent for DDR I yet present in DDR II is made.
+ * (That is, cycle times of .25, .33, .66 and .75 ns are
+ * allowed for both DDR II and I.)
+ */
+static unsigned int
+convert_bcd_tenths_to_cycle_time_ps(unsigned int spd_val)
+{
+	/* Table look up the lower nibble, allow DDR I & II. */
+	unsigned int tenths_ps[16] = {
+		0,
+		100,
+		200,
+		300,
+		400,
+		500,
+		600,
+		700,
+		800,
+		900,
+		250,	/* This and the next 3 entries valid ... */
+		330,	/* ...  only for tCK calculations. */
+		660,
+		750,
+		0,	/* undefined */
+		0	/* undefined */
+	};
+
+	unsigned int whole_ns = (spd_val & 0xF0) >> 4;
+	unsigned int tenth_ns = spd_val & 0x0F;
+	unsigned int ps = whole_ns * 1000 + tenths_ps[tenth_ns];
+
+	return ps;
+}
+
+static unsigned int
+convert_bcd_hundredths_to_cycle_time_ps(unsigned int spd_val)
+{
+	unsigned int tenth_ns = (spd_val & 0xF0) >> 4;
+	unsigned int hundredth_ns = spd_val & 0x0F;
+	unsigned int ps = tenth_ns * 100 + hundredth_ns * 10;
+
+	return ps;
+}
+
+static unsigned int byte40_table_ps[8] = {
+	0,
+	250,
+	330,
+	500,
+	660,
+	750,
+	0,	/* supposed to be RFC, but not sure what that means */
+	0	/* Undefined */
+};
+
+static unsigned int
+compute_trfc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trfc)
+{
+	return ((trctrfc_ext & 0x1) * 256 + trfc) * 1000
+		+ byte40_table_ps[(trctrfc_ext >> 1) & 0x7];
+}
+
+static unsigned int
+compute_trc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trc)
+{
+	return trc * 1000 + byte40_table_ps[(trctrfc_ext >> 4) & 0x7];
+}
+
+/*
+ * tCKmax from DDR I SPD Byte 43
+ *
+ * Bits 7:2 == whole ns
+ * Bits 1:0 == quarter ns
+ *    00    == 0.00 ns
+ *    01    == 0.25 ns
+ *    10    == 0.50 ns
+ *    11    == 0.75 ns
+ *
+ * Returns picoseconds.
+ */
+static unsigned int
+compute_tckmax_from_spd_ps(unsigned int byte43)
+{
+	return (byte43 >> 2) * 1000 + (byte43 & 0x3) * 250;
+}
+
+/*
+ * Determine Refresh Rate.  Ignore self refresh bit on DDR I.
+ * Table from SPD Spec, Byte 12, converted to picoseconds and
+ * filled in with "default" normal values.
+ */
+static unsigned int
+determine_refresh_rate_ps(const unsigned int spd_refresh)
+{
+	unsigned int refresh_time_ps[8] = {
+		15625000,	/* 0 Normal    1.00x */
+		3900000,	/* 1 Reduced    .25x */
+		7800000,	/* 2 Extended   .50x */
+		31300000,	/* 3 Extended  2.00x */
+		62500000,	/* 4 Extended  4.00x */
+		125000000,	/* 5 Extended  8.00x */
+		15625000,	/* 6 Normal    1.00x  filler */
+		15625000,	/* 7 Normal    1.00x  filler */
+	};
+
+	return refresh_time_ps[spd_refresh & 0x7];
+}
+
+/*
+ * The purpose of this function is to compute a suitable
+ * CAS latency given the DRAM clock period.  The SPD only
+ * defines at most 3 CAS latencies.  Typically the slower in
+ * frequency the DIMM runs at, the shorter its CAS latency can be.
+ * If the DIMM is operating at a sufficiently low frequency,
+ * it may be able to run at a CAS latency shorter than the
+ * shortest SPD-defined CAS latency.
+ *
+ * If a CAS latency is not found, 0 is returned.
+ *
+ * Do this by finding in the standard speed bin table the longest
+ * tCKmin that doesn't exceed the value of mclk_ps (tCK).
+ *
+ * An assumption made is that the SDRAM device allows the
+ * CL to be programmed for a value that is lower than those
+ * advertised by the SPD.  This is not always the case,
+ * as those modes not defined in the SPD are optional.
+ *
+ * CAS latency de-rating based upon values JEDEC Standard No. 79-E
+ * Table 11.
+ *
+ * ordinal 2, ddr1_speed_bins[1] contains tCK for CL=2
+ */
+				  /*   CL2.0 CL2.5 CL3.0  */
+unsigned short ddr1_speed_bins[] = {0, 7500, 6000, 5000 };
+
+static unsigned int
+compute_derated_DDR1_CAS_latency(unsigned int mclk_ps)
+{
+	const unsigned int num_speed_bins = ARRAY_SIZE(ddr1_speed_bins);
+	unsigned int lowest_tCKmin_found = 0;
+	unsigned int lowest_tCKmin_CL = 0;
+	unsigned int i;
+
+	debug("mclk_ps = %u\n", mclk_ps);
+
+	for (i = 0; i < num_speed_bins; i++) {
+		unsigned int x = ddr1_speed_bins[i];
+		debug("i=%u, x = %u, lowest_tCKmin_found = %u\n",
+		      i, x, lowest_tCKmin_found);
+		if (x && lowest_tCKmin_found <= x && x <= mclk_ps) {
+			lowest_tCKmin_found = x;
+			lowest_tCKmin_CL = i + 1;
+		}
+	}
+
+	debug("lowest_tCKmin_CL = %u\n", lowest_tCKmin_CL);
+
+	return lowest_tCKmin_CL;
+}
+
+/*
+ * ddr1_compute_dimm_parameters for DDR1 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the struct dimm_params structure pointed by pdimm.
+ *
+ * FIXME: use #define for the retvals
+ */
+unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr1_spd_eeprom *spd,
+					  struct dimm_params *pdimm)
+{
+	int ret;
+
+	ret = ddr1_spd_check(spd);
+	if (ret) {
+		printf("DIMM: failed checksum\n");
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = spd->nrows;
+	pdimm->rank_density = compute_ranksize(spd->mem_type, spd->bank_dens);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->data_width = spd->dataw_lsb;
+	pdimm->primary_sdram_width = spd->primw;
+	pdimm->ec_sdram_width = spd->ecw;
+
+	/*
+	 * FIXME: Need to determine registered_dimm status.
+	 *     1 == register buffered
+	 *     0 == unbuffered
+	 */
+	pdimm->registered_dimm = 0;	/* unbuffered */
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = spd->nrow_addr;
+	pdimm->n_col_addr = spd->ncol_addr;
+	pdimm->n_banks_per_sdram_device = spd->nbanks;
+	pdimm->edc_config = spd->config;
+	pdimm->burst_lengths_bitmask = spd->burstl;
+
+	/*
+	 * Calculate the Maximum Data Rate based on the Minimum Cycle time.
+	 * The SPD clk_cycle field (tCKmin) is measured in tenths of
+	 * nanoseconds and represented as BCD.
+	 */
+	pdimm->tckmin_x_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle);
+	pdimm->tckmin_x_minus_1_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle2);
+	pdimm->tckmin_x_minus_2_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle3);
+
+	pdimm->tckmax_ps = compute_tckmax_from_spd_ps(spd->tckmax);
+
+	/*
+	 * Compute CAS latencies defined by SPD
+	 * The SPD caslat_x should have at least 1 and at most 3 bits set.
+	 *
+	 * If cas_lat after masking is 0, the __ilog2 function returns
+	 * 255 into the variable.   This behavior is abused once.
+	 */
+	pdimm->caslat_x  = ilog2(spd->cas_lat);
+	pdimm->caslat_x_minus_1 = ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_x));
+	pdimm->caslat_x_minus_2 = ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_x)
+					  & ~(1 << pdimm->caslat_x_minus_1));
+
+	/* Compute CAS latencies below that defined by SPD */
+	pdimm->caslat_lowest_derated = compute_derated_DDR1_CAS_latency(
+					get_memory_clk_period_ps(c));
+
+	/* Compute timing parameters */
+	pdimm->trcd_ps = spd->trcd * 250;
+	pdimm->trp_ps = spd->trp * 250;
+	pdimm->tras_ps = spd->tras * 1000;
+
+	pdimm->twr_ps = mclk_to_picos(c, 3);
+	pdimm->twtr_ps = mclk_to_picos(c, 1);
+	pdimm->trfc_ps = compute_trfc_ps_from_spd(0, spd->trfc);
+
+	pdimm->trrd_ps = spd->trrd * 250;
+	pdimm->trc_ps = compute_trc_ps_from_spd(0, spd->trc);
+
+	pdimm->refresh_rate_ps = determine_refresh_rate_ps(spd->refresh);
+
+	pdimm->tis_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_setup);
+	pdimm->tih_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_hold);
+	pdimm->tds_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_setup);
+	pdimm->tdh_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
+
+	pdimm->trtp_ps = mclk_to_picos(c, 2);	/* By the book. */
+	pdimm->tdqsq_max_ps = spd->tdqsq * 10;
+	pdimm->tqhs_ps = spd->tqhs * 10;
+
+	return 0;
+}
diff --git a/drivers/ddr/fsl/ddr2_dimm_params.c b/drivers/ddr/fsl/ddr2_dimm_params.c
new file mode 100644
index 0000000000..3f8b56330d
--- /dev/null
+++ b/drivers/ddr/fsl/ddr2_dimm_params.c
@@ -0,0 +1,320 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008 Freescale Semiconductor, Inc.
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <linux/log2.h>
+#include "fsl_ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Study these table from Byte 31 of JEDEC SPD Spec.
+ *
+ *		DDR I	DDR II
+ *	Bit	Size	Size
+ *	---	-----	------
+ *	7 high	512MB	512MB
+ *	6	256MB	256MB
+ *	5	128MB	128MB
+ *	4	 64MB	 16GB
+ *	3	 32MB	  8GB
+ *	2	 16MB	  4GB
+ *	1	  2GB	  2GB
+ *	0 low	  1GB	  1GB
+ *
+ * Reorder Table to be linear by stripping the bottom
+ * 2 or 5 bits off and shifting them up to the top.
+ *
+ */
+static unsigned long long
+compute_ranksize(unsigned int mem_type, unsigned char row_dens)
+{
+	unsigned long long bsize;
+
+	/* Bottom 5 bits up to the top. */
+	bsize = ((row_dens >> 5) | ((row_dens & 31) << 3));
+	bsize <<= 27ULL;
+	debug("DDR: DDR II rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * Convert a two-nibble BCD value into a cycle time.
+ * While the spec calls for nano-seconds, picos are returned.
+ *
+ * This implements the tables for bytes 9, 23 and 25 for both
+ * DDR I and II.  No allowance for distinguishing the invalid
+ * fields absent for DDR I yet present in DDR II is made.
+ * (That is, cycle times of .25, .33, .66 and .75 ns are
+ * allowed for both DDR II and I.)
+ */
+static unsigned int
+convert_bcd_tenths_to_cycle_time_ps(unsigned int spd_val)
+{
+	/* Table look up the lower nibble, allow DDR I & II. */
+	unsigned int tenths_ps[16] = {
+		0,
+		100,
+		200,
+		300,
+		400,
+		500,
+		600,
+		700,
+		800,
+		900,
+		250,	/* This and the next 3 entries valid ... */
+		330,	/* ...  only for tCK calculations. */
+		660,
+		750,
+		0,	/* undefined */
+		0	/* undefined */
+	};
+
+	unsigned int whole_ns = (spd_val & 0xF0) >> 4;
+	unsigned int tenth_ns = spd_val & 0x0F;
+	unsigned int ps = whole_ns * 1000 + tenths_ps[tenth_ns];
+
+	return ps;
+}
+
+static unsigned int
+convert_bcd_hundredths_to_cycle_time_ps(unsigned int spd_val)
+{
+	unsigned int tenth_ns = (spd_val & 0xF0) >> 4;
+	unsigned int hundredth_ns = spd_val & 0x0F;
+	unsigned int ps = tenth_ns * 100 + hundredth_ns * 10;
+
+	return ps;
+}
+
+static unsigned int byte40_table_ps[8] = {
+	0,
+	250,
+	330,
+	500,
+	660,
+	750,
+	0,	/* supposed to be RFC, but not sure what that means */
+	0	/* Undefined */
+};
+
+static unsigned int
+compute_trfc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trfc)
+{
+	return (((trctrfc_ext & 0x1) * 256) + trfc) * 1000
+		+ byte40_table_ps[(trctrfc_ext >> 1) & 0x7];
+}
+
+static unsigned int
+compute_trc_ps_from_spd(unsigned char trctrfc_ext, unsigned char trc)
+{
+	return trc * 1000 + byte40_table_ps[(trctrfc_ext >> 4) & 0x7];
+}
+
+/*
+ * Determine Refresh Rate.  Ignore self refresh bit on DDR I.
+ * Table from SPD Spec, Byte 12, converted to picoseconds and
+ * filled in with "default" normal values.
+ */
+static unsigned int
+determine_refresh_rate_ps(const unsigned int spd_refresh)
+{
+	unsigned int refresh_time_ps[8] = {
+		15625000,	/* 0 Normal    1.00x */
+		3900000,	/* 1 Reduced    .25x */
+		7800000,	/* 2 Extended   .50x */
+		31300000,	/* 3 Extended  2.00x */
+		62500000,	/* 4 Extended  4.00x */
+		125000000,	/* 5 Extended  8.00x */
+		15625000,	/* 6 Normal    1.00x  filler */
+		15625000,	/* 7 Normal    1.00x  filler */
+	};
+
+	return refresh_time_ps[spd_refresh & 0x7];
+}
+
+/*
+ * The purpose of this function is to compute a suitable
+ * CAS latency given the DRAM clock period.  The SPD only
+ * defines at most 3 CAS latencies.  Typically the slower in
+ * frequency the DIMM runs at, the shorter its CAS latency can.
+ * be.  If the DIMM is operating at a sufficiently low frequency,
+ * it may be able to run at a CAS latency shorter than the
+ * shortest SPD-defined CAS latency.
+ *
+ * If a CAS latency is not found, 0 is returned.
+ *
+ * Do this by finding in the standard speed bin table the longest
+ * tCKmin that doesn't exceed the value of mclk_ps (tCK).
+ *
+ * An assumption made is that the SDRAM device allows the
+ * CL to be programmed for a value that is lower than those
+ * advertised by the SPD.  This is not always the case,
+ * as those modes not defined in the SPD are optional.
+ *
+ * CAS latency de-rating based upon values JEDEC Standard No. 79-2C
+ * Table 40, "DDR2 SDRAM stanadard speed bins and tCK, tRCD, tRP, tRAS,
+ * and tRC for corresponding bin"
+ *
+ * ordinal 2, ddr2_speed_bins[1] contains tCK for CL=3
+ * Not certain if any good value exists for CL=2
+ */
+				 /* CL2   CL3   CL4   CL5   CL6  CL7*/
+unsigned short ddr2_speed_bins[] = {   0, 5000, 3750, 3000, 2500, 1875 };
+
+static unsigned int
+compute_derated_DDR2_CAS_latency(unsigned int mclk_ps)
+{
+	const unsigned int num_speed_bins = ARRAY_SIZE(ddr2_speed_bins);
+	unsigned int lowest_tCKmin_found = 0;
+	unsigned int lowest_tCKmin_CL = 0;
+	unsigned int i;
+
+	debug("mclk_ps = %u\n", mclk_ps);
+
+	for (i = 0; i < num_speed_bins; i++) {
+		unsigned int x = ddr2_speed_bins[i];
+		debug("i=%u, x = %u, lowest_tCKmin_found = %u\n",
+		      i, x, lowest_tCKmin_found);
+		if (x && x <= mclk_ps && x >= lowest_tCKmin_found ) {
+			lowest_tCKmin_found = x;
+			lowest_tCKmin_CL = i + 2;
+		}
+	}
+
+	debug("lowest_tCKmin_CL = %u\n", lowest_tCKmin_CL);
+
+	return lowest_tCKmin_CL;
+}
+
+/*
+ * ddr2_compute_dimm_parameters for DDR2 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the struct dimm_params structure pointed by pdimm.
+ *
+ * FIXME: use #define for the retvals
+ */
+unsigned int ddr2_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr2_spd_eeprom *spd,
+					  struct dimm_params *pdimm)
+{
+	int ret;
+
+	ret = ddr2_spd_check(spd);
+	if (ret) {
+		printf("DIMM: failed checksum\n");
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = (spd->mod_ranks & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd->mem_type, spd->rank_dens);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->data_width = spd->dataw;
+	pdimm->primary_sdram_width = spd->primw;
+	pdimm->ec_sdram_width = spd->ecw;
+
+	/* These are all the types defined by the JEDEC DDR2 SPD 1.3 spec */
+	switch (spd->dimm_type) {
+	case DDR2_SPD_DIMMTYPE_RDIMM:
+	case DDR2_SPD_DIMMTYPE_72B_SO_RDIMM:
+	case DDR2_SPD_DIMMTYPE_MINI_RDIMM:
+		/* Registered/buffered DIMMs */
+		pdimm->registered_dimm = 1;
+		break;
+
+	case DDR2_SPD_DIMMTYPE_UDIMM:
+	case DDR2_SPD_DIMMTYPE_SO_DIMM:
+	case DDR2_SPD_DIMMTYPE_MICRO_DIMM:
+	case DDR2_SPD_DIMMTYPE_MINI_UDIMM:
+		/* Unbuffered DIMMs */
+		pdimm->registered_dimm = 0;
+		break;
+
+	case DDR2_SPD_DIMMTYPE_72B_SO_CDIMM:
+	default:
+		printf("unknown dimm_type 0x%02X\n", spd->dimm_type);
+		return 1;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = spd->nrow_addr;
+	pdimm->n_col_addr = spd->ncol_addr;
+	pdimm->n_banks_per_sdram_device = spd->nbanks;
+	pdimm->edc_config = spd->config;
+	pdimm->burst_lengths_bitmask = spd->burstl;
+
+	/*
+	 * Calculate the Maximum Data Rate based on the Minimum Cycle time.
+	 * The SPD clk_cycle field (tCKmin) is measured in tenths of
+	 * nanoseconds and represented as BCD.
+	 */
+	pdimm->tckmin_x_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle);
+	pdimm->tckmin_x_minus_1_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle2);
+	pdimm->tckmin_x_minus_2_ps
+		= convert_bcd_tenths_to_cycle_time_ps(spd->clk_cycle3);
+
+	pdimm->tckmax_ps = convert_bcd_tenths_to_cycle_time_ps(spd->tckmax);
+
+	/*
+	 * Compute CAS latencies defined by SPD
+	 * The SPD caslat_x should have at least 1 and at most 3 bits set.
+	 *
+	 * If cas_lat after masking is 0, the __ilog2 function returns
+	 * 255 into the variable.   This behavior is abused once.
+	 */
+	pdimm->caslat_x  = ilog2(spd->cas_lat);
+	pdimm->caslat_x_minus_1 = ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_x));
+	pdimm->caslat_x_minus_2 = ilog2(spd->cas_lat
+					  & ~(1 << pdimm->caslat_x)
+					  & ~(1 << pdimm->caslat_x_minus_1));
+
+	/* Compute CAS latencies below that defined by SPD */
+	pdimm->caslat_lowest_derated = compute_derated_DDR2_CAS_latency(
+					get_memory_clk_period_ps(c));
+
+	/* Compute timing parameters */
+	pdimm->trcd_ps = spd->trcd * 250;
+	pdimm->trp_ps = spd->trp * 250;
+	pdimm->tras_ps = spd->tras * 1000;
+
+	pdimm->twr_ps = spd->twr * 250;
+	pdimm->twtr_ps = spd->twtr * 250;
+	pdimm->trfc_ps = compute_trfc_ps_from_spd(spd->trctrfc_ext, spd->trfc);
+
+	pdimm->trrd_ps = spd->trrd * 250;
+	pdimm->trc_ps = compute_trc_ps_from_spd(spd->trctrfc_ext, spd->trc);
+
+	pdimm->refresh_rate_ps = determine_refresh_rate_ps(spd->refresh);
+
+	pdimm->tis_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_setup);
+	pdimm->tih_ps = convert_bcd_hundredths_to_cycle_time_ps(spd->ca_hold);
+	pdimm->tds_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_setup);
+	pdimm->tdh_ps
+		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
+
+	pdimm->trtp_ps = spd->trtp * 250;
+	pdimm->tdqsq_max_ps = spd->tdqsq * 10;
+	pdimm->tqhs_ps = spd->tqhs * 10;
+
+	return 0;
+}
diff --git a/drivers/ddr/fsl/ddr3_dimm_params.c b/drivers/ddr/fsl/ddr3_dimm_params.c
new file mode 100644
index 0000000000..1665e792c3
--- /dev/null
+++ b/drivers/ddr/fsl/ddr3_dimm_params.c
@@ -0,0 +1,325 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008-2012 Freescale Semiconductor, Inc.
+ *	Dave Liu <daveliu@freescale.com>
+ *
+ * calculate the organization and timing parameter
+ * from ddr3 spd, please refer to the spec
+ * JEDEC standard No.21-C 4_01_02_11R18.pdf
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include "fsl_ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * each rank size =
+ * sdram capacity(bit) / 8 * primary bus width / sdram width
+ *
+ * where: sdram capacity  = spd byte4[3:0]
+ *        primary bus width = spd byte8[2:0]
+ *        sdram width = spd byte7[2:0]
+ *
+ * SPD byte4 - sdram density and banks
+ *	bit[3:0]	size(bit)	size(byte)
+ *	0000		256Mb		32MB
+ *	0001		512Mb		64MB
+ *	0010		1Gb		128MB
+ *	0011		2Gb		256MB
+ *	0100		4Gb		512MB
+ *	0101		8Gb		1GB
+ *	0110		16Gb		2GB
+ *
+ * SPD byte8 - module memory bus width
+ * 	bit[2:0]	primary bus width
+ *	000		8bits
+ * 	001		16bits
+ * 	010		32bits
+ * 	011		64bits
+ *
+ * SPD byte7 - module organiztion
+ * 	bit[2:0]	sdram device width
+ * 	000		4bits
+ * 	001		8bits
+ * 	010		16bits
+ * 	011		32bits
+ *
+ */
+static unsigned long long
+compute_ranksize(const struct ddr3_spd_eeprom *spd)
+{
+	unsigned long long bsize;
+
+	int nbit_sdram_cap_bsize = 0;
+	int nbit_primary_bus_width = 0;
+	int nbit_sdram_width = 0;
+
+	if ((spd->density_banks & 0xf) < 7)
+		nbit_sdram_cap_bsize = (spd->density_banks & 0xf) + 28;
+	if ((spd->bus_width & 0x7) < 4)
+		nbit_primary_bus_width = (spd->bus_width & 0x7) + 3;
+	if ((spd->organization & 0x7) < 4)
+		nbit_sdram_width = (spd->organization & 0x7) + 2;
+
+	bsize = 1ULL << (nbit_sdram_cap_bsize - 3
+		    + nbit_primary_bus_width - nbit_sdram_width);
+
+	debug("DDR: DDR III rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+/*
+ * ddr3_compute_dimm_parameters for DDR3 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the struct dimm_params structure pointed by pdimm.
+ *
+ */
+unsigned int ddr3_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					 const struct ddr3_spd_eeprom *spd,
+					 struct dimm_params *pdimm)
+{
+	int ret;
+	unsigned int mtb_ps;
+	int ftb_10th_ps;
+	int i;
+
+	ret = ddr3_spd_check(spd);
+	if (ret) {
+		printf("DIMM: failed checksum\n");
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	if ((spd->info_size_crc & 0xF) > 1)
+		memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = ((spd->organization >> 3) & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->primary_sdram_width = 1 << (3 + (spd->bus_width & 0x7));
+	if ((spd->bus_width >> 3) & 0x3)
+		pdimm->ec_sdram_width = 8;
+	else
+		pdimm->ec_sdram_width = 0;
+	pdimm->data_width = pdimm->primary_sdram_width
+			  + pdimm->ec_sdram_width;
+	pdimm->device_width = 1 << ((spd->organization & 0x7) + 2);
+
+	/* These are the types defined by the JEDEC DDR3 SPD spec */
+	pdimm->mirrored_dimm = 0;
+	pdimm->registered_dimm = 0;
+	switch (spd->module_type & DDR3_SPD_MODULETYPE_MASK) {
+	case DDR3_SPD_MODULETYPE_RDIMM:
+	case DDR3_SPD_MODULETYPE_MINI_RDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_RDIMM:
+		/* Registered/buffered DIMMs */
+		pdimm->registered_dimm = 1;
+		for (i = 0; i < 16; i += 2) {
+			u8 rcw = spd->mod_section.registered.rcw[i/2];
+			pdimm->rcw[i]   = (rcw >> 0) & 0x0F;
+			pdimm->rcw[i+1] = (rcw >> 4) & 0x0F;
+		}
+		break;
+
+	case DDR3_SPD_MODULETYPE_UDIMM:
+	case DDR3_SPD_MODULETYPE_SO_DIMM:
+	case DDR3_SPD_MODULETYPE_MICRO_DIMM:
+	case DDR3_SPD_MODULETYPE_MINI_UDIMM:
+	case DDR3_SPD_MODULETYPE_MINI_CDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_UDIMM:
+	case DDR3_SPD_MODULETYPE_72B_SO_CDIMM:
+	case DDR3_SPD_MODULETYPE_LRDIMM:
+	case DDR3_SPD_MODULETYPE_16B_SO_DIMM:
+	case DDR3_SPD_MODULETYPE_32B_SO_DIMM:
+		/* Unbuffered DIMMs */
+		if (spd->mod_section.unbuffered.addr_mapping & 0x1)
+			pdimm->mirrored_dimm = 1;
+		break;
+
+	default:
+		printf("unknown module_type 0x%02X\n", spd->module_type);
+		return 1;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = ((spd->addressing >> 3) & 0x7) + 12;
+	pdimm->n_col_addr = (spd->addressing & 0x7) + 9;
+	pdimm->n_banks_per_sdram_device = 8 << ((spd->density_banks >> 4) & 0x7);
+
+	/*
+	 * The SPD spec has not the ECC bit,
+	 * We consider the DIMM as ECC capability
+	 * when the extension bus exist
+	 */
+	if (pdimm->ec_sdram_width)
+		pdimm->edc_config = 0x02;
+	else
+		pdimm->edc_config = 0x00;
+
+	/*
+	 * The SPD spec has not the burst length byte
+	 * but DDR3 spec has nature BL8 and BC4,
+	 * BL8 -bit3, BC4 -bit2
+	 */
+	pdimm->burst_lengths_bitmask = 0x0c;
+
+	/* MTB - medium timebase
+	 * The unit in the SPD spec is ns,
+	 * We convert it to ps.
+	 * eg: MTB = 0.125ns (125ps)
+	 */
+	mtb_ps = (spd->mtb_dividend * 1000) /spd->mtb_divisor;
+	pdimm->mtb_ps = mtb_ps;
+
+	/*
+	 * FTB - fine timebase
+	 * use 1/10th of ps as our unit to avoid floating point
+	 * eg, 10 for 1ps, 25 for 2.5ps, 50 for 5ps
+	 */
+	ftb_10th_ps =
+		((spd->ftb_div & 0xf0) >> 4) * 10 / (spd->ftb_div & 0x0f);
+	pdimm->ftb_10th_ps = ftb_10th_ps;
+	/*
+	 * sdram minimum cycle time
+	 * we assume the MTB is 0.125ns
+	 * eg:
+	 * tck_min=15 MTB (1.875ns) ->DDR3-1066
+	 *        =12 MTB (1.5ns) ->DDR3-1333
+	 *        =10 MTB (1.25ns) ->DDR3-1600
+	 */
+	pdimm->tckmin_x_ps = spd->tck_min * mtb_ps +
+		(spd->fine_tck_min * ftb_10th_ps) / 10;
+
+	/*
+	 * CAS latency supported
+	 * bit4 - CL4
+	 * bit5 - CL5
+	 * bit18 - CL18
+	 */
+	pdimm->caslat_x  = ((spd->caslat_msb << 8) | spd->caslat_lsb) << 4;
+
+	/*
+	 * min CAS latency time
+	 * eg: taa_min =
+	 * DDR3-800D	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25ns)
+	 */
+	pdimm->taa_ps = spd->taa_min * mtb_ps +
+		(spd->fine_taa_min * ftb_10th_ps) / 10;
+
+	/*
+	 * min write recovery time
+	 * eg:
+	 * twr_min = 120 MTB (15ns) -> all speed grades.
+	 */
+	pdimm->twr_ps = spd->twr_min * mtb_ps;
+
+	/*
+	 * min RAS to CAS delay time
+	 * eg: trcd_min =
+	 * DDR3-800	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25)
+	 */
+	pdimm->trcd_ps = spd->trcd_min * mtb_ps +
+		(spd->fine_trcd_min * ftb_10th_ps) / 10;
+
+	/*
+	 * min row active to row active delay time
+	 * eg: trrd_min =
+	 * DDR3-800(1KB page)	80 MTB (10ns)
+	 * DDR3-1333(1KB page)	48 MTB (6ns)
+	 */
+	pdimm->trrd_ps = spd->trrd_min * mtb_ps;
+
+	/*
+	 * min row precharge delay time
+	 * eg: trp_min =
+	 * DDR3-800D	100 MTB (12.5ns)
+	 * DDR3-1066F	105 MTB (13.125ns)
+	 * DDR3-1333H	108 MTB (13.5ns)
+	 * DDR3-1600H	90 MTB (11.25ns)
+	 */
+	pdimm->trp_ps = spd->trp_min * mtb_ps +
+		(spd->fine_trp_min * ftb_10th_ps) / 10;
+
+	/* min active to precharge delay time
+	 * eg: tRAS_min =
+	 * DDR3-800D	300 MTB (37.5ns)
+	 * DDR3-1066F	300 MTB (37.5ns)
+	 * DDR3-1333H	288 MTB (36ns)
+	 * DDR3-1600H	280 MTB (35ns)
+	 */
+	pdimm->tras_ps = (((spd->tras_trc_ext & 0xf) << 8) | spd->tras_min_lsb)
+			* mtb_ps;
+	/*
+	 * min active to actice/refresh delay time
+	 * eg: tRC_min =
+	 * DDR3-800D	400 MTB (50ns)
+	 * DDR3-1066F	405 MTB (50.625ns)
+	 * DDR3-1333H	396 MTB (49.5ns)
+	 * DDR3-1600H	370 MTB (46.25ns)
+	 */
+	pdimm->trc_ps = (((spd->tras_trc_ext & 0xf0) << 4) | spd->trc_min_lsb)
+			* mtb_ps + (spd->fine_trc_min * ftb_10th_ps) / 10;
+	/*
+	 * min refresh recovery delay time
+	 * eg: tRFC_min =
+	 * 512Mb	720 MTB (90ns)
+	 * 1Gb		880 MTB (110ns)
+	 * 2Gb		1280 MTB (160ns)
+	 */
+	pdimm->trfc_ps = ((spd->trfc_min_msb << 8) | spd->trfc_min_lsb)
+			* mtb_ps;
+	/*
+	 * min internal write to read command delay time
+	 * eg: twtr_min = 40 MTB (7.5ns) - all speed bins.
+	 * tWRT is at least 4 mclk independent of operating freq.
+	 */
+	pdimm->twtr_ps = spd->twtr_min * mtb_ps;
+
+	/*
+	 * min internal read to precharge command delay time
+	 * eg: trtp_min = 40 MTB (7.5ns) - all speed bins.
+	 * tRTP is at least 4 mclk independent of operating freq.
+	 */
+	pdimm->trtp_ps = spd->trtp_min * mtb_ps;
+
+	/*
+	 * Average periodic refresh interval
+	 * tREFI = 7.8 us at normal temperature range
+	 *       = 3.9 us at ext temperature range
+	 */
+	pdimm->refresh_rate_ps = 7800000;
+	if ((spd->therm_ref_opt & 0x1) && !(spd->therm_ref_opt & 0x2)) {
+		pdimm->refresh_rate_ps = 3900000;
+		pdimm->extended_op_srt = 1;
+	}
+
+	/*
+	 * min four active window delay time
+	 * eg: tfaw_min =
+	 * DDR3-800(1KB page)	320 MTB (40ns)
+	 * DDR3-1066(1KB page)	300 MTB (37.5ns)
+	 * DDR3-1333(1KB page)	240 MTB (30ns)
+	 * DDR3-1600(1KB page)	240 MTB (30ns)
+	 */
+	pdimm->tfaw_ps = (((spd->tfaw_msb & 0xf) << 8) | spd->tfaw_min)
+			* mtb_ps;
+
+	return 0;
+}
diff --git a/drivers/ddr/fsl/ddr4_dimm_params.c b/drivers/ddr/fsl/ddr4_dimm_params.c
new file mode 100644
index 0000000000..f39b6e2853
--- /dev/null
+++ b/drivers/ddr/fsl/ddr4_dimm_params.c
@@ -0,0 +1,352 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2014-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ *
+ * calculate the organization and timing parameter
+ * from ddr3 spd, please refer to the spec
+ * JEDEC standard No.21-C 4_01_02_12R23A.pdf
+ *
+ *
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include "fsl_ddr.h"
+
+/*
+ * Calculate the Density of each Physical Rank.
+ * Returned size is in bytes.
+ *
+ * Total DIMM size =
+ * sdram capacity(bit) / 8 * primary bus width / sdram width
+ *                     * Logical Ranks per DIMM
+ *
+ * where: sdram capacity  = spd byte4[3:0]
+ *        primary bus width = spd byte13[2:0]
+ *        sdram width = spd byte12[2:0]
+ *        Logical Ranks per DIMM = spd byte12[5:3] for SDP, DDP, QDP
+ *                                 spd byte12{5:3] * spd byte6[6:4] for 3DS
+ *
+ * To simplify each rank size = total DIMM size / Number of Package Ranks
+ * where Number of Package Ranks = spd byte12[5:3]
+ *
+ * SPD byte4 - sdram density and banks
+ *	bit[3:0]	size(bit)	size(byte)
+ *	0000		256Mb		32MB
+ *	0001		512Mb		64MB
+ *	0010		1Gb		128MB
+ *	0011		2Gb		256MB
+ *	0100		4Gb		512MB
+ *	0101		8Gb		1GB
+ *	0110		16Gb		2GB
+ *      0111		32Gb		4GB
+ *
+ * SPD byte13 - module memory bus width
+ *	bit[2:0]	primary bus width
+ *	000		8bits
+ *	001		16bits
+ *	010		32bits
+ *	011		64bits
+ *
+ * SPD byte12 - module organization
+ *	bit[2:0]	sdram device width
+ *	000		4bits
+ *	001		8bits
+ *	010		16bits
+ *	011		32bits
+ *
+ * SPD byte12 - module organization
+ *	bit[5:3]	number of package ranks per DIMM
+ *	000		1
+ *	001		2
+ *	010		3
+ *	011		4
+ *
+ * SPD byte6 - SDRAM package type
+ *	bit[6:4]	Die count
+ *	000		1
+ *	001		2
+ *	010		3
+ *	011		4
+ *	100		5
+ *	101		6
+ *	110		7
+ *	111		8
+ *
+ * SPD byte6 - SRAM package type
+ *	bit[1:0]	Signal loading
+ *	00		Not specified
+ *	01		Multi load stack
+ *	10		Sigle load stack (3DS)
+ *	11		Reserved
+ */
+static unsigned long long
+compute_ranksize(const struct ddr4_spd_eeprom *spd)
+{
+	unsigned long long bsize;
+
+	int nbit_sdram_cap_bsize = 0;
+	int nbit_primary_bus_width = 0;
+	int nbit_sdram_width = 0;
+	int die_count = 0;
+	bool package_3ds;
+
+	if ((spd->density_banks & 0xf) <= 7)
+		nbit_sdram_cap_bsize = (spd->density_banks & 0xf) + 28;
+	if ((spd->bus_width & 0x7) < 4)
+		nbit_primary_bus_width = (spd->bus_width & 0x7) + 3;
+	if ((spd->organization & 0x7) < 4)
+		nbit_sdram_width = (spd->organization & 0x7) + 2;
+	package_3ds = (spd->package_type & 0x3) == 0x2;
+	if ((spd->package_type & 0x80) && !package_3ds) { /* other than 3DS */
+		printf("Warning: not supported SDRAM package type\n");
+		return 0;
+	}
+	if (package_3ds)
+		die_count = (spd->package_type >> 4) & 0x7;
+
+	bsize = 1ULL << (nbit_sdram_cap_bsize - 3 +
+			 nbit_primary_bus_width - nbit_sdram_width +
+			 die_count);
+
+	debug("DDR: DDR rank density = 0x%16llx\n", bsize);
+
+	return bsize;
+}
+
+#define spd_to_ps(mtb, ftb)	\
+	(mtb * pdimm->mtb_ps + (ftb * pdimm->ftb_10th_ps) / 10)
+/*
+ * ddr4_compute_dimm_parameters for DDR4 SPD
+ *
+ * Compute DIMM parameters based upon the SPD information in spd.
+ * Writes the results to the struct dimm_params structure pointed by pdimm.
+ *
+ */
+unsigned int ddr4_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr4_spd_eeprom *spd,
+					  struct dimm_params *pdimm)
+{
+	int ret;
+	int i;
+	const u8 udimm_rc_e_dq[18] = {
+		0x0c, 0x2c, 0x15, 0x35, 0x15, 0x35, 0x0b, 0x2c, 0x15,
+		0x35, 0x0b, 0x35, 0x0b, 0x2c, 0x0b, 0x35, 0x15, 0x36
+	};
+	int spd_error = 0;
+	u8 *ptr;
+	u8 val;
+
+	ret = ddr4_spd_check(spd);
+	if (ret) {
+		printf("DIMM: failed checksum\n");
+		return 2;
+	}
+
+	/*
+	 * The part name in ASCII in the SPD EEPROM is not null terminated.
+	 * Guarantee null termination here by presetting all bytes to 0
+	 * and copying the part name in ASCII from the SPD onto it
+	 */
+	memset(pdimm->mpart, 0, sizeof(pdimm->mpart));
+	if ((spd->info_size_crc & 0xF) > 2)
+		memcpy(pdimm->mpart, spd->mpart, sizeof(pdimm->mpart) - 1);
+
+	/* DIMM organization parameters */
+	pdimm->n_ranks = ((spd->organization >> 3) & 0x7) + 1;
+	pdimm->rank_density = compute_ranksize(spd);
+	pdimm->capacity = pdimm->n_ranks * pdimm->rank_density;
+	pdimm->die_density = spd->density_banks & 0xf;
+	pdimm->primary_sdram_width = 1 << (3 + (spd->bus_width & 0x7));
+	if ((spd->bus_width >> 3) & 0x3)
+		pdimm->ec_sdram_width = 8;
+	else
+		pdimm->ec_sdram_width = 0;
+	pdimm->data_width = pdimm->primary_sdram_width
+			  + pdimm->ec_sdram_width;
+	pdimm->device_width = 1 << ((spd->organization & 0x7) + 2);
+	pdimm->package_3ds = (spd->package_type & 0x3) == 0x2 ?
+			     (spd->package_type >> 4) & 0x7 : 0;
+
+	/* These are the types defined by the JEDEC SPD spec */
+	pdimm->mirrored_dimm = 0;
+	pdimm->registered_dimm = 0;
+	switch (spd->module_type & DDR4_SPD_MODULETYPE_MASK) {
+	case DDR4_SPD_MODULETYPE_RDIMM:
+		/* Registered/buffered DIMMs */
+		pdimm->registered_dimm = 1;
+		if (spd->mod_section.registered.reg_map & 0x1)
+			pdimm->mirrored_dimm = 1;
+		val = spd->mod_section.registered.ca_stren;
+		pdimm->rcw[3] = val >> 4;
+		pdimm->rcw[4] = ((val & 0x3) << 2) | ((val & 0xc) >> 2);
+		val = spd->mod_section.registered.clk_stren;
+		pdimm->rcw[5] = ((val & 0x3) << 2) | ((val & 0xc) >> 2);
+		/* Not all in SPD. For convience only. Boards may overwrite. */
+		pdimm->rcw[6] = 0xf;
+		/*
+		 * A17 only used for 16Gb and above devices.
+		 * C[2:0] only used for 3DS.
+		 */
+		pdimm->rcw[8] = pdimm->die_density >= 0x6 ? 0x0 : 0x8 |
+				(pdimm->package_3ds > 0x3 ? 0x0 :
+				 (pdimm->package_3ds > 0x1 ? 0x1 :
+				  (pdimm->package_3ds > 0 ? 0x2 : 0x3)));
+		if (pdimm->package_3ds || pdimm->n_ranks != 4)
+			pdimm->rcw[13] = 0xc;
+		else
+			pdimm->rcw[13] = 0xd;	/* Fix encoded by board */
+
+		break;
+
+	case DDR4_SPD_MODULETYPE_UDIMM:
+	case DDR4_SPD_MODULETYPE_SO_DIMM:
+		/* Unbuffered DIMMs */
+		if (spd->mod_section.unbuffered.addr_mapping & 0x1)
+			pdimm->mirrored_dimm = 1;
+		if ((spd->mod_section.unbuffered.mod_height & 0xe0) == 0 &&
+		    (spd->mod_section.unbuffered.ref_raw_card == 0x04)) {
+			/* Fix SPD error found on DIMMs with raw card E0 */
+			for (i = 0; i < 18; i++) {
+				if (spd->mapping[i] == udimm_rc_e_dq[i])
+					continue;
+				spd_error = 1;
+				debug("SPD byte %d: 0x%x, should be 0x%x\n",
+				      60 + i, spd->mapping[i],
+				      udimm_rc_e_dq[i]);
+				ptr = (u8 *)&spd->mapping[i];
+				*ptr = udimm_rc_e_dq[i];
+			}
+			if (spd_error)
+				printf("SPD DQ mapping error fixed\n");
+		}
+		break;
+
+	default:
+		printf("unknown module_type 0x%02X\n", spd->module_type);
+		return 1;
+	}
+
+	/* SDRAM device parameters */
+	pdimm->n_row_addr = ((spd->addressing >> 3) & 0x7) + 12;
+	pdimm->n_col_addr = (spd->addressing & 0x7) + 9;
+	pdimm->bank_addr_bits = (spd->density_banks >> 4) & 0x3;
+	pdimm->bank_group_bits = (spd->density_banks >> 6) & 0x3;
+
+	/*
+	 * The SPD spec has not the ECC bit,
+	 * We consider the DIMM as ECC capability
+	 * when the extension bus exist
+	 */
+	if (pdimm->ec_sdram_width)
+		pdimm->edc_config = 0x02;
+	else
+		pdimm->edc_config = 0x00;
+
+	/*
+	 * The SPD spec has not the burst length byte
+	 * but DDR4 spec has nature BL8 and BC4,
+	 * BL8 -bit3, BC4 -bit2
+	 */
+	pdimm->burst_lengths_bitmask = 0x0c;
+
+	/* MTB - medium timebase
+	 * The MTB in the SPD spec is 125ps,
+	 *
+	 * FTB - fine timebase
+	 * use 1/10th of ps as our unit to avoid floating point
+	 * eg, 10 for 1ps, 25 for 2.5ps, 50 for 5ps
+	 */
+	if ((spd->timebases & 0xf) == 0x0) {
+		pdimm->mtb_ps = 125;
+		pdimm->ftb_10th_ps = 10;
+
+	} else {
+		printf("Unknown Timebases\n");
+	}
+
+	/* sdram minimum cycle time */
+	pdimm->tckmin_x_ps = spd_to_ps(spd->tck_min, spd->fine_tck_min);
+
+	/* sdram max cycle time */
+	pdimm->tckmax_ps = spd_to_ps(spd->tck_max, spd->fine_tck_max);
+
+	/*
+	 * CAS latency supported
+	 * bit0 - CL7
+	 * bit4 - CL11
+	 * bit8 - CL15
+	 * bit12- CL19
+	 * bit16- CL23
+	 */
+	pdimm->caslat_x  = (spd->caslat_b1 << 7)	|
+			   (spd->caslat_b2 << 15)	|
+			   (spd->caslat_b3 << 23);
+
+	BUG_ON(spd->caslat_b4 != 0);
+
+	/*
+	 * min CAS latency time
+	 */
+	pdimm->taa_ps = spd_to_ps(spd->taa_min, spd->fine_taa_min);
+
+	/*
+	 * min RAS to CAS delay time
+	 */
+	pdimm->trcd_ps = spd_to_ps(spd->trcd_min, spd->fine_trcd_min);
+
+	/*
+	 * Min Row Precharge Delay Time
+	 */
+	pdimm->trp_ps = spd_to_ps(spd->trp_min, spd->fine_trp_min);
+
+	/* min active to precharge delay time */
+	pdimm->tras_ps = (((spd->tras_trc_ext & 0xf) << 8) +
+			  spd->tras_min_lsb) * pdimm->mtb_ps;
+
+	/* min active to actice/refresh delay time */
+	pdimm->trc_ps = spd_to_ps((((spd->tras_trc_ext & 0xf0) << 4) +
+				   spd->trc_min_lsb), spd->fine_trc_min);
+	/* Min Refresh Recovery Delay Time */
+	pdimm->trfc1_ps = ((spd->trfc1_min_msb << 8) | (spd->trfc1_min_lsb)) *
+		       pdimm->mtb_ps;
+	pdimm->trfc2_ps = ((spd->trfc2_min_msb << 8) | (spd->trfc2_min_lsb)) *
+		       pdimm->mtb_ps;
+	pdimm->trfc4_ps = ((spd->trfc4_min_msb << 8) | (spd->trfc4_min_lsb)) *
+			pdimm->mtb_ps;
+	/* min four active window delay time */
+	pdimm->tfaw_ps = (((spd->tfaw_msb & 0xf) << 8) | spd->tfaw_min) *
+			pdimm->mtb_ps;
+
+	/* min row active to row active delay time, different bank group */
+	pdimm->trrds_ps = spd_to_ps(spd->trrds_min, spd->fine_trrds_min);
+	/* min row active to row active delay time, same bank group */
+	pdimm->trrdl_ps = spd_to_ps(spd->trrdl_min, spd->fine_trrdl_min);
+	/* min CAS to CAS Delay Time (tCCD_Lmin), same bank group */
+	pdimm->tccdl_ps = spd_to_ps(spd->tccdl_min, spd->fine_tccdl_min);
+
+	if (pdimm->package_3ds) {
+		if (pdimm->die_density <= 0x4) {
+			pdimm->trfc_slr_ps = 260000;
+		} else if (pdimm->die_density <= 0x5) {
+			pdimm->trfc_slr_ps = 350000;
+		} else {
+			printf("WARN: Unsupported logical rank density 0x%x\n",
+			       pdimm->die_density);
+		}
+	}
+
+	/*
+	 * Average periodic refresh interval
+	 * tREFI = 7.8 us at normal temperature range
+	 */
+	pdimm->refresh_rate_ps = 7800000;
+
+	for (i = 0; i < 18; i++)
+		pdimm->dq_mapping[i] = spd->mapping[i];
+
+	pdimm->dq_mapping_ors = ((spd->mapping[0] >> 6) & 0x3) == 0 ? 1 : 0;
+
+	return 0;
+}
diff --git a/drivers/ddr/fsl/fsl_ddr.h b/drivers/ddr/fsl/fsl_ddr.h
new file mode 100644
index 0000000000..ee6069d812
--- /dev/null
+++ b/drivers/ddr/fsl/fsl_ddr.h
@@ -0,0 +1,234 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2008-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+#ifndef FSL_DDR_H
+#define FSL_DDR_H
+
+#include <ddr_spd.h>
+#include <soc/fsl/fsl_immap.h>
+
+#define DDR_BL4		4	/* burst length 4 */
+#define DDR_BC4		DDR_BL4	/* burst chop for ddr3 */
+#define DDR_OTF		6	/* on-the-fly BC4 and BL8 */
+#define DDR_BL8		8	/* burst length 8 */
+
+#define DDR3_RTT_OFF		0
+#define DDR3_RTT_60_OHM		1 /* RTT_Nom = RZQ/4 */
+#define DDR3_RTT_120_OHM	2 /* RTT_Nom = RZQ/2 */
+#define DDR3_RTT_40_OHM		3 /* RTT_Nom = RZQ/6 */
+#define DDR3_RTT_20_OHM		4 /* RTT_Nom = RZQ/12 */
+#define DDR3_RTT_30_OHM		5 /* RTT_Nom = RZQ/8 */
+
+#define DDR4_RTT_OFF		0
+#define DDR4_RTT_60_OHM		1	/* RZQ/4 */
+#define DDR4_RTT_120_OHM	2	/* RZQ/2 */
+#define DDR4_RTT_40_OHM		3	/* RZQ/6 */
+#define DDR4_RTT_240_OHM	4	/* RZQ/1 */
+#define DDR4_RTT_48_OHM		5	/* RZQ/5 */
+#define DDR4_RTT_80_OHM		6	/* RZQ/3 */
+#define DDR4_RTT_34_OHM		7	/* RZQ/7 */
+
+#define DDR2_RTT_OFF		0
+#define DDR2_RTT_75_OHM		1
+#define DDR2_RTT_150_OHM	2
+#define DDR2_RTT_50_OHM		3
+
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR1	1
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR2	3
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
+/* define bank(chip select) interleaving mode */
+#define FSL_DDR_CS0_CS1			0x40
+#define FSL_DDR_CS2_CS3			0x20
+#define FSL_DDR_CS0_CS1_AND_CS2_CS3	(FSL_DDR_CS0_CS1 | FSL_DDR_CS2_CS3)
+#define FSL_DDR_CS0_CS1_CS2_CS3		(FSL_DDR_CS0_CS1_AND_CS2_CS3 | 0x04)
+
+/* define memory controller interleaving mode */
+#define FSL_DDR_CACHE_LINE_INTERLEAVING	0x0
+#define FSL_DDR_PAGE_INTERLEAVING	0x1
+#define FSL_DDR_BANK_INTERLEAVING	0x2
+#define FSL_DDR_SUPERBANK_INTERLEAVING	0x3
+#define FSL_DDR_256B_INTERLEAVING	0x8
+#define FSL_DDR_3WAY_1KB_INTERLEAVING	0xA
+#define FSL_DDR_3WAY_4KB_INTERLEAVING	0xC
+#define FSL_DDR_3WAY_8KB_INTERLEAVING	0xD
+/* placeholder for 4-way interleaving */
+#define FSL_DDR_4WAY_1KB_INTERLEAVING	0x1A
+#define FSL_DDR_4WAY_4KB_INTERLEAVING	0x1C
+#define FSL_DDR_4WAY_8KB_INTERLEAVING	0x1D
+
+#define SDRAM_CS_CONFIG_EN		0x80000000
+
+/* DDR_SDRAM_CFG - DDR SDRAM Control Configuration
+ */
+#define SDRAM_CFG_MEM_EN		0x80000000
+#define SDRAM_CFG_SREN			0x40000000
+#define SDRAM_CFG_ECC_EN		0x20000000
+#define SDRAM_CFG_RD_EN			0x10000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR1	0x02000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR2	0x03000000
+#define SDRAM_CFG_SDRAM_TYPE_MASK	0x07000000
+#define SDRAM_CFG_SDRAM_TYPE_SHIFT	24
+#define SDRAM_CFG_DYN_PWR		0x00200000
+#define SDRAM_CFG_DBW_MASK		0x00180000
+#define SDRAM_CFG_DBW_SHIFT		19
+#define SDRAM_CFG_32_BE			0x00080000
+#define SDRAM_CFG_16_BE			0x00100000
+#define SDRAM_CFG_8_BE			0x00040000
+#define SDRAM_CFG_NCAP			0x00020000
+#define SDRAM_CFG_2T_EN			0x00008000
+#define SDRAM_CFG_BI			0x00000001
+
+#define SDRAM_CFG2_FRC_SR		0x80000000
+#define SDRAM_CFG2_D_INIT		0x00000010
+#define SDRAM_CFG2_AP_EN		0x00000020
+#define SDRAM_CFG2_ODT_CFG_MASK		0x00600000
+#define SDRAM_CFG2_ODT_NEVER		0
+#define SDRAM_CFG2_ODT_ONLY_WRITE	1
+#define SDRAM_CFG2_ODT_ONLY_READ	2
+#define SDRAM_CFG2_ODT_ALWAYS		3
+
+#define SDRAM_INTERVAL_BSTOPRE	0x3FFF
+#define TIMING_CFG_2_CPO_MASK	0x0F800000
+
+#define RD_TO_PRE_MASK		0xf
+#define RD_TO_PRE_SHIFT		13
+#define WR_DATA_DELAY_MASK	0xf
+#define WR_DATA_DELAY_SHIFT	9
+
+/* DDR_EOR register */
+#define DDR_EOR_RD_REOD_DIS	0x07000000
+#define DDR_EOR_WD_REOD_DIS	0x00100000
+
+/* DDR_MD_CNTL */
+#define MD_CNTL_MD_EN		0x80000000
+#define MD_CNTL_CS_SEL_CS0	0x00000000
+#define MD_CNTL_CS_SEL_CS1	0x10000000
+#define MD_CNTL_CS_SEL_CS2	0x20000000
+#define MD_CNTL_CS_SEL_CS3	0x30000000
+#define MD_CNTL_CS_SEL_CS0_CS1	0x40000000
+#define MD_CNTL_CS_SEL_CS2_CS3	0x50000000
+#define MD_CNTL_MD_SEL_MR	0x00000000
+#define MD_CNTL_MD_SEL_EMR	0x01000000
+#define MD_CNTL_MD_SEL_EMR2	0x02000000
+#define MD_CNTL_MD_SEL_EMR3	0x03000000
+#define MD_CNTL_SET_REF		0x00800000
+#define MD_CNTL_SET_PRE		0x00400000
+#define MD_CNTL_CKE_CNTL_LOW	0x00100000
+#define MD_CNTL_CKE_CNTL_HIGH	0x00200000
+#define MD_CNTL_WRCW		0x00080000
+#define MD_CNTL_MD_VALUE(x)	(x & 0x0000FFFF)
+#define MD_CNTL_CS_SEL(x)	(((x) & 0x7) << 28)
+#define MD_CNTL_MD_SEL(x)	(((x) & 0xf) << 24)
+
+/* DDR_CDR1 */
+#define DDR_CDR1_DHC_EN	0x80000000
+#define DDR_CDR1_V0PT9_EN	0x40000000
+#define DDR_CDR1_ODT_SHIFT	17
+#define DDR_CDR1_ODT_MASK	0x6
+#define DDR_CDR2_ODT_MASK	0x1
+#define DDR_CDR1_ODT(x) ((x & DDR_CDR1_ODT_MASK) << DDR_CDR1_ODT_SHIFT)
+#define DDR_CDR2_ODT(x) (x & DDR_CDR2_ODT_MASK)
+#define DDR_CDR2_VREF_OVRD(x)	(0x00008080 | ((((x) - 37) & 0x3F) << 8))
+#define DDR_CDR2_VREF_TRAIN_EN	0x00000080
+#define DDR_CDR2_VREF_RANGE_2	0x00000040
+
+/* DDR ERR_DISABLE */
+#define DDR_ERR_DISABLE_APED	(1 << 8)  /* Address parity error disable */
+
+/* Mode Registers */
+#define DDR_MR5_CA_PARITY_LAT_4_CLK	0x1 /* for DDR4-1600/1866/2133 */
+#define DDR_MR5_CA_PARITY_LAT_5_CLK	0x2 /* for DDR4-2400 */
+
+/* DEBUG_26 register */
+#define DDR_CAS_TO_PRE_SUB_MASK  0x0000f000 /* CAS to preamble subtract value */
+#define DDR_CAS_TO_PRE_SUB_SHIFT 12
+
+/* DEBUG_29 register */
+#define DDR_TX_BD_DIS	(1 << 10) /* Transmit Bit Deskew Disable */
+
+static inline int is_ddr1(const memctl_options_t *popts)
+{
+	return IS_ENABLED(CONFIG_DDR_FSL_DDR1) &&
+			popts->ddrtype == SDRAM_TYPE_DDR1;
+}
+
+static inline int is_ddr2(const memctl_options_t *popts)
+{
+	return IS_ENABLED(CONFIG_DDR_FSL_DDR2) &&
+			popts->ddrtype == SDRAM_TYPE_DDR2;
+}
+
+static inline int is_ddr3(const memctl_options_t *popts)
+{
+	return IS_ENABLED(CONFIG_DDR_FSL_DDR3) &&
+			popts->ddrtype == SDRAM_TYPE_DDR3;
+}
+
+static inline int is_ddr4(const memctl_options_t *popts)
+{
+	return IS_ENABLED(CONFIG_DDR_FSL_DDR4) &&
+			popts->ddrtype == SDRAM_TYPE_DDR4;
+}
+
+static inline int is_ddr3_4(const memctl_options_t *popts)
+{
+	return is_ddr3(popts) || is_ddr4(popts);
+}
+
+struct fsl_ddr_info;
+
+phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo);
+u32 fsl_ddr_get_intl3r(void);
+
+void board_mem_sleep_setup(void);
+static inline bool is_warm_boot(void)
+{
+	return false;
+}
+
+int fsl_dp_resume(void);
+
+struct fsl_ddr_controller;
+
+u32 fsl_ddr_get_version(struct fsl_ddr_controller *c);
+
+unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr1_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr2_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr2_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr3_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr3_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+unsigned int ddr4_compute_dimm_parameters(struct fsl_ddr_controller *c,
+					  const struct ddr4_spd_eeprom *spd,
+					  struct dimm_params *pdimm);
+void fsl_ddr_set_intl3r(const unsigned int granule_size);
+
+unsigned int compute_fsl_memctl_config_regs(struct fsl_ddr_controller *c);
+unsigned int compute_lowest_common_dimm_parameters(struct fsl_ddr_controller *c);
+unsigned int populate_memctl_options(struct fsl_ddr_controller *c);
+void check_interleaving_options(struct fsl_ddr_info *pinfo);
+
+unsigned int mclk_to_picos(struct fsl_ddr_controller *c, unsigned int mclk);
+unsigned int get_memory_clk_period_ps(struct fsl_ddr_controller *c);
+unsigned int picos_to_mclk(struct fsl_ddr_controller *c, unsigned int picos);
+
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step);
+
+void erratum_a009942_check_cpo(void);
+
+#endif
diff --git a/drivers/ddr/fsl/fsl_ddr_gen4.c b/drivers/ddr/fsl/fsl_ddr_gen4.c
new file mode 100644
index 0000000000..ac68e4ff03
--- /dev/null
+++ b/drivers/ddr/fsl/fsl_ddr_gen4.c
@@ -0,0 +1,501 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2014-2015 Freescale Semiconductor, Inc.
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/fsl_immap.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm/system.h>
+#include "fsl_ddr.h"
+
+#define CTLR_INTLV_MASK	0x20000000
+
+static void set_wait_for_bits_clear(void *ptr, u32 value, u32 bits)
+{
+	int timeout = 1000;
+
+	ddr_out32(ptr, value);
+
+	while (ddr_in32(ptr) & bits) {
+		udelay(100);
+		timeout--;
+	}
+	if (timeout <= 0)
+		printf("Error: wait for clear timeout.\n");
+}
+
+/*
+ * regs has the to-be-set values for DDR controller registers
+ * ctrl_num is the DDR controller number
+ * step: 0 goes through the initialization in one pass
+ *       1 sets registers and returns before enabling controller
+ *       2 resumes from step 1 and continues to initialize
+ * Dividing the initialization to two steps to deassert DDR reset signal
+ * to comply with JEDEC specs for RDIMMs.
+ */
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
+{
+	struct ccsr_ddr __iomem *ddr = c->base;
+	const fsl_ddr_cfg_regs_t *regs = &c->fsl_ddr_config_reg;
+	unsigned int i, bus_width;
+	u32 temp32;
+	u32 total_gb_size_per_controller;
+	int timeout;
+	int mod_bnds = 0;
+	u32 mr6;
+	u32 vref_seq1[3] = {0x80, 0x96, 0x16};	/* for range 1 */
+	u32 vref_seq2[3] = {0xc0, 0xf0, 0x70};	/* for range 2 */
+	u32 *vref_seq = vref_seq1;
+	u32 mtcr, err_detect, err_sbe;
+	u32 cs0_bnds, cs1_bnds, cs2_bnds, cs3_bnds, cs0_config;
+	mod_bnds = regs->cs[0].config & CTLR_INTLV_MASK;
+
+	if (step == 2)
+		goto step2;
+
+	/* Set cdr1 first in case 0.9v VDD is enabled for some SoCs*/
+	ddr_out32(&ddr->ddr_cdr1, regs->ddr_cdr1);
+
+	if (regs->ddr_eor)
+		ddr_out32(&ddr->eor, regs->ddr_eor);
+
+	ddr_out32(&ddr->sdram_clk_cntl, regs->ddr_sdram_clk_cntl);
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (i == 0) {
+			if (mod_bnds) {
+				debug("modified bnds\n");
+				ddr_out32(&ddr->cs0_bnds,
+					  (regs->cs[i].bnds & 0xfffefffe) >> 1);
+				ddr_out32(&ddr->cs0_config,
+					  (regs->cs[i].config &
+					   ~CTLR_INTLV_MASK));
+			} else {
+				ddr_out32(&ddr->cs0_bnds, regs->cs[i].bnds);
+				ddr_out32(&ddr->cs0_config, regs->cs[i].config);
+			}
+			ddr_out32(&ddr->cs0_config_2, regs->cs[i].config_2);
+
+		} else if (i == 1) {
+			if (mod_bnds) {
+				ddr_out32(&ddr->cs1_bnds,
+					  (regs->cs[i].bnds & 0xfffefffe) >> 1);
+			} else {
+				ddr_out32(&ddr->cs1_bnds, regs->cs[i].bnds);
+			}
+			ddr_out32(&ddr->cs1_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs1_config_2, regs->cs[i].config_2);
+
+		} else if (i == 2) {
+			if (mod_bnds) {
+				ddr_out32(&ddr->cs2_bnds,
+					  (regs->cs[i].bnds & 0xfffefffe) >> 1);
+			} else {
+				ddr_out32(&ddr->cs2_bnds, regs->cs[i].bnds);
+			}
+			ddr_out32(&ddr->cs2_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs2_config_2, regs->cs[i].config_2);
+
+		} else if (i == 3) {
+			if (mod_bnds) {
+				ddr_out32(&ddr->cs3_bnds,
+					  (regs->cs[i].bnds & 0xfffefffe) >> 1);
+			} else {
+				ddr_out32(&ddr->cs3_bnds, regs->cs[i].bnds);
+			}
+			ddr_out32(&ddr->cs3_config, regs->cs[i].config);
+			ddr_out32(&ddr->cs3_config_2, regs->cs[i].config_2);
+		}
+	}
+
+	ddr_out32(&ddr->timing_cfg_3, regs->timing_cfg_3);
+	ddr_out32(&ddr->timing_cfg_0, regs->timing_cfg_0);
+	ddr_out32(&ddr->timing_cfg_1, regs->timing_cfg_1);
+	ddr_out32(&ddr->timing_cfg_2, regs->timing_cfg_2);
+	ddr_out32(&ddr->timing_cfg_4, regs->timing_cfg_4);
+	ddr_out32(&ddr->timing_cfg_5, regs->timing_cfg_5);
+	ddr_out32(&ddr->timing_cfg_6, regs->timing_cfg_6);
+	ddr_out32(&ddr->timing_cfg_7, regs->timing_cfg_7);
+	ddr_out32(&ddr->timing_cfg_8, regs->timing_cfg_8);
+	ddr_out32(&ddr->timing_cfg_9, regs->timing_cfg_9);
+	ddr_out32(&ddr->ddr_zq_cntl, regs->ddr_zq_cntl);
+	ddr_out32(&ddr->dq_map_0, regs->dq_map_0);
+	ddr_out32(&ddr->dq_map_1, regs->dq_map_1);
+	ddr_out32(&ddr->dq_map_2, regs->dq_map_2);
+	ddr_out32(&ddr->dq_map_3, regs->dq_map_3);
+	ddr_out32(&ddr->sdram_cfg_3, regs->ddr_sdram_cfg_3);
+	ddr_out32(&ddr->sdram_mode, regs->ddr_sdram_mode);
+	ddr_out32(&ddr->sdram_mode_2, regs->ddr_sdram_mode_2);
+	ddr_out32(&ddr->sdram_mode_3, regs->ddr_sdram_mode_3);
+	ddr_out32(&ddr->sdram_mode_4, regs->ddr_sdram_mode_4);
+	ddr_out32(&ddr->sdram_mode_5, regs->ddr_sdram_mode_5);
+	ddr_out32(&ddr->sdram_mode_6, regs->ddr_sdram_mode_6);
+	ddr_out32(&ddr->sdram_mode_7, regs->ddr_sdram_mode_7);
+	ddr_out32(&ddr->sdram_mode_8, regs->ddr_sdram_mode_8);
+	ddr_out32(&ddr->sdram_mode_9, regs->ddr_sdram_mode_9);
+	ddr_out32(&ddr->sdram_mode_10, regs->ddr_sdram_mode_10);
+	ddr_out32(&ddr->sdram_mode_11, regs->ddr_sdram_mode_11);
+	ddr_out32(&ddr->sdram_mode_12, regs->ddr_sdram_mode_12);
+	ddr_out32(&ddr->sdram_mode_13, regs->ddr_sdram_mode_13);
+	ddr_out32(&ddr->sdram_mode_14, regs->ddr_sdram_mode_14);
+	ddr_out32(&ddr->sdram_mode_15, regs->ddr_sdram_mode_15);
+	ddr_out32(&ddr->sdram_mode_16, regs->ddr_sdram_mode_16);
+	ddr_out32(&ddr->sdram_md_cntl, regs->ddr_sdram_md_cntl);
+
+	if (c->erratum_A009663)
+		ddr_out32(&ddr->sdram_interval,
+			regs->ddr_sdram_interval & ~SDRAM_INTERVAL_BSTOPRE);
+	else
+		ddr_out32(&ddr->sdram_interval, regs->ddr_sdram_interval);
+
+	ddr_out32(&ddr->sdram_data_init, regs->ddr_data_init);
+	ddr_out32(&ddr->ddr_wrlvl_cntl, regs->ddr_wrlvl_cntl);
+	if (regs->ddr_wrlvl_cntl_2)
+		ddr_out32(&ddr->ddr_wrlvl_cntl_2, regs->ddr_wrlvl_cntl_2);
+	if (regs->ddr_wrlvl_cntl_3)
+		ddr_out32(&ddr->ddr_wrlvl_cntl_3, regs->ddr_wrlvl_cntl_3);
+
+	ddr_out32(&ddr->ddr_sr_cntr, regs->ddr_sr_cntr);
+	ddr_out32(&ddr->ddr_sdram_rcw_1, regs->ddr_sdram_rcw_1);
+	ddr_out32(&ddr->ddr_sdram_rcw_2, regs->ddr_sdram_rcw_2);
+	ddr_out32(&ddr->ddr_sdram_rcw_3, regs->ddr_sdram_rcw_3);
+	ddr_out32(&ddr->ddr_sdram_rcw_4, regs->ddr_sdram_rcw_4);
+	ddr_out32(&ddr->ddr_sdram_rcw_5, regs->ddr_sdram_rcw_5);
+	ddr_out32(&ddr->ddr_sdram_rcw_6, regs->ddr_sdram_rcw_6);
+
+	if (is_warm_boot()) {
+		ddr_out32(&ddr->sdram_cfg_2,
+			  regs->ddr_sdram_cfg_2 & ~SDRAM_CFG2_D_INIT);
+		ddr_out32(&ddr->init_addr, 0x80000000); /* FIXME */
+		ddr_out32(&ddr->init_ext_addr, DDR_INIT_ADDR_EXT_UIA);
+
+		/* DRAM VRef will not be trained */
+		ddr_out32(&ddr->ddr_cdr2,
+			  regs->ddr_cdr2 & ~DDR_CDR2_VREF_TRAIN_EN);
+	} else {
+		ddr_out32(&ddr->sdram_cfg_2, regs->ddr_sdram_cfg_2);
+		ddr_out32(&ddr->init_addr, regs->ddr_init_addr);
+		ddr_out32(&ddr->init_ext_addr, regs->ddr_init_ext_addr);
+		ddr_out32(&ddr->ddr_cdr2, regs->ddr_cdr2);
+	}
+
+	/* part 1 of 2 */
+	if (c->erratum_A009803) {
+		if (regs->ddr_sdram_cfg_2 & SDRAM_CFG2_AP_EN) {
+			if (regs->ddr_sdram_cfg & SDRAM_CFG_RD_EN) { /* for RDIMM */
+				ddr_out32(&ddr->ddr_sdram_rcw_2,
+					regs->ddr_sdram_rcw_2 & ~0xf0);
+			}
+			ddr_out32(&ddr->err_disable, regs->err_disable |
+				DDR_ERR_DISABLE_APED);
+		}
+	} else {
+		ddr_out32(&ddr->err_disable, regs->err_disable);
+	}
+	ddr_out32(&ddr->err_int_en, regs->err_int_en);
+	for (i = 0; i < 64; i++) {
+		if (regs->debug[i]) {
+			debug("Write to debug_%d as %08x\n",
+			      i+1, regs->debug[i]);
+			ddr_out32(&ddr->debug[i], regs->debug[i]);
+		}
+	}
+
+	if (c->erratum_A008511) {
+		/* Part 1 of 2 */
+		if (fsl_ddr_get_version(c) == 0x50200) {
+			/* Disable DRAM VRef training */
+			ddr_out32(&ddr->ddr_cdr2,
+				regs->ddr_cdr2 & ~DDR_CDR2_VREF_TRAIN_EN);
+			/* disable transmit bit deskew */
+			temp32 = ddr_in32(&ddr->debug[28]);
+			temp32 |= DDR_TX_BD_DIS;
+			ddr_out32(&ddr->debug[28], temp32);
+			ddr_out32(&ddr->debug[25], 0x9000);
+		} else if (fsl_ddr_get_version(c) == 0x50201) {
+			/* Output enable forced off */
+			ddr_out32(&ddr->debug[37], 1 << 31);
+			/* Enable Vref training */
+			ddr_out32(&ddr->ddr_cdr2,
+				regs->ddr_cdr2 | DDR_CDR2_VREF_TRAIN_EN);
+		} else {
+			debug("Erratum A008511 doesn't apply.\n");
+		}
+	}
+
+	if (c->erratum_A009803 || c->erratum_A008511)
+		/* Disable D_INIT */
+		ddr_out32(&ddr->sdram_cfg_2,
+			regs->ddr_sdram_cfg_2 & ~SDRAM_CFG2_D_INIT);
+
+	if (c->erratum_A009801) {
+		temp32 = ddr_in32(&ddr->debug[25]);
+		temp32 &= ~DDR_CAS_TO_PRE_SUB_MASK;
+		temp32 |= 9 << DDR_CAS_TO_PRE_SUB_SHIFT;
+		ddr_out32(&ddr->debug[25], temp32);
+	}
+
+	if (c->erratum_A010165) {
+		temp32 = c->ddr_freq / 1000000;
+		if ((temp32 > 1900) && (temp32 < 2300)) {
+			temp32 = ddr_in32(&ddr->debug[28]);
+			ddr_out32(&ddr->debug[28], temp32 | 0x000a0000);
+		}
+	}
+
+	/*
+	 * For RDIMMs, JEDEC spec requires clocks to be stable before reset is
+	 * deasserted. Clocks start when any chip select is enabled and clock
+	 * control register is set. Because all DDR components are connected to
+	 * one reset signal, this needs to be done in two steps. Step 1 is to
+	 * get the clocks started. Step 2 resumes after reset signal is
+	 * deasserted.
+	 */
+	if (step == 1) {
+		udelay(200);
+		return;
+	}
+
+step2:
+	/* Set, but do not enable the memory */
+	temp32 = regs->ddr_sdram_cfg;
+	temp32 &= ~(SDRAM_CFG_MEM_EN);
+	ddr_out32(&ddr->sdram_cfg, temp32);
+
+	/*
+	 * 500 painful micro-seconds must elapse between
+	 * the DDR clock setup and the DDR config enable.
+	 * DDR2 need 200 us, and DDR3 need 500 us from spec,
+	 * we choose the max, that is 500 us for all of case.
+	 */
+	udelay(500);
+	dsb();
+	isb();
+
+	if (is_warm_boot()) {
+		/* enter self-refresh */
+		temp32 = ddr_in32(&ddr->sdram_cfg_2);
+		temp32 |= SDRAM_CFG2_FRC_SR;
+		ddr_out32(&ddr->sdram_cfg_2, temp32);
+		/* do board specific memory setup */
+		board_mem_sleep_setup();
+
+		temp32 = (ddr_in32(&ddr->sdram_cfg) | SDRAM_CFG_BI);
+	} else {
+		temp32 = ddr_in32(&ddr->sdram_cfg) & ~SDRAM_CFG_BI;
+	}
+
+	/* Let the controller go */
+	ddr_out32(&ddr->sdram_cfg, temp32 | SDRAM_CFG_MEM_EN);
+	dsb();
+	isb();
+
+	if (c->erratum_A008511 || c->erratum_A009803) {
+		/* Part 2 of 2 */
+		timeout = 40;
+		/* Wait for idle. D_INIT needs to be cleared earlier, or timeout */
+		while (!(ddr_in32(&ddr->debug[1]) & 0x2) && timeout > 0) {
+			udelay(1000);
+			timeout--;
+		}
+		if (timeout <= 0) {
+			printf("Controler %d timeout, debug_2 = %x\n",
+			       c->num, ddr_in32(&ddr->debug[1]));
+		}
+	}
+
+	if (c->erratum_A008511) {
+		/* This erraum only applies to verion 5.2.0 */
+		if (fsl_ddr_get_version(c) == 0x50200) {
+			/* The vref setting sequence is different for range 2 */
+			if (regs->ddr_cdr2 & DDR_CDR2_VREF_RANGE_2)
+				vref_seq = vref_seq2;
+
+			/* Set VREF */
+			for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+				if (!(regs->cs[i].config & SDRAM_CS_CONFIG_EN))
+					continue;
+
+				mr6 = (regs->ddr_sdram_mode_10 >> 16)		|
+					MD_CNTL_MD_EN				|
+					MD_CNTL_CS_SEL(i)			|
+					MD_CNTL_MD_SEL(6)			|
+					0x00200000;
+				temp32 = mr6 | vref_seq[0];
+				set_wait_for_bits_clear(&ddr->sdram_md_cntl,
+						temp32, MD_CNTL_MD_EN);
+				udelay(1);
+				debug("MR6 = 0x%08x\n", temp32);
+				temp32 = mr6 | vref_seq[1];
+				set_wait_for_bits_clear(&ddr->sdram_md_cntl,
+							temp32, MD_CNTL_MD_EN);
+				udelay(1);
+				debug("MR6 = 0x%08x\n", temp32);
+				temp32 = mr6 | vref_seq[2];
+				set_wait_for_bits_clear(&ddr->sdram_md_cntl,
+						temp32, MD_CNTL_MD_EN);
+				udelay(1);
+				debug("MR6 = 0x%08x\n", temp32);
+			}
+			ddr_out32(&ddr->sdram_md_cntl, 0);
+			temp32 = ddr_in32(&ddr->debug[28]);
+			temp32 &= ~DDR_TX_BD_DIS; /* Enable deskew */
+			ddr_out32(&ddr->debug[28], temp32);
+			ddr_out32(&ddr->debug[1], 0x400);	/* restart deskew */
+			/* wait for idle */
+			timeout = 40;
+			while (!(ddr_in32(&ddr->debug[1]) & 0x2) && timeout > 0) {
+				udelay(1000);
+				timeout--;
+			}
+			if (timeout <= 0) {
+				printf("Controler %d timeout, debug_2 = %x\n",
+				       c->num, ddr_in32(&ddr->debug[1]));
+			}
+		}
+	}
+
+	if (c->erratum_A009803 && regs->ddr_sdram_cfg_2 & SDRAM_CFG2_AP_EN) {
+		/* if it's RDIMM */
+		if (regs->ddr_sdram_cfg & SDRAM_CFG_RD_EN) {
+			for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+				if (!(regs->cs[i].config & SDRAM_CS_CONFIG_EN))
+					continue;
+				set_wait_for_bits_clear(&ddr->sdram_md_cntl,
+							MD_CNTL_MD_EN |
+							MD_CNTL_CS_SEL(i) |
+							0x070000ed,
+							MD_CNTL_MD_EN);
+				udelay(1);
+			}
+		}
+
+		ddr_out32(&ddr->err_disable,
+			  regs->err_disable & ~DDR_ERR_DISABLE_APED);
+	}
+
+	/* Restore D_INIT */
+	ddr_out32(&ddr->sdram_cfg_2, regs->ddr_sdram_cfg_2);
+
+	total_gb_size_per_controller = 0;
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (!(regs->cs[i].config & 0x80000000))
+			continue;
+		total_gb_size_per_controller += 1 << (
+			((regs->cs[i].config >> 14) & 0x3) + 2 +
+			((regs->cs[i].config >> 8) & 0x7) + 12 +
+			((regs->cs[i].config >> 4) & 0x3) + 0 +
+			((regs->cs[i].config >> 0) & 0x7) + 8 +
+			((regs->ddr_sdram_cfg_3 >> 4) & 0x3) +
+			3 - ((regs->ddr_sdram_cfg >> 19) & 0x3) -
+			26);			/* minus 26 (count of 64M) */
+	}
+	/*
+	 * total memory / bus width = transactions needed
+	 * transactions needed / data rate = seconds
+	 * to add plenty of buffer, double the time
+	 * For example, 2GB on 666MT/s 64-bit bus takes about 402ms
+	 * Let's wait for 800ms
+	 */
+	bus_width = 3 - ((ddr_in32(&ddr->sdram_cfg) & SDRAM_CFG_DBW_MASK)
+			>> SDRAM_CFG_DBW_SHIFT);
+	timeout = ((total_gb_size_per_controller << (6 - bus_width)) * 100 /
+		(c->ddr_freq >> 20)) << 2;
+	total_gb_size_per_controller >>= 4;	/* shift down to gb size */
+	debug("total %d GB\n", total_gb_size_per_controller);
+	debug("Need to wait up to %d * 10ms\n", timeout);
+
+	/* Poll DDR_SDRAM_CFG_2[D_INIT] bit until auto-data init is done.  */
+	while ((ddr_in32(&ddr->sdram_cfg_2) & SDRAM_CFG2_D_INIT) &&
+		(timeout >= 0)) {
+		udelay(10000);		/* throttle polling rate */
+		timeout--;
+	}
+
+	if (timeout <= 0)
+		printf("Waiting for D_INIT timeout. Memory may not work.\n");
+
+	if (mod_bnds) {
+		debug("Reset to original bnds\n");
+		ddr_out32(&ddr->cs0_bnds, regs->cs[0].bnds);
+		ddr_out32(&ddr->cs1_bnds, regs->cs[1].bnds);
+		ddr_out32(&ddr->cs2_bnds, regs->cs[2].bnds);
+		ddr_out32(&ddr->cs3_bnds, regs->cs[3].bnds);
+		ddr_out32(&ddr->cs0_config, regs->cs[0].config);
+	}
+
+	if (c->erratum_A009663)
+		ddr_out32(&ddr->sdram_interval, regs->ddr_sdram_interval);
+
+	if (is_warm_boot()) {
+		/* exit self-refresh */
+		temp32 = ddr_in32(&ddr->sdram_cfg_2);
+		temp32 &= ~SDRAM_CFG2_FRC_SR;
+		ddr_out32(&ddr->sdram_cfg_2, temp32);
+	}
+
+#define BIST_PATTERN1	0xFFFFFFFF
+#define BIST_PATTERN2	0x0
+#define BIST_CR		0x80010000
+#define BIST_CR_EN	0x80000000
+#define BIST_CR_STAT	0x00000001
+	/* Perform build-in test on memory. Three-way interleaving is not yet
+	 * supported by this code. */
+	if (0) {
+		printf("Running BIST test. This will take a while...");
+		cs0_config = ddr_in32(&ddr->cs0_config);
+		cs0_bnds = ddr_in32(&ddr->cs0_bnds);
+		cs1_bnds = ddr_in32(&ddr->cs1_bnds);
+		cs2_bnds = ddr_in32(&ddr->cs2_bnds);
+		cs3_bnds = ddr_in32(&ddr->cs3_bnds);
+		if (cs0_config & CTLR_INTLV_MASK) {
+			/* set bnds to non-interleaving */
+			ddr_out32(&ddr->cs0_bnds, (cs0_bnds & 0xfffefffe) >> 1);
+			ddr_out32(&ddr->cs1_bnds, (cs1_bnds & 0xfffefffe) >> 1);
+			ddr_out32(&ddr->cs2_bnds, (cs2_bnds & 0xfffefffe) >> 1);
+			ddr_out32(&ddr->cs3_bnds, (cs3_bnds & 0xfffefffe) >> 1);
+		}
+		ddr_out32(&ddr->mtp1, BIST_PATTERN1);
+		ddr_out32(&ddr->mtp2, BIST_PATTERN1);
+		ddr_out32(&ddr->mtp3, BIST_PATTERN2);
+		ddr_out32(&ddr->mtp4, BIST_PATTERN2);
+		ddr_out32(&ddr->mtp5, BIST_PATTERN1);
+		ddr_out32(&ddr->mtp6, BIST_PATTERN1);
+		ddr_out32(&ddr->mtp7, BIST_PATTERN2);
+		ddr_out32(&ddr->mtp8, BIST_PATTERN2);
+		ddr_out32(&ddr->mtp9, BIST_PATTERN1);
+		ddr_out32(&ddr->mtp10, BIST_PATTERN2);
+		mtcr = BIST_CR;
+		ddr_out32(&ddr->mtcr, mtcr);
+		timeout = 100;
+		while (timeout > 0 && (mtcr & BIST_CR_EN)) {
+			mdelay(1000);
+			timeout--;
+			mtcr = ddr_in32(&ddr->mtcr);
+		}
+		if (timeout <= 0)
+			printf("Timeout\n");
+		else
+			printf("Done\n");
+		err_detect = ddr_in32(&ddr->err_detect);
+		err_sbe = ddr_in32(&ddr->err_sbe);
+		if (mtcr & BIST_CR_STAT) {
+			printf("BIST test failed on controller %d.\n",
+			       c->num);
+		}
+		if (err_detect || (err_sbe & 0xffff)) {
+			printf("ECC error detected on controller %d.\n",
+			       c->num);
+		}
+
+		if (cs0_config & CTLR_INTLV_MASK) {
+			/* restore bnds registers */
+			ddr_out32(&ddr->cs0_bnds, cs0_bnds);
+			ddr_out32(&ddr->cs1_bnds, cs1_bnds);
+			ddr_out32(&ddr->cs2_bnds, cs2_bnds);
+			ddr_out32(&ddr->cs3_bnds, cs3_bnds);
+		}
+	}
+}
diff --git a/drivers/ddr/fsl/lc_common_dimm_params.c b/drivers/ddr/fsl/lc_common_dimm_params.c
new file mode 100644
index 0000000000..2de4cca9cc
--- /dev/null
+++ b/drivers/ddr/fsl/lc_common_dimm_params.c
@@ -0,0 +1,542 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <linux/log2.h>
+#include "fsl_ddr.h"
+
+static unsigned int
+compute_cas_latency_ddr34(memctl_options_t *popts,
+			  struct fsl_ddr_controller *c,
+			  const struct dimm_params *dimm_params,
+			  struct common_timing_params *outpdimm,
+			  unsigned int number_of_dimms)
+{
+	unsigned int i;
+	unsigned int common_caslat;
+	unsigned int caslat_actual;
+	unsigned int retry = 16;
+	unsigned int tmp = ~0;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+	unsigned int taamax;
+
+	if (is_ddr3(popts))
+		taamax = 20000;
+	else
+		taamax = 18000;
+
+	/* compute the common CAS latency supported between slots */
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks)
+			tmp &= dimm_params[i].caslat_x;
+	}
+	common_caslat = tmp;
+
+	/* validate if the memory clk is in the range of dimms */
+	if (mclk_ps < outpdimm->tckmin_x_ps) {
+		printf("DDR clock (MCLK cycle %u ps) is faster than "
+			"the slowest DIMM(s) (tCKmin %u ps) can support.\n",
+			mclk_ps, outpdimm->tckmin_x_ps);
+	}
+
+	if (is_ddr4(popts) && mclk_ps > outpdimm->tckmax_ps) {
+		printf("DDR clock (MCLK cycle %u ps) is slower than DIMM(s) (tCKmax %u ps) can support.\n",
+		       mclk_ps, outpdimm->tckmax_ps);
+	}
+
+	/* determine the acutal cas latency */
+	caslat_actual = (outpdimm->taamin_ps + mclk_ps - 1) / mclk_ps;
+	/* check if the dimms support the CAS latency */
+	while (!(common_caslat & (1 << caslat_actual)) && retry > 0) {
+		caslat_actual++;
+		retry--;
+	}
+	/* once the caculation of caslat_actual is completed
+	 * we must verify that this CAS latency value does not
+	 * exceed tAAmax, which is 20 ns for all DDR3 speed grades,
+	 * 18ns for all DDR4 speed grades.
+	 */
+	if (caslat_actual * mclk_ps > taamax) {
+		printf("The chosen cas latency %d is too large\n",
+		       caslat_actual);
+	}
+	outpdimm->lowest_common_spd_caslat = caslat_actual;
+	debug("lowest_common_spd_caslat is 0x%x\n", caslat_actual);
+
+	return 0;
+}
+
+static unsigned int
+compute_cas_latency_ddr12(memctl_options_t *popts,
+			  struct fsl_ddr_controller *c,
+			  const struct dimm_params *dimm_params,
+			  struct common_timing_params *outpdimm,
+			  unsigned int number_of_dimms)
+{
+	int i;
+	const unsigned int mclk_ps = get_memory_clk_period_ps(c);
+	unsigned int lowest_good_caslat;
+	unsigned int not_ok;
+	unsigned int temp1, temp2;
+
+	debug("using mclk_ps = %u\n", mclk_ps);
+	if (mclk_ps > outpdimm->tckmax_ps) {
+		printf("Warning: DDR clock (%u ps) is slower than DIMM(s) (tCKmax %u ps)\n",
+		       mclk_ps, outpdimm->tckmax_ps);
+	}
+
+	/*
+	 * Compute a CAS latency suitable for all DIMMs
+	 *
+	 * Strategy for SPD-defined latencies: compute only
+	 * CAS latency defined by all DIMMs.
+	 */
+
+	/*
+	 * Step 1: find CAS latency common to all DIMMs using bitwise
+	 * operation.
+	 */
+	temp1 = 0xFF;
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks) {
+			temp2 = 0;
+			temp2 |= 1 << dimm_params[i].caslat_x;
+			temp2 |= 1 << dimm_params[i].caslat_x_minus_1;
+			temp2 |= 1 << dimm_params[i].caslat_x_minus_2;
+			/*
+			 * If there was no entry for X-2 (X-1) in
+			 * the SPD, then caslat_x_minus_2
+			 * (caslat_x_minus_1) contains either 255 or
+			 * 0xFFFFFFFF because that's what the glorious
+			 * __ilog2 function returns for an input of 0.
+			 * On 32-bit PowerPC, left shift counts with bit
+			 * 26 set (that the value of 255 or 0xFFFFFFFF
+			 * will have), cause the destination register to
+			 * be 0.  That is why this works.
+			 */
+			temp1 &= temp2;
+		}
+	}
+
+	/*
+	 * Step 2: check each common CAS latency against tCK of each
+	 * DIMM's SPD.
+	 */
+	lowest_good_caslat = 0;
+	temp2 = 0;
+	while (temp1) {
+		not_ok = 0;
+		temp2 =  ilog2(temp1);
+		debug("checking common caslat = %u\n", temp2);
+
+		/* Check if this CAS latency will work on all DIMMs at tCK. */
+		for (i = 0; i < number_of_dimms; i++) {
+			if (!dimm_params[i].n_ranks)
+				continue;
+
+			if (dimm_params[i].caslat_x == temp2) {
+				if (mclk_ps >= dimm_params[i].tckmin_x_ps) {
+					debug("CL = %u ok on DIMM %u at tCK=%u ps with tCKmin_X_ps of %u\n",
+					      temp2, i, mclk_ps,
+					      dimm_params[i].tckmin_x_ps);
+					continue;
+				} else {
+					not_ok++;
+				}
+			}
+
+			if (dimm_params[i].caslat_x_minus_1 == temp2) {
+				unsigned int tckmin_x_minus_1_ps
+					= dimm_params[i].tckmin_x_minus_1_ps;
+				if (mclk_ps >= tckmin_x_minus_1_ps) {
+					debug("CL = %u ok on DIMM %u at tCK=%u ps with tckmin_x_minus_1_ps of %u\n",
+					      temp2, i, mclk_ps,
+					      tckmin_x_minus_1_ps);
+					continue;
+				} else {
+					not_ok++;
+				}
+			}
+
+			if (dimm_params[i].caslat_x_minus_2 == temp2) {
+				unsigned int tckmin_x_minus_2_ps
+					= dimm_params[i].tckmin_x_minus_2_ps;
+				if (mclk_ps >= tckmin_x_minus_2_ps) {
+					debug("CL = %u ok on DIMM %u at tCK=%u ps with tckmin_x_minus_2_ps of %u\n",
+					      temp2, i, mclk_ps,
+					      tckmin_x_minus_2_ps);
+					continue;
+				} else {
+					not_ok++;
+				}
+			}
+		}
+
+		if (!not_ok)
+			lowest_good_caslat = temp2;
+
+		temp1 &= ~(1 << temp2);
+	}
+
+	debug("lowest common SPD-defined CAS latency = %u\n",
+	      lowest_good_caslat);
+	outpdimm->lowest_common_spd_caslat = lowest_good_caslat;
+
+
+	/*
+	 * Compute a common 'de-rated' CAS latency.
+	 *
+	 * The strategy here is to find the *highest* dereated cas latency
+	 * with the assumption that all of the DIMMs will support a dereated
+	 * CAS latency higher than or equal to their lowest dereated value.
+	 */
+	temp1 = 0;
+	for (i = 0; i < number_of_dimms; i++)
+		temp1 = max(temp1, dimm_params[i].caslat_lowest_derated);
+
+	outpdimm->highest_common_derated_caslat = temp1;
+	debug("highest common dereated CAS latency = %u\n", temp1);
+
+	return 0;
+}
+
+/*
+ * compute_lowest_common_dimm_parameters()
+ *
+ * Determine the worst-case DIMM timing parameters from the set of DIMMs
+ * whose parameters have been computed into the array pointed to
+ * by dimm_params.
+ */
+unsigned int
+compute_lowest_common_dimm_parameters(struct fsl_ddr_controller *c)
+{
+	int number_of_dimms = c->dimm_slots_per_ctrl;
+	memctl_options_t *popts = &c->memctl_opts;
+	const struct dimm_params *dimm_params = c->dimm_params;
+	struct common_timing_params *outpdimm = &c->common_timing_params;
+	unsigned int i, j;
+
+	unsigned int tckmin_x_ps = 0;
+	unsigned int tckmax_ps = 0xFFFFFFFF;
+	unsigned int trcd_ps = 0;
+	unsigned int trp_ps = 0;
+	unsigned int tras_ps = 0;
+	unsigned int taamin_ps = 0;
+	unsigned int twr_ps = 0;
+	unsigned int trfc1_ps = 0;
+	unsigned int trfc2_ps = 0;
+	unsigned int trfc4_ps = 0;
+	unsigned int trrds_ps = 0;
+	unsigned int trrdl_ps = 0;
+	unsigned int tccdl_ps = 0;
+	unsigned int trfc_slr_ps = 0;
+	unsigned int twtr_ps = 0;
+	unsigned int trfc_ps = 0;
+	unsigned int trrd_ps = 0;
+	unsigned int trtp_ps = 0;
+	unsigned int trc_ps = 0;
+	unsigned int refresh_rate_ps = 0;
+	unsigned int extended_op_srt = 1;
+	unsigned int tis_ps = 0;
+	unsigned int tih_ps = 0;
+	unsigned int tds_ps = 0;
+	unsigned int tdh_ps = 0;
+	unsigned int tdqsq_max_ps = 0;
+	unsigned int tqhs_ps = 0;
+	unsigned int temp1, temp2;
+	unsigned int additive_latency = 0;
+
+	temp1 = 0;
+	for (i = 0; i < number_of_dimms; i++) {
+		/*
+		 * If there are no ranks on this DIMM,
+		 * it probably doesn't exist, so skip it.
+		 */
+		if (dimm_params[i].n_ranks == 0) {
+			temp1++;
+			continue;
+		}
+		if (dimm_params[i].n_ranks == 4 && i != 0) {
+			printf("Found Quad-rank DIMM in wrong bank, ignored."
+				" Software may not run as expected.\n");
+			temp1++;
+			continue;
+		}
+
+		/*
+		 * check if quad-rank DIMM is plugged if
+		 * CONFIG_CHIP_SELECT_QUAD_CAPABLE is not defined
+		 * Only the board with proper design is capable
+		 */
+		if (dimm_params[i].n_ranks == 4 && \
+		  c->chip_selects_per_ctrl / c->dimm_slots_per_ctrl < 4) {
+			printf("Found Quad-rank DIMM, not able to support.");
+			temp1++;
+			continue;
+		}
+
+		/*
+		 * Find minimum tckmax_ps to find fastest slow speed,
+		 * i.e., this is the slowest the whole system can go.
+		 */
+		outpdimm->tckmax_ps = min(tckmax_ps,
+				(unsigned int)dimm_params[i].tckmax_ps);
+		if (is_ddr3_4(popts))
+			outpdimm->taamin_ps = max(taamin_ps,
+				(unsigned int)dimm_params[i].taa_ps);
+		outpdimm->tckmin_x_ps = max(tckmin_x_ps,
+				  (unsigned int)dimm_params[i].tckmin_x_ps);
+		outpdimm->trcd_ps = max(trcd_ps, (unsigned int)dimm_params[i].trcd_ps);
+		outpdimm->trp_ps = max(trp_ps, (unsigned int)dimm_params[i].trp_ps);
+		outpdimm->tras_ps = max(tras_ps, (unsigned int)dimm_params[i].tras_ps);
+
+		if (is_ddr4(popts)) {
+			outpdimm->twr_ps = 15000;
+			outpdimm->trfc1_ps = max(trfc1_ps,
+			       (unsigned int)dimm_params[i].trfc1_ps);
+			outpdimm->trfc2_ps = max(trfc2_ps,
+			       (unsigned int)dimm_params[i].trfc2_ps);
+			outpdimm->trfc4_ps = max(trfc4_ps,
+			       (unsigned int)dimm_params[i].trfc4_ps);
+			outpdimm->trrds_ps = max(trrds_ps,
+			       (unsigned int)dimm_params[i].trrds_ps);
+			outpdimm->trrdl_ps = max(trrdl_ps,
+			       (unsigned int)dimm_params[i].trrdl_ps);
+			outpdimm->tccdl_ps = max(tccdl_ps,
+			       (unsigned int)dimm_params[i].tccdl_ps);
+			outpdimm->trfc_slr_ps = max(trfc_slr_ps,
+				  (unsigned int)dimm_params[i].trfc_slr_ps);
+		} else {
+			twr_ps = max(twr_ps, (unsigned int)dimm_params[i].twr_ps);
+			outpdimm->twtr_ps = max(twtr_ps, (unsigned int)dimm_params[i].twtr_ps);
+			outpdimm->trfc_ps = max(trfc_ps, (unsigned int)dimm_params[i].trfc_ps);
+			outpdimm->trrd_ps = max(trrd_ps, (unsigned int)dimm_params[i].trrd_ps);
+			outpdimm->trtp_ps = max(trtp_ps, (unsigned int)dimm_params[i].trtp_ps);
+		}
+		outpdimm->trc_ps = max(trc_ps, (unsigned int)dimm_params[i].trc_ps);
+		if (is_ddr1(popts) || is_ddr2(popts)) {
+			outpdimm->tis_ps = max(tis_ps, (unsigned int)dimm_params[i].tis_ps);
+			outpdimm->tih_ps = max(tih_ps, (unsigned int)dimm_params[i].tih_ps);
+			outpdimm->tds_ps = max(tds_ps, (unsigned int)dimm_params[i].tds_ps);
+			outpdimm->tdh_ps = max(tdh_ps, (unsigned int)dimm_params[i].tdh_ps);
+			outpdimm->tqhs_ps = max(tqhs_ps, (unsigned int)dimm_params[i].tqhs_ps);
+			/*
+			 * Find maximum tdqsq_max_ps to find slowest.
+			 *
+			 * FIXME: is finding the slowest value the correct
+			 * strategy for this parameter?
+			 */
+			outpdimm->tdqsq_max_ps = max(tdqsq_max_ps,
+				   (unsigned int)dimm_params[i].tdqsq_max_ps);
+		}
+		outpdimm->refresh_rate_ps = max(refresh_rate_ps,
+				      (unsigned int)dimm_params[i].refresh_rate_ps);
+		/* extended_op_srt is either 0 or 1, 0 having priority */
+		outpdimm->extended_op_srt = min(extended_op_srt,
+				      (unsigned int)dimm_params[i].extended_op_srt);
+	}
+
+	outpdimm->ndimms_present = number_of_dimms - temp1;
+
+	if (temp1 == number_of_dimms) {
+		debug("no dimms this memory controller\n");
+		return 0;
+	}
+
+	/* Determine common burst length for all DIMMs. */
+	temp1 = 0xff;
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks) {
+			temp1 &= dimm_params[i].burst_lengths_bitmask;
+		}
+	}
+	outpdimm->all_dimms_burst_lengths_bitmask = temp1;
+
+	/* Determine if all DIMMs registered buffered. */
+	temp1 = temp2 = 0;
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks) {
+			if (dimm_params[i].registered_dimm) {
+				temp1 = 1;
+				printf("Detected RDIMM %s\n",
+					dimm_params[i].mpart);
+			} else {
+				temp2 = 1;
+				printf("Detected UDIMM %s\n",
+					dimm_params[i].mpart);
+			}
+		}
+	}
+
+	outpdimm->all_dimms_registered = 0;
+	outpdimm->all_dimms_unbuffered = 0;
+	if (temp1 && !temp2) {
+		outpdimm->all_dimms_registered = 1;
+	} else if (!temp1 && temp2) {
+		outpdimm->all_dimms_unbuffered = 1;
+	} else {
+		printf("ERROR:  Mix of registered buffered and unbuffered "
+				"DIMMs detected!\n");
+	}
+
+	temp1 = 0;
+	if (outpdimm->all_dimms_registered)
+		for (j = 0; j < 16; j++) {
+			outpdimm->rcw[j] = dimm_params[0].rcw[j];
+			for (i = 1; i < number_of_dimms; i++) {
+				if (!dimm_params[i].n_ranks)
+					continue;
+				if (dimm_params[i].rcw[j] != dimm_params[0].rcw[j]) {
+					temp1 = 1;
+					break;
+				}
+			}
+		}
+
+	if (temp1 != 0)
+		printf("ERROR: Mix different RDIMM detected!\n");
+
+	/* calculate cas latency for all DDR types */
+	if (is_ddr3_4(popts)) {
+		if (compute_cas_latency_ddr34(popts, c, dimm_params,
+				outpdimm, number_of_dimms))
+		return 1;
+	} else {
+		if (compute_cas_latency_ddr12(popts, c, dimm_params,
+				outpdimm, number_of_dimms))
+		return 1;
+	}
+
+	/* Determine if all DIMMs ECC capable. */
+	temp1 = 1;
+	for (i = 0; i < number_of_dimms; i++) {
+		if (dimm_params[i].n_ranks &&
+			!(dimm_params[i].edc_config & EDC_ECC)) {
+			temp1 = 0;
+			break;
+		}
+	}
+	if (temp1) {
+		debug("all DIMMs ECC capable\n");
+	} else {
+		debug("Warning: not all DIMMs ECC capable, cant enable ECC\n");
+	}
+	outpdimm->all_dimms_ecc_capable = temp1;
+
+	/*
+	 * Compute additive latency.
+	 *
+	 * For DDR1, additive latency should be 0.
+	 *
+	 * For DDR2, with ODT enabled, use "a value" less than ACTTORW,
+	 *	which comes from Trcd, and also note that:
+	 *	    add_lat + caslat must be >= 4
+	 *
+	 * For DDR3, we use the AL=0
+	 *
+	 * When to use additive latency for DDR2:
+	 *
+	 * I. Because you are using CL=3 and need to do ODT on writes and
+	 *    want functionality.
+	 *    1. Are you going to use ODT? (Does your board not have
+	 *      additional termination circuitry for DQ, DQS, DQS_,
+	 *      DM, RDQS, RDQS_ for x4/x8 configs?)
+	 *    2. If so, is your lowest supported CL going to be 3?
+	 *    3. If so, then you must set AL=1 because
+	 *
+	 *       WL >= 3 for ODT on writes
+	 *       RL = AL + CL
+	 *       WL = RL - 1
+	 *       ->
+	 *       WL = AL + CL - 1
+	 *       AL + CL - 1 >= 3
+	 *       AL + CL >= 4
+	 *  QED
+	 *
+	 *  RL >= 3 for ODT on reads
+	 *  RL = AL + CL
+	 *
+	 *  Since CL aren't usually less than 2, AL=0 is a minimum,
+	 *  so the WL-derived AL should be the  -- FIXME?
+	 *
+	 * II. Because you are using auto-precharge globally and want to
+	 *     use additive latency (posted CAS) to get more bandwidth.
+	 *     1. Are you going to use auto-precharge mode globally?
+	 *
+	 *        Use addtivie latency and compute AL to be 1 cycle less than
+	 *        tRCD, i.e. the READ or WRITE command is in the cycle
+	 *        immediately following the ACTIVATE command..
+	 *
+	 * III. Because you feel like it or want to do some sort of
+	 *      degraded-performance experiment.
+	 *     1.  Do you just want to use additive latency because you feel
+	 *         like it?
+	 *
+	 * Validation:  AL is less than tRCD, and within the other
+	 * read-to-precharge constraints.
+	 */
+
+	additive_latency = 0;
+
+	if (is_ddr2(popts) && outpdimm->lowest_common_spd_caslat < 4 &&
+	    picos_to_mclk(c, trcd_ps > outpdimm->lowest_common_spd_caslat)) {
+		additive_latency = picos_to_mclk(c, trcd_ps) -
+				   outpdimm->lowest_common_spd_caslat;
+		if (mclk_to_picos(c, additive_latency) > trcd_ps) {
+			additive_latency = picos_to_mclk(c, trcd_ps);
+			debug("setting additive_latency to %u because it was "
+				" greater than tRCD_ps\n", additive_latency);
+		}
+	}
+
+	/*
+	 * Validate additive latency
+	 *
+	 * AL <= tRCD(min)
+	 */
+	if (mclk_to_picos(c, additive_latency) > trcd_ps) {
+		printf("Error: invalid additive latency exceeds tRCD(min).\n");
+		return 1;
+	}
+
+	/*
+	 * RL = CL + AL;  RL >= 3 for ODT_RD_CFG to be enabled
+	 * WL = RL - 1;  WL >= 3 for ODT_WL_CFG to be enabled
+	 * ADD_LAT (the register) must be set to a value less
+	 * than ACTTORW if WL = 1, then AL must be set to 1
+	 * RD_TO_PRE (the register) must be set to a minimum
+	 * tRTP + AL if AL is nonzero
+	 */
+
+	/*
+	 * Additive latency will be applied only if the memctl option to
+	 * use it.
+	 */
+	outpdimm->additive_latency = additive_latency;
+
+	debug("tCKmin_ps = %u\n", outpdimm->tckmin_x_ps);
+	debug("trcd_ps   = %u\n", outpdimm->trcd_ps);
+	debug("trp_ps    = %u\n", outpdimm->trp_ps);
+	debug("tras_ps   = %u\n", outpdimm->tras_ps);
+	if (is_ddr4(popts)) {
+		debug("trfc1_ps = %u\n", trfc1_ps);
+		debug("trfc2_ps = %u\n", trfc2_ps);
+		debug("trfc4_ps = %u\n", trfc4_ps);
+		debug("trrds_ps = %u\n", trrds_ps);
+		debug("trrdl_ps = %u\n", trrdl_ps);
+		debug("tccdl_ps = %u\n", tccdl_ps);
+		debug("trfc_slr_ps = %u\n", trfc_slr_ps);
+	} else {
+		debug("twtr_ps   = %u\n", outpdimm->twtr_ps);
+		debug("trfc_ps   = %u\n", outpdimm->trfc_ps);
+		debug("trrd_ps   = %u\n", outpdimm->trrd_ps);
+	}
+	debug("twr_ps    = %u\n", outpdimm->twr_ps);
+	debug("trc_ps    = %u\n", outpdimm->trc_ps);
+
+	return 0;
+}
diff --git a/drivers/ddr/fsl/main.c b/drivers/ddr/fsl/main.c
new file mode 100644
index 0000000000..b0df34c933
--- /dev/null
+++ b/drivers/ddr/fsl/main.c
@@ -0,0 +1,444 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008-2014 Freescale Semiconductor, Inc.
+ */
+
+/*
+ * Generic driver for Freescale DDR/DDR2/DDR3 memory controller.
+ * Based on code from spd_sdram.c
+ * Author: James Yang [at freescale.com]
+ */
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <linux/log2.h>
+#include "fsl_ddr.h"
+
+/*
+ * ASSUMPTIONS:
+ *    - Same number of CONFIG_DIMM_SLOTS_PER_CTLR on each controller
+ *    - Same memory data bus width on all controllers
+ *
+ * NOTES:
+ *
+ * The memory controller and associated documentation use confusing
+ * terminology when referring to the orgranization of DRAM.
+ *
+ * Here is a terminology translation table:
+ *
+ * memory controller/documention  |industry   |this code  |signals
+ * -------------------------------|-----------|-----------|-----------------
+ * physical bank/bank		  |rank       |rank	  |chip select (CS)
+ * logical bank/sub-bank	  |bank       |bank	  |bank address (BA)
+ * page/row			  |row	      |page	  |row address
+ * ???				  |column     |column	  |column address
+ *
+ * The naming confusion is further exacerbated by the descriptions of the
+ * memory controller interleaving feature, where accesses are interleaved
+ * _BETWEEN_ two seperate memory controllers.  This is configured only in
+ * CS0_CONFIG[INTLV_CTL] of each memory controller.
+ *
+ * memory controller documentation | number of chip selects
+ *				   | per memory controller supported
+ * --------------------------------|-----------------------------------------
+ * cache line interleaving	   | 1 (CS0 only)
+ * page interleaving		   | 1 (CS0 only)
+ * bank interleaving		   | 1 (CS0 only)
+ * superbank interleraving	   | depends on bank (chip select)
+ *				   |   interleraving [rank interleaving]
+ *				   |   mode used on every memory controller
+ *
+ * Even further confusing is the existence of the interleaving feature
+ * _WITHIN_ each memory controller.  The feature is referred to in
+ * documentation as chip select interleaving or bank interleaving,
+ * although it is configured in the DDR_SDRAM_CFG field.
+ *
+ * Name of field		| documentation name	| this code
+ * -----------------------------|-----------------------|------------------
+ * DDR_SDRAM_CFG[BA_INTLV_CTL]	| Bank (chip select)	| rank interleaving
+ *				|  interleaving
+ */
+
+static unsigned long long step_assign_addresses_linear(struct fsl_ddr_info *pinfo,
+						       unsigned long long current_mem_base)
+{
+	int i, j;
+	unsigned long long total_mem = 0;
+
+	/*
+	 * Simple linear assignment if memory
+	 * controllers are not interleaved.
+	 */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+		unsigned long long total_ctlr_mem = 0;
+
+		c->common_timing_params.base_address = current_mem_base;
+
+		for (j = 0; j < c->dimm_slots_per_ctrl; j++) {
+			/* Compute DIMM base addresses. */
+			unsigned long long cap = c->dimm_params[j].capacity >>
+					pinfo->c[i].dbw_capacity_adjust;
+
+			c->dimm_params[j].base_address = current_mem_base;
+			debug("ctrl %d dimm %d base 0x%llx\n", i, j, current_mem_base);
+			current_mem_base += cap;
+			total_ctlr_mem += cap;
+		}
+		debug("ctrl %d total 0x%llx\n", i, total_ctlr_mem);
+		c->common_timing_params.total_mem = total_ctlr_mem;
+		total_mem += total_ctlr_mem;
+	}
+
+	return total_mem;
+}
+
+static unsigned long long step_assign_addresses_interleaved(struct fsl_ddr_info *pinfo,
+							    unsigned long long current_mem_base)
+{
+	unsigned long long total_mem, total_ctlr_mem;
+	unsigned long long rank_density, ctlr_density = 0;
+	int i;
+
+	rank_density = pinfo->c[0].dimm_params[0].rank_density >>
+				pinfo->c[0].dbw_capacity_adjust;
+
+	switch (pinfo->c[0].memctl_opts.ba_intlv_ctl &
+				FSL_DDR_CS0_CS1_CS2_CS3) {
+	case FSL_DDR_CS0_CS1_CS2_CS3:
+		ctlr_density = 4 * rank_density;
+		break;
+	case FSL_DDR_CS0_CS1:
+	case FSL_DDR_CS0_CS1_AND_CS2_CS3:
+		ctlr_density = 2 * rank_density;
+		break;
+	case FSL_DDR_CS2_CS3:
+	default:
+		ctlr_density = rank_density;
+		break;
+	}
+
+	debug("rank density is 0x%llx, ctlr density is 0x%llx\n",
+		rank_density, ctlr_density);
+
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		if (c->memctl_opts.memctl_interleaving) {
+			switch (c->memctl_opts.memctl_interleaving_mode) {
+			case FSL_DDR_256B_INTERLEAVING:
+			case FSL_DDR_CACHE_LINE_INTERLEAVING:
+			case FSL_DDR_PAGE_INTERLEAVING:
+			case FSL_DDR_BANK_INTERLEAVING:
+			case FSL_DDR_SUPERBANK_INTERLEAVING:
+				total_ctlr_mem = 2 * ctlr_density;
+				break;
+			case FSL_DDR_3WAY_1KB_INTERLEAVING:
+			case FSL_DDR_3WAY_4KB_INTERLEAVING:
+			case FSL_DDR_3WAY_8KB_INTERLEAVING:
+				total_ctlr_mem = 3 * ctlr_density;
+				break;
+			case FSL_DDR_4WAY_1KB_INTERLEAVING:
+			case FSL_DDR_4WAY_4KB_INTERLEAVING:
+			case FSL_DDR_4WAY_8KB_INTERLEAVING:
+				total_ctlr_mem = 4 * ctlr_density;
+				break;
+			default:
+				panic("Unknown interleaving mode");
+			}
+			c->common_timing_params.base_address = current_mem_base;
+			c->common_timing_params.total_mem = total_ctlr_mem;
+			total_mem = current_mem_base + total_ctlr_mem;
+			debug("ctrl %d base 0x%llx\n", i, current_mem_base);
+			debug("ctrl %d total 0x%llx\n", i, total_ctlr_mem);
+		} else {
+			total_mem += step_assign_addresses_linear(pinfo, current_mem_base);
+		}
+	}
+
+	return total_mem;
+}
+
+static unsigned long long step_assign_addresses(struct fsl_ddr_info *pinfo)
+{
+	unsigned int i, j;
+	unsigned long long total_mem;
+
+	/*
+	 * If a reduced data width is requested, but the SPD
+	 * specifies a physically wider device, adjust the
+	 * computed dimm capacities accordingly before
+	 * assigning addresses.
+	 */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+		unsigned int found = 0;
+
+		switch (c->memctl_opts.data_bus_width) {
+		case 2:
+			/* 16-bit */
+			for (j = 0; j < c->dimm_slots_per_ctrl; j++) {
+				unsigned int dw;
+				if (!c->dimm_params[j].n_ranks)
+					continue;
+				dw = c->dimm_params[j].primary_sdram_width;
+				if ((dw == 72 || dw == 64)) {
+					pinfo->c[i].dbw_capacity_adjust = 2;
+					break;
+				} else if ((dw == 40 || dw == 32)) {
+					pinfo->c[i].dbw_capacity_adjust = 1;
+					break;
+				}
+			}
+			break;
+
+		case 1:
+			/* 32-bit */
+			for (j = 0; j < c->dimm_slots_per_ctrl; j++) {
+				unsigned int dw;
+				dw = c->dimm_params[j].data_width;
+				if (c->dimm_params[j].n_ranks
+				    && (dw == 72 || dw == 64)) {
+					/*
+					 * FIXME: can't really do it
+					 * like this because this just
+					 * further reduces the memory
+					 */
+					found = 1;
+					break;
+				}
+			}
+			if (found)
+				pinfo->c[i].dbw_capacity_adjust = 1;
+
+			break;
+
+		case 0:
+			/* 64-bit */
+			break;
+
+		default:
+			printf("unexpected data bus width "
+				"specified controller %u\n", i);
+			return 1;
+		}
+		debug("dbw_cap_adj[%d]=%d\n", i, pinfo->c[i].dbw_capacity_adjust);
+	}
+
+	if (pinfo->c[0].memctl_opts.memctl_interleaving)
+		total_mem = step_assign_addresses_interleaved(pinfo, pinfo->mem_base);
+	else
+		total_mem = step_assign_addresses_linear(pinfo, pinfo->mem_base);
+
+	debug("Total mem by %s is 0x%llx\n", __func__, total_mem);
+
+	return total_mem;
+}
+
+static int compute_dimm_parameters(struct fsl_ddr_controller *c,
+				   struct spd_eeprom *spd,
+				   struct dimm_params *pdimm)
+{
+	const memctl_options_t *popts = &c->memctl_opts;
+	int ret = -EINVAL;
+
+	memset(pdimm, 0, sizeof(*pdimm));
+
+	if (is_ddr1(popts))
+		ret = ddr1_compute_dimm_parameters(c, (void *)spd, pdimm);
+	else if (is_ddr2(popts))
+		ret = ddr2_compute_dimm_parameters(c, (void *)spd, pdimm);
+	else if (is_ddr3(popts))
+		ret = ddr3_compute_dimm_parameters(c, (void *)spd, pdimm);
+	else if (is_ddr4(popts))
+		ret = ddr4_compute_dimm_parameters(c, (void *)spd, pdimm);
+
+	return ret;
+}
+
+static unsigned long long fsl_ddr_compute(struct fsl_ddr_info *pinfo)
+{
+	unsigned int i, j;
+	unsigned long long total_mem = 0;
+	int assert_reset = 0;
+	int retval;
+	unsigned int max_end = 0;
+
+	/* STEP 2:  Compute DIMM parameters from SPD data */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		if (!c->spd_installed_dimms)
+			continue;
+
+		for (j = 0; j < c->dimm_slots_per_ctrl; j++) {
+			struct spd_eeprom *spd = &c->spd_installed_dimms[j];
+			struct dimm_params *pdimm = &c->dimm_params[j];
+
+			retval = compute_dimm_parameters(c, spd, pdimm);
+			if (retval == 2) {
+				printf("Error: compute_dimm_parameters"
+				" non-zero returned FATAL value "
+				"for memctl=%u dimm=%u\n", i, j);
+				return 0;
+			}
+			if (retval) {
+				debug("Warning: compute_dimm_parameters"
+				" non-zero return value for memctl=%u "
+				"dimm=%u\n", i, j);
+			}
+		}
+	}
+
+	/*
+	 * STEP 3: Compute a common set of timing parameters
+	 * suitable for all of the DIMMs on each memory controller
+	 */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		debug("Computing lowest common DIMM parameters for memctl=%u\n",
+		      i);
+		compute_lowest_common_dimm_parameters(c);
+	}
+
+	/* STEP 4:  Gather configuration requirements from user */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		debug("Reloading memory controller "
+			"configuration options for memctl=%u\n", i);
+		/*
+		 * This "reloads" the memory controller options
+		 * to defaults.  If the user "edits" an option,
+		 * next_step points to the step after this,
+		 * which is currently STEP_ASSIGN_ADDRESSES.
+		 */
+		populate_memctl_options(c);
+		/*
+		 * For RDIMMs, JEDEC spec requires clocks to be stable
+		 * before reset signal is deasserted. For the boards
+		 * using fixed parameters, this function should be
+		 * be called from board init file.
+		 */
+		if (c->common_timing_params.all_dimms_registered)
+			assert_reset = 1;
+	}
+
+	/* STEP 5:  Assign addresses to chip selects */
+	check_interleaving_options(pinfo);
+	total_mem = step_assign_addresses(pinfo);
+	debug("Total mem %llu assigned\n", total_mem);
+
+	/* STEP 6:  compute controller register values */
+	debug("FSL Memory ctrl register computation\n");
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		if (c->common_timing_params.ndimms_present == 0) {
+			memset(&c->fsl_ddr_config_reg, 0,
+				sizeof(fsl_ddr_cfg_regs_t));
+			continue;
+		}
+
+		compute_fsl_memctl_config_regs(c);
+	}
+
+	/*
+	 * Compute the amount of memory available just by
+	 * looking for the highest valid CSn_BNDS value.
+	 * This allows us to also experiment with using
+	 * only CS0 when using dual-rank DIMMs.
+	 */
+
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		for (j = 0; j < c->chip_selects_per_ctrl; j++) {
+			fsl_ddr_cfg_regs_t *reg = &c->fsl_ddr_config_reg;
+			if (reg->cs[j].config & 0x80000000) {
+				unsigned int end;
+				/*
+				 * 0xfffffff is a special value we put
+				 * for unused bnds
+				 */
+				if (reg->cs[j].bnds == 0xffffffff)
+					continue;
+				end = reg->cs[j].bnds & 0xffff;
+				if (end > max_end) {
+					max_end = end;
+				}
+			}
+		}
+	}
+
+	total_mem = 1 + (((unsigned long long)max_end << 24ULL) |
+		    0xFFFFFFULL) - pinfo->mem_base;
+
+	return total_mem;
+}
+
+phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo)
+{
+	unsigned int i;
+	unsigned long long total_memory;
+	int deassert_reset = 0;
+
+	total_memory = fsl_ddr_compute(pinfo);
+
+	/* setup 3-way interleaving before enabling DDRC */
+	switch (pinfo->c[0].memctl_opts.memctl_interleaving_mode) {
+	case FSL_DDR_3WAY_1KB_INTERLEAVING:
+	case FSL_DDR_3WAY_4KB_INTERLEAVING:
+	case FSL_DDR_3WAY_8KB_INTERLEAVING:
+		fsl_ddr_set_intl3r(
+			pinfo->c[0].memctl_opts.
+			memctl_interleaving_mode);
+		break;
+	default:
+		break;
+	}
+
+	/*
+	 * Program configuration registers.
+	 * JEDEC specs requires clocks to be stable before deasserting reset
+	 * for RDIMMs. Clocks start after chip select is enabled and clock
+	 * control register is set. During step 1, all controllers have their
+	 * registers set but not enabled. Step 2 proceeds after deasserting
+	 * reset through board FPGA or GPIO.
+	 * For non-registered DIMMs, initialization can go through but it is
+	 * also OK to follow the same flow.
+	 */
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		if (c->common_timing_params.all_dimms_registered)
+			deassert_reset = 1;
+	}
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		struct fsl_ddr_controller *c = &pinfo->c[i];
+
+		debug("Programming controller %u\n", i);
+		if (c->common_timing_params.ndimms_present == 0) {
+			debug("No dimms present on controller %u; "
+					"skipping programming\n", i);
+			continue;
+		}
+		/*
+		 * The following call with step = 1 returns before enabling
+		 * the controller. It has to finish with step = 2 later.
+		 */
+		fsl_ddr_set_memctl_regs(c, deassert_reset ? 1 : 0);
+	}
+	if (deassert_reset) {
+		for (i = 0; i < pinfo->num_ctrls; i++) {
+			struct fsl_ddr_controller *c = &pinfo->c[i];
+
+			/* Call with step = 2 to continue initialization */
+			fsl_ddr_set_memctl_regs(c, 2);
+		}
+	}
+
+	debug("total_memory by %s = %llu\n", __func__, total_memory);
+
+	return total_memory;
+}
diff --git a/drivers/ddr/fsl/options.c b/drivers/ddr/fsl/options.c
new file mode 100644
index 0000000000..73e9ab044e
--- /dev/null
+++ b/drivers/ddr/fsl/options.c
@@ -0,0 +1,1133 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2008, 2010-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include "fsl_ddr.h"
+
+struct dynamic_odt {
+	unsigned int odt_rd_cfg;
+	unsigned int odt_wr_cfg;
+	unsigned int odt_rtt_norm;
+	unsigned int odt_rtt_wr;
+};
+
+/* Quad rank is not verified yet due availability.
+ * Replacing 20 OHM with 34 OHM since DDR4 doesn't have 20 OHM option
+ */
+static const struct dynamic_odt single_Q_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS_AND_OTHER_DIMM,
+		DDR4_RTT_34_OHM,	/* unverified */
+		DDR4_RTT_120_OHM
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR4_RTT_OFF,
+		DDR4_RTT_120_OHM
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS_AND_OTHER_DIMM,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_120_OHM
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,	/* tied high */
+		DDR4_RTT_OFF,
+		DDR4_RTT_120_OHM
+	}
+};
+
+static const struct dynamic_odt single_D_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR4_RTT_OFF,
+		DDR4_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt single_S_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+};
+
+static const struct dynamic_odt dual_DD_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_DS_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_120_OHM
+	},
+	{0, 0, 0, 0}
+};
+static const struct dynamic_odt dual_SD_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_120_OHM
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_SS_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_120_OHM
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR4_RTT_34_OHM,
+		DDR4_RTT_120_OHM
+	},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_D0_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR4_RTT_OFF,
+		DDR4_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_0D_ddr4[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR4_RTT_OFF,
+		DDR4_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_S0_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt dual_0S_ddr4[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_40_OHM,
+		DDR4_RTT_OFF
+	},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt odt_unknown_ddr4[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR4_RTT_120_OHM,
+		DDR4_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt single_Q_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS_AND_OTHER_DIMM,
+		DDR3_RTT_20_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,	/* tied high */
+		DDR3_RTT_OFF,
+		DDR3_RTT_120_OHM
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS_AND_OTHER_DIMM,
+		DDR3_RTT_20_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,	/* tied high */
+		DDR3_RTT_OFF,
+		DDR3_RTT_120_OHM
+	}
+};
+
+static const struct dynamic_odt single_D_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR3_RTT_OFF,
+		DDR3_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt single_S_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+};
+
+static const struct dynamic_odt dual_DD_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR3_RTT_30_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR3_RTT_30_OHM,
+		DDR3_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_DS_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR3_RTT_30_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_20_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{0, 0, 0, 0}
+};
+static const struct dynamic_odt dual_SD_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_20_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR3_RTT_20_OHM,
+		DDR3_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_SS_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_30_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_ALL,
+		DDR3_RTT_30_OHM,
+		DDR3_RTT_120_OHM
+	},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_D0_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR3_RTT_OFF,
+		DDR3_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_0D_ddr3[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_SAME_DIMM,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR3_RTT_OFF,
+		DDR3_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_S0_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt dual_0S_ddr3[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_40_OHM,
+		DDR3_RTT_OFF
+	},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt odt_unknown_ddr3[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR3_RTT_120_OHM,
+		DDR3_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt single_Q_ddr12[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt single_D_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt single_S_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+};
+
+static const struct dynamic_odt dual_DD_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_DS_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_SD_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_SS_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_OTHER_DIMM,
+		FSL_DDR_ODT_OTHER_DIMM,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_D0_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+};
+
+static const struct dynamic_odt dual_0D_ddr12[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_ALL,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	}
+};
+
+static const struct dynamic_odt dual_S0_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt dual_0S_ddr12[4] = {
+	{0, 0, 0, 0},
+	{0, 0, 0, 0},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR2_RTT_150_OHM,
+		DDR2_RTT_OFF
+	},
+	{0, 0, 0, 0}
+
+};
+
+static const struct dynamic_odt odt_unknown_ddr12[4] = {
+	{	/* cs0 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs1 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	},
+	{	/* cs2 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_CS,
+		DDR2_RTT_75_OHM,
+		DDR2_RTT_OFF
+	},
+	{	/* cs3 */
+		FSL_DDR_ODT_NEVER,
+		FSL_DDR_ODT_NEVER,
+		DDR2_RTT_OFF,
+		DDR2_RTT_OFF
+	}
+};
+
+/*
+ * Automatically seleect bank interleaving mode based on DIMMs
+ * in this order: cs0_cs1_cs2_cs3, cs0_cs1, null.
+ * This function only deal with one or two slots per controller.
+ */
+static inline unsigned int auto_bank_intlv(struct fsl_ddr_controller *c,
+					   struct dimm_params *pdimm)
+{
+	if (c->dimm_slots_per_ctrl == 1) {
+		if (pdimm[0].n_ranks == 4)
+			return FSL_DDR_CS0_CS1_CS2_CS3;
+		else if (pdimm[0].n_ranks == 2)
+			return FSL_DDR_CS0_CS1;
+	}
+
+	if (c->dimm_slots_per_ctrl == 2) {
+		if (pdimm[0].n_ranks == 2) {
+			if (pdimm[1].n_ranks == 2)
+				return FSL_DDR_CS0_CS1_CS2_CS3;
+			else
+				return FSL_DDR_CS0_CS1;
+		}
+	}
+
+	return 0;
+}
+
+unsigned int populate_memctl_options(struct fsl_ddr_controller *c)
+{
+	const struct common_timing_params *common_dimm = &c->common_timing_params;
+	memctl_options_t *popts = &c->memctl_opts;
+	struct dimm_params *pdimm = c->dimm_params;
+	unsigned int i;
+	const struct dynamic_odt *pdodt;
+	const struct dynamic_odt *single_Q, *single_S, *single_D;
+	const struct dynamic_odt *dual_DD, *dual_DS, *dual_0S;
+	const struct dynamic_odt *dual_D0, *dual_SD, *dual_SS, *dual_S0, *dual_0D;
+
+	if (is_ddr1(popts) || is_ddr2(popts)) {
+		pdodt = odt_unknown_ddr12;
+		single_Q = single_Q_ddr12;
+		single_D = single_D_ddr12;
+		single_S = single_S_ddr12;
+		dual_DD = dual_DD_ddr12;
+		dual_DS = dual_DS_ddr12;
+		dual_0S = dual_0S_ddr12;
+		dual_D0 = dual_D0_ddr12;
+		dual_SD = dual_SD_ddr12;
+		dual_SS = dual_SS_ddr12;
+		dual_S0 = dual_S0_ddr12;
+		dual_0D = dual_0D_ddr12;
+	} else if (is_ddr3(popts)) {
+		pdodt = odt_unknown_ddr3;
+		single_Q = single_Q_ddr3;
+		single_D = single_D_ddr3;
+		single_S = single_S_ddr3;
+		dual_DD = dual_DD_ddr3;
+		dual_DS = dual_DS_ddr3;
+		dual_0S = dual_0S_ddr3;
+		dual_D0 = dual_D0_ddr3;
+		dual_SD = dual_SD_ddr3;
+		dual_SS = dual_SS_ddr3;
+		dual_S0 = dual_S0_ddr3;
+		dual_0D = dual_0D_ddr3;
+	} else if (is_ddr4(popts)) {
+		pdodt = odt_unknown_ddr4;
+		single_Q = single_Q_ddr4;
+		single_D = single_D_ddr4;
+		single_S = single_S_ddr4;
+		dual_DD = dual_DD_ddr4;
+		dual_DS = dual_DS_ddr4;
+		dual_0S = dual_0S_ddr4;
+		dual_D0 = dual_D0_ddr4;
+		dual_SD = dual_SD_ddr4;
+		dual_SS = dual_SS_ddr4;
+		dual_S0 = dual_S0_ddr4;
+		dual_0D = dual_0D_ddr4;
+	} else {
+		return -EINVAL;
+	}
+
+	if (!is_ddr1(popts)) {
+		/* Chip select options. */
+		if (c->dimm_slots_per_ctrl == 1) {
+			switch (pdimm[0].n_ranks) {
+			case 1:
+				pdodt = single_S;
+				break;
+			case 2:
+				pdodt = single_D;
+				break;
+			case 4:
+				pdodt = single_Q;
+				break;
+			}
+		} else if (c->dimm_slots_per_ctrl == 2) {
+			switch (pdimm[0].n_ranks) {
+			case 4:
+				pdodt = single_Q;
+				if (pdimm[1].n_ranks)
+					printf("Error: Quad- and Dual-rank DIMMs cannot be used together\n");
+				break;
+			case 2:
+				switch (pdimm[1].n_ranks) {
+				case 2:
+					pdodt = dual_DD;
+					break;
+				case 1:
+					pdodt = dual_DS;
+					break;
+				case 0:
+					pdodt = dual_D0;
+					break;
+				}
+				break;
+			case 1:
+				switch (pdimm[1].n_ranks) {
+				case 2:
+					pdodt = dual_SD;
+					break;
+				case 1:
+					pdodt = dual_SS;
+					break;
+				case 0:
+					pdodt = dual_S0;
+					break;
+				}
+				break;
+			case 0:
+				switch (pdimm[1].n_ranks) {
+				case 2:
+					pdodt = dual_0D;
+					break;
+				case 1:
+					pdodt = dual_0S;
+					break;
+				}
+				break;
+			}
+		}
+	}
+
+	/* Pick chip-select local options. */
+	for (i = 0; i < c->chip_selects_per_ctrl; i++) {
+		if (is_ddr1(popts)) {
+			popts->cs_local_opts[i].odt_rd_cfg = FSL_DDR_ODT_NEVER;
+			popts->cs_local_opts[i].odt_wr_cfg = FSL_DDR_ODT_CS;
+		} else {
+			popts->cs_local_opts[i].odt_rd_cfg = pdodt[i].odt_rd_cfg;
+			popts->cs_local_opts[i].odt_wr_cfg = pdodt[i].odt_wr_cfg;
+			popts->cs_local_opts[i].odt_rtt_norm = pdodt[i].odt_rtt_norm;
+			popts->cs_local_opts[i].odt_rtt_wr = pdodt[i].odt_rtt_wr;
+		}
+		popts->cs_local_opts[i].auto_precharge = 0;
+	}
+
+	/* Pick interleaving mode. */
+
+	/*
+	 * 0 = no interleaving
+	 * 1 = interleaving between 2 controllers
+	 */
+	popts->memctl_interleaving = 0;
+
+	/*
+	 * 0 = cacheline
+	 * 1 = page
+	 * 2 = (logical) bank
+	 * 3 = superbank (only if CS interleaving is enabled)
+	 */
+	popts->memctl_interleaving_mode = 0;
+
+	/*
+	 * 0: cacheline: bit 30 of the 36-bit physical addr selects the memctl
+	 * 1: page:      bit to the left of the column bits selects the memctl
+	 * 2: bank:      bit to the left of the bank bits selects the memctl
+	 * 3: superbank: bit to the left of the chip select selects the memctl
+	 *
+	 * NOTE: ba_intlv (rank interleaving) is independent of memory
+	 * controller interleaving; it is only within a memory controller.
+	 * Must use superbank interleaving if rank interleaving is used and
+	 * memory controller interleaving is enabled.
+	 */
+
+	/*
+	 * 0 = no
+	 * 0x40 = CS0,CS1
+	 * 0x20 = CS2,CS3
+	 * 0x60 = CS0,CS1 + CS2,CS3
+	 * 0x04 = CS0,CS1,CS2,CS3
+	 */
+	popts->ba_intlv_ctl = 0;
+
+	/* Memory Organization Parameters */
+	popts->registered_dimm_en = common_dimm->all_dimms_registered;
+
+	/*
+	 * Choose DQS config
+	 * 0 for DDR1
+	 * 1 for DDR2
+	 */
+	if (is_ddr2(popts) || is_ddr3(popts))
+		popts->dqs_config = 1;
+
+	/* Choose self-refresh during sleep. */
+	popts->self_refresh_in_sleep = 1;
+
+	/* Choose dynamic power management mode. */
+	popts->dynamic_power = 0;
+
+	popts->x4_en = (pdimm[0].device_width == 4) ? 1 : 0;
+
+	/* Choose ddr controller address mirror mode */
+	if (is_ddr3_4(popts)) {
+		if (pdimm[0].n_ranks != 0) {
+			if (pdimm[0].primary_sdram_width == 64)
+				popts->data_bus_width = 0;
+			else if (pdimm[0].primary_sdram_width == 32)
+				popts->data_bus_width = 1;
+			else if (pdimm[0].primary_sdram_width == 16)
+				popts->data_bus_width = 2;
+			else {
+				panic("Error: primary sdram width %u is invalid!\n",
+					pdimm[0].primary_sdram_width);
+			}
+		}
+
+		if ((popts->data_bus_width == 1) || (popts->data_bus_width == 2)) {
+			/* 32-bit or 16-bit bus */
+			popts->otf_burst_chop_en = 0;
+			popts->burst_length = DDR_BL8;
+		} else {
+			popts->otf_burst_chop_en = 1;	/* on-the-fly burst chop */
+			popts->burst_length = DDR_OTF;	/* on-the-fly BC4 and BL8 */
+		}
+
+		for (i = 0; i < c->dimm_slots_per_ctrl; i++) {
+			if (pdimm[i].n_ranks) {
+				popts->mirrored_dimm = pdimm[i].mirrored_dimm;
+				break;
+			}
+		}
+	} else {
+		if (pdimm[0].n_ranks != 0) {
+			if ((pdimm[0].data_width >= 64) && \
+				(pdimm[0].data_width <= 72))
+				popts->data_bus_width = 0;
+			else if ((pdimm[0].data_width >= 32) && \
+				(pdimm[0].data_width <= 40))
+				popts->data_bus_width = 1;
+			else {
+				panic("Error: data width %u is invalid!\n",
+					pdimm[0].data_width);
+			}
+		}
+
+		popts->burst_length = DDR_BL4;	/* has to be 4 for DDR2 */
+	}
+
+
+	/* Global Timing Parameters. */
+	debug("mclk_ps = %u ps\n", get_memory_clk_period_ps(c));
+
+	/* Pick a caslat override. */
+	popts->cas_latency_override = 0;
+	popts->cas_latency_override_value = 3;
+	if (popts->cas_latency_override) {
+		debug("using caslat override value = %u\n",
+		       popts->cas_latency_override_value);
+	}
+
+	/* Decide whether to use the computed derated latency */
+	popts->use_derated_caslat = 0;
+
+	/* Choose an additive latency. */
+	popts->additive_latency_override = 0;
+	popts->additive_latency_override_value = 3;
+	if (popts->additive_latency_override) {
+		debug("using additive latency override value = %u\n",
+		       popts->additive_latency_override_value);
+	}
+
+	/*
+	 * 2T_EN setting
+	 *
+	 * Factors to consider for 2T_EN:
+	 *	- number of DIMMs installed
+	 *	- number of components, number of active ranks
+	 *	- how much time you want to spend playing around
+	 */
+	popts->twot_en = 0;
+	popts->threet_en = 0;
+
+	/* for RDIMM and DDR4 UDIMM/discrete memory, address parity enable */
+	if (popts->registered_dimm_en)
+		popts->ap_en = 1; /* 0 = disable,  1 = enable */
+	else
+		popts->ap_en = 0; /* disabled for DDR4 UDIMM/discrete default */
+
+	/*
+	 * BSTTOPRE precharge interval
+	 *
+	 * Set this to 0 for global auto precharge
+	 * The value of 0x100 has been used for DDR1, DDR2, DDR3.
+	 * It is not wrong. Any value should be OK. The performance depends on
+	 * applications. There is no one good value for all. One way to set
+	 * is to use 1/4 of refint value.
+	 */
+	popts->bstopre = picos_to_mclk(c, common_dimm->refresh_rate_ps)
+			 >> 2;
+
+	/*
+	 * Window for four activates -- tFAW
+	 *
+	 * FIXME: UM: applies only to DDR2/DDR3 with eight logical banks only
+	 * FIXME: varies depending upon number of column addresses or data
+	 * FIXME: width, was considering looking at pdimm->primary_sdram_width
+	 */
+	if (is_ddr1(popts))
+		popts->tfaw_window_four_activates_ps = mclk_to_picos(c, 1);
+	else if (is_ddr2(popts))
+		/*
+		 * x4/x8;  some datasheets have 35000
+		 * x16 wide columns only?  Use 50000?
+		 */
+		popts->tfaw_window_four_activates_ps = 37500;
+	else
+		popts->tfaw_window_four_activates_ps = pdimm[0].tfaw_ps;
+
+	popts->zq_en = 0;
+	popts->wrlvl_en = 0;
+
+	if (is_ddr3_4(popts)) {
+		/*
+		 * due to ddr3 dimm is fly-by topology
+		 * we suggest to enable write leveling to
+		 * meet the tQDSS under different loading.
+		 */
+		popts->wrlvl_en = 1;
+		popts->zq_en = 1;
+		popts->wrlvl_override = 0;
+	}
+
+	if (pdimm[0].n_ranks == 4)
+		popts->quad_rank_present = 1;
+
+	popts->package_3ds = pdimm->package_3ds;
+
+	if (!is_ddr4(popts)) {
+		ulong ddr_freq = c->ddr_freq / 1000000;
+		if (popts->registered_dimm_en) {
+			popts->rcw_override = 1;
+			popts->rcw_1 = 0x000a5a00;
+			if (ddr_freq <= 800)
+				popts->rcw_2 = 0x00000000;
+			else if (ddr_freq <= 1066)
+				popts->rcw_2 = 0x00100000;
+			else if (ddr_freq <= 1333)
+				popts->rcw_2 = 0x00200000;
+			else
+				popts->rcw_2 = 0x00300000;
+		}
+	}
+
+	if (c->board_options)
+		c->board_options(popts, pdimm, c);
+
+	return 0;
+}
+
+void check_interleaving_options(struct fsl_ddr_info *pinfo)
+{
+	int i, j, k, check_n_ranks, intlv_invalid = 0;
+	unsigned int check_intlv, check_n_row_addr, check_n_col_addr;
+	unsigned long long check_rank_density;
+	struct dimm_params *dimm;
+
+	/*
+	 * Check if all controllers are configured for memory
+	 * controller interleaving. Identical dimms are recommended. At least
+	 * the size, row and col address should be checked.
+	 */
+	j = 0;
+	check_n_ranks = pinfo->c[0].dimm_params[0].n_ranks;
+	check_rank_density = pinfo->c[0].dimm_params[0].rank_density;
+	check_n_row_addr =  pinfo->c[0].dimm_params[0].n_row_addr;
+	check_n_col_addr = pinfo->c[0].dimm_params[0].n_col_addr;
+	check_intlv = pinfo->c[0].memctl_opts.memctl_interleaving_mode;
+	for (i = 0; i < pinfo->num_ctrls; i++) {
+		dimm = &pinfo->c[i].dimm_params[0];
+		if (!pinfo->c[i].memctl_opts.memctl_interleaving) {
+			continue;
+		} else if (((check_rank_density != dimm->rank_density) ||
+		     (check_n_ranks != dimm->n_ranks) ||
+		     (check_n_row_addr != dimm->n_row_addr) ||
+		     (check_n_col_addr != dimm->n_col_addr) ||
+		     (check_intlv !=
+			pinfo->c[i].memctl_opts.memctl_interleaving_mode))){
+			intlv_invalid = 1;
+			break;
+		} else {
+			j++;
+		}
+
+	}
+	if (intlv_invalid) {
+		for (i = 0; i < pinfo->num_ctrls; i++)
+			pinfo->c[i].memctl_opts.memctl_interleaving = 0;
+		printf("Not all DIMMs are identical. "
+			"Memory controller interleaving disabled.\n");
+	} else {
+		switch (check_intlv) {
+		case FSL_DDR_256B_INTERLEAVING:
+		case FSL_DDR_CACHE_LINE_INTERLEAVING:
+		case FSL_DDR_PAGE_INTERLEAVING:
+		case FSL_DDR_BANK_INTERLEAVING:
+		case FSL_DDR_SUPERBANK_INTERLEAVING:
+			if (pinfo->num_ctrls == 3)
+				k = 2;
+			else
+				k = pinfo->num_ctrls;
+			break;
+		case FSL_DDR_3WAY_1KB_INTERLEAVING:
+		case FSL_DDR_3WAY_4KB_INTERLEAVING:
+		case FSL_DDR_3WAY_8KB_INTERLEAVING:
+		case FSL_DDR_4WAY_1KB_INTERLEAVING:
+		case FSL_DDR_4WAY_4KB_INTERLEAVING:
+		case FSL_DDR_4WAY_8KB_INTERLEAVING:
+		default:
+			k = pinfo->num_ctrls;
+			break;
+		}
+		debug("%d of %d controllers are interleaving.\n", j, k);
+		if (j && (j != k)) {
+			for (i = 0; i < pinfo->num_ctrls; i++)
+				pinfo->c[i].memctl_opts.memctl_interleaving = 0;
+			if (pinfo->num_ctrls > 1)
+				printf("Not all controllers have compatible interleaving mode. All disabled.\n");
+		}
+	}
+	debug("Checking interleaving options completed\n");
+}
diff --git a/drivers/ddr/fsl/util.c b/drivers/ddr/fsl/util.c
new file mode 100644
index 0000000000..977d22dcaa
--- /dev/null
+++ b/drivers/ddr/fsl/util.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2008-2014 Freescale Semiconductor, Inc.
+ */
+
+#include <common.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/fsl_immap.h>
+#include <io.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm-generic/div64.h>
+#include "fsl_ddr.h"
+
+/* To avoid 64-bit full-divides, we factor this here */
+#define ULL_2E12 2000000000000ULL
+#define UL_5POW12 244140625UL
+#define UL_2POW13 (1UL << 13)
+
+#define ULL_8FS 0xFFFFFFFFULL
+
+u32 fsl_ddr_get_version(struct fsl_ddr_controller *c)
+{
+	struct ccsr_ddr __iomem *ddr = c->base;
+	u32 ver_major_minor_errata;
+
+	ver_major_minor_errata = (ddr_in32(&ddr->ip_rev1) & 0xFFFF) << 8;
+	ver_major_minor_errata |= (ddr_in32(&ddr->ip_rev2) & 0xFF00) >> 8;
+
+	return ver_major_minor_errata;
+}
+
+/*
+ * Round up mclk_ps to nearest 1 ps in memory controller code
+ * if the error is 0.5ps or more.
+ *
+ * If an imprecise data rate is too high due to rounding error
+ * propagation, compute a suitably rounded mclk_ps to compute
+ * a working memory controller configuration.
+ */
+unsigned int get_memory_clk_period_ps(struct fsl_ddr_controller *c)
+{
+	unsigned int data_rate = c->ddr_freq;
+	unsigned int result;
+
+	/* Round to nearest 10ps, being careful about 64-bit multiply/divide */
+	unsigned long long rem, mclk_ps = ULL_2E12;
+
+	/* Now perform the big divide, the result fits in 32-bits */
+	rem = do_div(mclk_ps, data_rate);
+	result = (rem >= (data_rate >> 1)) ? mclk_ps + 1 : mclk_ps;
+
+	return result;
+}
+
+/* Convert picoseconds into DRAM clock cycles (rounding up if needed). */
+unsigned int picos_to_mclk(struct fsl_ddr_controller *c, unsigned int picos)
+{
+	unsigned long long clks, clks_rem;
+	unsigned int data_rate = c->ddr_freq;
+
+	/* Short circuit for zero picos */
+	if (!picos)
+		return 0;
+
+	/* First multiply the time by the data rate (32x32 => 64) */
+	clks = picos * (unsigned long long)data_rate;
+	/*
+	 * Now divide by 5^12 and track the 32-bit remainder, then divide
+	 * by 2*(2^12) using shifts (and updating the remainder).
+	 */
+	clks_rem = do_div(clks, UL_5POW12);
+	clks_rem += (clks & (UL_2POW13-1)) * UL_5POW12;
+	clks >>= 13;
+
+	/* If we had a remainder greater than the 1ps error, then round up */
+	if (clks_rem > data_rate)
+		clks++;
+
+	/* Clamp to the maximum representable value */
+	if (clks > ULL_8FS)
+		clks = ULL_8FS;
+	return (unsigned int) clks;
+}
+
+unsigned int mclk_to_picos(struct fsl_ddr_controller *c, unsigned int mclk)
+{
+	return get_memory_clk_period_ps(c) * mclk;
+}
+
+void fsl_ddr_set_intl3r(const unsigned int granule_size)
+{
+}
+
+u32 fsl_ddr_get_intl3r(void)
+{
+	u32 val = 0;
+	return val;
+}
diff --git a/include/soc/fsl/fsl_ddr_sdram.h b/include/soc/fsl/fsl_ddr_sdram.h
new file mode 100644
index 0000000000..07d0af96fc
--- /dev/null
+++ b/include/soc/fsl/fsl_ddr_sdram.h
@@ -0,0 +1,558 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2008-2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP Semiconductor
+ */
+
+#ifndef FSL_DDR_MEMCTL_H
+#define FSL_DDR_MEMCTL_H
+
+#include <ddr_spd.h>
+#include <soc/fsl/fsl_immap.h>
+
+struct common_timing_params {
+	/* parameters to constrict */
+
+	unsigned int tckmin_x_ps;
+	unsigned int tckmax_ps;
+	unsigned int trcd_ps;
+	unsigned int trp_ps;
+	unsigned int tras_ps;
+	unsigned int taamin_ps; /* ddr3, ddr4 */
+
+	unsigned int trfc1_ps; /* ddr4 */
+	unsigned int trfc2_ps; /* ddr4 */
+	unsigned int trfc4_ps; /* ddr4 */
+	unsigned int trrds_ps; /* ddr4 */
+	unsigned int trrdl_ps; /* ddr4 */
+	unsigned int tccdl_ps; /* ddr4 */
+	unsigned int trfc_slr_ps; /* ddr4 */
+	unsigned int twtr_ps;	/* !ddr4, maximum = 63750 ps */
+	unsigned int trfc_ps;	/* !ddr4, maximum = 255 ns + 256 ns + .75 ns
+					   = 511750 ps */
+
+	unsigned int trrd_ps;	/* !ddr4, maximum = 63750 ps */
+	unsigned int trtp_ps;	/* !ddr4, byte 38, spd->trtp */
+	unsigned int twr_ps;	/* maximum = 63750 ps */
+	unsigned int trc_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+
+	unsigned int refresh_rate_ps;
+	unsigned int extended_op_srt;
+
+	unsigned int tis_ps;	/* ddr1, ddr2, byte 32, spd->ca_setup */
+	unsigned int tih_ps;	/* ddr1, ddr2, byte 33, spd->ca_hold */
+	unsigned int tds_ps;	/* ddr1, ddr2, byte 34, spd->data_setup */
+	unsigned int tdh_ps;	/* ddr1, ddr2, byte 35, spd->data_hold */
+	unsigned int tdqsq_max_ps;	/* ddr1, ddr2, byte 44, spd->tdqsq */
+	unsigned int tqhs_ps;	/* ddr1, ddr2, byte 45, spd->tqhs */
+
+	unsigned int ndimms_present;
+	unsigned int lowest_common_spd_caslat;
+	unsigned int highest_common_derated_caslat;
+	unsigned int additive_latency;
+	unsigned int all_dimms_burst_lengths_bitmask;
+	unsigned int all_dimms_registered;
+	unsigned int all_dimms_unbuffered;
+	unsigned int all_dimms_ecc_capable;
+
+	unsigned long long total_mem;
+	unsigned long long base_address;
+
+	/* DDR3 RDIMM */
+	unsigned char rcw[16];	/* Register Control Word 0-15 */
+};
+
+enum sdram_type {
+	SDRAM_TYPE_DDR1 = 2,
+	SDRAM_TYPE_DDR2 = 3,
+	SDRAM_TYPE_LPDDR1 = 6,
+	SDRAM_TYPE_DDR3 = 7,
+	SDRAM_TYPE_DDR4 = 5,
+};
+
+#define DDR_BL4		4	/* burst length 4 */
+#define DDR_BC4		DDR_BL4	/* burst chop for ddr3 */
+#define DDR_OTF		6	/* on-the-fly BC4 and BL8 */
+#define DDR_BL8		8	/* burst length 8 */
+
+#define DDR3_RTT_OFF		0
+#define DDR3_RTT_60_OHM		1 /* RTT_Nom = RZQ/4 */
+#define DDR3_RTT_120_OHM	2 /* RTT_Nom = RZQ/2 */
+#define DDR3_RTT_40_OHM		3 /* RTT_Nom = RZQ/6 */
+#define DDR3_RTT_20_OHM		4 /* RTT_Nom = RZQ/12 */
+#define DDR3_RTT_30_OHM		5 /* RTT_Nom = RZQ/8 */
+
+#define DDR4_RTT_OFF		0
+#define DDR4_RTT_60_OHM		1	/* RZQ/4 */
+#define DDR4_RTT_120_OHM	2	/* RZQ/2 */
+#define DDR4_RTT_40_OHM		3	/* RZQ/6 */
+#define DDR4_RTT_240_OHM	4	/* RZQ/1 */
+#define DDR4_RTT_48_OHM		5	/* RZQ/5 */
+#define DDR4_RTT_80_OHM		6	/* RZQ/3 */
+#define DDR4_RTT_34_OHM		7	/* RZQ/7 */
+
+#define DDR2_RTT_OFF		0
+#define DDR2_RTT_75_OHM		1
+#define DDR2_RTT_150_OHM	2
+#define DDR2_RTT_50_OHM		3
+
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR1	1
+#define FSL_DDR_MIN_TCKE_PULSE_WIDTH_DDR2	3
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
+/* define bank(chip select) interleaving mode */
+#define FSL_DDR_CS0_CS1			0x40
+#define FSL_DDR_CS2_CS3			0x20
+#define FSL_DDR_CS0_CS1_AND_CS2_CS3	(FSL_DDR_CS0_CS1 | FSL_DDR_CS2_CS3)
+#define FSL_DDR_CS0_CS1_CS2_CS3		(FSL_DDR_CS0_CS1_AND_CS2_CS3 | 0x04)
+
+/* define memory controller interleaving mode */
+#define FSL_DDR_CACHE_LINE_INTERLEAVING	0x0
+#define FSL_DDR_PAGE_INTERLEAVING	0x1
+#define FSL_DDR_BANK_INTERLEAVING	0x2
+#define FSL_DDR_SUPERBANK_INTERLEAVING	0x3
+#define FSL_DDR_256B_INTERLEAVING	0x8
+#define FSL_DDR_3WAY_1KB_INTERLEAVING	0xA
+#define FSL_DDR_3WAY_4KB_INTERLEAVING	0xC
+#define FSL_DDR_3WAY_8KB_INTERLEAVING	0xD
+/* placeholder for 4-way interleaving */
+#define FSL_DDR_4WAY_1KB_INTERLEAVING	0x1A
+#define FSL_DDR_4WAY_4KB_INTERLEAVING	0x1C
+#define FSL_DDR_4WAY_8KB_INTERLEAVING	0x1D
+
+#define SDRAM_CS_CONFIG_EN		0x80000000
+
+/* DDR_SDRAM_CFG - DDR SDRAM Control Configuration
+ */
+#define SDRAM_CFG_MEM_EN		0x80000000
+#define SDRAM_CFG_SREN			0x40000000
+#define SDRAM_CFG_ECC_EN		0x20000000
+#define SDRAM_CFG_RD_EN			0x10000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR1	0x02000000
+#define SDRAM_CFG_SDRAM_TYPE_DDR2	0x03000000
+#define SDRAM_CFG_SDRAM_TYPE_MASK	0x07000000
+#define SDRAM_CFG_SDRAM_TYPE_SHIFT	24
+#define SDRAM_CFG_DYN_PWR		0x00200000
+#define SDRAM_CFG_DBW_MASK		0x00180000
+#define SDRAM_CFG_DBW_SHIFT		19
+#define SDRAM_CFG_32_BE			0x00080000
+#define SDRAM_CFG_16_BE			0x00100000
+#define SDRAM_CFG_8_BE			0x00040000
+#define SDRAM_CFG_NCAP			0x00020000
+#define SDRAM_CFG_2T_EN			0x00008000
+#define SDRAM_CFG_BI			0x00000001
+
+#define SDRAM_CFG2_FRC_SR		0x80000000
+#define SDRAM_CFG2_D_INIT		0x00000010
+#define SDRAM_CFG2_AP_EN		0x00000020
+#define SDRAM_CFG2_ODT_CFG_MASK		0x00600000
+#define SDRAM_CFG2_ODT_NEVER		0
+#define SDRAM_CFG2_ODT_ONLY_WRITE	1
+#define SDRAM_CFG2_ODT_ONLY_READ	2
+#define SDRAM_CFG2_ODT_ALWAYS		3
+
+#define SDRAM_INTERVAL_BSTOPRE	0x3FFF
+#define TIMING_CFG_2_CPO_MASK	0x0F800000
+
+#define RD_TO_PRE_MASK		0xf
+#define RD_TO_PRE_SHIFT		13
+#define WR_DATA_DELAY_MASK	0xf
+#define WR_DATA_DELAY_SHIFT	9
+
+/* DDR_EOR register */
+#define DDR_EOR_RD_REOD_DIS	0x07000000
+#define DDR_EOR_WD_REOD_DIS	0x00100000
+
+/* DDR_MD_CNTL */
+#define MD_CNTL_MD_EN		0x80000000
+#define MD_CNTL_CS_SEL_CS0	0x00000000
+#define MD_CNTL_CS_SEL_CS1	0x10000000
+#define MD_CNTL_CS_SEL_CS2	0x20000000
+#define MD_CNTL_CS_SEL_CS3	0x30000000
+#define MD_CNTL_CS_SEL_CS0_CS1	0x40000000
+#define MD_CNTL_CS_SEL_CS2_CS3	0x50000000
+#define MD_CNTL_MD_SEL_MR	0x00000000
+#define MD_CNTL_MD_SEL_EMR	0x01000000
+#define MD_CNTL_MD_SEL_EMR2	0x02000000
+#define MD_CNTL_MD_SEL_EMR3	0x03000000
+#define MD_CNTL_SET_REF		0x00800000
+#define MD_CNTL_SET_PRE		0x00400000
+#define MD_CNTL_CKE_CNTL_LOW	0x00100000
+#define MD_CNTL_CKE_CNTL_HIGH	0x00200000
+#define MD_CNTL_WRCW		0x00080000
+#define MD_CNTL_MD_VALUE(x)	(x & 0x0000FFFF)
+#define MD_CNTL_CS_SEL(x)	(((x) & 0x7) << 28)
+#define MD_CNTL_MD_SEL(x)	(((x) & 0xf) << 24)
+
+/* DDR_CDR1 */
+#define DDR_CDR1_DHC_EN	0x80000000
+#define DDR_CDR1_V0PT9_EN	0x40000000
+#define DDR_CDR1_ODT_SHIFT	17
+#define DDR_CDR1_ODT_MASK	0x6
+#define DDR_CDR2_ODT_MASK	0x1
+#define DDR_CDR1_ODT(x) ((x & DDR_CDR1_ODT_MASK) << DDR_CDR1_ODT_SHIFT)
+#define DDR_CDR2_ODT(x) (x & DDR_CDR2_ODT_MASK)
+#define DDR_CDR2_VREF_OVRD(x)	(0x00008080 | ((((x) - 37) & 0x3F) << 8))
+#define DDR_CDR2_VREF_TRAIN_EN	0x00000080
+#define DDR_CDR2_VREF_RANGE_2	0x00000040
+
+/* DDR ERR_DISABLE */
+#define DDR_ERR_DISABLE_APED	(1 << 8)  /* Address parity error disable */
+
+/* Mode Registers */
+#define DDR_MR5_CA_PARITY_LAT_4_CLK	0x1 /* for DDR4-1600/1866/2133 */
+#define DDR_MR5_CA_PARITY_LAT_5_CLK	0x2 /* for DDR4-2400 */
+
+/* DEBUG_26 register */
+#define DDR_CAS_TO_PRE_SUB_MASK  0x0000f000 /* CAS to preamble subtract value */
+#define DDR_CAS_TO_PRE_SUB_SHIFT 12
+
+/* DEBUG_29 register */
+#define DDR_TX_BD_DIS	(1 << 10) /* Transmit Bit Deskew Disable */
+
+
+#define DDR4_CDR_ODT_OFF	0x0
+#define DDR4_CDR_ODT_100ohm	0x1
+#define DDR4_CDR_ODT_120ohm	0x2
+#define DDR4_CDR_ODT_80ohm	0x3
+#define DDR4_CDR_ODT_60ohm	0x4
+#define DDR4_CDR_ODT_40ohm	0x5
+#define DDR4_CDR_ODT_50ohm	0x6
+#define DDR4_CDR_ODT_30ohm	0x7
+
+#define DDR123_CDR_ODT_OFF	0x0
+#define DDR123_CDR_ODT_120ohm	0x1
+#define DDR123_CDR_ODT_180ohm	0x2
+#define DDR123_CDR_ODT_75ohm	0x3
+#define DDR123_CDR_ODT_110ohm	0x4
+#define DDR123_CDR_ODT_60hm	0x5
+#define DDR123_CDR_ODT_70ohm	0x6
+#define DDR123_CDR_ODT_47ohm	0x7
+
+#define DDR_INIT_ADDR_EXT_UIA	(1 << 31)
+
+#define MAX_CHIP_SELECTS_PER_CTRL 4
+#define MAX_DIMM_SLOTS_PER_CTRL 2
+
+/* Record of register values computed */
+typedef struct fsl_ddr_cfg_regs_s {
+	struct {
+		unsigned int bnds;
+		unsigned int config;
+		unsigned int config_2;
+	} cs[MAX_CHIP_SELECTS_PER_CTRL];
+	unsigned int timing_cfg_3;
+	unsigned int timing_cfg_0;
+	unsigned int timing_cfg_1;
+	unsigned int timing_cfg_2;
+	unsigned int ddr_sdram_cfg;
+	unsigned int ddr_sdram_cfg_2;
+	unsigned int ddr_sdram_cfg_3;
+	unsigned int ddr_sdram_mode;
+	unsigned int ddr_sdram_mode_2;
+	unsigned int ddr_sdram_mode_3;
+	unsigned int ddr_sdram_mode_4;
+	unsigned int ddr_sdram_mode_5;
+	unsigned int ddr_sdram_mode_6;
+	unsigned int ddr_sdram_mode_7;
+	unsigned int ddr_sdram_mode_8;
+	unsigned int ddr_sdram_mode_9;
+	unsigned int ddr_sdram_mode_10;
+	unsigned int ddr_sdram_mode_11;
+	unsigned int ddr_sdram_mode_12;
+	unsigned int ddr_sdram_mode_13;
+	unsigned int ddr_sdram_mode_14;
+	unsigned int ddr_sdram_mode_15;
+	unsigned int ddr_sdram_mode_16;
+	unsigned int ddr_sdram_md_cntl;
+	unsigned int ddr_sdram_interval;
+	unsigned int ddr_data_init;
+	unsigned int ddr_sdram_clk_cntl;
+	unsigned int ddr_init_addr;
+	unsigned int ddr_init_ext_addr;
+	unsigned int timing_cfg_4;
+	unsigned int timing_cfg_5;
+	unsigned int timing_cfg_6;
+	unsigned int timing_cfg_7;
+	unsigned int timing_cfg_8;
+	unsigned int timing_cfg_9;
+	unsigned int ddr_zq_cntl;
+	unsigned int ddr_wrlvl_cntl;
+	unsigned int ddr_wrlvl_cntl_2;
+	unsigned int ddr_wrlvl_cntl_3;
+	unsigned int ddr_sr_cntr;
+	unsigned int ddr_sdram_rcw_1;
+	unsigned int ddr_sdram_rcw_2;
+	unsigned int ddr_sdram_rcw_3;
+	unsigned int ddr_sdram_rcw_4;
+	unsigned int ddr_sdram_rcw_5;
+	unsigned int ddr_sdram_rcw_6;
+	unsigned int dq_map_0;
+	unsigned int dq_map_1;
+	unsigned int dq_map_2;
+	unsigned int dq_map_3;
+	unsigned int ddr_eor;
+	unsigned int ddr_cdr1;
+	unsigned int ddr_cdr2;
+	unsigned int err_disable;
+	unsigned int err_int_en;
+	unsigned int debug[64];
+} fsl_ddr_cfg_regs_t;
+
+#define DDR_DATA_BUS_WIDTH_64 0
+#define DDR_DATA_BUS_WIDTH_32 1
+#define DDR_DATA_BUS_WIDTH_16 2
+#define DDR_CSWL_CS0	0x04000001
+/*
+ * Generalized parameters for memory controller configuration,
+ * might be a little specific to the FSL memory controller
+ */
+typedef struct memctl_options_s {
+	enum sdram_type ddrtype;
+
+	/*
+	 * Memory organization parameters
+	 *
+	 * if DIMM is present in the system
+	 * where DIMMs are with respect to chip select
+	 * where chip selects are with respect to memory boundaries
+	 */
+	unsigned int registered_dimm_en;    /* use registered DIMM support */
+
+	/* Options local to a Chip Select */
+	struct cs_local_opts_s {
+		unsigned int auto_precharge;
+		unsigned int odt_rd_cfg;
+		unsigned int odt_wr_cfg;
+		unsigned int odt_rtt_norm;
+		unsigned int odt_rtt_wr;
+	} cs_local_opts[MAX_CHIP_SELECTS_PER_CTRL];
+
+	/* Special configurations for chip select */
+	unsigned int memctl_interleaving;
+	unsigned int memctl_interleaving_mode;
+	unsigned int ba_intlv_ctl;
+	unsigned int addr_hash;
+
+	/* Operational mode parameters */
+	unsigned int ecc_mode;	 /* Use ECC? */
+	/* Initialize ECC using memory controller? */
+	unsigned int ecc_init_using_memctl;
+	unsigned int dqs_config;	/* Use DQS? maybe only with DDR2? */
+	/* SREN - self-refresh during sleep */
+	unsigned int self_refresh_in_sleep;
+	/* SR_IE - Self-refresh interrupt enable */
+	unsigned int self_refresh_interrupt_en;
+	unsigned int dynamic_power;	/* DYN_PWR */
+	/* memory data width to use (16-bit, 32-bit, 64-bit) */
+	unsigned int data_bus_width;
+	unsigned int burst_length;	/* BL4, OTF and BL8 */
+	/* On-The-Fly Burst Chop enable */
+	unsigned int otf_burst_chop_en;
+	/* mirrior DIMMs for DDR3 */
+	unsigned int mirrored_dimm;
+	unsigned int quad_rank_present;
+	unsigned int ap_en;	/* address parity enable for RDIMM/DDR4-UDIMM */
+	unsigned int x4_en;	/* enable x4 devices */
+	unsigned int package_3ds;
+
+	/* Global Timing Parameters */
+	unsigned int cas_latency_override;
+	unsigned int cas_latency_override_value;
+	unsigned int use_derated_caslat;
+	unsigned int additive_latency_override;
+	unsigned int additive_latency_override_value;
+
+	unsigned int clk_adjust;		/* */
+	unsigned int cpo_override;		/* override timing_cfg_2[CPO]*/
+	unsigned int cpo_sample;		/* optimize debug_29[24:31] */
+	unsigned int write_data_delay;		/* DQS adjust */
+
+	unsigned int cswl_override;
+	unsigned int wrlvl_override;
+	unsigned int wrlvl_sample;		/* Write leveling */
+	unsigned int wrlvl_start;
+	unsigned int wrlvl_ctl_2;
+	unsigned int wrlvl_ctl_3;
+
+	unsigned int half_strength_driver_enable;
+	unsigned int twot_en;
+	unsigned int threet_en;
+	unsigned int bstopre;
+	unsigned int tfaw_window_four_activates_ps;	/* tFAW --  FOUR_ACT */
+
+	/* Rtt impedance */
+	unsigned int rtt_override;		/* rtt_override enable */
+	unsigned int rtt_override_value;	/* that is Rtt_Nom for DDR3 */
+	unsigned int rtt_wr_override_value;	/* this is Rtt_WR for DDR3 */
+
+	/* Automatic self refresh */
+	unsigned int auto_self_refresh_en;
+	unsigned int sr_it;
+	/* ZQ calibration */
+	unsigned int zq_en;
+	/* Write leveling */
+	unsigned int wrlvl_en;
+	/* RCW override for RDIMM */
+	unsigned int rcw_override;
+	unsigned int rcw_1;
+	unsigned int rcw_2;
+	unsigned int rcw_3;
+	/* control register 1 */
+	unsigned int ddr_cdr1;
+	unsigned int ddr_cdr2;
+
+	unsigned int trwt_override;
+	unsigned int trwt;			/* read-to-write turnaround */
+} memctl_options_t;
+
+#define EDC_DATA_PARITY	1
+#define EDC_ECC		2
+#define EDC_AC_PARITY	4
+
+/* Parameters for a DDR dimm computed from the SPD */
+struct dimm_params {
+
+	/* DIMM organization parameters */
+	char mpart[19];		/* guaranteed null terminated */
+
+	unsigned int n_ranks;
+	unsigned int die_density;
+	unsigned long long rank_density;
+	unsigned long long capacity;
+	unsigned int data_width;
+	unsigned int primary_sdram_width;
+	unsigned int ec_sdram_width;
+	unsigned int registered_dimm;
+	unsigned int package_3ds;	/* number of dies in 3DS DIMM */
+	unsigned int device_width;	/* x4, x8, x16 components */
+
+	/* SDRAM device parameters */
+	unsigned int n_row_addr;
+	unsigned int n_col_addr;
+	unsigned int edc_config;	/* 0 = none, 1 = parity, 2 = ECC */
+	unsigned int bank_addr_bits; /* DDR4 */
+	unsigned int bank_group_bits; /* DDR4 */
+	unsigned int n_banks_per_sdram_device; /* !DDR4 */
+	unsigned int burst_lengths_bitmask;	/* BL=4 bit 2, BL=8 = bit 3 */
+
+	/* used in computing base address of DIMMs */
+	unsigned long long base_address;
+	/* mirrored DIMMs */
+	unsigned int mirrored_dimm;	/* only for ddr3 */
+
+	/* DIMM timing parameters */
+
+	int mtb_ps;	/* medium timebase ps */
+	int ftb_10th_ps; /* fine timebase, in 1/10 ps */
+	int taa_ps;	/* minimum CAS latency time */
+	int tfaw_ps;	/* four active window delay */
+
+	/*
+	 * SDRAM clock periods
+	 * The range for these are 1000-10000 so a short should be sufficient
+	 */
+	int tckmin_x_ps;
+	int tckmin_x_minus_1_ps;
+	int tckmin_x_minus_2_ps;
+	int tckmax_ps;
+
+	/* SPD-defined CAS latencies */
+	unsigned int caslat_x;
+	unsigned int caslat_x_minus_1;
+	unsigned int caslat_x_minus_2;
+
+	unsigned int caslat_lowest_derated;	/* Derated CAS latency */
+
+	/* basic timing parameters */
+	int trcd_ps;
+	int trp_ps;
+	int tras_ps;
+
+	int trfc1_ps; /* DDR4 */
+	int trfc2_ps; /* DDR4 */
+	int trfc4_ps; /* DDR4 */
+	int trrds_ps; /* DDR4 */
+	int trrdl_ps; /* DDR4 */
+	int tccdl_ps; /* DDR4 */
+	int trfc_slr_ps; /* DDR4 */
+	int twr_ps;	/* !DDR4, maximum = 63750 ps */
+	int trfc_ps;	/* max = 255 ns + 256 ns + .75 ns
+				       = 511750 ps */
+	int trrd_ps;	/* !DDR4, maximum = 63750 ps */
+	int twtr_ps;	/* !DDR4, maximum = 63750 ps */
+	int trtp_ps;	/* !DDR4, byte 38, spd->trtp */
+
+	int trc_ps;	/* maximum = 254 ns + .75 ns = 254750 ps */
+
+	int refresh_rate_ps;
+	int extended_op_srt;
+
+	int tis_ps;	/* DDR1, DDR2, byte 32, spd->ca_setup */
+	int tih_ps;	/* DDR1, DDR2, byte 33, spd->ca_hold */
+	int tds_ps;	/* DDR1, DDR2, byte 34, spd->data_setup */
+	int tdh_ps;	/* DDR1, DDR2, byte 35, spd->data_hold */
+	int tdqsq_max_ps;	/* DDR1, DDR2, byte 44, spd->tdqsq */
+	int tqhs_ps;	/* DDR1, DDR2, byte 45, spd->tqhs */
+
+	/* DDR3 & DDR4 RDIMM */
+	unsigned char rcw[16];	/* Register Control Word 0-15 */
+	unsigned int dq_mapping[18]; /* DDR4 */
+	unsigned int dq_mapping_ors; /* DDR4 */
+};
+
+struct fsl_ddr_controller {
+	int num;
+	unsigned long ddr_freq;
+	struct ccsr_ddr __iomem *base;
+	struct spd_eeprom *spd_installed_dimms;
+	struct dimm_params *dimm_params;
+	memctl_options_t memctl_opts;
+	struct common_timing_params common_timing_params;
+	fsl_ddr_cfg_regs_t fsl_ddr_config_reg;
+	unsigned int dbw_capacity_adjust;
+	int chip_selects_per_ctrl;
+	int dimm_slots_per_ctrl;
+	bool erratum_A009663;
+	bool erratum_A008511;
+	bool erratum_A009803;
+	bool erratum_A010165;
+	bool erratum_A009801;
+	bool erratum_A004508;
+	bool erratum_A008378;
+	bool erratum_A009942;
+	void (*board_options)(memctl_options_t *popts, struct dimm_params *pdimm,
+			      struct fsl_ddr_controller *c);
+};
+
+struct fsl_ddr_info {
+	struct fsl_ddr_controller *c;
+	unsigned int num_ctrls;
+	unsigned long long mem_base;
+};
+
+phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo);
+
+#ifdef CONFIG_SYS_FSL_DDR_LE
+#define ddr_in32(a)	in_le32(a)
+#define ddr_out32(a, v)	out_le32(a, v)
+#define ddr_setbits32(a, v)	setbits_le32(a, v)
+#define ddr_clrbits32(a, v)	clrbits_le32(a, v)
+#define ddr_clrsetbits32(a, clear, set)	clrsetbits_le32(a, clear, set)
+#else
+#define ddr_in32(a)	in_be32(a)
+#define ddr_out32(a, v)	out_be32(a, v)
+#define ddr_setbits32(a, v)	setbits_be32(a, v)
+#define ddr_clrbits32(a, v)	clrbits_be32(a, v)
+#define ddr_clrsetbits32(a, clear, set)	clrsetbits_be32(a, clear, set)
+#endif
+
+#endif
diff --git a/include/soc/fsl/fsl_immap.h b/include/soc/fsl/fsl_immap.h
new file mode 100644
index 0000000000..93dd6f67bd
--- /dev/null
+++ b/include/soc/fsl/fsl_immap.h
@@ -0,0 +1,184 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Common internal memory map for some Freescale SoCs
+ *
+ * Copyright 2013-2014 Freescale Semiconductor, Inc.
+ */
+
+#ifndef __FSL_IMMAP_H
+#define __FSL_IMMAP_H
+/*
+ * DDR memory controller registers
+ * This structure works for mpc83xx (DDR2 and DDR3), mpc85xx, mpc86xx.
+ */
+struct ccsr_ddr {
+	u32	cs0_bnds;		/* Chip Select 0 Memory Bounds */
+	u8	res_04[4];
+	u32	cs1_bnds;		/* Chip Select 1 Memory Bounds */
+	u8	res_0c[4];
+	u32	cs2_bnds;		/* Chip Select 2 Memory Bounds */
+	u8	res_14[4];
+	u32	cs3_bnds;		/* Chip Select 3 Memory Bounds */
+	u8	res_1c[100];
+	u32	cs0_config;		/* Chip Select Configuration */
+	u32	cs1_config;		/* Chip Select Configuration */
+	u32	cs2_config;		/* Chip Select Configuration */
+	u32	cs3_config;		/* Chip Select Configuration */
+	u8	res_90[48];
+	u32	cs0_config_2;		/* Chip Select Configuration 2 */
+	u32	cs1_config_2;		/* Chip Select Configuration 2 */
+	u32	cs2_config_2;		/* Chip Select Configuration 2 */
+	u32	cs3_config_2;		/* Chip Select Configuration 2 */
+	u8	res_d0[48];
+	u32	timing_cfg_3;		/* SDRAM Timing Configuration 3 */
+	u32	timing_cfg_0;		/* SDRAM Timing Configuration 0 */
+	u32	timing_cfg_1;		/* SDRAM Timing Configuration 1 */
+	u32	timing_cfg_2;		/* SDRAM Timing Configuration 2 */
+	u32	sdram_cfg;		/* SDRAM Control Configuration */
+	u32	sdram_cfg_2;		/* SDRAM Control Configuration 2 */
+	u32	sdram_mode;		/* SDRAM Mode Configuration */
+	u32	sdram_mode_2;		/* SDRAM Mode Configuration 2 */
+	u32	sdram_md_cntl;		/* SDRAM Mode Control */
+	u32	sdram_interval;		/* SDRAM Interval Configuration */
+	u32	sdram_data_init;	/* SDRAM Data initialization */
+	u8	res_12c[4];
+	u32	sdram_clk_cntl;		/* SDRAM Clock Control */
+	u8	res_134[20];
+	u32	init_addr;		/* training init addr */
+	u32	init_ext_addr;		/* training init extended addr */
+	u8	res_150[16];
+	u32	timing_cfg_4;		/* SDRAM Timing Configuration 4 */
+	u32	timing_cfg_5;		/* SDRAM Timing Configuration 5 */
+	u32	timing_cfg_6;		/* SDRAM Timing Configuration 6 */
+	u32	timing_cfg_7;		/* SDRAM Timing Configuration 7 */
+	u32	ddr_zq_cntl;		/* ZQ calibration control*/
+	u32	ddr_wrlvl_cntl;		/* write leveling control*/
+	u8	reg_178[4];
+	u32	ddr_sr_cntr;		/* self refresh counter */
+	u32	ddr_sdram_rcw_1;	/* Control Words 1 */
+	u32	ddr_sdram_rcw_2;	/* Control Words 2 */
+	u8	reg_188[8];
+	u32	ddr_wrlvl_cntl_2;	/* write leveling control 2 */
+	u32	ddr_wrlvl_cntl_3;	/* write leveling control 3 */
+	u8	res_198[0x1a0-0x198];
+	u32	ddr_sdram_rcw_3;
+	u32	ddr_sdram_rcw_4;
+	u32	ddr_sdram_rcw_5;
+	u32	ddr_sdram_rcw_6;
+	u8	res_1b0[0x200-0x1b0];
+	u32	sdram_mode_3;		/* SDRAM Mode Configuration 3 */
+	u32	sdram_mode_4;		/* SDRAM Mode Configuration 4 */
+	u32	sdram_mode_5;		/* SDRAM Mode Configuration 5 */
+	u32	sdram_mode_6;		/* SDRAM Mode Configuration 6 */
+	u32	sdram_mode_7;		/* SDRAM Mode Configuration 7 */
+	u32	sdram_mode_8;		/* SDRAM Mode Configuration 8 */
+	u8	res_218[0x220-0x218];
+	u32	sdram_mode_9;		/* SDRAM Mode Configuration 9 */
+	u32	sdram_mode_10;		/* SDRAM Mode Configuration 10 */
+	u32	sdram_mode_11;		/* SDRAM Mode Configuration 11 */
+	u32	sdram_mode_12;		/* SDRAM Mode Configuration 12 */
+	u32	sdram_mode_13;		/* SDRAM Mode Configuration 13 */
+	u32	sdram_mode_14;		/* SDRAM Mode Configuration 14 */
+	u32	sdram_mode_15;		/* SDRAM Mode Configuration 15 */
+	u32	sdram_mode_16;		/* SDRAM Mode Configuration 16 */
+	u8	res_240[0x250-0x240];
+	u32	timing_cfg_8;		/* SDRAM Timing Configuration 8 */
+	u32	timing_cfg_9;		/* SDRAM Timing Configuration 9 */
+	u8	res_258[0x260-0x258];
+	u32	sdram_cfg_3;
+	u8	res_264[0x400-0x264];
+	u32	dq_map_0;
+	u32	dq_map_1;
+	u32	dq_map_2;
+	u32	dq_map_3;
+	u8	res_410[0xb20-0x410];
+	u32	ddr_dsr1;		/* Debug Status 1 */
+	u32	ddr_dsr2;		/* Debug Status 2 */
+	u32	ddr_cdr1;		/* Control Driver 1 */
+	u32	ddr_cdr2;		/* Control Driver 2 */
+	u8	res_b30[200];
+	u32	ip_rev1;		/* IP Block Revision 1 */
+	u32	ip_rev2;		/* IP Block Revision 2 */
+	u32	eor;			/* Enhanced Optimization Register */
+	u8	res_c04[252];
+	u32	mtcr;			/* Memory Test Control Register */
+	u8	res_d04[28];
+	u32	mtp1;			/* Memory Test Pattern 1 */
+	u32	mtp2;			/* Memory Test Pattern 2 */
+	u32	mtp3;			/* Memory Test Pattern 3 */
+	u32	mtp4;			/* Memory Test Pattern 4 */
+	u32	mtp5;			/* Memory Test Pattern 5 */
+	u32	mtp6;			/* Memory Test Pattern 6 */
+	u32	mtp7;			/* Memory Test Pattern 7 */
+	u32	mtp8;			/* Memory Test Pattern 8 */
+	u32	mtp9;			/* Memory Test Pattern 9 */
+	u32	mtp10;			/* Memory Test Pattern 10 */
+	u8	res_d48[184];
+	u32	data_err_inject_hi;	/* Data Path Err Injection Mask High */
+	u32	data_err_inject_lo;	/* Data Path Err Injection Mask Low */
+	u32	ecc_err_inject;		/* Data Path Err Injection Mask ECC */
+	u8	res_e0c[20];
+	u32	capture_data_hi;	/* Data Path Read Capture High */
+	u32	capture_data_lo;	/* Data Path Read Capture Low */
+	u32	capture_ecc;		/* Data Path Read Capture ECC */
+	u8	res_e2c[20];
+	u32	err_detect;		/* Error Detect */
+	u32	err_disable;		/* Error Disable */
+	u32	err_int_en;
+	u32	capture_attributes;	/* Error Attrs Capture */
+	u32	capture_address;	/* Error Addr Capture */
+	u32	capture_ext_address;	/* Error Extended Addr Capture */
+	u32	err_sbe;		/* Single-Bit ECC Error Management */
+	u8	res_e5c[164];
+	u32     debug[64];		/* debug_1 to debug_64 */
+};
+
+#define CCI400_CTRLORD_TERM_BARRIER	0x00000008
+#define CCI400_CTRLORD_EN_BARRIER	0
+#define CCI400_SHAORD_NON_SHAREABLE	0x00000002
+#define CCI400_DVM_MESSAGE_REQ_EN	0x00000002
+#define CCI400_SNOOP_REQ_EN		0x00000001
+
+/* CCI-400 registers */
+struct ccsr_cci400 {
+	u32 ctrl_ord;			/* Control Override */
+	u32 spec_ctrl;			/* Speculation Control */
+	u32 secure_access;		/* Secure Access */
+	u32 status;			/* Status */
+	u32 impr_err;			/* Imprecise Error */
+	u8 res_14[0x100 - 0x14];
+	u32 pmcr;			/* Performance Monitor Control */
+	u8 res_104[0xfd0 - 0x104];
+	u32 pid[8];			/* Peripheral ID */
+	u32 cid[4];			/* Component ID */
+	struct {
+		u32 snoop_ctrl;		/* Snoop Control */
+		u32 sha_ord;		/* Shareable Override */
+		u8 res_1008[0x1100 - 0x1008];
+		u32 rc_qos_ord;		/* read channel QoS Value Override */
+		u32 wc_qos_ord;		/* read channel QoS Value Override */
+		u8 res_1108[0x110c - 0x1108];
+		u32 qos_ctrl;		/* QoS Control */
+		u32 max_ot;		/* Max OT */
+		u8 res_1114[0x1130 - 0x1114];
+		u32 target_lat;		/* Target Latency */
+		u32 latency_regu;	/* Latency Regulation */
+		u32 qos_range;		/* QoS Range */
+		u8 res_113c[0x2000 - 0x113c];
+	} slave[5];			/* Slave Interface */
+	u8 res_6000[0x9004 - 0x6000];
+	u32 cycle_counter;		/* Cycle counter */
+	u32 count_ctrl;			/* Count Control */
+	u32 overflow_status;		/* Overflow Flag Status */
+	u8 res_9010[0xa000 - 0x9010];
+	struct {
+		u32 event_select;	/* Event Select */
+		u32 event_count;	/* Event Count */
+		u32 counter_ctrl;	/* Counter Control */
+		u32 overflow_status;	/* Overflow Flag Status */
+		u8 res_a010[0xb000 - 0xa010];
+	} pcounter[4];			/* Performance Counter */
+	u8 res_e004[0x10000 - 0xe004];
+};
+
+#endif /* __FSL_IMMAP_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
