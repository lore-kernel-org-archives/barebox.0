Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oj-0001Xu-No
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:42:01 +0100
Message-Id: <20190313094202.14901-15-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/15] ARM: Layerscape: Add TQ TQMLS1046a board support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the TQ TQMLS1046a board. Currently supported:

- UART
- SD/MMC
- Network on eth3, eth2 currently not working for unknown reasons

First stage support exists but is currently untested. Serdes ports are
not yet supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/tqmls1046a/Makefile           |   3 +
 arch/arm/boards/tqmls1046a/board.c            |  32 +++
 .../defaultenv-tqmls1046a/nv/dev.eth4.mode    |   1 +
 .../defaultenv-tqmls1046a/nv/dev.eth5.mode    |   1 +
 .../defaultenv-tqmls1046a/nv/dev.eth6.mode    |   1 +
 .../defaultenv-tqmls1046a/nv/dev.eth7.mode    |   1 +
 arch/arm/boards/tqmls1046a/lowlevel.c         | 217 ++++++++++++++++
 arch/arm/boards/tqmls1046a/start.S            |  12 +
 .../boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg |  33 +++
 .../boards/tqmls1046a/tqmls1046a_pbi_sd.cfg   |  35 +++
 .../tqmls1046a_rcw_emmc_3333_5559.cfg         |  84 ++++++
 .../tqmls1046a_rcw_qspi_3333_5559.cfg         |  84 ++++++
 .../tqmls1046a_rcw_sd_3333_5559.cfg           |  84 ++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 240 ++++++++++++++++++
 arch/arm/dts/fsl-tqmls1046a.dtsi              |  54 ++++
 arch/arm/mach-layerscape/Kconfig              |   4 +
 images/Makefile.layerscape                    |  22 ++
 19 files changed, 910 insertions(+)
 create mode 100644 arch/arm/boards/tqmls1046a/Makefile
 create mode 100644 arch/arm/boards/tqmls1046a/board.c
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth4.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth5.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth6.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth7.mode
 create mode 100644 arch/arm/boards/tqmls1046a/lowlevel.c
 create mode 100644 arch/arm/boards/tqmls1046a/start.S
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
 create mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
 create mode 100644 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
 create mode 100644 arch/arm/dts/fsl-tqmls1046a.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 7d46e6b150..8e9b014eba 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -163,3 +163,4 @@ obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
 obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
 obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
+obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
\ No newline at end of file
diff --git a/arch/arm/boards/tqmls1046a/Makefile b/arch/arm/boards/tqmls1046a/Makefile
new file mode 100644
index 0000000000..851a5dcb3d
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/Makefile
@@ -0,0 +1,3 @@
+lwl-y += lowlevel.o start.o
+obj-y += board.o
+bbenv-y += defaultenv-tqmls1046a
diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
new file mode 100644
index 0000000000..5d6d5ad62c
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <init.h>
+#include <envfs.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+
+static int tqmls1046a_mem_init(void)
+{
+	if (!of_machine_is_compatible("tqc,tqmls1046a"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0x80000000, SZ_2G);
+
+        return 0;
+}
+mem_initcall(tqmls1046a_mem_init);
+
+static int tqmls1046a_postcore_init(void)
+{
+	if (!of_machine_is_compatible("tqc,tqmls1046a"))
+		return 0;
+
+	defaultenv_append_directory(defaultenv_tqmls1046a);
+
+	return 0;
+}
+
+postcore_initcall(tqmls1046a_postcore_init);
diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth4.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth4.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth4.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth5.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth5.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth5.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth6.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth6.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth6.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth7.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth7.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth7.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
new file mode 100644
index 0000000000..044d6a418d
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -0,0 +1,217 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <debug_ll.h>
+#include <platform_data/mmc-esdhc-imx.h>
+#include <soc/fsl/fsl_ddr_sdram.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/syscounter.h>
+#include <asm/cache.h>
+#include <mach/errata.h>
+#include <mach/lowlevel.h>
+#include <mach/xload.h>
+#include <mach/layerscape.h>
+
+struct board_specific_parameters {
+	u32 n_ranks;
+	u32 datarate_mhz_high;
+	u32 rank_gb;
+	u32 clk_adjust;
+	u32 wrlvl_start;
+	u32 wrlvl_ctl_2;
+	u32 wrlvl_ctl_3;
+};
+
+/*
+ * These tables contain all valid speeds we want to override with board
+ * specific parameters. datarate_mhz_high values need to be in ascending order
+ * for each n_ranks group.
+ */
+static const struct board_specific_parameters udimm0[] = {
+	/*
+	 * memory controller 0
+	 *   num|  hi| rank|  clk| wrlvl |   wrlvl   |  wrlvl | cpo  |wrdata|2T
+	 * ranks| mhz| GB  |adjst| start |   ctl2    |  ctl3  |      |delay |
+	 */
+	{1,  2100, 0, 8,     9, 0x09080806, 0x07060606,},
+	{}
+};
+
+static const struct board_specific_parameters *udimms[] = {
+	udimm0,
+};
+
+static void ddr_board_options(memctl_options_t *popts,
+			      struct dimm_params *pdimm,
+			      struct fsl_ddr_controller *c)
+{
+	const struct board_specific_parameters *pbsp, *pbsp_highest = NULL;
+	unsigned long ddr_freq;
+
+	if (!pdimm->n_ranks)
+		return;
+
+	pbsp = udimms[0];
+
+	/*
+	 * Get clk_adjust, wrlvl_start, wrlvl_ctl, according to the board ddr
+	 * freqency and n_banks specified in board_specific_parameters table.
+	 */
+	ddr_freq = c->ddr_freq / 1000000;
+	while (pbsp->datarate_mhz_high) {
+		if (pbsp->n_ranks == pdimm->n_ranks) {
+			if (ddr_freq <= pbsp->datarate_mhz_high) {
+				popts->clk_adjust = pbsp->clk_adjust;
+				popts->wrlvl_start = pbsp->wrlvl_start;
+				popts->wrlvl_ctl_2 = pbsp->wrlvl_ctl_2;
+				popts->wrlvl_ctl_3 = pbsp->wrlvl_ctl_3;
+				goto found;
+			}
+			pbsp_highest = pbsp;
+		}
+		pbsp++;
+	}
+
+	if (pbsp_highest) {
+		printf("Error: board specific timing not found for %lu MT/s\n",
+		       ddr_freq);
+		printf("Trying to use the highest speed (%u) parameters\n",
+		       pbsp_highest->datarate_mhz_high);
+		popts->clk_adjust = pbsp_highest->clk_adjust;
+		popts->wrlvl_start = pbsp_highest->wrlvl_start;
+		popts->wrlvl_ctl_2 = pbsp->wrlvl_ctl_2;
+		popts->wrlvl_ctl_3 = pbsp->wrlvl_ctl_3;
+	} else {
+		panic("DIMM is not supported by this board");
+	}
+found:
+	debug("Found timing match: n_ranks %d, data rate %d, rank_gb %d\n",
+	      pbsp->n_ranks, pbsp->datarate_mhz_high, pbsp->rank_gb);
+
+	popts->data_bus_width = 0;	/* 64-bit data bus */
+	popts->bstopre = 0;		/* enable auto precharge */
+
+	/*
+	 * Factors to consider for half-strength driver enable:
+	 *	- number of DIMMs installed
+	 */
+	popts->half_strength_driver_enable = 0;
+	/*
+	 * Write leveling override
+	 */
+	popts->wrlvl_override = 1;
+	popts->wrlvl_sample = 0xf;
+
+	/*
+	 * Rtt and Rtt_WR override
+	 */
+	popts->rtt_override = 0;
+
+	/* Enable ZQ calibration */
+	popts->zq_en = 1;
+
+	popts->ddr_cdr1 = DDR_CDR1_DHC_EN | DDR_CDR1_ODT(DDR4_CDR_ODT_60ohm);
+	popts->ddr_cdr2 = DDR_CDR2_ODT(DDR4_CDR_ODT_60ohm) |
+			  DDR_CDR2_VREF_TRAIN_EN | DDR_CDR2_VREF_RANGE_2;
+
+	/* optimize cpo for erratum A-009942 */
+	popts->cpo_sample = 0x61;
+}
+
+static struct dimm_params dimm_params[] = {
+	{
+		.n_ranks = 1,
+		.rank_density = 2147483648u,
+		.capacity = 2147483648u,
+		.primary_sdram_width = 64,
+		.ec_sdram_width = 8,
+		.registered_dimm = 0,
+		.mirrored_dimm = 0,
+		.n_row_addr = 15,
+		.n_col_addr = 10,
+		.bank_addr_bits = 2,
+		.bank_group_bits = 0,
+		.edc_config = 2,
+		.burst_lengths_bitmask = 0x0c,
+
+		.tckmin_x_ps = 833,
+		.tckmax_ps = 1900,
+		.caslat_x = 0x000DFA00, //
+		.taa_ps = 13320,
+		.trcd_ps = 13320,
+		.trp_ps = 13320,
+		.tras_ps = 32000,
+		.trc_ps = 45320,
+		.trfc1_ps = 260000,
+		.trfc2_ps = 160000,
+		.trfc4_ps = 110000,
+		.tfaw_ps = 21000,
+		.trrds_ps = 3300,
+		.trrdl_ps = 4900,
+		.tccdl_ps = 5000,
+		.trfc_slr_ps = 3500000,
+		.refresh_rate_ps = 7800000,
+	},
+};
+
+static struct fsl_ddr_controller ddrc[] = {
+	{
+		.dimm_slots_per_ctrl = ARRAY_SIZE(dimm_params),
+		.dimm_params = dimm_params,
+		.memctl_opts.ddrtype = SDRAM_TYPE_DDR4,
+		.base = IOMEM(LSCH2_DDR_ADDR),
+		.ddr_freq = LS1046A_DDR_FREQ,
+		.erratum_A008511 = 1,
+		.erratum_A009803 = 1,
+		.erratum_A010165 = 1,
+		.erratum_A009801 = 1,
+		.erratum_A009942 = 1,
+		.chip_selects_per_ctrl = 4,
+		.board_options = ddr_board_options,
+	},
+};
+
+static struct fsl_ddr_info ls1046a_info = {
+	.num_ctrls = ARRAY_SIZE(ddrc),
+	.c = ddrc,
+};
+
+extern char __dtb_fsl_tqmls1046a_mbls10xxa_start[];
+
+static noinline __noreturn void tqmls1046a_r_entry(unsigned long memsize)
+{
+	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
+
+	if (get_pc() >= membase) {
+		if (memsize + membase >= 0x100000000)
+			memsize = 0x100000000 - membase;
+
+		barebox_arm_entry(membase, 0x80000000,
+				  __dtb_fsl_tqmls1046a_mbls10xxa_start);
+	}
+
+	arm_cpu_lowlevel_init();
+	debug_ll_init();
+	ls1046a_init_lowlevel();
+
+	memsize = fsl_ddr_sdram(&ls1046a_info);
+
+	ls1046a_errata_post_ddr();
+
+	ls1046a_esdhc_start_image(memsize, 0, 0);
+
+	pr_err("Booting failed\n");
+
+	while (1);
+}
+
+void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+
+__noreturn void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	tqmls1046a_r_entry(r0);
+}
diff --git a/arch/arm/boards/tqmls1046a/start.S b/arch/arm/boards/tqmls1046a/start.S
new file mode 100644
index 0000000000..12b785af54
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/start.S
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+#define STACK_TOP 0x10020000
+
+ENTRY_PROC(start_tqmls1046a)
+	mov x3, #STACK_TOP
+	mov sp, x3
+	b tqmls1046a_entry
+ENTRY_PROC_END(start_tqmls1046a)
+
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
new file mode 100644
index 0000000000..32865ca2d0
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_qspi.cfg
@@ -0,0 +1,33 @@
+#Configure QSPI clock
+0957015c 40100000
+#Configure Scratch register
+09570600 00000000
+09570604 40010000
+#Disable CCI barrier tranaction
+09570178 0000e010
+09180000 00000008
+#USB PHY frequency sel
+09570418 0000009c
+0957041c 0000009c
+09570420 0000009c
+#Serdes SATA
+09eb1300 80104e20
+09eb08dc 00502880
+#PEX gen3 link (errata A-010477)
+09570158 00000300
+89400890 01048000
+89500890 01048000
+89600890 01048000
+#PEX gen3 equalization preset values (errata A-008851)
+894008bc 01000000
+89400154 47474747
+89400158 47474747
+894008bc 00000000
+895008bc 01000000
+89500154 47474747
+89500158 47474747
+895008bc 00000000
+896008bc 01000000
+89600154 47474747
+89600158 47474747
+896008bc 00000000
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
new file mode 100644
index 0000000000..7ac1398123
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_pbi_sd.cfg
@@ -0,0 +1,35 @@
+#Configure Scratch register
+09570600 00000000
+09570604 10000000
+#Disable CCI barrier tranaction
+09570178 0000e010
+09180000 00000008
+#USB PHY frequency sel
+09570418 0000009c
+0957041c 0000009c
+09570420 0000009c
+#Serdes SATA
+09eb1300 80104e20
+09eb08dc 00502880
+#PEX gen3 link (errata A-010477)
+09570158 00000300
+89400890 01048000
+89500890 01048000
+89600890 01048000
+#PEX gen3 equalization preset values (errata A-008851)
+894008bc 01000000
+89400154 47474747
+89400158 47474747
+894008bc 00000000
+895008bc 01000000
+89500154 47474747
+89500158 47474747
+895008bc 00000000
+896008bc 01000000
+89600154 47474747
+89600158 47474747
+896008bc 00000000
+#Alt base register
+09570158 00001000
+#flush PBI data
+096100c0 000fffff
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
new file mode 100644
index 0000000000..6c72d001c3
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
@@ -0,0 +1,84 @@
+# RCW values
+#   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
+#   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
+#   8:  9 - MEM_PLL_CFG              :       0 [0x0 / 0b00]
+#  10: 15 - MEM_PLL_RAT              :      20 [0x14 / 0b010100]
+#  24: 25 - CGA_PLL1_CFG             :       0 [0x0 / 0b00]
+#  26: 31 - CGA_PLL1_RAT             :      16 [0x10 / 0b010000]
+#  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
+#  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
+#  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
+# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
+# 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
+# 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
+# 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
+# 168:169 - SRDS_PLL_PD_S1           :       0 [0x0 / 0b00]
+# 170:171 - SRDS_PLL_PD_S2           :       0 [0x0 / 0b00]
+# 176:177 - SRDS_DIV_PEX_S1          :       1 [0x1 / 0b01]
+# 178:179 - SRDS_DIV_PEX_S2          :       1 [0x1 / 0b01]
+# 186:187 - DDR_REFCLK_SEL           :       0 [0x0 / 0b00]
+# 188:188 - SRDS_REFCLK_SEL_S1       :       0 [0x0 / 0b0]
+# 189:189 - SRDS_REFCLK_SEL_S2       :       0 [0x0 / 0b0]
+# 190:191 - DDR_FDBK_MULT            :       2 [0x2 / 0b10]
+# 192:195 - PBI_SRC                  :       6 [0x6 / 0b0110]
+# 201:201 - BOOT_HO                  :       0 [0x0 / 0b0]
+# 202:202 - SB_EN                    :       0 [0x0 / 0b0]
+# 203:211 - IFC_MODE                 :      64 [0x40 / 0b001000000]
+# 224:226 - HWA_CGA_M1_CLK_SEL       :       6 [0x6 / 0b110]
+# 230:231 - DRAM_LAT                 :       1 [0x1 / 0b01]
+# 232:232 - DDR_RATE                 :       0 [0x0 / 0b0]
+# 234:234 - DDR_RSV0                 :       0 [0x0 / 0b0]
+# 242:242 - SYS_PLL_SPD              :       0 [0x0 / 0b0]
+# 243:243 - MEM_PLL_SPD              :       0 [0x0 / 0b0]
+# 244:244 - CGA_PLL1_SPD             :       0 [0x0 / 0b0]
+# 245:245 - CGA_PLL2_SPD             :       0 [0x0 / 0b0]
+# 264:266 - HOST_AGT_PEX             :       0 [0x0 / 0b000]
+# 288:295 - GP_INFO1                 :       0 [0x00 / 0b00000000]
+# 299:319 - GP_INFO2                 :       0 [0x00000 / 0b000000000000000000000]
+# 354:356 - UART_EXT                 :       0 [0x0 / 0b000]
+# 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
+# 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
+# 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
+# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
+# 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
+# 370:370 - RTC                      :       0 [0x0 / 0b0]
+# 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
+# 372:372 - IRQ_OUT                  :       1 [0x1 / 0b1]
+# 373:381 - IRQ_BASE                 :       0 [0x00 / 0b000000000]
+# 382:383 - SPI_BASE                 :       0 [0x0 / 0b00]
+# 384:386 - IFC_GRP_A_EXT            :       1 [0x1 / 0b001]
+# 393:395 - IFC_GRP_D_EXT            :       0 [0x0 / 0b000]
+# 396:398 - IFC_GRP_E1_EXT           :       0 [0x0 / 0b000]
+# 399:401 - IFC_GRP_F_EXT            :       1 [0x1 / 0b001]
+# 405:405 - IFC_GRP_E1_BASE          :       0 [0x0 / 0b0]
+# 407:407 - IFC_GRP_D_BASE           :       0 [0x0 / 0b0]
+# 412:413 - IFC_GRP_A_BASE           :       0 [0x0 / 0b00]
+# 415:415 - IFC_A_22_24              :       0 [0x0 / 0b0]
+# 416:418 - EC1                      :       0 [0x0 / 0b000]
+# 419:421 - EC2                      :       0 [0x0 / 0b000]
+# 422:423 - LVDD_VSEL                :       1 [0x1 / 0b01]
+# 424:424 - I2C_IPGCLK_SEL           :       0 [0x0 / 0b0]
+# 425:425 - EM1                      :       0 [0x0 / 0b0]
+# 426:426 - EM2                      :       0 [0x0 / 0b0]
+# 427:427 - EMI2_DMODE               :       1 [0x1 / 0b1]
+# 428:428 - EMI2_CMODE               :       0 [0x0 / 0b0]
+# 429:429 - USB_DRVVBUS              :       0 [0x0 / 0b0]
+# 430:430 - USB_PWRFAULT             :       0 [0x0 / 0b0]
+# 433:434 - TVDD_VSEL                :       1 [0x1 / 0b01]
+# 435:436 - DVDD_VSEL                :       2 [0x2 / 0b10]
+# 438:438 - EMI1_DMODE               :       1 [0x1 / 0b1]
+# 439:440 - EVDD_VSEL                :       0 [0x0 / 0b00]
+# 441:443 - IIC2_BASE                :       0 [0x0 / 0b000]
+# 444:444 - EMI1_CMODE               :       0 [0x0 / 0b0]
+# 445:447 - IIC2_EXT                 :       2 [0x2 / 0b010]
+# 472:481 - SYSCLK_FREQ              :     600 [0x258 / 0b1001011000]
+# 509:511 - HWA_CGA_M2_CLK_SEL       :       1 [0x1 / 0b001]
+
+
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c140010 0e000000 00000000 00000000
+33335559 f0005002 60040000 c1000000
+00000000 00000000 00000000 00028800
+20004000 01103202 00000096 00000001
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
new file mode 100644
index 0000000000..395c75c7d0
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
@@ -0,0 +1,84 @@
+# RCW values
+#   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
+#   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
+#   8:  9 - MEM_PLL_CFG              :       0 [0x0 / 0b00]
+#  10: 15 - MEM_PLL_RAT              :      20 [0x14 / 0b010100]
+#  24: 25 - CGA_PLL1_CFG             :       0 [0x0 / 0b00]
+#  26: 31 - CGA_PLL1_RAT             :      16 [0x10 / 0b010000]
+#  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
+#  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
+#  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
+# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
+# 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
+# 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
+# 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
+# 168:169 - SRDS_PLL_PD_S1           :       0 [0x0 / 0b00]
+# 170:171 - SRDS_PLL_PD_S2           :       0 [0x0 / 0b00]
+# 176:177 - SRDS_DIV_PEX_S1          :       1 [0x1 / 0b01]
+# 178:179 - SRDS_DIV_PEX_S2          :       1 [0x1 / 0b01]
+# 186:187 - DDR_REFCLK_SEL           :       0 [0x0 / 0b00]
+# 188:188 - SRDS_REFCLK_SEL_S1       :       0 [0x0 / 0b0]
+# 189:189 - SRDS_REFCLK_SEL_S2       :       0 [0x0 / 0b0]
+# 190:191 - DDR_FDBK_MULT            :       2 [0x2 / 0b10]
+# 192:195 - PBI_SRC                  :       4 [0x4 / 0b0100]
+# 201:201 - BOOT_HO                  :       0 [0x0 / 0b0]
+# 202:202 - SB_EN                    :       0 [0x0 / 0b0]
+# 203:211 - IFC_MODE                 :      37 [0x25 / 0b000100101]
+# 224:226 - HWA_CGA_M1_CLK_SEL       :       6 [0x6 / 0b110]
+# 230:231 - DRAM_LAT                 :       1 [0x1 / 0b01]
+# 232:232 - DDR_RATE                 :       0 [0x0 / 0b0]
+# 234:234 - DDR_RSV0                 :       0 [0x0 / 0b0]
+# 242:242 - SYS_PLL_SPD              :       0 [0x0 / 0b0]
+# 243:243 - MEM_PLL_SPD              :       0 [0x0 / 0b0]
+# 244:244 - CGA_PLL1_SPD             :       0 [0x0 / 0b0]
+# 245:245 - CGA_PLL2_SPD             :       0 [0x0 / 0b0]
+# 264:266 - HOST_AGT_PEX             :       0 [0x0 / 0b000]
+# 288:295 - GP_INFO1                 :       0 [0x00 / 0b00000000]
+# 299:319 - GP_INFO2                 :       0 [0x00000 / 0b000000000000000000000]
+# 354:356 - UART_EXT                 :       0 [0x0 / 0b000]
+# 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
+# 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
+# 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
+# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
+# 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
+# 370:370 - RTC                      :       0 [0x0 / 0b0]
+# 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
+# 372:372 - IRQ_OUT                  :       1 [0x1 / 0b1]
+# 373:381 - IRQ_BASE                 :       0 [0x00 / 0b000000000]
+# 382:383 - SPI_BASE                 :       0 [0x0 / 0b00]
+# 384:386 - IFC_GRP_A_EXT            :       1 [0x1 / 0b001]
+# 393:395 - IFC_GRP_D_EXT            :       0 [0x0 / 0b000]
+# 396:398 - IFC_GRP_E1_EXT           :       0 [0x0 / 0b000]
+# 399:401 - IFC_GRP_F_EXT            :       1 [0x1 / 0b001]
+# 405:405 - IFC_GRP_E1_BASE          :       0 [0x0 / 0b0]
+# 407:407 - IFC_GRP_D_BASE           :       0 [0x0 / 0b0]
+# 412:413 - IFC_GRP_A_BASE           :       0 [0x0 / 0b00]
+# 415:415 - IFC_A_22_24              :       0 [0x0 / 0b0]
+# 416:418 - EC1                      :       0 [0x0 / 0b000]
+# 419:421 - EC2                      :       0 [0x0 / 0b000]
+# 422:423 - LVDD_VSEL                :       1 [0x1 / 0b01]
+# 424:424 - I2C_IPGCLK_SEL           :       0 [0x0 / 0b0]
+# 425:425 - EM1                      :       0 [0x0 / 0b0]
+# 426:426 - EM2                      :       0 [0x0 / 0b0]
+# 427:427 - EMI2_DMODE               :       1 [0x1 / 0b1]
+# 428:428 - EMI2_CMODE               :       0 [0x0 / 0b0]
+# 429:429 - USB_DRVVBUS              :       0 [0x0 / 0b0]
+# 430:430 - USB_PWRFAULT             :       0 [0x0 / 0b0]
+# 433:434 - TVDD_VSEL                :       1 [0x1 / 0b01]
+# 435:436 - DVDD_VSEL                :       2 [0x2 / 0b10]
+# 438:438 - EMI1_DMODE               :       1 [0x1 / 0b1]
+# 439:440 - EVDD_VSEL                :       0 [0x0 / 0b00]
+# 441:443 - IIC2_BASE                :       0 [0x0 / 0b000]
+# 444:444 - EMI1_CMODE               :       0 [0x0 / 0b0]
+# 445:447 - IIC2_EXT                 :       2 [0x2 / 0b010]
+# 472:481 - SYSCLK_FREQ              :     600 [0x258 / 0b1001011000]
+# 509:511 - HWA_CGA_M2_CLK_SEL       :       1 [0x1 / 0b001]
+
+
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c140010 0e000000 00000000 00000000
+33335559 f0005002 40025000 c1000000
+00000000 00000000 00000000 00028800
+20004000 01103202 00000096 00000001
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
new file mode 100644
index 0000000000..4ef6d576ed
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
@@ -0,0 +1,84 @@
+# RCW values
+#   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
+#   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
+#   8:  9 - MEM_PLL_CFG              :       0 [0x0 / 0b00]
+#  10: 15 - MEM_PLL_RAT              :      20 [0x14 / 0b010100]
+#  24: 25 - CGA_PLL1_CFG             :       0 [0x0 / 0b00]
+#  26: 31 - CGA_PLL1_RAT             :      16 [0x10 / 0b010000]
+#  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
+#  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
+#  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
+# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
+# 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
+# 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
+# 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
+# 168:169 - SRDS_PLL_PD_S1           :       0 [0x0 / 0b00]
+# 170:171 - SRDS_PLL_PD_S2           :       0 [0x0 / 0b00]
+# 176:177 - SRDS_DIV_PEX_S1          :       1 [0x1 / 0b01]
+# 178:179 - SRDS_DIV_PEX_S2          :       1 [0x1 / 0b01]
+# 186:187 - DDR_REFCLK_SEL           :       0 [0x0 / 0b00]
+# 188:188 - SRDS_REFCLK_SEL_S1       :       0 [0x0 / 0b0]
+# 189:189 - SRDS_REFCLK_SEL_S2       :       0 [0x0 / 0b0]
+# 190:191 - DDR_FDBK_MULT            :       2 [0x2 / 0b10]
+# 192:195 - PBI_SRC                  :       6 [0x6 / 0b0110]
+# 201:201 - BOOT_HO                  :       0 [0x0 / 0b0]
+# 202:202 - SB_EN                    :       0 [0x0 / 0b0]
+# 203:211 - IFC_MODE                 :      64 [0x40 / 0b001000000]
+# 224:226 - HWA_CGA_M1_CLK_SEL       :       6 [0x6 / 0b110]
+# 230:231 - DRAM_LAT                 :       1 [0x1 / 0b01]
+# 232:232 - DDR_RATE                 :       0 [0x0 / 0b0]
+# 234:234 - DDR_RSV0                 :       0 [0x0 / 0b0]
+# 242:242 - SYS_PLL_SPD              :       0 [0x0 / 0b0]
+# 243:243 - MEM_PLL_SPD              :       0 [0x0 / 0b0]
+# 244:244 - CGA_PLL1_SPD             :       0 [0x0 / 0b0]
+# 245:245 - CGA_PLL2_SPD             :       0 [0x0 / 0b0]
+# 264:266 - HOST_AGT_PEX             :       0 [0x0 / 0b000]
+# 288:295 - GP_INFO1                 :       0 [0x00 / 0b00000000]
+# 299:319 - GP_INFO2                 :       0 [0x00000 / 0b000000000000000000000]
+# 354:356 - UART_EXT                 :       0 [0x0 / 0b000]
+# 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
+# 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
+# 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
+# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
+# 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
+# 370:370 - RTC                      :       0 [0x0 / 0b0]
+# 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
+# 372:372 - IRQ_OUT                  :       1 [0x1 / 0b1]
+# 373:381 - IRQ_BASE                 :       0 [0x00 / 0b000000000]
+# 382:383 - SPI_BASE                 :       0 [0x0 / 0b00]
+# 384:386 - IFC_GRP_A_EXT            :       1 [0x1 / 0b001]
+# 393:395 - IFC_GRP_D_EXT            :       0 [0x0 / 0b000]
+# 396:398 - IFC_GRP_E1_EXT           :       0 [0x0 / 0b000]
+# 399:401 - IFC_GRP_F_EXT            :       1 [0x1 / 0b001]
+# 405:405 - IFC_GRP_E1_BASE          :       0 [0x0 / 0b0]
+# 407:407 - IFC_GRP_D_BASE           :       0 [0x0 / 0b0]
+# 412:413 - IFC_GRP_A_BASE           :       0 [0x0 / 0b00]
+# 415:415 - IFC_A_22_24              :       0 [0x0 / 0b0]
+# 416:418 - EC1                      :       0 [0x0 / 0b000]
+# 419:421 - EC2                      :       0 [0x0 / 0b000]
+# 422:423 - LVDD_VSEL                :       1 [0x1 / 0b01]
+# 424:424 - I2C_IPGCLK_SEL           :       0 [0x0 / 0b0]
+# 425:425 - EM1                      :       0 [0x0 / 0b0]
+# 426:426 - EM2                      :       0 [0x0 / 0b0]
+# 427:427 - EMI2_DMODE               :       1 [0x1 / 0b1]
+# 428:428 - EMI2_CMODE               :       0 [0x0 / 0b0]
+# 429:429 - USB_DRVVBUS              :       0 [0x0 / 0b0]
+# 430:430 - USB_PWRFAULT             :       0 [0x0 / 0b0]
+# 433:434 - TVDD_VSEL                :       1 [0x1 / 0b01]
+# 435:436 - DVDD_VSEL                :       2 [0x2 / 0b10]
+# 438:438 - EMI1_DMODE               :       1 [0x1 / 0b1]
+# 439:440 - EVDD_VSEL                :       2 [0x2 / 0b10]
+# 441:443 - IIC2_BASE                :       0 [0x0 / 0b000]
+# 444:444 - EMI1_CMODE               :       0 [0x0 / 0b0]
+# 445:447 - IIC2_EXT                 :       1 [0x1 / 0b001]
+# 472:481 - SYSCLK_FREQ              :     600 [0x258 / 0b1001011000]
+# 509:511 - HWA_CGA_M2_CLK_SEL       :       1 [0x1 / 0b001]
+
+
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c140010 0e000000 00000000 00000000
+33335559 f0005002 60040000 c1000000
+00000000 00000000 00000000 00028800
+20004000 01103301 00000096 00000001
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 49067b4b27..a979360a80 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -132,5 +132,6 @@ pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 pbl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
+pbl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
new file mode 100644
index 0000000000..f21479eef8
--- /dev/null
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree Include file for TQMLS1046A SoM on MBLS10xxA from TQ
+ *
+ * Copyright 2018 TQ-Systems GmbH
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+
+#include "fsl-tqmls1046a.dtsi"
+
+/ {
+	model = "TQ TQMLS1046A SoM on MBLS10xxA board";
+	compatible = "tqc,tqmls1046a", "fsl,ls1046a";
+
+	aliases {
+		serial0 = &duart0;
+		serial1 = &duart1;
+		mmc0 = &esdhc;
+	};
+
+	chosen {
+		stdout-path = "serial1:115200n8";
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		gpio-keys,name = "gpio-keys";
+		poll-interval = <100>;
+		autorepeat;
+
+		button0 {
+			label = "button0";
+			gpios = <&gpioexp3 5 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_F1>;
+		};
+
+		button1 {
+			label = "button1";
+			gpios = <&gpioexp3 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_F2>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		user {
+			gpios = <&gpioexp3 13 GPIO_ACTIVE_LOW>;
+			label = "led:user";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+};
+
+
+&duart0 {
+	status = "okay";
+};
+
+&duart1 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9544";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0>;
+
+			gpioexp1: pca9555@20 {
+				compatible = "nxp,pca9555";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+			};
+
+			gpioexp2: pca9555@21 {
+				compatible = "nxp,pca9555";
+				reg = <0x21>;
+				gpio-controller;
+				#gpio-cells = <2>;
+			};
+
+			gpioexp3: pca9555@22 {
+				compatible = "nxp,pca9555";
+				reg = <0x22>;
+				gpio-controller;
+				#gpio-cells = <2>;
+			};
+		};
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x1>;
+		};
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x2>;
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x3>;
+		};
+	};
+};
+
+&usb1 {
+	dr_mode = "otg";
+};
+
+#include <arm64/freescale/fsl-ls1046-post.dtsi>
+#include <dt-bindings/net/ti-dp83867.h>
+
+&fman0 {
+	status = "okay";
+
+	ethernet@e0000 {
+		status = "disabled";
+	};
+
+	ethernet@e2000 {
+		phy-handle = <&qsgmii1_phy2>;
+		phy-connection-type = "sgmii";
+	};
+
+	ethernet@e4000 {
+		phy-handle = <&rgmii_phy1>;
+		phy-connection-type = "rgmii";
+		phy-mode = "rgmii-id";
+	};
+
+	ethernet@e6000 {
+		phy-handle = <&rgmii_phy2>;
+		phy-connection-type = "rgmii";
+		phy-mode = "rgmii-id";
+	};
+
+	ethernet@e8000 {
+		status = "disabled";
+	};
+
+	ethernet@ea000 {
+		phy-handle = <&qsgmii2_phy2>;
+		phy-connection-type = "sgmii";
+	};
+
+	ethernet@f0000 {
+		phy-handle = <&qsgmii1_phy1>;
+		phy-connection-type = "sgmii";
+	};
+
+	ethernet@f2000 {
+		phy-handle = <&qsgmii2_phy1>;
+		phy-connection-type = "sgmii";
+	};
+
+	mdio@e1000 {
+		status = "disabled";
+	};
+
+	mdio@e3000 {
+		status = "disabled";
+	};
+
+	mdio@e5000 {
+		status = "disabled";
+	};
+
+	mdio@e7000 {
+		status = "disabled";
+	};
+
+	mdio@e9000 {
+		status = "disabled";
+	};
+
+	mdio@eb000 {
+		status = "disabled";
+	};
+
+	mdio@f1000 {
+		status = "disabled";
+	};
+
+	mdio@f3000 {
+		status = "disabled";
+	};
+
+	mdio@fc000 {
+		rgmii_phy1: ethernet-phy@0e {
+			reg = <0x0e>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
+		};
+
+		qsgmii1_phy1: ethernet-phy@1c {
+			reg = <0x1c>;
+		};
+
+		qsgmii1_phy2: ethernet-phy@1d {
+			reg = <0x1d>;
+		};
+	};
+
+	mdio@fd000 {
+		rgmii_phy2: ethernet-phy@0c {
+			reg = <0x0c>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
+		};
+
+		qsgmii2_phy1: ethernet-phy@00 {
+			reg = <0x00>;
+		};
+
+		qsgmii2_phy2: ethernet-phy@01 {
+			reg = <0x01>;
+		};
+	};
+};
diff --git a/arch/arm/dts/fsl-tqmls1046a.dtsi b/arch/arm/dts/fsl-tqmls1046a.dtsi
new file mode 100644
index 0000000000..4717e66857
--- /dev/null
+++ b/arch/arm/dts/fsl-tqmls1046a.dtsi
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree Include file for LS1046A based SoM of TQ
+ *
+ * Copyright 2018 TQ-Systems GmbH
+ */
+
+#include <arm64/freescale/fsl-ls1046a.dtsi>
+
+&i2c0 {
+	status = "okay";
+
+	temp-sensor@18 {
+		compatible = "jc42";
+		reg = <0x18>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+	};
+
+	rtc@51 {
+		compatible = "nxp,pcf85063";
+		reg = <0x51>;
+	};
+
+	eeprom@57 {
+		compatible = "atmel,24c256";
+		reg = <0x57>;
+	};
+};
+
+&qspi {
+	num-cs = <2>;
+	bus-num = <0>;
+	status = "okay";
+
+	qflash0: mx66u51235f@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <108000000>;
+		reg = <0>;
+	};
+
+	qflash1: mx66u51235f@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <108000000>;
+		compatible = "jedec,spi-nor";
+		reg = <1>;
+	};
+};
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index bd93d03b66..3a44f3fea1 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -14,4 +14,8 @@ config MACH_LS1046ARDB
 	select DDR_FSL
 	select DDR_FSL_DDR4
 
+config MACH_TQMLS1046A
+	bool "TQ TQMLS1046A Board"
+	select ARCH_LS1046
+
 endif
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 6523d42b8a..47df3777f0 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -35,3 +35,25 @@ $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
 	barebox-ls1046ardb-emmc.image barebox-ls1046ardb-2nd.image
+
+pbl-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a.pbl
+$(obj)/barebox-tqmls1046a-2nd.image: $(obj)/start_tqmls1046a.pblb
+	$(call if_changed,shipped)
+
+$(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi_sd.cfg
+	$(call if_changed,lspbl_image)
+
+$(obj)/barebox-tqmls1046a-emmc.image: $(obj)/start_tqmls1046a.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi_sd.cfg
+	$(call if_changed,lspbl_image)
+
+$(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi_qspi.cfg
+	$(call if_changed,lspbl_image)
+
+image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image barebox-tqmls1046a-emmc.image \
+	barebox-tqmls1046a-qspi.image barebox-tqmls1046a-2nd.image
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
