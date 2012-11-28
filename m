Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeQM-0002zb-Kb
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:59:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:59:18 +0100
Message-Id: <1354096760-14409-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
References: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] ARM i.MX: add esdctl-v4 support
To: barebox@lists.infradead.org

This adds support for initializing DDR3 RAMs on the i.MX53 type
SDRAM controller. The code automatically detects size/layout of
the connected RAM, detects the bus width and which chipselects are
populated.
While I believe this code is not 100% generic, it is far too
sophisticated to stay in a single board directory. I'm sure
other boards could make use of this aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile                 |    4 +-
 arch/arm/mach-imx/esdctl-v4.c              |  710 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl-v4.h |  520 ++++++++++++++++++++
 3 files changed, 1232 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/esdctl-v4.c
 create mode 100644 arch/arm/mach-imx/include/mach/esdctl-v4.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 6bc2b79..104ab21 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -6,8 +6,8 @@ obj-$(CONFIG_ARCH_IMX27) += imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += imx31.o iomux-v2.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o iomux-v3.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o iomux-v3.o imx5.o clk-imx5.o
-obj-$(CONFIG_ARCH_IMX53) += imx53.o iomux-v3.o imx5.o clk-imx5.o
-pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o
+obj-$(CONFIG_ARCH_IMX53) += imx53.o iomux-v3.o imx5.o clk-imx5.o esdctl-v4.o
+pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/esdctl-v4.c b/arch/arm/mach-imx/esdctl-v4.c
new file mode 100644
index 0000000..6441ac9
--- /dev/null
+++ b/arch/arm/mach-imx/esdctl-v4.c
@@ -0,0 +1,710 @@
+/*
+ * esdctl-v4.c - i.MX sdram controller functions for i.MX53
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/esdctl-v4.h>
+#include <mach/imx53-regs.h>
+#include <asm/system.h>
+
+void imx_esdctlv4_do_write_leveling(void)
+{
+	u32 val;
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+
+	/* switch RAMs to write-leveling mode */
+
+	val = ESDCTL_V4_DDR3_MR1_ODIC_RZQ7 | ESDCTL_V4_DDR3_MR1_RTTN_DIS |
+		ESDCTL_V4_DDR3_MR1_AL_DISABLE | ESDCTL_V4_DDR3_MR1_WL |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_ESDSCR_CMD_CS0 | ESDCTL_V4_ESDSCR_WL_EN |
+		ESDCTL_V4_DDR3_REG_MR1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_DDR3_MR1_ODIC_RZQ7 | ESDCTL_V4_DDR3_MR1_RTTN_DIS |
+		ESDCTL_V4_DDR3_MR1_AL_DISABLE |	ESDCTL_V4_DDR3_MR1_WL |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_ESDSCR_CMD_CS1 | ESDCTL_V4_ESDSCR_WL_EN |
+		ESDCTL_V4_DDR3_REG_MR1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* start write leveling */
+	writel(ESDCTL_V4_WLGCR_HW_WL_EN, base + ESDCTL_V4_WLGCR);
+
+	do {
+		val = readl(base + ESDCTL_V4_WLGCR);
+	} while (val & ESDCTL_V4_WLGCR_HW_WL_EN);
+
+	val &= ESDCTL_V4_WLGCR_WL_HW_ERR3 | ESDCTL_V4_WLGCR_WL_HW_ERR2 |
+		ESDCTL_V4_WLGCR_WL_HW_ERR1 | ESDCTL_V4_WLGCR_WL_HW_ERR0;
+
+	if (val)
+		hang();
+
+	/*
+	 * manual still talks about HW_WLx_CYC fields that
+	 * must be updated from HW_WLx_RES field by SW, but none
+	 * of these fields seem to exist. Closest equivalents
+	 * are WL_CYC_DELx-fields but no RES-fields can be found.
+	 */
+
+	/* configure RAMs back to normal operation */
+	val = ESDCTL_V4_DDR3_MR1_ODIC_RZQ7 | ESDCTL_V4_DDR3_MR1_RTTN_RZQ2 |
+		ESDCTL_V4_DDR3_MR1_AL_DISABLE | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_ESDSCR_CMD_CS0 |
+		ESDCTL_V4_DDR3_REG_MR1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_DDR3_MR1_ODIC_RZQ7 | ESDCTL_V4_DDR3_MR1_RTTN_RZQ2 |
+		ESDCTL_V4_DDR3_MR1_AL_DISABLE | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_ESDSCR_CMD_CS1 |
+		ESDCTL_V4_DDR3_REG_MR1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+}
+
+void imx_esdctlv4_do_dqs_gating(void)
+{
+	u32 val;
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+
+	/* configure ESDCTL comparator to use MPR pattern */
+	writel(ESDCTL_V4_PDCMPR2_MPR_FULL_CMP | ESDCTL_V4_PDCMPR2_MPR_CMP,
+			base + ESDCTL_V4_PDCMPR2);
+
+	/* pre-charge all RAM banks */
+	writel(ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS0 |
+			ESDCTL_V4_ESDSCR_CMD_PRE_ALL, base + ESDCTL_V4_ESDSCR);
+	writel(ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS1 |
+			ESDCTL_V4_ESDSCR_CMD_PRE_ALL, base + ESDCTL_V4_ESDSCR);
+
+	/* configure RAMs to generate MPR pattern */
+	writel(ESDCTL_V4_DDR3_MR3_MPR_ENABLE | ESDCTL_V4_DDR3_MR3_MPR_PATTERN |
+			ESDCTL_V4_ESDSCR_CMD_CS0 | ESDCTL_V4_ESDSCR_CON_REQ |
+			ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR3,
+			base + ESDCTL_V4_ESDSCR);
+	writel(ESDCTL_V4_DDR3_MR3_MPR_ENABLE | ESDCTL_V4_DDR3_MR3_MPR_PATTERN |
+			ESDCTL_V4_ESDSCR_CMD_CS1 | ESDCTL_V4_ESDSCR_CON_REQ |
+			ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR3,
+			base + ESDCTL_V4_ESDSCR);
+
+	/* start HW DQS gating */
+	writel(ESDCTL_V4_ESDDGCTRL0_HW_DG_EN, base + ESDCTL_V4_DGCTRL0);
+
+	do {
+		val = readl(base + ESDCTL_V4_DGCTRL0);
+	} while (val & ESDCTL_V4_ESDDGCTRL0_HW_DG_EN);
+
+	if (val & ESDCTL_V4_ESDDGCTRL0_HW_DG_ERR)
+		hang();
+
+	/* configure RAMs back to normal operation */
+	val = ESDCTL_V4_DDR3_MR3_MPR_DISABLE | ESDCTL_V4_ESDSCR_CMD_CS0 |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_DDR3_MR3_MPR_DISABLE | ESDCTL_V4_ESDSCR_CMD_CS1 |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+}
+
+void imx_esdctlv4_do_zq_calibration(void)
+{
+	u32 val;
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+
+	/*
+	 * configure ZQ parameters
+	 * Note: TZQ_CS is only required to be 64cy by Jedec and RAM
+	 * manufacturers and i.MX53TO1 provides a 64cy setting, but
+	 * TO2 according to official documentation not...
+	 */
+	val = ESDCTL_V4_ESDZQHWC_ZQ_PARA_EN |
+		(ESDCTL_V4_ESDZQHWC_128CYC << ESDCTL_V4_ESDZQHWC_TZQ_CS_SHIFT) |
+		(ESDCTL_V4_ESDZQHWC_256CYC << ESDCTL_V4_ESDZQHWC_TZQ_OPER_SHIFT) |
+		(ESDCTL_V4_ESDZQHWC_512CYC << ESDCTL_V4_ESDZQHWC_TZQ_INIT_SHIFT) |
+		(0 << ESDCTL_V4_ESDZQHWC_ZQ_HW_PD_RES_SHIFT) |
+		(0 << ESDCTL_V4_ESDZQHWC_ZQ_HW_PU_RES_SHIFT) |
+		(0 << ESDCTL_V4_ESDZQHWC_ZQ_HW_PER_SHIFT) |
+		ESDCTL_V4_ESDZQHWC_ZQ_MODE_BOTH_PER |
+		ESDCTL_V4_ESDZQHWC_ZQ_HW_FOR;
+
+	/* force ZQ calibration */
+	writel(val, base + ESDCTL_V4_ZQHWCTRL);
+
+	while (readl(base + ESDCTL_V4_ZQHWCTRL) & ESDCTL_V4_ESDZQHWC_ZQ_HW_FOR);
+}
+
+/*
+ * start-up a DDR3 SDRAM chip
+ */
+void imx_esdctlv4_start_ddr3_sdram(int cs)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	u32 val;
+	u32 val_cs1;
+
+	if (cs)
+		val_cs1 = ESDCTL_V4_ESDSCR_CMD_CS1;
+	else
+		val_cs1 = ESDCTL_V4_ESDSCR_CMD_CS0;
+
+	/* initialize MR2 */
+	val = ESDCTL_V4_DDR3_MR2_RTTWR_OFF | ESDCTL_V4_DDR3_MR2_SRT_NORMAL |
+		ESDCTL_V4_DDR3_MR2_CWL_5 | ESDCTL_V4_DDR3_MR2_PASR_1_1 |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR2 | val_cs1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* initialize MR3 */
+	val =  ESDCTL_V4_DDR3_MR3_MPR_DISABLE | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR3 | val_cs1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* initialize MR1 */
+	val = ESDCTL_V4_DDR3_MR1_ODIC_RZQ7 | ESDCTL_V4_DDR3_MR1_RTTN_RZQ2 |
+		ESDCTL_V4_DDR3_MR1_AL_DISABLE | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR1 | val_cs1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* initialize MR0 */
+	val = ESDCTL_V4_DDR3_MR0_PPD_SLOW | ESDCTL_V4_DDR3_MR0_WR_6 |
+		ESDCTL_V4_DDR3_MR0_CL_6 | ESDCTL_V4_DDR3_MR0_BL_FIXED8 |
+		ESDCTL_V4_DDR3_MR0_RBT_NIBBLE | ESDCTL_V4_DDR3_DLL_RESET |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR0 | val_cs1;
+
+	if (cs)
+		val = ESDCTL_V4_ESDSCR_DLL_RST1;
+	else
+		val = ESDCTL_V4_ESDSCR_DLL_RST0;
+
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* perform ZQ calibration */
+	val = 0x04000000 | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_ZQCALIB_OLD;
+	val |= val_cs1;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+}
+
+void imx_esdctlv4_do_read_delay_line_calibration(void)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	u32 val;
+
+	/* configure ESDCTL comparator to use MPR pattern */
+	val = ESDCTL_V4_PDCMPR2_MPR_FULL_CMP | ESDCTL_V4_PDCMPR2_MPR_CMP;
+	writel(val, base + ESDCTL_V4_PDCMPR2);
+
+	/* pre-charge all RAM banks */
+	val = ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS0 |
+		ESDCTL_V4_ESDSCR_CMD_PRE_ALL;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS1 |
+		ESDCTL_V4_ESDSCR_CMD_PRE_ALL;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* configure RAMs to generate MPR pattern */
+	val = ESDCTL_V4_DDR3_MR3_MPR_ENABLE | ESDCTL_V4_DDR3_MR3_MPR_PATTERN |
+		ESDCTL_V4_ESDSCR_CMD_CS0 | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_DDR3_MR3_MPR_ENABLE | ESDCTL_V4_DDR3_MR3_MPR_PATTERN |
+		ESDCTL_V4_ESDSCR_CMD_CS1 | ESDCTL_V4_ESDSCR_CON_REQ |
+		ESDCTL_V4_ESDSCR_CMD_LMR | ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* start read delay-line calibration */
+	writel(ESDCTL_V4_RDDLHWCTL_HW_RDL_EN, base + ESDCTL_V4_RDDLHWCTL);
+
+	do {
+		val = readl(base + ESDCTL_V4_RDDLHWCTL);
+	} while (val & ESDCTL_V4_RDDLHWCTL_HW_RDL_EN);
+
+	val &= ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR3 |
+		ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR2 |
+		ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR1 |
+		ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR0;
+
+	if (val)
+		hang();
+
+	/* configure RAMs back to normal operation */
+	val = ESDCTL_V4_DDR3_MR3_MPR_DISABLE | ESDCTL_V4_ESDSCR_CMD_CS0 |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_DDR3_MR3_MPR_DISABLE | ESDCTL_V4_ESDSCR_CMD_CS1 |
+		ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_LMR |
+		ESDCTL_V4_DDR3_REG_MR3;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+}
+
+void imx_esdctlv4_do_write_delay_line_calibration(void)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *adr;
+	u32 val;
+
+	/*
+	 * configure ESCTL to normal operation so we can
+	 * write the compare values
+	 */
+	writel(ESDCTL_V4_ESDSCR_CMD_NOP, base + ESDCTL_V4_ESDSCR);
+
+	/* write test-pattern to RAM */
+
+	/* ESCTL uses this address for calibration */
+	adr = (void *)MX53_CSD0_BASE_ADDR + 0x10000000;
+	writel(0, adr + 0x00);
+	writel(0, adr + 0x0c);
+	writel(0, adr + 0x10);
+	writel(0, adr + 0x1c);
+	writel(0, adr + 0x20);
+	writel(0, adr + 0x2c);
+	writel(0, adr + 0x30);
+	writel(0, adr + 0x4c);
+	writel(0xffffffff, adr + 0x04);
+	writel(0xffffffff, adr + 0x08);
+	writel(0xffffffff, adr + 0x14);
+	writel(0xffffffff, adr + 0x18);
+	writel(0xffffffff, adr + 0x24);
+	writel(0xffffffff, adr + 0x28);
+	writel(0xffffffff, adr + 0x34);
+	writel(0xffffffff, adr + 0x48);
+
+	/* pre-charge all RAM banks */
+	val = ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS0 |
+		ESDCTL_V4_ESDSCR_CMD_PRE_ALL;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	val = ESDCTL_V4_ESDSCR_CON_REQ | ESDCTL_V4_ESDSCR_CMD_CS1 |
+		ESDCTL_V4_ESDSCR_CMD_PRE_ALL;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* write test-pattern to ESCTL */
+	writel(0x00ffff00, base + ESDCTL_V4_PDCMPR1);
+	writel(0, base + ESDCTL_V4_PDCMPR2);
+
+	/* start write delay-line calibration */
+	writel(ESDCTL_V4_WRDLHWCTL_HW_WDL_EN, base + ESDCTL_V4_WRDLHWCTL);
+
+	do {
+		val = readl(base + ESDCTL_V4_WRDLHWCTL);
+	} while (val & ESDCTL_V4_WRDLHWCTL_HW_WDL_EN);
+
+	val &= ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR3 |
+		ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR2 |
+		ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR1 |
+		ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR0;
+
+	if (val)
+		hang();
+}
+
+#define SDRAM_COMPARE_CONST1 0x12345678
+#define SDRAM_COMPARE_CONST2 0xAAAAAAAA
+
+/*
+ * write magic values to RAM for testing purposes
+ */
+static void imx_esdctlv4_write_magic_values(void *adr)
+{
+	/*
+	 * Freescale asks for first access to be a write to properly
+	 * initialize DQS pin-state and keepers
+	 */
+	writel(SDRAM_COMPARE_CONST1, adr);
+
+	/*
+	 * write two magic constants to RAM, to test for bus-size and
+	 * row-/column-configuraion
+	 */
+	writel(SDRAM_COMPARE_CONST1, adr);
+	writel(SDRAM_COMPARE_CONST2, adr + 4);
+	dsb();
+}
+
+/*
+ * check if given DRAM addresses match expected values for row/col configuration
+ */
+static u32 check_ram_address_line(void *adr, u32 compare, u32 mask)
+{
+	u32 val;
+
+	val = readl(adr);	/* load data from RAM-address to check */
+	val &= mask;		/* mask data for our bus-size */
+
+	if (compare == val)	/* compare read data with expected value */
+		return 1;	/* if data is identical, update ESDCTL configuration */
+	else
+		return 0;
+}
+
+/*
+ * determine RAM chip-density and configure tRFC and tXS accordingly
+ */
+void imx_esdctlv4_set_tRFC_timing(void)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	u32 val, trfc, r2, esdcfg;
+
+	/* determine chip-density */
+	val = readl(base + ESDCTL_V4_ESDMISC);
+	if ((val & ESDCTL_V4_ESDMISC_BANKS_MASK) == ESDCTL_V4_ESDMISC_BANKS_4)
+		r2 = 2;
+	else
+		r2 = 3;
+
+	val = readl(base + ESDCTL_V4_ESDCTL0);
+	if ((val & ESDCTL_V4_ESDCTLx_DSIZ_MASK) == ESDCTL_V4_ESDCTLx_DSIZ_32B)
+		r2 += 1;
+
+	switch (val & ESDCTL_V4_ESDCTLx_ROW_MASK) {
+		case ESDCTL_V4_ESDCTLx_ROW_11: r2 += 1; break;
+		case ESDCTL_V4_ESDCTLx_ROW_12: r2 += 2; break;
+		case ESDCTL_V4_ESDCTLx_ROW_13: r2 += 3; break;
+		case ESDCTL_V4_ESDCTLx_ROW_14: r2 += 4; break;
+		case ESDCTL_V4_ESDCTLx_ROW_15: r2 += 5; break;
+		case ESDCTL_V4_ESDCTLx_ROW_16: r2 += 6; break;
+	}
+
+	switch (val & ESDCTL_V4_ESDCTLx_COL_MASK) {
+		case ESDCTL_V4_ESDCTLx_COL_8: r2 += 8; break;
+		case ESDCTL_V4_ESDCTLx_COL_9: r2 += 9; break;
+		case ESDCTL_V4_ESDCTLx_COL_10: r2 += 10; break;
+		case ESDCTL_V4_ESDCTLx_COL_11: r2 += 11; break;
+		case ESDCTL_V4_ESDCTLx_COL_12: r2 += 12; break;
+	}
+
+	/* save current tRFC timing */
+	esdcfg = readl(base + ESDCTL_V4_ESDCFG0);
+
+	trfc = (esdcfg & ESDCTL_V4_ESDCFG0_tRFC_MASK) >> ESDCTL_V4_ESDCFG0_tRFC_SHIFT;
+
+	/* clear tRFC and tXS timings */
+	esdcfg &= ~(ESDCTL_V4_ESDCFG0_tRFC_MASK | ESDCTL_V4_ESDCFG0_tXS_MASK);
+
+	/*
+	 * determine tRFC depending on density
+	 * (the timings and density-associations are taken
+	 * from JEDEC JESD79-3E DDR3-RAM specification)
+	 */
+	if (r2 >= 16)
+		trfc = 36 - 1;
+	if (r2 >= 17)
+		trfc = 44 - 1;
+	if (r2 >= 18)
+		trfc = 64 - 1;
+	if (r2 >= 19)
+		trfc = 120 - 1;
+	if (r2 >= 20)
+		trfc = 140 - 1;
+
+	/* calculate new tRFC and tXS timings */
+	esdcfg |= (trfc << ESDCTL_V4_ESDCFG0_tRFC_SHIFT) |
+		(trfc + 4) << ESDCTL_V4_ESDCFG0_tXS_SHIFT;
+
+	writel(esdcfg, base + ESDCTL_V4_ESDCFG0);
+}
+
+/*
+ * disable chip-selects that are not equipped
+ */
+void imx_esdctlv4_detect_sdrams(void)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	u32 esdctl0;
+
+	esdctl0 = readl(base + ESDCTL_V4_ESDCTL0);
+
+	writel(MX53_CSD0_BASE_ADDR, MX53_CSD0_BASE_ADDR);
+	writel(MX53_CSD1_BASE_ADDR, MX53_CSD1_BASE_ADDR);
+
+	if (readl(MX53_CSD0_BASE_ADDR) != MX53_CSD0_BASE_ADDR)
+		esdctl0 &= ~ESDCTL_V4_ESDCTLx_SDE0;
+	if (readl(MX53_CSD1_BASE_ADDR) != MX53_CSD1_BASE_ADDR)
+		esdctl0 &= ~ESDCTL_V4_ESDCTLx_SDE1;
+
+	writel(esdctl0, base + ESDCTL_V4_ESDCTL0);
+}
+
+void imx_esdctlv4_init(void)
+{
+	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	u32 val, r1, esdctl0, mask, rows, cols;
+
+	/*
+	 * assume worst-case here: 4Gb chips. this will be optimized
+	 * further down, when we can determine the actual chip density
+	 * in imx_esdctlv4_set_tRFC_timing()
+	 */
+	val = (((140 - 1) << ESDCTL_V4_ESDCFG0_tRFC_SHIFT) |
+				  ((144 - 1) << ESDCTL_V4_ESDCFG0_tXS_SHIFT) |
+				  ((3 - 1) << ESDCTL_V4_ESDCFG0_tXP_SHIFT) |
+				  ((10 - 1) << ESDCTL_V4_ESDCFG0_tXPDLL_SHIFT) |
+				  ((20 - 1) << ESDCTL_V4_ESDCFG0_tFAW_SHIFT) |
+				  ((6 - 3) << ESDCTL_V4_ESDCFG0_tCL_SHIFT));
+	writel(val, base + ESDCTL_V4_ESDCFG0);
+
+	val = (((6 - 1) << ESDCTL_V4_ESDCFG1_tRCD_SHIFT) |
+				  ((6 - 1) << ESDCTL_V4_ESDCFG1_tRP_SHIFT) |
+				  ((21 - 1) << ESDCTL_V4_ESDCFG1_tRC_SHIFT) |
+				  ((15 - 1) << ESDCTL_V4_ESDCFG1_tRAS_SHIFT) |
+				  (1 << ESDCTL_V4_ESDCFG1_tRPA_SHIFT) |
+				  ((6 - 1) << ESDCTL_V4_ESDCFG1_tWR_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDCFG1_tMRD_SHIFT) |
+				  ((5 - 2) << ESDCTL_V4_ESDCFG1_tCWL_SHIFT));
+	writel(val, base + ESDCTL_V4_ESDCFG1);
+
+	val = (((512 - 1) << ESDCTL_V4_ESDCFG2_tDLLK_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDCFG2_tRTP_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDCFG2_tWTR_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDCFG2_tRRD_SHIFT));
+	writel(val, base + ESDCTL_V4_ESDCFG2);
+
+	/*
+	 * we don't touch the ESDRWD register as documentation claims
+	 * the power-on defaults are minimum required values and we don't
+	 * want to interfere with changes of these in new chip or
+	 * BootROM revisions.
+	 */
+
+	val = (((3 - 1) << ESDCTL_V4_ESDOTC_tAOFPD_SHIFT) |
+				  ((3 - 1) << ESDCTL_V4_ESDOTC_tAONPD_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDOTC_tANPD_SHIFT) |
+				  ((4 - 1) << ESDCTL_V4_ESDOTC_tAXPD_SHIFT) |
+				  (3 << ESDCTL_V4_ESDOTC_tODTLon_SHIFT) |
+				  (3 << ESDCTL_V4_ESDOTC_tODT_idle_off_SHIFT));
+	writel(val, base + ESDCTL_V4_ESDOTC);
+
+	/* currently we only support DDR3 RAM, which always has 8 banks */
+	val = ESDCTL_V4_ESDMISC_WALAT_0 | ESDCTL_V4_ESDMISC_RALAT_2 |
+				  ESDCTL_V4_ESDMISC_MIF3_MODE_EFAM |
+				  ESDCTL_V4_ESDMISC_DDR_DDR3 |
+				  ESDCTL_V4_ESDMISC_BANKS_8;
+	writel(val, base + ESDCTL_V4_ESDMISC);
+
+	val = (((144 - 1) << ESDCTL_V4_ESDOR_tXPR_SHIFT) |
+			((13 + 1) << ESDCTL_V4_ESDOR_SDE_to_RST_SHIFT) |
+			((32 + 1) << ESDCTL_V4_ESDOR_RST_to_CKE_SHIFT));
+	writel(val, base + ESDCTL_V4_ESDOR);
+
+	/*
+	 * we assume maximum address line configuration here (32b, 16rows, 12cols,
+	 * both chips) once the RAM is initialized, we determine actual configuration
+	 */
+	val = ESDCTL_V4_ESDCTLx_SDE0 | ESDCTL_V4_ESDCTLx_SDE1 |
+			ESDCTL_V4_ESDCTLx_ROW_16 | ESDCTL_V4_ESDCTLx_COL_8 |
+			ESDCTL_V4_ESDCTLx_BL_8_8 | ESDCTL_V4_ESDCTLx_DSIZ_32B;
+	writel(val, base + ESDCTL_V4_ESDCTL0);
+
+	imx_esdctlv4_start_ddr3_sdram(0);
+	imx_esdctlv4_start_ddr3_sdram(1);
+
+	val = (ESDCTL_V4_ESDPDC_PRCT_DISABLE << ESDCTL_V4_ESDPDC_PRCT1_SHIFT) |
+		(ESDCTL_V4_ESDPDC_PRCT_DISABLE << ESDCTL_V4_ESDPDC_PRCT0_SHIFT) |
+		((3 - 1) << ESDCTL_V4_ESDPDC_tCKE_SHIFT) |
+		(ESDCTL_V4_ESDPDC_PWDT_DISABLE << ESDCTL_V4_ESDPDC_PWDT1_SHIFT) |
+		(ESDCTL_V4_ESDPDC_PWDT_DISABLE << ESDCTL_V4_ESDPDC_PWDT0_SHIFT) |
+		(5 << ESDCTL_V4_ESDPDC_tCKSRX_SHIFT) |
+		(5 << ESDCTL_V4_ESDPDC_tCKSRE_SHIFT);
+	writel(val, base + ESDCTL_V4_ESDPDC);
+
+	/* configure ODT */
+	val = (ESDCTL_V4_ESDODTC_RTT_120 << ESDCTL_V4_ESDODTC_ODT3_INT_RES_SHIFT) |
+		(ESDCTL_V4_ESDODTC_RTT_120 << ESDCTL_V4_ESDODTC_ODT2_INT_RES_SHIFT) |
+		(ESDCTL_V4_ESDODTC_RTT_120 << ESDCTL_V4_ESDODTC_ODT1_INT_RES_SHIFT) |
+		(ESDCTL_V4_ESDODTC_RTT_120 << ESDCTL_V4_ESDODTC_ODT0_INT_RES_SHIFT) |
+		ESDCTL_V4_ESDODTC_ODT_RD_PAS_EN |
+		ESDCTL_V4_ESDODTC_ODT_WR_ACT_EN |
+		ESDCTL_V4_ESDODTC_ODT_WR_PAS_EN;
+	writel(val, base + ESDCTL_V4_ODTCTRL);
+
+	/*
+	 * ensure refresh and ZQ calibration are turned off as
+	 * nothing may interfere with the first few calibrations
+	 */
+	writel(ESDCTL_V4_ESDREF_REF_SEL_MASK, base + ESDCTL_V4_ESDREF);
+
+	writel(ESDCTL_V4_ESDZQHWC_ZQ_MODE_NO_CAL, base + ESDCTL_V4_ZQHWCTRL);
+
+	/*
+	 * ensure that read/write delays are configured to
+	 * (working) 1/4 cycle default delay, proper delays
+	 * will be calibrated below.
+	 */
+	writel(0x30303030, base + ESDCTL_V4_RDDLCTL);
+	writel(0x40404040, base + ESDCTL_V4_WRDLCTL);
+
+	/* DQS Gating */
+	imx_esdctlv4_do_dqs_gating();
+
+	/* Write Leveling */
+	imx_esdctlv4_do_write_leveling();
+
+	/*
+	 * ZQ calibration (this will also enable regular
+	 * automatic ZQ calibration again)
+	 */
+	imx_esdctlv4_do_zq_calibration();
+
+	/* configure and enable refresh */
+	val = (0 << ESDCTL_V4_ESDREF_REF_CNT_SHIFT) |
+		ESDCTL_V4_ESDREF_REF_SEL_64K |
+		((2 - 1) << ESDCTL_V4_ESDREF_REFR_SHIFT);
+	writel(val, base + ESDCTL_V4_ESDREF);
+
+
+	/* Now do proper Delay Line Calibration */
+	imx_esdctlv4_do_read_delay_line_calibration();
+	imx_esdctlv4_do_write_delay_line_calibration();
+
+	/* enable regular operation of ESDCTL */
+	writel(ESDCTL_V4_ESDSCR_CMD_NOP, base + ESDCTL_V4_ESDSCR);
+
+	dsb();
+
+	/*
+	 * detect RAM configuration (Note: both CSDx must be
+	 * equipped with identical RAMs, so we only need to detect
+	 * the configuration of CSD0 and anything on CSD1)
+	 */
+	esdctl0 = readl(base + ESDCTL_V4_ESDCTL0);
+
+	imx_esdctlv4_write_magic_values((void *)MX53_CSD0_BASE_ADDR);
+
+	/* check for bus-configuration first */
+	esdctl0 &= ~ESDCTL_V4_ESDCTLx_DSIZ_MASK;
+
+	/* assume we're on a 32b bus */
+	mask = 0xffffffff;
+
+	/* data correct? */
+	if (readl(MX53_CSD0_BASE_ADDR) == SDRAM_COMPARE_CONST1) {
+		esdctl0 |= ESDCTL_V4_ESDCTLx_DSIZ_32B; /* yep, indeed 32b bus */
+		goto sdram_bussize_found;
+	}
+
+	/*
+	 * ok, last possibility is 16b bus on low data-lines, check that
+	 * (i.MX25 also suports 16b on high data-lines, but i.MX53 doesn't)
+	 */
+	if (readl(MX53_CSD0_BASE_ADDR) << 16 == SDRAM_COMPARE_CONST1 << 16) {
+		esdctl0 |= ESDCTL_V4_ESDCTLx_DSIZ_16B_LOW;
+		mask >>= 16;
+		goto sdram_bussize_found;
+	}
+
+	/* nope, no working SDRAM, leave. */
+	hang();
+
+sdram_bussize_found:
+
+	/* Now determine actual row/column configuration of the RAMs */
+
+	/* mask unused bits from our compare constant */
+	r1 = SDRAM_COMPARE_CONST1 & mask;
+	/*
+	 * So far we asssumed that we have 16 rows, check for copies of our
+	 * SDRAM_COMPARE_CONST1 due to missing row lines...
+	 */
+
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 25), r1, mask))
+		rows = ESDCTL_V4_ESDCTLx_ROW_15;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 24), r1, mask))
+		rows = ESDCTL_V4_ESDCTLx_ROW_14;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 23), r1, mask))
+		rows = ESDCTL_V4_ESDCTLx_ROW_13;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 22), r1, mask))
+		rows = ESDCTL_V4_ESDCTLx_ROW_12;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 21), r1, mask))
+		rows = ESDCTL_V4_ESDCTLx_ROW_11;
+
+	esdctl0 &= ~ESDCTL_V4_ESDCTLx_ROW_MASK;
+	esdctl0 |= rows;
+
+	/*
+	 * To detect columns we have to switch from the (max rows, min cols)
+	 * configuration we used so far to a (min rows, max cols) configuration
+	 */
+
+	/* switch ESDCTL to configuration mode */
+	val = ESDCTL_V4_ESDSCR_CMD_NOP | ESDCTL_V4_ESDSCR_CON_REQ;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* reconfigure row-/column-lines */
+	val = readl(base + ESDCTL_V4_ESDCTL0);
+	val &= ~(ESDCTL_V4_ESDCTLx_ROW_MASK | ESDCTL_V4_ESDCTLx_COL_MASK);
+	val |= ESDCTL_V4_ESDCTLx_ROW_11 | ESDCTL_V4_ESDCTLx_COL_12;
+	writel(val, base + ESDCTL_V4_ESDCTL0);
+
+	dsb();
+
+	/* switch ESDCTL back to normal operation */
+	writel(ESDCTL_V4_ESDSCR_CMD_NOP, base + ESDCTL_V4_ESDSCR);
+
+	/*
+	 * not quite sure why, but the row-/col-reconfiguration destroys the
+	 * contents of the RAM so we have to write our magic values back
+	 * (maybe because refresh is suspended during that time)
+	 */
+	imx_esdctlv4_write_magic_values((void *)MX53_CSD0_BASE_ADDR);
+
+	/*
+	 * So far we asssumed that we have 12 columns, check for copies of our
+	 * SDRAM_COMPARE_CONST1 due to missing column lines...
+	 */
+
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 13), r1, mask))
+		cols = ESDCTL_V4_ESDCTLx_COL_11;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 12), r1, mask))
+		cols = ESDCTL_V4_ESDCTLx_COL_10;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 11), r1, mask))
+		cols = ESDCTL_V4_ESDCTLx_COL_9;
+	if (check_ram_address_line((void *)MX53_CSD0_BASE_ADDR + (1 << 10), r1, mask))
+		cols = ESDCTL_V4_ESDCTLx_COL_8;
+
+	esdctl0 &= ~ESDCTL_V4_ESDCTLx_COL_MASK;
+	esdctl0 |= cols;
+
+	/* setup proper row-/column-configuration */
+
+	/* switch ESDCTL to configuration mode */
+	val = ESDCTL_V4_ESDSCR_CMD_NOP | ESDCTL_V4_ESDSCR_CON_REQ;
+	writel(val, base + ESDCTL_V4_ESDSCR);
+
+	/* reconfigure row-/column-lines */
+	writel(esdctl0, base + ESDCTL_V4_ESDCTL0);
+
+	/* configure densitiy dependent timing parameters */
+	imx_esdctlv4_set_tRFC_timing();
+
+	dsb();
+
+	/* switch ESDCTL back to normal operation */
+	writel(ESDCTL_V4_ESDSCR_CMD_NOP, base + ESDCTL_V4_ESDSCR);
+
+	/* see at which CSx we actually have working RAM */
+	imx_esdctlv4_detect_sdrams();
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl-v4.h b/arch/arm/mach-imx/include/mach/esdctl-v4.h
new file mode 100644
index 0000000..2e6741e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/esdctl-v4.h
@@ -0,0 +1,520 @@
+#ifndef __MACH_ESDCTL_V4_H
+#define __MACH_ESDCTL_V4_H
+
+#define ESDCTL_V4_ESDCTL0		0x00
+#define ESDCTL_V4_ESDPDC		0x04
+#define ESDCTL_V4_ESDOTC		0x08
+#define ESDCTL_V4_ESDCFG0		0x0c
+#define ESDCTL_V4_ESDCFG1		0x10
+#define ESDCTL_V4_ESDCFG2		0x14
+#define ESDCTL_V4_ESDMISC		0x18
+#define ESDCTL_V4_ESDSCR		0x1c
+#define ESDCTL_V4_ESDREF		0x20
+#define ESDCTL_V4_ESDWCC		0x24
+#define ESDCTL_V4_ESDRCC		0x28
+#define ESDCTL_V4_ESDRWD		0x2c
+#define ESDCTL_V4_ESDOR			0x30
+#define ESDCTL_V4_ESDMRR		0x34
+#define ESDCTL_V4_ESDCFG3_LP		0x38
+#define ESDCTL_V4_ESDMR4		0x3c
+#define ESDCTL_V4_ZQHWCTRL		0x40
+#define ESDCTL_V4_ZQSWCTRL		0x44
+#define ESDCTL_V4_WLGCR			0x48
+#define ESDCTL_V4_WLDECTRL0		0x4c
+#define ESDCTL_V4_WLDECTRL1		0x50
+#define ESDCTL_V4_WLDLST		0x54
+#define ESDCTL_V4_ODTCTRL		0x58
+#define ESDCTL_V4_RDDQBY0DL		0x5c
+#define ESDCTL_V4_RDDQBY1DL		0x60
+#define ESDCTL_V4_RDDQBY2DL		0x64
+#define ESDCTL_V4_RDDQBY3DL		0x68
+#define ESDCTL_V4_WRDQBY0DL		0x6c
+#define ESDCTL_V4_WRDQBY1DL		0x70
+#define ESDCTL_V4_WRDQBY2DL		0x74
+#define ESDCTL_V4_WRDQBY3DL		0x78
+#define ESDCTL_V4_DGCTRL0		0x7c
+#define ESDCTL_V4_DGCTRL1		0x80
+#define ESDCTL_V4_DGDLST		0x84
+#define ESDCTL_V4_RDDLCTL		0x88
+#define ESDCTL_V4_RDDLST		0x8c
+#define ESDCTL_V4_WRDLCTL		0x90
+#define ESDCTL_V4_WRDLST		0x94
+#define ESDCTL_V4_SDCTRL		0x98
+#define ESDCTL_V4_ZQLP2CTL		0x9c
+#define ESDCTL_V4_RDDLHWCTL		0xa0
+#define ESDCTL_V4_WRDLHWCTL		0xa4
+#define ESDCTL_V4_RDDLHWST0		0xa8
+#define ESDCTL_V4_RDDLHWST1		0xac
+#define ESDCTL_V4_WRDLHWST0		0xb0
+#define ESDCTL_V4_WRDLHWST1		0xb4
+#define ESDCTL_V4_WLHWERR		0xb8
+#define ESDCTL_V4_DGHWST0		0xbc
+#define ESDCTL_V4_DGHWST1		0xc0
+#define ESDCTL_V4_DGHWST2		0xc4
+#define ESDCTL_V4_DGHWST3		0xc8
+#define ESDCTL_V4_PDCMPR1		0xcc
+#define ESDCTL_V4_PDCMPR2		0xd0
+#define ESDCTL_V4_SWDADR		0xd4
+#define ESDCTL_V4_SWDRDR0		0xd8
+#define ESDCTL_V4_SWDRDR1		0xdc
+#define ESDCTL_V4_SWDRDR2		0xe0
+#define ESDCTL_V4_SWDRDR3		0xe4
+#define ESDCTL_V4_SWDRDR4		0xe8
+#define ESDCTL_V4_SWDRDR5		0xec
+#define ESDCTL_V4_SWDRDR6		0xf0
+#define ESDCTL_V4_SWDRDR7		0xf4
+#define ESDCTL_V4_MUR			0xf8
+#define ESDCTL_V4_WRCADL		0xfc
+
+#define ESDCTL_V4_ESDCTLx_SDE0				0x80000000
+#define ESDCTL_V4_ESDCTLx_SDE1				0x40000000
+
+#define ESDCTL_V4_ESDCTLx_ROW_MASK			0x07000000
+#define ESDCTL_V4_ESDCTLx_ROW_11			0x00000000
+#define ESDCTL_V4_ESDCTLx_ROW_12			0x01000000
+#define ESDCTL_V4_ESDCTLx_ROW_13			0x02000000
+#define ESDCTL_V4_ESDCTLx_ROW_14			0x03000000
+#define ESDCTL_V4_ESDCTLx_ROW_15			0x04000000
+#define ESDCTL_V4_ESDCTLx_ROW_16			0x05000000
+
+#define ESDCTL_V4_ESDCTLx_COL_MASK			0x00700000
+#define ESDCTL_V4_ESDCTLx_COL_9				0x00000000
+#define ESDCTL_V4_ESDCTLx_COL_10			0x00100000
+#define ESDCTL_V4_ESDCTLx_COL_11			0x00200000
+#define ESDCTL_V4_ESDCTLx_COL_8				0x00300000
+#define ESDCTL_V4_ESDCTLx_COL_12			0x00400000
+
+#define ESDCTL_V4_ESDCTLx_BL_MASK			0x00080000
+#define ESDCTL_V4_ESDCTLx_BL_4_RES			0x00000000
+#define ESDCTL_V4_ESDCTLx_BL_8_8			0x00080000
+
+#define ESDCTL_V4_ESDCTLx_DSIZ_MASK			0x00010000
+#define ESDCTL_V4_ESDCTLx_DSIZ_16B_LOW			0x00000000
+#define ESDCTL_V4_ESDCTLx_DSIZ_32B			0x00010000
+
+#define ESDCTL_V4_ESDMISC_CS0_RDY			0x80000000
+#define ESDCTL_V4_ESDMISC_CS1_RDY			0x40000000
+#define ESDCTL_V4_ESDMISC_ONE_CS			0x00100000
+#define ESDCTL_V4_ESDMISC_ADDR_MIRROR			0x00080000
+#define ESDCTL_V4_ESDMISC_LHD				0x00040000
+#define ESDCTL_V4_ESDMISC_WALAT_SHIFT			16
+#define ESDCTL_V4_ESDMISC_WALAT_MASK			(0x3 << ESDCTL_V4_ESDMISC_WALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_WALAT_0			(0x0 << ESDCTL_V4_ESDMISC_WALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_WALAT_1			(0x1 << ESDCTL_V4_ESDMISC_WALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_WALAT_2			(0x2 << ESDCTL_V4_ESDMISC_WALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_WALAT_3			(0x3 << ESDCTL_V4_ESDMISC_WALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_BI_ON				0x00001000
+#define ESDCTL_V4_ESDMISC_MIF3_MODE_MASK		0x00000600
+#define ESDCTL_V4_ESDMISC_MIF3_MODE_DIS			0x00000000
+#define ESDCTL_V4_ESDMISC_MIF3_MODE_EF			0x00000200
+#define ESDCTL_V4_ESDMISC_MIF3_MODE_EFA			0x00000400
+#define ESDCTL_V4_ESDMISC_MIF3_MODE_EFAM		0x00000600
+#define ESDCTL_V4_ESDMISC_RALAT_SHIFT			6
+#define ESDCTL_V4_ESDMISC_RALAT_MASK			(0x7 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_0			(0x0 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_1			(0x1 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_2			(0x2 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_3			(0x3 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_4			(0x4 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_5			(0x5 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_6			(0x6 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+#define ESDCTL_V4_ESDMISC_RALAT_7			(0x7 << ESDCTL_V4_ESDMISC_RALAT_SHIFT)
+
+#define ESDCTL_V4_ESDMISC_DDR_MASK			0x00000818
+#define ESDCTL_V4_ESDMISC_DDR_DDR3			0x00000000
+#define ESDCTL_V4_ESDMISC_DDR_LPDDR2_S4			0x00000008
+#define ESDCTL_V4_ESDMISC_DDR_LPDDR2_S2			0x00000808
+#define ESDCTL_V4_ESDMISC_DDR_DDR2			0x00000010
+
+#define ESDCTL_V4_ESDMISC_BANKS_MASK			0x00000020
+#define ESDCTL_V4_ESDMISC_BANKS_4			0x00000020
+#define ESDCTL_V4_ESDMISC_BANKS_8			0x00000000
+
+#define ESDCTL_V4_ESDMISC_RST				0x00000002
+
+
+#define ESDCTL_V4_ESDRDDLCTL_RD_DL_ABS_OFFSET3_SHIFT	24
+#define ESDCTL_V4_ESDRDDLCTL_RD_DL_ABS_OFFSET2_SHIFT	16
+#define ESDCTL_V4_ESDRDDLCTL_RD_DL_ABS_OFFSET1_SHIFT	8
+#define ESDCTL_V4_ESDRDDLCTL_RD_DL_ABS_OFFSET0_SHIFT	0
+#define ESDCTL_V4_ESDRDDLCTL_RD_DL_ABS_OFFSET_MASK	0xff
+
+#define ESDCTL_V4_ESDRDDLCTL_WR_DL_ABS_OFFSET3_SHIFT	24
+#define ESDCTL_V4_ESDRDDLCTL_WR_DL_ABS_OFFSET2_SHIFT	16
+#define ESDCTL_V4_ESDRDDLCTL_WR_DL_ABS_OFFSET1_SHIFT	8
+#define ESDCTL_V4_ESDRDDLCTL_WR_DL_ABS_OFFSET0_SHIFT	0
+#define ESDCTL_V4_ESDRDDLCTL_WR_DL_ABS_OFFSET_MASK	0xff
+
+
+#define ESDCTL_V4_ESDDGCTRL0_RST_RD_FIFO		0x80000000
+#define ESDCTL_V4_ESDDGCTRL0_DG_CMP_CYC			0x40000000
+#define ESDCTL_V4_ESDDGCTRL0_DG_DIS			0x20000000
+#define ESDCTL_V4_ESDDGCTRL0_HW_DG_EN			0x10000000
+#define ESDCTL_V4_ESDDGCTRL0_DG_HC_DEL1_MASK		0x0f000000
+#define ESDCTL_V4_ESDDGCTRL0_DG_HC_DEL1_SHIFT		24
+#define ESDCTL_V4_ESDDGCTRL0_DG_EXT_UP			0x00800000
+#define ESDCTL_V4_ESDDGCTRL0_DG_DL_ABS_OFFSET1_MASK	0x007f0000
+#define ESDCTL_V4_ESDDGCTRL0_DG_DL_ABS_OFFSET1_SHIFT	16
+#define ESDCTL_V4_ESDDGCTRL0_HW_DG_ERR			0x00001000
+#define ESDCTL_V4_ESDDGCTRL0_DG_HC_DEL0_MASK		0x00000f00
+#define ESDCTL_V4_ESDDGCTRL0_DG_HC_DEL0_SHIFT		8
+#define ESDCTL_V4_ESDDGCTRL0_DG_DL_ABS_OFFSET0_MASK	0x0000007f
+#define ESDCTL_V4_ESDDGCTRL0_DG_DL_ABS_OFFSET0_SHIFT	0
+
+#define ESDCTL_V4_ESDDGCTRL1_DG_HC_DEL3_MASK		0x0f000000
+#define ESDCTL_V4_ESDDGCTRL1_DG_HC_DEL3_SHIFT		24
+#define ESDCTL_V4_ESDDGCTRL1_DG_DL_ABS_OFFSET3_MASK	0x007f0000
+#define ESDCTL_V4_ESDDGCTRL1_DG_DL_ABS_OFFSET3_SHIFT	16
+#define ESDCTL_V4_ESDDGCTRL1_DG_HC_DEL2_MASK		0x00000f00
+#define ESDCTL_V4_ESDDGCTRL1_DG_HC_DEL2_SHIFT		8
+#define ESDCTL_V4_ESDDGCTRL1_DG_DL_ABS_OFFSET2_MASK	0x0000007f
+#define ESDCTL_V4_ESDDGCTRL1_DG_DL_ABS_OFFSET2_SHIFT	0
+
+
+#define ESDCTL_V4_ESDCFG0_tRFC_SHIFT			24
+#define ESDCTL_V4_ESDCFG0_tRFC_MASK			(0xff << ESDCTL_V4_ESDCFG0_tRFC_SHIFT)
+#define ESDCTL_V4_ESDCFG0_tXS_SHIFT			16
+#define ESDCTL_V4_ESDCFG0_tXS_MASK			(0xff << ESDCTL_V4_ESDCFG0_tXS_SHIFT)
+#define ESDCTL_V4_ESDCFG0_tXP_SHIFT			13
+#define ESDCTL_V4_ESDCFG0_tXP_MASK			(0x7 << ESDCTL_V4_ESDCFG0_tXP_SHIFT)
+#define ESDCTL_V4_ESDCFG0_tXPDLL_SHIFT			9
+#define ESDCTL_V4_ESDCFG0_tXPDLL_MASK			(0xf << ESDCTL_V4_ESDCFG0_tXPDLL_SHIFT)
+#define ESDCTL_V4_ESDCFG0_tFAW_SHIFT			4
+#define ESDCTL_V4_ESDCFG0_tFAW_MASK			(0x1f << ESDCTL_V4_ESDCFG0_tFAW_SHIFT)
+#define ESDCTL_V4_ESDCFG0_tCL_SHIFT			0
+#define ESDCTL_V4_ESDCFG0_tCL_MASK			(0xf << ESDCTL_V4_ESDCFG0_tCL_SHIFT)
+
+#define ESDCTL_V4_ESDCFG1_tRCD_SHIFT			29
+#define ESDCTL_V4_ESDCFG1_tRCD_MASK			(0x7 << ESDCTL_V4_ESDCFG1_tRCD_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tRP_SHIFT			26
+#define ESDCTL_V4_ESDCFG1_tRP_MASK			(0x7 << ESDCTL_V4_ESDCFG1_tRP_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tRC_SHIFT			21
+#define ESDCTL_V4_ESDCFG1_tRC_MASK			(0x1f << ESDCTL_V4_ESDCFG1_tRC_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tRAS_SHIFT			16
+#define ESDCTL_V4_ESDCFG1_tRAS_MASK			(0x1f << ESDCTL_V4_ESDCFG1_tRAS_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tRPA_SHIFT			15
+#define ESDCTL_V4_ESDCFG1_tRPA_MASK			(0x1 << ESDCTL_V4_ESDCFG1_tRPA_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tWR_SHIFT			9
+#define ESDCTL_V4_ESDCFG1_tWR_MASK			(0x7 << ESDCTL_V4_ESDCFG1_tWR_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tMRD_SHIFT			5
+#define ESDCTL_V4_ESDCFG1_tMRD_MASK			(0xf << ESDCTL_V4_ESDCFG1_tMRD_SHIFT)
+#define ESDCTL_V4_ESDCFG1_tCWL_SHIFT			0
+#define ESDCTL_V4_ESDCFG1_tCWL_MASK			(0x7 << ESDCTL_V4_ESDCFG1_tCWL_SHIFT)
+
+#define ESDCTL_V4_ESDCFG2_tDLLK_SHIFT			16
+#define ESDCTL_V4_ESDCFG2_tDLLK_MASK			(0x1ff << ESDCTL_V4_ESDCFG2_tDLLK_SHIFT)
+#define ESDCTL_V4_ESDCFG2_tRTP_SHIFT			6
+#define ESDCTL_V4_ESDCFG2_tRTP_MASK			(0x7 << ESDCTL_V4_ESDCFG2_tRTP_SHIFT)
+#define ESDCTL_V4_ESDCFG2_tWTR_SHIFT			3
+#define ESDCTL_V4_ESDCFG2_tWTR_MASK			(0x7 << ESDCTL_V4_ESDCFG2_tWTR_SHIFT)
+#define ESDCTL_V4_ESDCFG2_tRRD_SHIFT			0
+#define ESDCTL_V4_ESDCFG2_tRRD_MASK			(0x7 << ESDCTL_V4_ESDCFG2_tRRD_SHIFT)
+
+#define ESDCTL_V4_ESDRWD_tDAI_SHIFT			16
+#define ESDCTL_V4_ESDRWD_tDAI_MASK			(0x1fff << ESDCTL_V4_ESDRWD_tDAI_SHIFT)
+#define ESDCTL_V4_ESDRWD_RTW_SAME_SHIFT			12
+#define ESDCTL_V4_ESDRWD_RTW_SAME_MASK			(0x7 << ESDCTL_V4_ESDRWD_RTW_SAME_SHIFT)
+#define ESDCTL_V4_ESDRWD_WTR_DIFF_SHIFT			9
+#define ESDCTL_V4_ESDRWD_WTR_DIFF_MASK			(0x7 << ESDCTL_V4_ESDRWD_WTR_DIFF_SHIFT)
+#define ESDCTL_V4_ESDRWD_WTW_DIFF_SHIFT			6
+#define ESDCTL_V4_ESDRWD_WTW_DIFF_MASK			(0x7 << ESDCTL_V4_ESDRWD_WTW_DIFF_SHIFT)
+#define ESDCTL_V4_ESDRWD_RTW_DIFF_SHIFT			3
+#define ESDCTL_V4_ESDRWD_RTW_DIFF_MASK			(0x7 << ESDCTL_V4_ESDRWD_RTW_DIFF_SHIFT)
+#define ESDCTL_V4_ESDRWD_RTR_DIFF_SHIFT			0
+#define ESDCTL_V4_ESDRWD_RTR_DIFF_MASK			(0x7 << ESDCTL_V4_ESDRWD_RTR_DIFF_SHIFT)
+
+#define ESDCTL_V4_ESDOR_tXPR_SHIFT			16
+#define ESDCTL_V4_ESDOR_tXPR_MASK			(0xff << ESDCTL_V4_ESDOR_tXPR_SHIFT)
+#define ESDCTL_V4_ESDOR_SDE_to_RST_SHIFT		8
+#define ESDCTL_V4_ESDOR_SDE_to_RST_MASK			(0x3f << ESDCTL_V4_ESDOR_SDE_to_RST_SHIFT)
+#define ESDCTL_V4_ESDOR_RST_to_CKE_SHIFT		0
+#define ESDCTL_V4_ESDOR_RST_to_CKE_MASK			(0x3f << ESDCTL_V4_ESDOR_RST_to_CKE_SHIFT)
+
+#define ESDCTL_V4_ESDOTC_tAOFPD_SHIFT			27
+#define ESDCTL_V4_ESDOTC_tAOFPD_MASK			(0x7 << ESDCTL_V4_ESDOTC_tAOFPD_SHIFT)
+#define ESDCTL_V4_ESDOTC_tAONPD_SHIFT			24
+#define ESDCTL_V4_ESDOTC_tAONPD_MASK			(0x7 << ESDCTL_V4_ESDOTC_tAONPD_SHIFT)
+#define ESDCTL_V4_ESDOTC_tANPD_SHIFT			20
+#define ESDCTL_V4_ESDOTC_tANPD_MASK			(0xf << ESDCTL_V4_ESDOTC_tANPD_SHIFT)
+#define ESDCTL_V4_ESDOTC_tAXPD_SHIFT			16
+#define ESDCTL_V4_ESDOTC_tAXPD_MASK			(0xf << ESDCTL_V4_ESDOTC_tAXPD_SHIFT)
+#define ESDCTL_V4_ESDOTC_tODTLon_SHIFT			12
+#define ESDCTL_V4_ESDOTC_tODTLon_MASK			(0x7 << ESDCTL_V4_ESDOTC_tODTLon_SHIFT)
+#define ESDCTL_V4_ESDOTC_tODT_idle_off_SHIFT		4
+#define ESDCTL_V4_ESDOTC_tODT_idle_off_MASK		(0x1f << ESDCTL_V4_ESDOTC_tODT_idle_off_SHIFT)
+
+#define ESDCTL_V4_ESDPDC_PRCT1_SHIFT			28
+#define ESDCTL_V4_ESDPDC_PRCT1_MASK			(0x7 << ESDCTL_V4_ESDPDC_PRCT1_SHIFT)
+#define ESDCTL_V4_ESDPDC_PRCT0_SHIFT			24
+#define ESDCTL_V4_ESDPDC_PRCT0_MASK			(0x7 << ESDCTL_V4_ESDPDC_PRCT0_SHIFT)
+#define ESDCTL_V4_ESDPDC_tCKE_SHIFT			16
+#define ESDCTL_V4_ESDPDC_tCKE_MASK			(0x7 << ESDCTL_V4_ESDPDC_tCKE_SHIFT)
+#define ESDCTL_V4_ESDPDC_PWDT1_SHIFT			12
+#define ESDCTL_V4_ESDPDC_PWDT1_MASK			(0xf << ESDCTL_V4_ESDPDC_PWDT1_SHIFT)
+#define ESDCTL_V4_ESDPDC_PWDT0_SHIFT			8
+#define ESDCTL_V4_ESDPDC_PWDT0_MASK			(0xf << ESDCTL_V4_ESDPDC_PWDT0_SHIFT)
+#define ESDCTL_V4_ESDPDC_SLOW_PD			0x00000080
+#define ESDCTL_V4_ESDPDC_BOTH_CS_PD			0x00000040
+#define ESDCTL_V4_ESDPDC_tCKSRX_SHIFT			3
+#define ESDCTL_V4_ESDPDC_tCKSRX_MASK			(0x7 << ESDCTL_V4_ESDPDC_tCKSRX_SHIFT)
+#define ESDCTL_V4_ESDPDC_tCKSRE_SHIFT			0
+#define ESDCTL_V4_ESDPDC_tCKSRE_MASK			(0x7 << ESDCTL_V4_ESDPDC_tCKSRE_SHIFT)
+
+#define ESDCTL_V4_ESDPDC_PRCT_DISABLE			0x0
+#define ESDCTL_V4_ESDPDC_PRCT_2				0x1
+#define ESDCTL_V4_ESDPDC_PRCT_4				0x2
+#define ESDCTL_V4_ESDPDC_PRCT_8				0x3
+#define ESDCTL_V4_ESDPDC_PRCT_16			0x4
+#define ESDCTL_V4_ESDPDC_PRCT_32			0x5
+#define ESDCTL_V4_ESDPDC_PRCT_64			0x6
+#define ESDCTL_V4_ESDPDC_PRCT_128			0x7
+
+#define ESDCTL_V4_ESDPDC_PWDT_DISABLE			0x0
+#define ESDCTL_V4_ESDPDC_PWDT_16			0x1
+#define ESDCTL_V4_ESDPDC_PWDT_32			0x2
+#define ESDCTL_V4_ESDPDC_PWDT_64			0x3
+#define ESDCTL_V4_ESDPDC_PWDT_128			0x4
+#define ESDCTL_V4_ESDPDC_PWDT_256			0x5
+#define ESDCTL_V4_ESDPDC_PWDT_512			0x6
+#define ESDCTL_V4_ESDPDC_PWDT_1024			0x7
+#define ESDCTL_V4_ESDPDC_PWDT_2048			0x8
+#define ESDCTL_V4_ESDPDC_PWDT_4096			0x9
+#define ESDCTL_V4_ESDPDC_PWDT_8192			0xa
+#define ESDCTL_V4_ESDPDC_PWDT_16384			0xb
+#define ESDCTL_V4_ESDPDC_PWDT_32768			0xc
+
+#define ESDCTL_V4_ESDREF_REF_CNT_SHIFT			16
+#define ESDCTL_V4_ESDREF_REF_CNT_MASK			(0xffff << ESDCTL_V4_ESDREF_REF_CNT_SHIFT)
+#define ESDCTL_V4_ESDREF_REF_SEL_MASK			0x0000c000
+#define ESDCTL_V4_ESDREF_REF_SEL_64K			0x00000000
+#define ESDCTL_V4_ESDREF_REF_SEL_32K			0x00001000
+#define ESDCTL_V4_ESDREF_REF_SEL_REFCNT			0x00002000
+#define ESDCTL_V4_ESDREF_REFR_SHIFT			11
+#define ESDCTL_V4_ESDREF_REFR_MASK			(0x7 << ESDCTL_V4_ESDREF_REFR_SHIFT)
+#define ESDCTL_V4_ESDREF_START_REF			0x00000001
+
+#define ESDCTL_V4_ESDZQHWC_ZQ_PARA_EN			0x04000000
+#define ESDCTL_V4_ESDZQHWC_TZQ_CS_SHIFT			23
+#define ESDCTL_V4_ESDZQHWC_TZQ_CS_MASK			(0x7 << ESDCTL_V4_ESDZQHWC_TZQ_CS_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_TZQ_OPER_SHIFT		20
+#define ESDCTL_V4_ESDZQHWC_TZQ_OPER_MASK		(0x7 << ESDCTL_V4_ESDZQHWC_TZQ_OPER_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_TZQ_INIT_SHIFT		17
+#define ESDCTL_V4_ESDZQHWC_TZQ_INIT_MASK		(0x7 << ESDCTL_V4_ESDZQHWC_TZQ_INIT_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_FOR			0x00010000
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PD_RES_SHIFT		11
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PD_RES_MASK		(0x1f << ESDCTL_V4_ESDZQHWC_ZQ_HW_PD_RES_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PU_RES_SHIFT		6
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PU_RES_MASK		(0x1f << ESDCTL_V4_ESDZQHWC_ZQ_HW_PU_RES_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PER_SHIFT		2
+#define ESDCTL_V4_ESDZQHWC_ZQ_HW_PER_MASK		(0xf << ESDCTL_V4_ESDZQHWC_ZQ_HW_PER_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT		0
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_MASK			(0x3 << ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT)
+
+#define ESDCTL_V4_ESDZQHWC_32CYC			0x0
+#define ESDCTL_V4_ESDZQHWC_64CYC			0x1
+#define ESDCTL_V4_ESDZQHWC_128CYC			0x2
+#define ESDCTL_V4_ESDZQHWC_256CYC			0x3
+#define ESDCTL_V4_ESDZQHWC_512CYC			0x4
+#define ESDCTL_V4_ESDZQHWC_1024CYC			0x5
+
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_NO_CAL		(0x0 << ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_BOTH_EXIT		(0x1 << ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_EXTERNAL_PER		(0x2 << ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT)
+#define ESDCTL_V4_ESDZQHWC_ZQ_MODE_BOTH_PER		(0x3 << ESDCTL_V4_ESDZQHWC_ZQ_MODE_SHIFT)
+
+#define ESDCTL_V4_ESDODTC_ODT3_INT_RES_SHIFT		16
+#define ESDCTL_V4_ESDODTC_ODT3_INT_RES_MASK		(0x7 << ESDCTL_V4_ESDODTC_ODT3_INT_RES_SHIFT)
+#define ESDCTL_V4_ESDODTC_ODT2_INT_RES_SHIFT		12
+#define ESDCTL_V4_ESDODTC_ODT2_INT_RES_MASK		(0x7 << ESDCTL_V4_ESDODTC_ODT2_INT_RES_SHIFT)
+#define ESDCTL_V4_ESDODTC_ODT1_INT_RES_SHIFT		8
+#define ESDCTL_V4_ESDODTC_ODT1_INT_RES_MASK		(0x7 << ESDCTL_V4_ESDODTC_ODT1_INT_RES_SHIFT)
+#define ESDCTL_V4_ESDODTC_ODT0_INT_RES_SHIFT		4
+#define ESDCTL_V4_ESDODTC_ODT0_INT_RES_MASK		(0x7 << ESDCTL_V4_ESDODTC_ODT0_INT_RES_SHIFT)
+#define ESDCTL_V4_ESDODTC_ODT_RD_ACT_EN			0x00000008
+#define ESDCTL_V4_ESDODTC_ODT_RD_PAS_EN			0x00000004
+#define ESDCTL_V4_ESDODTC_ODT_WR_ACT_EN			0x00000002
+#define ESDCTL_V4_ESDODTC_ODT_WR_PAS_EN			0x00000001
+
+#define ESDCTL_V4_ESDODTC_RTT_DISABLE			0x0
+#define ESDCTL_V4_ESDODTC_RTT_60			0x1
+#define ESDCTL_V4_ESDODTC_RTT_120			0x2
+#define ESDCTL_V4_ESDODTC_RTT_40			0x3
+#define ESDCTL_V4_ESDODTC_RTT_20			0x4
+#define ESDCTL_V4_ESDODTC_RTT_30			0x5
+
+#define ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT			16
+#define ESDCTL_V4_ESDSCR_CMD_ADDR_MASK			(0xffff << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_ESDSCR_CON_REQ			0x00008000
+#define ESDCTL_V4_ESDSCR_CON_ACK			0x00004000
+#define ESDCTL_V4_ESDSCR_MRR_DATA_VALID			0x00000400
+#define ESDCTL_V4_ESDSCR_WL_EN				0x00000200
+#define ESDCTL_V4_ESDSCR_DLL_RST1			0x00000100
+#define ESDCTL_V4_ESDSCR_DLL_RST0			0x00000080
+#define ESDCTL_V4_ESDSCR_CMD_SHIFT			4
+#define ESDCTL_V4_ESDSCR_CMD_MASK			(0x7 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_NOP			(0x0 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_PRE_ALL			(0x1 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_AREFRESH			(0x2 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_LMR			(0x3 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_ZQCALIB_OLD		(0x4 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_PRE_ALL_OPEN		(0x5 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_MRR			(0x6 << ESDCTL_V4_ESDSCR_CMD_SHIFT)
+#define ESDCTL_V4_ESDSCR_CMD_CS				0x00000008
+#define ESDCTL_V4_ESDSCR_CMD_CS0			0x00000000
+#define ESDCTL_V4_ESDSCR_CMD_CS1			0x00000008
+#define ESDCTL_V4_ESDSCR_CMD_BA_SHIFT			0
+#define ESDCTL_V4_ESDSCR_CMD_BA_MASK			(0x7 << ESDCTL_V4_ESDSCR_CMD_BA_SHIFT)
+
+#define ESDCTL_V4_PDCMPR2_PHY_CA_DL_SHIFT		24
+#define ESDCTL_V4_PDCMPR2_PHY_CA_DL_MASK		(0x7f << ESDCTL_V4_PDCMPR2_PHY_CA_DL_SHIFT)
+#define ESDCTL_V4_PDCMPR2_CA_DL_ABS_SHIFT		16
+#define ESDCTL_V4_PDCMPR2_CA_DL_ABS_MASK		(0x7f << ESDCTL_V4_PDCMPR2_CA_DL_ABS_SHIFT)
+#define ESDCTL_V4_PDCMPR2_RLPAT				0x4
+#define ESDCTL_V4_PDCMPR2_RLPAT_0			0x0
+#define ESDCTL_V4_PDCMPR2_RLPAT_1			0x4
+#define ESDCTL_V4_PDCMPR2_MPR_FULL_CMP			0x2
+#define ESDCTL_V4_PDCMPR2_MPR_CMP			0x1
+
+#define ESDCTL_V4_WLGCR_WL_HW_ERR3			(1 << 11)
+#define ESDCTL_V4_WLGCR_WL_HW_ERR2			(1 << 10)
+#define ESDCTL_V4_WLGCR_WL_HW_ERR1			(1 << 9)
+#define ESDCTL_V4_WLGCR_WL_HW_ERR0			(1 << 8)
+#define ESDCTL_V4_WLGCR_WL_SW_ERR3			(1 << 7)
+#define ESDCTL_V4_WLGCR_WL_SW_ERR2			(1 << 6)
+#define ESDCTL_V4_WLGCR_WL_SW_ERR1			(1 << 5)
+#define ESDCTL_V4_WLGCR_WL_SW_ERR0			(1 << 4)
+#define ESDCTL_V4_WLGCR_SW_WL_CNT_EN			(1 << 2)
+#define ESDCTL_V4_WLGCR_SW_WL_EN			(1 << 1)
+#define ESDCTL_V4_WLGCR_HW_WL_EN			(1 << 1)
+
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_CMP_CYC		(1 << 5)
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_EN			(1 << 4)
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR3			(1 << 3)
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR2			(1 << 2)
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR1			(1 << 1)
+#define ESDCTL_V4_RDDLHWCTL_HW_RDL_ERR0			(1 << 0)
+
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_CMP_CYC		(1 << 5)
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_EN			(1 << 4)
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR3			(1 << 3)
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR2			(1 << 2)
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR1			(1 << 1)
+#define ESDCTL_V4_WRDLHWCTL_HW_WDL_ERR0			(1 << 0)
+
+#define ESDCTL_V4_DDR3_REG_MR0				(0x0 << ESDCTL_V4_ESDSCR_CMD_BA_SHIFT)
+#define ESDCTL_V4_DDR3_REG_MR1				(0x1 << ESDCTL_V4_ESDSCR_CMD_BA_SHIFT)
+#define ESDCTL_V4_DDR3_REG_MR2				(0x2 << ESDCTL_V4_ESDSCR_CMD_BA_SHIFT)
+#define ESDCTL_V4_DDR3_REG_MR3				(0x3 << ESDCTL_V4_ESDSCR_CMD_BA_SHIFT)
+
+#define ESDCTL_V4_DDR3_MR0_PPD				(0x1000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_PPD_SLOW			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_PPD_FAST			(0x1000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_SHIFT			(9 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_MASK			(0x7 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_16			(0x0 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_5				(0x1 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_6				(0x2 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_7				(0x3 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_8				(0x4 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_10			(0x5 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_12			(0x6 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_WR_14			(0x7 << ESDCTL_V4_DDR3_MR0_WR_SHIFT)
+#define ESDCTL_V4_DDR3_DLL_RESET			(0x0100 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_TM				(0x0080 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_TM_NORMAL			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_TM_TEST				(0x0080 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_SHIFT			(2 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_MASK			(0x74 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_5				(0x10 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_6				(0x20 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_7				(0x30 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_8				(0x40 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_9				(0x50 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_10			(0x60 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_11			(0x70 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_12			(0x04 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_13			(0x14 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_14			(0x24 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_15			(0x34 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_CL_16			(0x44 << ESDCTL_V4_DDR3_MR0_CL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_RBT				(0x0008 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_RBT_NIBBLE			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_RBT_INTERL			(0x0008 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_BL_SHIFT			(0 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_BL_MASK			(0x3 << ESDCTL_V4_DDR3_MR0_BL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_BL_FIXED8			(0x0 << ESDCTL_V4_DDR3_MR0_BL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_BL_DYNAMIC			(0x1 << ESDCTL_V4_DDR3_MR0_BL_SHIFT)
+#define ESDCTL_V4_DDR3_MR0_BL_FIXED4			(0x2 << ESDCTL_V4_DDR3_MR0_BL_SHIFT)
+
+#define ESDCTL_V4_DDR3_MR1_QOFF				(0x1000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_TDQS				(0x0800 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_WL				(0x0080 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_AL_SHIFT			(3 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_AL_MASK			(0x3 << ESDCTL_V4_DDR3_MR1_AL_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_AL_DISABLE			(0x0 << ESDCTL_V4_DDR3_MR1_AL_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_AL_CL1			(0x1 << ESDCTL_V4_DDR3_MR1_AL_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_AL_CL2			(0x2 << ESDCTL_V4_DDR3_MR1_AL_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_DLL_DISABLE			(0x0001 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_MASK			(0x0244 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_DIS			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_RZQ4			(0x0004 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_RZQ2			(0x0040 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_RZQ6			(0x0044 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_RZQ12			(0x0200 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_RTTN_RZQ8			(0x0204 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_ODIC_MASK			(0x0022 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_ODIC_RZQ6			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR1_ODIC_RZQ7			(0x0002 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+
+#define ESDCTL_V4_DDR3_MR2_RTTWR_SHIFT			(9 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_RTTWR_MASK			(0x3 << ESDCTL_V4_DDR3_MR2_RTTWR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_RTTWR_OFF			(0x0 << ESDCTL_V4_DDR3_MR2_RTTWR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_RTTWR_RZQ4			(0x1 << ESDCTL_V4_DDR3_MR2_RTTWR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_RTTWR_RZQ2			(0x2 << ESDCTL_V4_DDR3_MR2_RTTWR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_SRT				(0x0080 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_SRT_NORMAL			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_SRT_EXTENDED			(0x0080 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_ASR_ENABLE			(0x0040 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_SHIFT			(3 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_MASK			(0x7 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_5			(0x0 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_6			(0x1 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_7			(0x2 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_8			(0x3 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_9			(0x4 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_10			(0x5 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_11			(0x6 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_CWL_12			(0x7 << ESDCTL_V4_DDR3_MR2_CWL_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_SHIFT			(0 + ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_MASK			(0x7 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_1			(0x0 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_2L			(0x1 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_4L			(0x2 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_8L			(0x3 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_3_4L			(0x4 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_2H			(0x5 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_4H			(0x6 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+#define ESDCTL_V4_DDR3_MR2_PASR_1_8H			(0x7 << ESDCTL_V4_DDR3_MR2_PASR_SHIFT)
+
+#define ESDCTL_V4_DDR3_MR3_MPR_DISABLE			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR3_MPR_ENABLE			(0x0004 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR3_MPR_PATTERN			(0x0000 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR3_MPR_RFU1			(0x0001 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR3_MPR_RFU2			(0x0002 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+#define ESDCTL_V4_DDR3_MR3_MPR_RFU3			(0x0003 << ESDCTL_V4_ESDSCR_CMD_ADDR_SHIFT)
+
+#ifndef __ASSEMBLY__
+
+void imx_esdctlv4_do_write_leveling(void);
+void imx_esdctlv4_do_dqs_gating(void);
+void imx_esdctlv4_do_zq_calibration(void);
+void imx_esdctlv4_start_ddr3_sdram(int cs);
+void imx_esdctlv4_do_read_delay_line_calibration(void);
+void imx_esdctlv4_do_write_delay_line_calibration(void);
+void imx_esdctlv4_set_tRFC_timing(void);
+void imx_esdctlv4_detect_sdrams(void);
+void imx_esdctlv4_init(void);
+
+#endif
+
+#endif /* __MACH_ESDCTL_V4_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
