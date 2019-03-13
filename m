Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oj-0001Xv-Pp
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:42:00 +0100
Message-Id: <20190313094202.14901-14-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/15] ARM: Layerscape: Add LS1046a RDB board support
To: Barebox List <barebox@lists.infradead.org>

The RDB is the Freescale LS1046a reference board. This patch adds
support for it. Currently supported:

- DDR4 RAM as read from SPD EEPROM
- UART
- SD/MMC
- RGMII network ports

The Serdes ports are currently not supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1046ardb/Makefile           |   4 +
 arch/arm/boards/ls1046ardb/board.c            |  36 +++
 .../defaultenv-ls1046ardb/nv/dev.eth4.mode    |   1 +
 .../defaultenv-ls1046ardb/nv/dev.eth5.mode    |   1 +
 .../defaultenv-ls1046ardb/nv/dev.eth6.mode    |   1 +
 .../defaultenv-ls1046ardb/nv/dev.eth7.mode    |   1 +
 arch/arm/boards/ls1046ardb/lowlevel.c         | 231 ++++++++++++++++++
 arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg |  22 ++
 .../boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg |  26 ++
 .../boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg |   7 +
 .../boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg |   7 +
 .../boards/ls1046ardb/ls1046ardb_rcw_sd.cfg   |   7 +
 arch/arm/boards/ls1046ardb/start.S            |  11 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1046a-rdb.dts              |  98 ++++++++
 arch/arm/mach-layerscape/Kconfig              |   9 +
 images/Makefile.layerscape                    |  23 +-
 18 files changed, 485 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/ls1046ardb/Makefile
 create mode 100644 arch/arm/boards/ls1046ardb/board.c
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth4.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth5.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth6.mode
 create mode 100644 arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth7.mode
 create mode 100644 arch/arm/boards/ls1046ardb/lowlevel.c
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
 create mode 100644 arch/arm/boards/ls1046ardb/start.S
 create mode 100644 arch/arm/dts/fsl-ls1046a-rdb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c5dc41526b..7d46e6b150 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -162,3 +162,4 @@ obj-$(CONFIG_MACH_ZII_IMX8MQ_DEV)		+= zii-imx8mq-dev/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
 obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
+obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
diff --git a/arch/arm/boards/ls1046ardb/Makefile b/arch/arm/boards/ls1046ardb/Makefile
new file mode 100644
index 0000000000..03ac4ecca3
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/Makefile
@@ -0,0 +1,4 @@
+lwl-y += lowlevel.o
+obj-y += board.o
+lwl-y += start.o
+bbenv-y += defaultenv-ls1046ardb
diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
new file mode 100644
index 0000000000..483040957e
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <init.h>
+#include <envfs.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <asm/system.h>
+
+static int rdb_mem_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0x80000000, 0x80000000);
+	arm_add_mem_device("ram1", 0x880000000, 3ULL * SZ_2G);
+
+	printf("Current EL: %d\n", current_el());
+
+	return 0;
+}
+mem_initcall(rdb_mem_init);
+
+static int rdb_postcore_init(void)
+{
+	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
+		return 0;
+
+	defaultenv_append_directory(defaultenv_ls1046ardb);
+
+	return 0;
+}
+
+postcore_initcall(rdb_postcore_init);
diff --git a/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth4.mode b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth4.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth4.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth5.mode b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth5.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth5.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth6.mode b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth6.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth6.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth7.mode b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth7.mode
new file mode 100644
index 0000000000..7a68b11da8
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/defaultenv-ls1046ardb/nv/dev.eth7.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
new file mode 100644
index 0000000000..6de16063a7
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <debug_ll.h>
+#include <ddr_spd.h>
+#include <platform_data/mmc-esdhc-imx.h>
+#include <i2c/i2c-early.h>
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
+	 *   num|  hi| rank|  clk| wrlvl |   wrlvl   |  wrlvl
+	 * ranks| mhz| GB  |adjst| start |   ctl2    |  ctl3
+	 */
+	{2,  1350, 0, 8,     6, 0x0708090B, 0x0C0D0E09,},
+	{2,  1666, 0, 8,     7, 0x08090A0C, 0x0D0F100B,},
+	{2,  1900, 0, 8,     7, 0x09090B0D, 0x0E10120B,},
+	{2,  2300, 0, 8,     9, 0x0A0B0C10, 0x1213140E,},
+	{}
+};
+
+static const struct board_specific_parameters *udimms[] = {
+	udimm0,
+};
+
+static const struct board_specific_parameters rdimm0[] = {
+	/*
+	 * memory controller 0
+	 *   num|  hi| rank|  clk| wrlvl |   wrlvl   |  wrlvl
+	 * ranks| mhz| GB  |adjst| start |   ctl2    |  ctl3
+	 */
+	{2,  1666, 0, 0x8,     0x0D, 0x0C0B0A08, 0x0A0B0C08,},
+	{2,  1900, 0, 0x8,     0x0E, 0x0D0C0B09, 0x0B0C0D09,},
+	{2,  2300, 0, 0xa,     0x12, 0x100F0D0C, 0x0E0F100C,},
+	{1,  1666, 0, 0x8,     0x0D, 0x0C0B0A08, 0x0A0B0C08,},
+	{1,  1900, 0, 0x8,     0x0E, 0x0D0C0B09, 0x0B0C0D09,},
+	{1,  2300, 0, 0xa,     0x12, 0x100F0D0C, 0x0E0F100C,},
+	{}
+};
+
+static const struct board_specific_parameters *rdimms[] = {
+	rdimm0,
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
+	if (popts->registered_dimm_en)
+		pbsp = rdimms[0];
+	else
+		pbsp = udimms[0];
+
+	/* Get clk_adjust, wrlvl_start, wrlvl_ctl, according to the board ddr
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
+	popts->ddr_cdr1 = DDR_CDR1_DHC_EN | DDR_CDR1_ODT(DDR4_CDR_ODT_80ohm);
+	popts->ddr_cdr2 = DDR_CDR2_ODT(DDR4_CDR_ODT_80ohm) |
+			  DDR_CDR2_VREF_TRAIN_EN | DDR_CDR2_VREF_RANGE_2;
+
+	/* optimize cpo for erratum A-009942 */
+	popts->cpo_sample = 0x61;
+}
+
+extern char __dtb_fsl_ls1046a_rdb_start[];
+
+static struct spd_eeprom spd_eeprom[] = {
+	{
+		/* filled during runtime */
+	},
+};
+
+static struct dimm_params dimm_params[] = {
+	{
+		/* filled during runtime */
+	},
+};
+
+static struct fsl_ddr_controller ddrc[] = {
+	{
+		.dimm_slots_per_ctrl = ARRAY_SIZE(dimm_params),
+		.spd_installed_dimms = spd_eeprom,
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
+static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
+{
+	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
+	struct fsl_i2c *i2c;
+	int ret;
+
+	if (get_pc() >= membase) {
+		if (memsize + membase >= 0x100000000)
+			memsize = 0x100000000 - membase;
+
+		barebox_arm_entry(membase, 0x80000000 - SZ_1M * 67,
+				  __dtb_fsl_ls1046a_rdb_start);
+	}
+
+	arm_cpu_lowlevel_init();
+	debug_ll_init();
+	ls1046a_init_lowlevel();
+
+	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
+	ret = spd_read_eeprom(i2c, i2c_fsl_xfer, 0x51, &spd_eeprom);
+	if (ret) {
+		pr_err("Cannot read SPD EEPROM: %d\n", ret);
+		goto err;
+	}
+
+	memsize = fsl_ddr_sdram(&ls1046a_info);
+
+	ls1046a_errata_post_ddr();
+
+	ls1046a_esdhc_start_image(memsize, 0, 0);
+
+err:
+	pr_err("Booting failed\n");
+
+	while (1);
+}
+
+void ls1046ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2);
+
+__noreturn void ls1046ardb_entry(unsigned long r0, unsigned long r1, unsigned long r2)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	ls1046ardb_r_entry(r0);
+}
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
new file mode 100644
index 0000000000..5478217524
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg
@@ -0,0 +1,22 @@
+#Configure Scratch register
+09570600 00000000
+09570604 10000000
+#Disable CCI barrier tranaction
+09570178 0000e010
+09180000 00000008
+#USB PHY frequency sel
+09570418 0000009e
+0957041c 0000009e
+09570420 0000009e
+#Serdes SATA
+09eb1300 80104e20
+09eb08dc 00502880
+#PEX gen3 link
+09570158 00000300
+89400890 01048000
+89500890 01048000
+89600890 01048000
+#Alt base register
+09570158 00001000
+#flush PBI data
+096100c0 000fffff
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
new file mode 100644
index 0000000000..735d46c9f9
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg
@@ -0,0 +1,26 @@
+#QSPI clk
+0957015c 40100000
+#Configure Scratch register
+09570600 00000000
+09570604 10000000
+#Disable CCI barrier tranaction
+09570178 0000e010
+09180000 00000008
+#USB PHY frequency sel
+09570418 0000009e
+0957041c 0000009e
+09570420 0000009e
+#Serdes SATA
+09eb1300 80104e20
+09eb08dc 00502880
+#PEX gen3 link
+09570158 00000300
+89400890 01048000
+89500890 01048000
+89600890 01048000
+#Alt base register
+09570158 00001000
+#flush PBI data
+096100c0 000fffff
+#Change endianness
+09550000 000f400c
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
new file mode 100644
index 0000000000..ccedf87e84
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_emmc.cfg
@@ -0,0 +1,7 @@
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c150012 0e000000 00000000 00000000
+11335559 40000012 60040000 c1000000
+00000000 00000000 00000000 00238800
+20124000 00003000 00000096 00000001
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
new file mode 100644
index 0000000000..7b9be0ad3f
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_qspi.cfg
@@ -0,0 +1,7 @@
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c150010 0e000000 00000000 00000000
+11335559 40005012 40025000 c1000000
+00000000 00000000 00000000 00238800
+20124000 00003101 00000096 00000001
diff --git a/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
new file mode 100644
index 0000000000..d3b152282f
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/ls1046ardb_rcw_sd.cfg
@@ -0,0 +1,7 @@
+#PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c150012 0e000000 00000000 00000000
+11335559 40005012 60040000 c1000000
+00000000 00000000 00000000 00238800
+20124000 00003101 00000096 00000001
diff --git a/arch/arm/boards/ls1046ardb/start.S b/arch/arm/boards/ls1046ardb/start.S
new file mode 100644
index 0000000000..466782b278
--- /dev/null
+++ b/arch/arm/boards/ls1046ardb/start.S
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+#define STACK_TOP 0x10020000
+
+ENTRY_PROC(start_ls1046ardb)
+	mov x3, #STACK_TOP
+	mov sp, x3
+	b ls1046ardb_entry
+ENTRY_PROC_END(start_ls1046ardb)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f989df6b0c..49067b4b27 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -131,5 +131,6 @@ pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
+pbl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
new file mode 100644
index 0000000000..e16948bc8a
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/freescale/fsl-ls1046a-rdb.dts>
+
+/ {
+	chosen {
+		stdout-path = &duart0;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+		};
+	};
+
+	aliases {
+		mmc0 = &esdhc;
+	};
+};
+
+&esdhc {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	environment_sd: partition@200000 {
+		label = "barebox-environment";
+		reg = <0x200000 0x20000>;
+	};
+};
+
+&fman0 {
+	ethernet@e0000 {
+		status = "disabled";
+	};
+
+	ethernet@e2000 {
+		status = "disabled";
+	};
+
+	ethernet@e4000 {
+		phy-mode = "rgmii-id";
+	};
+
+	ethernet@e6000 {
+		phy-mode = "rgmii-id";
+	};
+
+	ethernet@e8000 {
+	};
+
+	ethernet@ea000 {
+	};
+
+	ethernet@f0000 {
+	};
+
+	ethernet@f2000 {
+	};
+
+	mdio@fc000 {
+	};
+
+	mdio@fd000 {
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
+};
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 5117d4b914..bd93d03b66 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -5,4 +5,13 @@ config ARCH_LS1046
 	select SYS_SUPPORTS_64BIT_KERNEL
 	bool
 
+config MACH_LS1046ARDB
+	bool "QorIQ LS1046A Reference Design Board"
+	select ARCH_LS1046
+	select DDR_SPD
+	select MCI_IMX_ESDHC_PBL
+	select I2C_IMX_EARLY
+	select DDR_FSL
+	select DDR_FSL_DDR4
+
 endif
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 81838b404a..6523d42b8a 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -14,5 +14,24 @@ quiet_cmd_lspbl_image = LSPBL-IMG $@
 			$(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) \
 			-m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
-$(obj)/%.lspblimg: $(obj)/% FORCE
-	$(call if_changed,lspbl_image,$(RCW_$(@F)),$(PBI_$(@F)),)
+pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
+$(obj)/barebox-ls1046ardb-2nd.image: $(obj)/start_ls1046ardb.pblb
+	$(call if_changed,shipped)
+
+$(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
+		$(board)/ls1046ardb/ls1046ardb_rcw_sd.cfg \
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+	$(call if_changed,lspbl_image)
+
+$(obj)/barebox-ls1046ardb-emmc.image: $(obj)/start_ls1046ardb.pblb \
+		$(board)/ls1046ardb/ls1046ardb_rcw_emmc.cfg \
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+	$(call if_changed,lspbl_image)
+
+$(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
+		$(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
+		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
+	$(call if_changed,lspbl_image)
+
+image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
+	barebox-ls1046ardb-emmc.image barebox-ls1046ardb-2nd.image
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
