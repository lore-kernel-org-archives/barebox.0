Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kX-PN
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:27 +0200
Message-Id: <1437036628-29439-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: i.MX6: Add DDR setup code from U-Boot
To: Barebox List <barebox@lists.infradead.org>

Several i.MX6 boards like to do their SDRAM setup in code rather than
in DCD tables. Add the SDRAM setup code from U-Boot to make it easy
to adopt the SDRAM setup from the U-Boot port of these boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6-mmdc.c              | 544 +++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6-mmdc.h | 274 +++++++++++++++
 2 files changed, 818 insertions(+)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index c460d9b..fb81a15 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -18,6 +18,8 @@
 #include <common.h>
 #include <io.h>
 #include <mach/imx6-mmdc.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
 
 int mmdc_do_write_level_calibration(void)
 {
@@ -841,3 +843,545 @@ int mmdc_do_software_calibration(void)
 }
 
 #endif /* MMDC_SOFTWARE_CALIBRATION */
+
+/* Configure MX6SX mmdc iomux */
+void mx6sx_dram_iocfg(unsigned width,
+		      const struct mx6sx_iomux_ddr_regs *ddr,
+		      const struct mx6sx_iomux_grp_regs *grp)
+{
+	struct mx6sx_iomux_ddr_regs *mx6_ddr_iomux;
+	struct mx6sx_iomux_grp_regs *mx6_grp_iomux;
+
+	mx6_ddr_iomux = (struct mx6sx_iomux_ddr_regs *)MX6SX_IOM_DDR_BASE;
+	mx6_grp_iomux = (struct mx6sx_iomux_grp_regs *)MX6SX_IOM_GRP_BASE;
+
+	/* DDR IO TYPE */
+	writel(grp->grp_ddr_type, &mx6_grp_iomux->grp_ddr_type);
+	writel(grp->grp_ddrpke, &mx6_grp_iomux->grp_ddrpke);
+
+	/* CLOCK */
+	writel(ddr->dram_sdclk_0, &mx6_ddr_iomux->dram_sdclk_0);
+
+	/* ADDRESS */
+	writel(ddr->dram_cas, &mx6_ddr_iomux->dram_cas);
+	writel(ddr->dram_ras, &mx6_ddr_iomux->dram_ras);
+	writel(grp->grp_addds, &mx6_grp_iomux->grp_addds);
+
+	/* Control */
+	writel(ddr->dram_reset, &mx6_ddr_iomux->dram_reset);
+	writel(ddr->dram_sdba2, &mx6_ddr_iomux->dram_sdba2);
+	writel(ddr->dram_sdcke0, &mx6_ddr_iomux->dram_sdcke0);
+	writel(ddr->dram_sdcke1, &mx6_ddr_iomux->dram_sdcke1);
+	writel(ddr->dram_odt0, &mx6_ddr_iomux->dram_odt0);
+	writel(ddr->dram_odt1, &mx6_ddr_iomux->dram_odt1);
+	writel(grp->grp_ctlds, &mx6_grp_iomux->grp_ctlds);
+
+	/* Data Strobes */
+	writel(grp->grp_ddrmode_ctl, &mx6_grp_iomux->grp_ddrmode_ctl);
+	writel(ddr->dram_sdqs0, &mx6_ddr_iomux->dram_sdqs0);
+	writel(ddr->dram_sdqs1, &mx6_ddr_iomux->dram_sdqs1);
+	if (width >= 32) {
+		writel(ddr->dram_sdqs2, &mx6_ddr_iomux->dram_sdqs2);
+		writel(ddr->dram_sdqs3, &mx6_ddr_iomux->dram_sdqs3);
+	}
+
+	/* Data */
+	writel(grp->grp_ddrmode, &mx6_grp_iomux->grp_ddrmode);
+	writel(grp->grp_b0ds, &mx6_grp_iomux->grp_b0ds);
+	writel(grp->grp_b1ds, &mx6_grp_iomux->grp_b1ds);
+	if (width >= 32) {
+		writel(grp->grp_b2ds, &mx6_grp_iomux->grp_b2ds);
+		writel(grp->grp_b3ds, &mx6_grp_iomux->grp_b3ds);
+	}
+	writel(ddr->dram_dqm0, &mx6_ddr_iomux->dram_dqm0);
+	writel(ddr->dram_dqm1, &mx6_ddr_iomux->dram_dqm1);
+	if (width >= 32) {
+		writel(ddr->dram_dqm2, &mx6_ddr_iomux->dram_dqm2);
+		writel(ddr->dram_dqm3, &mx6_ddr_iomux->dram_dqm3);
+	}
+}
+
+/* Configure MX6DQ mmdc iomux */
+void mx6dq_dram_iocfg(unsigned width,
+		      const struct mx6dq_iomux_ddr_regs *ddr,
+		      const struct mx6dq_iomux_grp_regs *grp)
+{
+	volatile struct mx6dq_iomux_ddr_regs *mx6_ddr_iomux;
+	volatile struct mx6dq_iomux_grp_regs *mx6_grp_iomux;
+
+	mx6_ddr_iomux = (struct mx6dq_iomux_ddr_regs *)MX6DQ_IOM_DDR_BASE;
+	mx6_grp_iomux = (struct mx6dq_iomux_grp_regs *)MX6DQ_IOM_GRP_BASE;
+
+	/* DDR IO Type */
+	mx6_grp_iomux->grp_ddr_type = grp->grp_ddr_type;
+	mx6_grp_iomux->grp_ddrpke = grp->grp_ddrpke;
+
+	/* Clock */
+	mx6_ddr_iomux->dram_sdclk_0 = ddr->dram_sdclk_0;
+	mx6_ddr_iomux->dram_sdclk_1 = ddr->dram_sdclk_1;
+
+	/* Address */
+	mx6_ddr_iomux->dram_cas = ddr->dram_cas;
+	mx6_ddr_iomux->dram_ras = ddr->dram_ras;
+	mx6_grp_iomux->grp_addds = grp->grp_addds;
+
+	/* Control */
+	mx6_ddr_iomux->dram_reset = ddr->dram_reset;
+	mx6_ddr_iomux->dram_sdcke0 = ddr->dram_sdcke0;
+	mx6_ddr_iomux->dram_sdcke1 = ddr->dram_sdcke1;
+	mx6_ddr_iomux->dram_sdba2 = ddr->dram_sdba2;
+	mx6_ddr_iomux->dram_sdodt0 = ddr->dram_sdodt0;
+	mx6_ddr_iomux->dram_sdodt1 = ddr->dram_sdodt1;
+	mx6_grp_iomux->grp_ctlds = grp->grp_ctlds;
+
+	/* Data Strobes */
+	mx6_grp_iomux->grp_ddrmode_ctl = grp->grp_ddrmode_ctl;
+	mx6_ddr_iomux->dram_sdqs0 = ddr->dram_sdqs0;
+	mx6_ddr_iomux->dram_sdqs1 = ddr->dram_sdqs1;
+	if (width >= 32) {
+		mx6_ddr_iomux->dram_sdqs2 = ddr->dram_sdqs2;
+		mx6_ddr_iomux->dram_sdqs3 = ddr->dram_sdqs3;
+	}
+	if (width >= 64) {
+		mx6_ddr_iomux->dram_sdqs4 = ddr->dram_sdqs4;
+		mx6_ddr_iomux->dram_sdqs5 = ddr->dram_sdqs5;
+		mx6_ddr_iomux->dram_sdqs6 = ddr->dram_sdqs6;
+		mx6_ddr_iomux->dram_sdqs7 = ddr->dram_sdqs7;
+	}
+
+	/* Data */
+	mx6_grp_iomux->grp_ddrmode = grp->grp_ddrmode;
+	mx6_grp_iomux->grp_b0ds = grp->grp_b0ds;
+	mx6_grp_iomux->grp_b1ds = grp->grp_b1ds;
+	if (width >= 32) {
+		mx6_grp_iomux->grp_b2ds = grp->grp_b2ds;
+		mx6_grp_iomux->grp_b3ds = grp->grp_b3ds;
+	}
+	if (width >= 64) {
+		mx6_grp_iomux->grp_b4ds = grp->grp_b4ds;
+		mx6_grp_iomux->grp_b5ds = grp->grp_b5ds;
+		mx6_grp_iomux->grp_b6ds = grp->grp_b6ds;
+		mx6_grp_iomux->grp_b7ds = grp->grp_b7ds;
+	}
+	mx6_ddr_iomux->dram_dqm0 = ddr->dram_dqm0;
+	mx6_ddr_iomux->dram_dqm1 = ddr->dram_dqm1;
+	if (width >= 32) {
+		mx6_ddr_iomux->dram_dqm2 = ddr->dram_dqm2;
+		mx6_ddr_iomux->dram_dqm3 = ddr->dram_dqm3;
+	}
+	if (width >= 64) {
+		mx6_ddr_iomux->dram_dqm4 = ddr->dram_dqm4;
+		mx6_ddr_iomux->dram_dqm5 = ddr->dram_dqm5;
+		mx6_ddr_iomux->dram_dqm6 = ddr->dram_dqm6;
+		mx6_ddr_iomux->dram_dqm7 = ddr->dram_dqm7;
+	}
+}
+
+/* Configure MX6SDL mmdc iomux */
+void mx6sdl_dram_iocfg(unsigned width,
+		       const struct mx6sdl_iomux_ddr_regs *ddr,
+		       const struct mx6sdl_iomux_grp_regs *grp)
+{
+	volatile struct mx6sdl_iomux_ddr_regs *mx6_ddr_iomux;
+	volatile struct mx6sdl_iomux_grp_regs *mx6_grp_iomux;
+
+	mx6_ddr_iomux = (struct mx6sdl_iomux_ddr_regs *)MX6SDL_IOM_DDR_BASE;
+	mx6_grp_iomux = (struct mx6sdl_iomux_grp_regs *)MX6SDL_IOM_GRP_BASE;
+
+	/* DDR IO Type */
+	mx6_grp_iomux->grp_ddr_type = grp->grp_ddr_type;
+	mx6_grp_iomux->grp_ddrpke = grp->grp_ddrpke;
+
+	/* Clock */
+	mx6_ddr_iomux->dram_sdclk_0 = ddr->dram_sdclk_0;
+	mx6_ddr_iomux->dram_sdclk_1 = ddr->dram_sdclk_1;
+
+	/* Address */
+	mx6_ddr_iomux->dram_cas = ddr->dram_cas;
+	mx6_ddr_iomux->dram_ras = ddr->dram_ras;
+	mx6_grp_iomux->grp_addds = grp->grp_addds;
+
+	/* Control */
+	mx6_ddr_iomux->dram_reset = ddr->dram_reset;
+	mx6_ddr_iomux->dram_sdcke0 = ddr->dram_sdcke0;
+	mx6_ddr_iomux->dram_sdcke1 = ddr->dram_sdcke1;
+	mx6_ddr_iomux->dram_sdba2 = ddr->dram_sdba2;
+	mx6_ddr_iomux->dram_sdodt0 = ddr->dram_sdodt0;
+	mx6_ddr_iomux->dram_sdodt1 = ddr->dram_sdodt1;
+	mx6_grp_iomux->grp_ctlds = grp->grp_ctlds;
+
+	/* Data Strobes */
+	mx6_grp_iomux->grp_ddrmode_ctl = grp->grp_ddrmode_ctl;
+	mx6_ddr_iomux->dram_sdqs0 = ddr->dram_sdqs0;
+	mx6_ddr_iomux->dram_sdqs1 = ddr->dram_sdqs1;
+	if (width >= 32) {
+		mx6_ddr_iomux->dram_sdqs2 = ddr->dram_sdqs2;
+		mx6_ddr_iomux->dram_sdqs3 = ddr->dram_sdqs3;
+	}
+	if (width >= 64) {
+		mx6_ddr_iomux->dram_sdqs4 = ddr->dram_sdqs4;
+		mx6_ddr_iomux->dram_sdqs5 = ddr->dram_sdqs5;
+		mx6_ddr_iomux->dram_sdqs6 = ddr->dram_sdqs6;
+		mx6_ddr_iomux->dram_sdqs7 = ddr->dram_sdqs7;
+	}
+
+	/* Data */
+	mx6_grp_iomux->grp_ddrmode = grp->grp_ddrmode;
+	mx6_grp_iomux->grp_b0ds = grp->grp_b0ds;
+	mx6_grp_iomux->grp_b1ds = grp->grp_b1ds;
+	if (width >= 32) {
+		mx6_grp_iomux->grp_b2ds = grp->grp_b2ds;
+		mx6_grp_iomux->grp_b3ds = grp->grp_b3ds;
+	}
+	if (width >= 64) {
+		mx6_grp_iomux->grp_b4ds = grp->grp_b4ds;
+		mx6_grp_iomux->grp_b5ds = grp->grp_b5ds;
+		mx6_grp_iomux->grp_b6ds = grp->grp_b6ds;
+		mx6_grp_iomux->grp_b7ds = grp->grp_b7ds;
+	}
+	mx6_ddr_iomux->dram_dqm0 = ddr->dram_dqm0;
+	mx6_ddr_iomux->dram_dqm1 = ddr->dram_dqm1;
+	if (width >= 32) {
+		mx6_ddr_iomux->dram_dqm2 = ddr->dram_dqm2;
+		mx6_ddr_iomux->dram_dqm3 = ddr->dram_dqm3;
+	}
+	if (width >= 64) {
+		mx6_ddr_iomux->dram_dqm4 = ddr->dram_dqm4;
+		mx6_ddr_iomux->dram_dqm5 = ddr->dram_dqm5;
+		mx6_ddr_iomux->dram_dqm6 = ddr->dram_dqm6;
+		mx6_ddr_iomux->dram_dqm7 = ddr->dram_dqm7;
+	}
+}
+
+static void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 1000; i++);
+}
+
+/*
+ * Configure mx6 mmdc registers based on:
+ *  - board-specific memory configuration
+ *  - board-specific calibration data
+ *  - ddr3 chip details
+ *
+ * The various calculations here are derived from the Freescale
+ * i.Mx6DQSDL DDR3 Script Aid spreadsheet (DOC-94917) designed to generate MMDC
+ * configuration registers based on memory system and memory chip parameters.
+ *
+ * The defaults here are those which were specified in the spreadsheet.
+ * For details on each register, refer to the IMX6DQRM and/or IMX6SDLRM
+ * section titled MMDC initialization
+ */
+#define MR(val, ba, cmd, cs1) \
+	((val << 16) | (1 << 15) | (cmd << 4) | (cs1 << 3) | ba)
+
+#define ROUND(a,b)              (((a) + (b) - 1) & ~((b) - 1))
+
+void mx6_dram_cfg(const struct mx6_ddr_sysinfo *sysinfo,
+		  const struct mx6_mmdc_calibration *calib,
+		  const struct mx6_ddr3_cfg *ddr3_cfg)
+{
+	volatile struct mmdc_p_regs *mmdc0;
+	volatile struct mmdc_p_regs *mmdc1;
+
+	u32 val;
+	u8 tcke, tcksrx, tcksre, txpdll, taofpd, taonpd, trrd;
+	u8 todtlon, taxpd, tanpd, tcwl, txp, tfaw, tcl;
+	u8 todt_idle_off = 0x4; /* from DDR3 Script Aid spreadsheet */
+	u16 trcd, trc, tras, twr, tmrd, trtp, trp, twtr, trfc, txs, txpr;
+	u16 cs0_end;
+	u16 tdllk = 0x1ff; /* DLL locking time: 512 cycles (JEDEC DDR3) */
+	u8 coladdr;
+	int clkper; /* clock period in picoseconds */
+	int clock; /* clock freq in MHz */
+	int cs;
+	u16 mem_speed = ddr3_cfg->mem_speed;
+
+	mmdc0 = (struct mmdc_p_regs *)MX6_MMDC_P0_BASE_ADDR;
+	mmdc1 = (struct mmdc_p_regs *)MX6_MMDC_P1_BASE_ADDR;
+
+	/* Limit mem_speed for MX6D/MX6Q */
+	if (cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) {
+		if (mem_speed > 1066)
+			mem_speed = 1066; /* 1066 MT/s */
+
+		tcwl = 4;
+	}
+	/* Limit mem_speed for MX6S/MX6DL */
+	else {
+		if (mem_speed > 800)
+			mem_speed = 800;  /* 800 MT/s */
+
+		tcwl = 3;
+	}
+
+	clock = mem_speed / 2;
+	/*
+	 * Data rate of 1066 MT/s requires 533 MHz DDR3 clock, but MX6D/Q supports
+	 * up to 528 MHz, so reduce the clock to fit chip specs
+	 */
+	if (cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) {
+		if (clock > 528)
+			clock = 528; /* 528 MHz */
+	}
+
+	clkper = (1000 * 1000) / clock; /* pico seconds */
+	todtlon = tcwl;
+	taxpd = tcwl;
+	tanpd = tcwl;
+
+	switch (ddr3_cfg->density) {
+	case 1: /* 1Gb per chip */
+		trfc = DIV_ROUND_UP(110000, clkper) - 1;
+		txs = DIV_ROUND_UP(120000, clkper) - 1;
+		break;
+	case 2: /* 2Gb per chip */
+		trfc = DIV_ROUND_UP(160000, clkper) - 1;
+		txs = DIV_ROUND_UP(170000, clkper) - 1;
+		break;
+	case 4: /* 4Gb per chip */
+		trfc = DIV_ROUND_UP(260000, clkper) - 1;
+		txs = DIV_ROUND_UP(270000, clkper) - 1;
+		break;
+	case 8: /* 8Gb per chip */
+		trfc = DIV_ROUND_UP(350000, clkper) - 1;
+		txs = DIV_ROUND_UP(360000, clkper) - 1;
+		break;
+	default:
+		/* invalid density */
+		pr_err("invalid chip density\n");
+		hang();
+		break;
+	}
+	txpr = txs;
+
+	switch (mem_speed) {
+	case 800:
+		txp = DIV_ROUND_UP(max(3 * clkper, 7500), clkper) - 1;
+		tcke = DIV_ROUND_UP(max(3 * clkper, 7500), clkper) - 1;
+		if (ddr3_cfg->pagesz == 1) {
+			tfaw = DIV_ROUND_UP(40000, clkper) - 1;
+			trrd = DIV_ROUND_UP(max(4 * clkper, 10000), clkper) - 1;
+		} else {
+			tfaw = DIV_ROUND_UP(50000, clkper) - 1;
+			trrd = DIV_ROUND_UP(max(4 * clkper, 10000), clkper) - 1;
+		}
+		break;
+	case 1066:
+		txp = DIV_ROUND_UP(max(3 * clkper, 7500), clkper) - 1;
+		tcke = DIV_ROUND_UP(max(3 * clkper, 5625), clkper) - 1;
+		if (ddr3_cfg->pagesz == 1) {
+			tfaw = DIV_ROUND_UP(37500, clkper) - 1;
+			trrd = DIV_ROUND_UP(max(4 * clkper, 7500), clkper) - 1;
+		} else {
+			tfaw = DIV_ROUND_UP(50000, clkper) - 1;
+			trrd = DIV_ROUND_UP(max(4 * clkper, 10000), clkper) - 1;
+		}
+		break;
+	default:
+		pr_err("invalid memory speed\n");
+		hang();
+		break;
+	}
+	txpdll = DIV_ROUND_UP(max(10 * clkper, 24000), clkper) - 1;
+	tcksre = DIV_ROUND_UP(max(5 * clkper, 10000), clkper);
+	taonpd = DIV_ROUND_UP(2000, clkper) - 1;
+	tcksrx = tcksre;
+	taofpd = taonpd;
+	twr  = DIV_ROUND_UP(15000, clkper) - 1;
+	tmrd = DIV_ROUND_UP(max(12 * clkper, 15000), clkper) - 1;
+	trc  = DIV_ROUND_UP(ddr3_cfg->trcmin, clkper / 10) - 1;
+	tras = DIV_ROUND_UP(ddr3_cfg->trasmin, clkper / 10) - 1;
+	tcl  = DIV_ROUND_UP(ddr3_cfg->trcd, clkper / 10) - 3;
+	trp  = DIV_ROUND_UP(ddr3_cfg->trcd, clkper / 10) - 1;
+	twtr = ROUND(max(4 * clkper, 7500) / clkper, 1) - 1;
+	trcd = trp;
+	trtp = twtr;
+	cs0_end = 4 * sysinfo->cs_density - 1;
+
+	debug("density:%d Gb (%d Gb per chip)\n",
+	      sysinfo->cs_density, ddr3_cfg->density);
+	debug("clock: %dMHz (%d ps)\n", clock, clkper);
+	debug("memspd:%d\n", mem_speed);
+	debug("tcke=%d\n", tcke);
+	debug("tcksrx=%d\n", tcksrx);
+	debug("tcksre=%d\n", tcksre);
+	debug("taofpd=%d\n", taofpd);
+	debug("taonpd=%d\n", taonpd);
+	debug("todtlon=%d\n", todtlon);
+	debug("tanpd=%d\n", tanpd);
+	debug("taxpd=%d\n", taxpd);
+	debug("trfc=%d\n", trfc);
+	debug("txs=%d\n", txs);
+	debug("txp=%d\n", txp);
+	debug("txpdll=%d\n", txpdll);
+	debug("tfaw=%d\n", tfaw);
+	debug("tcl=%d\n", tcl);
+	debug("trcd=%d\n", trcd);
+	debug("trp=%d\n", trp);
+	debug("trc=%d\n", trc);
+	debug("tras=%d\n", tras);
+	debug("twr=%d\n", twr);
+	debug("tmrd=%d\n", tmrd);
+	debug("tcwl=%d\n", tcwl);
+	debug("tdllk=%d\n", tdllk);
+	debug("trtp=%d\n", trtp);
+	debug("twtr=%d\n", twtr);
+	debug("trrd=%d\n", trrd);
+	debug("txpr=%d\n", txpr);
+	debug("cs0_end=%d\n", cs0_end);
+	debug("ncs=%d\n", sysinfo->ncs);
+	debug("Rtt_wr=%d\n", sysinfo->rtt_wr);
+	debug("Rtt_nom=%d\n", sysinfo->rtt_nom);
+	debug("SRT=%d\n", ddr3_cfg->SRT);
+	debug("tcl=%d\n", tcl);
+	debug("twr=%d\n", twr);
+
+	/*
+	 * board-specific configuration:
+	 *  These values are determined empirically and vary per board layout
+	 *  see:
+	 *   appnote, ddr3 spreadsheet
+	 */
+	mmdc0->mpwldectrl0 = calib->p0_mpwldectrl0;
+	mmdc0->mpwldectrl1 = calib->p0_mpwldectrl1;
+	mmdc0->mpdgctrl0 = calib->p0_mpdgctrl0;
+	mmdc0->mpdgctrl1 = calib->p0_mpdgctrl1;
+	mmdc0->mprddlctl = calib->p0_mprddlctl;
+	mmdc0->mpwrdlctl = calib->p0_mpwrdlctl;
+	if (sysinfo->dsize > 1) {
+		mmdc1->mpwldectrl0 = calib->p1_mpwldectrl0;
+		mmdc1->mpwldectrl1 = calib->p1_mpwldectrl1;
+		mmdc1->mpdgctrl0 = calib->p1_mpdgctrl0;
+		mmdc1->mpdgctrl1 = calib->p1_mpdgctrl1;
+		mmdc1->mprddlctl = calib->p1_mprddlctl;
+		mmdc1->mpwrdlctl = calib->p1_mpwrdlctl;
+	}
+
+	/* Read data DQ Byte0-3 delay */
+	mmdc0->mprddqby0dl = 0x33333333;
+	mmdc0->mprddqby1dl = 0x33333333;
+	if (sysinfo->dsize > 0) {
+		mmdc0->mprddqby2dl = 0x33333333;
+		mmdc0->mprddqby3dl = 0x33333333;
+	}
+
+	if (sysinfo->dsize > 1) {
+		mmdc1->mprddqby0dl = 0x33333333;
+		mmdc1->mprddqby1dl = 0x33333333;
+		mmdc1->mprddqby2dl = 0x33333333;
+		mmdc1->mprddqby3dl = 0x33333333;
+	}
+
+	/* MMDC Termination: rtt_nom:2 RZQ/2(120ohm), rtt_nom:1 RZQ/4(60ohm) */
+	val = (sysinfo->rtt_nom == 2) ? 0x00011117 : 0x00022227;
+	mmdc0->mpodtctrl = val;
+	if (sysinfo->dsize > 1)
+		mmdc1->mpodtctrl = val;
+
+	/* complete calibration */
+	val = (1 << 11); /* Force measurement on delay-lines */
+	mmdc0->mpmur0 = val;
+	if (sysinfo->dsize > 1)
+		mmdc1->mpmur0 = val;
+
+	/* Step 1: configuration request */
+	mmdc0->mdscr = (u32)(1 << 15); /* config request */
+
+	/* Step 2: Timing configuration */
+	mmdc0->mdcfg0 = (trfc << 24) | (txs << 16) | (txp << 13) |
+			(txpdll << 9) | (tfaw << 4) | tcl;
+	mmdc0->mdcfg1 = (trcd << 29) | (trp << 26) | (trc << 21) |
+			(tras << 16) | (1 << 15) /* trpa */ |
+			(twr << 9) | (tmrd << 5) | tcwl;
+	mmdc0->mdcfg2 = (tdllk << 16) | (trtp << 6) | (twtr << 3) | trrd;
+	mmdc0->mdotc = (taofpd << 27) | (taonpd << 24) | (tanpd << 20) |
+		       (taxpd << 16) | (todtlon << 12) | (todt_idle_off << 4);
+	mmdc0->mdasp = cs0_end; /* CS addressing */
+
+	/* Step 3: Configure DDR type */
+	mmdc0->mdmisc = (sysinfo->cs1_mirror << 19) | (sysinfo->walat << 16) |
+			(sysinfo->bi_on << 12) | (sysinfo->mif3_mode << 9) |
+			(sysinfo->ralat << 6);
+
+	/* Step 4: Configure delay while leaving reset */
+	mmdc0->mdor = (txpr << 16) | (sysinfo->sde_to_rst << 8) |
+		      (sysinfo->rst_to_cke << 0);
+
+	/* Step 5: Configure DDR physical parameters (density and burst len) */
+	coladdr = ddr3_cfg->coladdr;
+	if (ddr3_cfg->coladdr == 8)		/* 8-bit COL is 0x3 */
+		coladdr += 4;
+	else if (ddr3_cfg->coladdr == 12)	/* 12-bit COL is 0x4 */
+		coladdr += 1;
+	mmdc0->mdctl =  (ddr3_cfg->rowaddr - 11) << 24 |	/* ROW */
+			(coladdr - 9) << 20 |			/* COL */
+			(1 << 19) |		/* Burst Length = 8 for DDR3 */
+			(sysinfo->dsize << 16);		/* DDR data bus size */
+
+	/* Step 6: Perform ZQ calibration */
+	val = 0xa1390001; /* one-time HW ZQ calib */
+	mmdc0->mpzqhwctrl = val;
+	if (sysinfo->dsize > 1)
+		mmdc1->mpzqhwctrl = val;
+
+	/* Step 7: Enable MMDC with desired chip select */
+	mmdc0->mdctl |= (1 << 31) |			     /* SDE_0 for CS0 */
+			((sysinfo->ncs == 2) ? 1 : 0) << 30; /* SDE_1 for CS1 */
+
+	/* Step 8: Write Mode Registers to Init DDR3 devices */
+	for (cs = 0; cs < sysinfo->ncs; cs++) {
+		/* MR2 */
+		val = (sysinfo->rtt_wr & 3) << 9 | (ddr3_cfg->SRT & 1) << 7 |
+		      ((tcwl - 3) & 3) << 3;
+		debug("MR2 CS%d: 0x%08x\n", cs, (u32)MR(val, 2, 3, cs));
+		mmdc0->mdscr = MR(val, 2, 3, cs);
+		/* MR3 */
+		debug("MR3 CS%d: 0x%08x\n", cs, (u32)MR(0, 3, 3, cs));
+		mmdc0->mdscr = MR(0, 3, 3, cs);
+		/* MR1 */
+		val = ((sysinfo->rtt_nom & 1) ? 1 : 0) << 2 |
+		      ((sysinfo->rtt_nom & 2) ? 1 : 0) << 6;
+		debug("MR1 CS%d: 0x%08x\n", cs, (u32)MR(val, 1, 3, cs));
+		mmdc0->mdscr = MR(val, 1, 3, cs);
+		/* MR0 */
+		val = ((tcl - 1) << 4) |	/* CAS */
+		      (1 << 8)   |		/* DLL Reset */
+		      ((twr - 3) << 9) |	/* Write Recovery */
+		      (sysinfo->pd_fast_exit << 12); /* Precharge PD PLL on */
+		debug("MR0 CS%d: 0x%08x\n", cs, (u32)MR(val, 0, 3, cs));
+		mmdc0->mdscr = MR(val, 0, 3, cs);
+		/* ZQ calibration */
+		val = (1 << 10);
+		mmdc0->mdscr = MR(val, 0, 4, cs);
+	}
+
+	/* Step 10: Power down control and self-refresh */
+	mmdc0->mdpdc = (tcke & 0x7) << 16 |
+			5            << 12 |  /* PWDT_1: 256 cycles */
+			5            <<  8 |  /* PWDT_0: 256 cycles */
+			1            <<  6 |  /* BOTH_CS_PD */
+			(tcksrx & 0x7) << 3 |
+			(tcksre & 0x7);
+	if (!sysinfo->pd_fast_exit)
+		mmdc0->mdpdc |= (1 << 7); /* SLOW_PD */
+	mmdc0->mapsr = 0x00001006; /* ADOPT power down enabled */
+
+	/* Step 11: Configure ZQ calibration: one-time and periodic 1ms */
+	val = 0xa1390003;
+	mmdc0->mpzqhwctrl = val;
+	if (sysinfo->dsize > 1)
+		mmdc1->mpzqhwctrl = val;
+
+	/* Step 12: Configure and activate periodic refresh */
+	mmdc0->mdref = (1 << 14) | /* REF_SEL: Periodic refresh cycle: 32kHz */
+		       (7 << 11);  /* REFR: Refresh Rate - 8 refreshes */
+
+	/* Step 13: Deassert config request - init complete */
+	mmdc0->mdscr = 0x00000000;
+
+	/* wait for auto-ZQ calibration to complete */
+	__udelay(100);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index 6ab8049..9385b34 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -54,4 +54,278 @@ int mmdc_do_write_level_calibration(void);
 int mmdc_do_dqs_calibration(void);
 void mmdc_print_calibration_results(void);
 
+/* MMDC P0/P1 Registers */
+struct mmdc_p_regs {
+	u32 mdctl;
+	u32 mdpdc;
+	u32 mdotc;
+	u32 mdcfg0;
+	u32 mdcfg1;
+	u32 mdcfg2;
+	u32 mdmisc;
+	u32 mdscr;
+	u32 mdref;
+	u32 res1[2];
+	u32 mdrwd;
+	u32 mdor;
+	u32 res2[3];
+	u32 mdasp;
+	u32 res3[240];
+	u32 mapsr;
+	u32 res4[254];
+	u32 mpzqhwctrl;
+	u32 res5[2];
+	u32 mpwldectrl0;
+	u32 mpwldectrl1;
+	u32 res6;
+	u32 mpodtctrl;
+	u32 mprddqby0dl;
+	u32 mprddqby1dl;
+	u32 mprddqby2dl;
+	u32 mprddqby3dl;
+	u32 res7[4];
+	u32 mpdgctrl0;
+	u32 mpdgctrl1;
+	u32 res8;
+	u32 mprddlctl;
+	u32 res9;
+	u32 mpwrdlctl;
+	u32 res10[25];
+	u32 mpmur0;
+};
+
+#define MX6SX_IOM_DDR_BASE	0x020e0200
+struct mx6sx_iomux_ddr_regs {
+	u32 res1[59];
+	u32 dram_dqm0;
+	u32 dram_dqm1;
+	u32 dram_dqm2;
+	u32 dram_dqm3;
+	u32 dram_ras;
+	u32 dram_cas;
+	u32 res2[2];
+	u32 dram_sdwe_b;
+	u32 dram_odt0;
+	u32 dram_odt1;
+	u32 dram_sdba0;
+	u32 dram_sdba1;
+	u32 dram_sdba2;
+	u32 dram_sdcke0;
+	u32 dram_sdcke1;
+	u32 dram_sdclk_0;
+	u32 dram_sdqs0;
+	u32 dram_sdqs1;
+	u32 dram_sdqs2;
+	u32 dram_sdqs3;
+	u32 dram_reset;
+};
+
+#define MX6SX_IOM_GRP_BASE	0x020e0500
+struct mx6sx_iomux_grp_regs {
+	u32 res1[61];
+	u32 grp_addds;
+	u32 grp_ddrmode_ctl;
+	u32 grp_ddrpke;
+	u32 grp_ddrpk;
+	u32 grp_ddrhys;
+	u32 grp_ddrmode;
+	u32 grp_b0ds;
+	u32 grp_b1ds;
+	u32 grp_ctlds;
+	u32 grp_ddr_type;
+	u32 grp_b2ds;
+	u32 grp_b3ds;
+};
+
+/*
+ * MMDC iomux registers (pinctl/padctl) - (different for IMX6DQ vs IMX6SDL)
+ */
+#define MX6DQ_IOM_DDR_BASE      0x020e0500
+struct mx6dq_iomux_ddr_regs {
+	u32 res1[3];
+	u32 dram_sdqs5;
+	u32 dram_dqm5;
+	u32 dram_dqm4;
+	u32 dram_sdqs4;
+	u32 dram_sdqs3;
+	u32 dram_dqm3;
+	u32 dram_sdqs2;
+	u32 dram_dqm2;
+	u32 res2[16];
+	u32 dram_cas;
+	u32 res3[2];
+	u32 dram_ras;
+	u32 dram_reset;
+	u32 res4[2];
+	u32 dram_sdclk_0;
+	u32 dram_sdba2;
+	u32 dram_sdcke0;
+	u32 dram_sdclk_1;
+	u32 dram_sdcke1;
+	u32 dram_sdodt0;
+	u32 dram_sdodt1;
+	u32 res5;
+	u32 dram_sdqs0;
+	u32 dram_dqm0;
+	u32 dram_sdqs1;
+	u32 dram_dqm1;
+	u32 dram_sdqs6;
+	u32 dram_dqm6;
+	u32 dram_sdqs7;
+	u32 dram_dqm7;
+};
+
+#define MX6DQ_IOM_GRP_BASE      0x020e0700
+struct mx6dq_iomux_grp_regs {
+	u32 res1[18];
+	u32 grp_b7ds;
+	u32 grp_addds;
+	u32 grp_ddrmode_ctl;
+	u32 res2;
+	u32 grp_ddrpke;
+	u32 res3[6];
+	u32 grp_ddrmode;
+	u32 res4[3];
+	u32 grp_b0ds;
+	u32 grp_b1ds;
+	u32 grp_ctlds;
+	u32 res5;
+	u32 grp_b2ds;
+	u32 grp_ddr_type;
+	u32 grp_b3ds;
+	u32 grp_b4ds;
+	u32 grp_b5ds;
+	u32 grp_b6ds;
+};
+
+#define MX6SDL_IOM_DDR_BASE     0x020e0400
+struct mx6sdl_iomux_ddr_regs {
+	u32 res1[25];
+	u32 dram_cas;
+	u32 res2[2];
+	u32 dram_dqm0;
+	u32 dram_dqm1;
+	u32 dram_dqm2;
+	u32 dram_dqm3;
+	u32 dram_dqm4;
+	u32 dram_dqm5;
+	u32 dram_dqm6;
+	u32 dram_dqm7;
+	u32 dram_ras;
+	u32 dram_reset;
+	u32 res3[2];
+	u32 dram_sdba2;
+	u32 dram_sdcke0;
+	u32 dram_sdcke1;
+	u32 dram_sdclk_0;
+	u32 dram_sdclk_1;
+	u32 dram_sdodt0;
+	u32 dram_sdodt1;
+	u32 dram_sdqs0;
+	u32 dram_sdqs1;
+	u32 dram_sdqs2;
+	u32 dram_sdqs3;
+	u32 dram_sdqs4;
+	u32 dram_sdqs5;
+	u32 dram_sdqs6;
+	u32 dram_sdqs7;
+};
+
+#define MX6SDL_IOM_GRP_BASE     0x020e0700
+struct mx6sdl_iomux_grp_regs {
+	u32 res1[18];
+	u32 grp_b7ds;
+	u32 grp_addds;
+	u32 grp_ddrmode_ctl;
+	u32 grp_ddrpke;
+	u32 res2[2];
+	u32 grp_ddrmode;
+	u32 grp_b0ds;
+	u32 res3;
+	u32 grp_ctlds;
+	u32 grp_b1ds;
+	u32 grp_ddr_type;
+	u32 grp_b2ds;
+	u32 grp_b3ds;
+	u32 grp_b4ds;
+	u32 grp_b5ds;
+	u32 res4;
+	u32 grp_b6ds;
+};
+
+/* Device Information: Varies per DDR3 part number and speed grade */
+struct mx6_ddr3_cfg {
+	u16 mem_speed;	/* ie 1600 for DDR3-1600 (800,1066,1333,1600) */
+	u8 density;	/* chip density (Gb) (1,2,4,8) */
+	u8 width;	/* bus width (bits) (4,8,16) */
+	u8 banks;	/* number of banks */
+	u8 rowaddr;	/* row address bits (11-16)*/
+	u8 coladdr;	/* col address bits (9-12) */
+	u8 pagesz;	/* page size (K) (1-2) */
+	u16 trcd;	/* tRCD=tRP=CL (ns*100) */
+	u16 trcmin;	/* tRC min (ns*100) */
+	u16 trasmin;	/* tRAS min (ns*100) */
+	u8 SRT;		/* self-refresh temperature: 0=normal, 1=extended */
+};
+
+/* System Information: Varies per board design, layout, and term choices */
+struct mx6_ddr_sysinfo {
+	u8 dsize;	/* size of bus (in dwords: 0=16bit,1=32bit,2=64bit) */
+	u8 cs_density;	/* density per chip select (Gb) */
+	u8 ncs;		/* number chip selects used (1|2) */
+	char cs1_mirror;/* enable address mirror (0|1) */
+	char bi_on;	/* Bank interleaving enable */
+	u8 rtt_nom;	/* Rtt_Nom (DDR3_RTT_*) */
+	u8 rtt_wr;	/* Rtt_Wr (DDR3_RTT_*) */
+	u8 ralat;	/* Read Additional Latency (0-7) */
+	u8 walat;	/* Write Additional Latency (0-3) */
+	u8 mif3_mode;	/* Command prediction working mode */
+	u8 rst_to_cke;	/* Time from SDE enable to CKE rise */
+	u8 sde_to_rst;	/* Time from SDE enable until DDR reset# is high */
+	u8 pd_fast_exit;/* enable precharge powerdown fast-exit */
+};
+
+/*
+ * Board specific calibration:
+ *   This includes write leveling calibration values as well as DQS gating
+ *   and read/write delays. These values are board/layout/device specific.
+ *   Freescale recommends using the i.MX6 DDR Stress Test Tool V1.0.2
+ *   (DOC-96412) to determine these values over a range of boards and
+ *   temperatures.
+ */
+struct mx6_mmdc_calibration {
+	/* write leveling calibration */
+	u32 p0_mpwldectrl0;
+	u32 p0_mpwldectrl1;
+	u32 p1_mpwldectrl0;
+	u32 p1_mpwldectrl1;
+	/* read DQS gating */
+	u32 p0_mpdgctrl0;
+	u32 p0_mpdgctrl1;
+	u32 p1_mpdgctrl0;
+	u32 p1_mpdgctrl1;
+	/* read delay */
+	u32 p0_mprddlctl;
+	u32 p1_mprddlctl;
+	/* write delay */
+	u32 p0_mpwrdlctl;
+	u32 p1_mpwrdlctl;
+};
+
+/* configure iomux (pinctl/padctl) */
+void mx6dq_dram_iocfg(unsigned width,
+		      const struct mx6dq_iomux_ddr_regs *,
+		      const struct mx6dq_iomux_grp_regs *);
+void mx6sdl_dram_iocfg(unsigned width,
+		       const struct mx6sdl_iomux_ddr_regs *,
+		       const struct mx6sdl_iomux_grp_regs *);
+void mx6sx_dram_iocfg(unsigned width,
+		      const struct mx6sx_iomux_ddr_regs *,
+		      const struct mx6sx_iomux_grp_regs *);
+
+/* configure mx6 mmdc registers */
+void mx6_dram_cfg(const struct mx6_ddr_sysinfo *,
+		  const struct mx6_mmdc_calibration *,
+		  const struct mx6_ddr3_cfg *);
+
 #endif /* __MACH_MMDC_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
