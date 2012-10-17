Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027G-FT
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:14 +0200
Message-Id: <1350507817-7819-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/28] ARM i.MX Add functions to get sdram base and size
To: barebox@lists.infradead.org

The code initializing the SDRAM controller is not at the same
place where SDRAM is registered with barebox. To reduce the
risk of registering wrong SDRAM sizes add functions to read
back the sizes from the SDRAM controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile              |    3 +-
 arch/arm/mach-imx/esdctl.c              |  273 +++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                |    2 +
 arch/arm/mach-imx/include/mach/esdctl.h |   13 ++
 4 files changed, 290 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/esdctl.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 259733e..6bc2b79 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_NAND_IMX) += nand.o
 obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 pbl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
-obj-y += devices.o imx.o
+obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
+pbl-y += esdctl.o
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
new file mode 100644
index 0000000..1e1ede1
--- /dev/null
+++ b/arch/arm/mach-imx/esdctl.c
@@ -0,0 +1,273 @@
+/*
+ * esdctl.c - i.MX sdram controller functions
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on Linux devicetree support
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
+#include <common.h>
+#include <io.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
+#include <mach/imx1-regs.h>
+#include <mach/imx21-regs.h>
+#include <mach/imx25-regs.h>
+#include <mach/imx27-regs.h>
+#include <mach/imx31-regs.h>
+#include <mach/imx35-regs.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
+
+static inline unsigned long imx_v1_sdram_size(void __iomem *esdctlbase, int num)
+{
+	void __iomem *esdctl = esdctlbase + (num ? 4 : 0);
+	u32 ctlval = readl(esdctl);
+	unsigned long size;
+	int rows, cols, width = 2, banks = 4;
+
+	if (!(ctlval & ESDCTL0_SDE))
+		/* SDRAM controller disabled, so no RAM here */
+		return 0;
+
+	rows = ((ctlval >> 24) & 0x3) + 11;
+	cols = ((ctlval >> 20) & 0x3) + 8;
+
+	if (ctlval & (1 << 17))
+		width = 4;
+
+	size = (1 << cols) * (1 << rows) * banks * width;
+
+	if (size > SZ_64M)
+		size = SZ_64M;
+
+	return size;
+}
+
+static inline unsigned long imx_v2_sdram_size(void __iomem *esdctlbase, int num)
+{
+	void __iomem *esdctl = esdctlbase + (num ? IMX_ESDCTL1 : IMX_ESDCTL0);
+	u32 ctlval = readl(esdctl);
+	unsigned long size;
+	int rows, cols, width = 2, banks = 4;
+
+	if (!(ctlval & ESDCTL0_SDE))
+		/* SDRAM controller disabled, so no RAM here */
+		return 0;
+
+	rows = ((ctlval >> 24) & 0x7) + 11;
+	cols = ((ctlval >> 20) & 0x3) + 8;
+
+	if ((ctlval & ESDCTL0_DSIZ_MASK) == ESDCTL0_DSIZ_31_0)
+		width = 4;
+
+	size = (1 << cols) * (1 << rows) * banks * width;
+
+	if (size > SZ_256M)
+		size = SZ_256M;
+
+	return size;
+}
+
+static inline unsigned long imx_v3_sdram_size(void __iomem *esdctlbase, int num)
+{
+	unsigned long size;
+
+	size = imx_v2_sdram_size(esdctlbase, num);
+
+	if (readl(esdctlbase + IMX_ESDMISC) & (1 << 6))
+		size *= 2;
+
+	if (size > SZ_256M)
+		size = SZ_256M;
+
+	return size;
+}
+
+#define IMX_ESDCTL_V4_ESDCTL	0x0
+#define ESDCTL_V4_ESDCTL_DSIZ		(1 << 16)
+
+#define IMX_ESDCTL_V4_ESDMISC	0x18
+#define ESDCTL_V4_ESDMISC_DDR_4_BANK	(1 << 5)
+#define ESDCTL_V4_ESDMISC_ONECS		(1 << 20)
+
+#define ESDCTL_V4_ESDCTL_SDE_0	1 /* FIXME */
+#define ESDCTL_V4_ESDMISC_BI	1 /* FIXME */
+
+static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase)
+{
+	u32 ctlval = readl(esdctlbase + IMX_ESDCTL_V4_ESDCTL);
+	u32 esdmisc = readl(esdctlbase + IMX_ESDCTL_V4_ESDMISC);
+	unsigned long size;
+	int rows, cols, width = 2, banks = 8;
+
+	if (!(ctlval & ESDCTL_V4_ESDCTL_SDE_0))
+		return 0;
+
+	rows = ((ctlval >> 24) & 0x7) + 11;
+	switch ((ctlval >> 20) & 0x7) {
+	case 0:
+		cols = 9;
+		break;
+	case 1:
+		cols = 10;
+		break;
+	case 2:
+		cols = 11;
+		break;
+	case 3:
+		cols = 8;
+		break;
+	case 4:
+		cols = 12;
+		break;
+	default:
+		cols = 0;
+		break;
+	}
+
+	if (ctlval & ESDCTL_V4_ESDCTL_DSIZ)
+		width = 4;
+
+	if (esdmisc & ESDCTL_V4_ESDMISC_DDR_4_BANK)
+		banks = 4;
+
+	size = (1 << cols) * (1 << rows) * banks * width;
+
+	/* second cs not enabled, return size */
+	if (!(ctlval & ESDCTL_V4_ESDCTL_SDE_0))
+		return size;
+
+	/* one 2GiB cs, return size */
+	if (esdmisc & ESDCTL_V4_ESDMISC_ONECS)
+		return size;
+
+	/* interleaved, double size */
+	if (esdmisc & ESDCTL_V4_ESDMISC_BI)
+		return size * 2;
+
+	/* two areas with hole, return first area size */
+	if (size < SZ_1G)
+		return size;
+
+	/* both cs, 2 * 1GiB */
+	return size * 2;
+}
+
+/*
+ * The i.MX SoCs usually have two SDRAM chipselects. The following
+ * SoC specific functions return:
+ *
+ * - cs0 disabled, cs1 disabled: 0
+ * - cs0 enabled, cs1 disabled: SDRAM size for cs0
+ * - cs0 disabled, c1 enabled: 0 (currently assumed that no hardware does this)
+ * - cs0 enabled, cs1 enabled: The largest continuous region, that is, cs0 + cs1
+ *                             if cs0 is taking the whole address space.
+ */
+void __naked imx1_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = 0x08000000;
+
+	size = imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0);
+	if (size == SZ_64M)
+		size += imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx25_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX25_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx27_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX27_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx31_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX31_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx35_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX35_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx51_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX51_CSD0_BASE_ADDR;
+
+	size = imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked imx53_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX53_CSD0_BASE_ADDR;
+
+	size = imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR);
+
+	barebox_arm_entry(base, size, boarddata);
+}
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 18901ea..59cff28 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -49,6 +49,8 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 	writel(lower, MX1_EIM_BASE_ADDR + 4 + cs * 8);
 }
 
+#include <mach/esdctl.h>
+
 static int imx1_init(void)
 {
 	imx_iomuxv1_init((void *)MX1_GPIO1_BASE_ADDR);
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 8124c87..c31831b 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -26,6 +26,7 @@
 #define ESDCTL0_DSIZ_31_16			(0 << 16)
 #define ESDCTL0_DSIZ_15_0			(1 << 16)
 #define ESDCTL0_DSIZ_31_0			(2 << 16)
+#define ESDCTL0_DSIZ_MASK			(3 << 16)
 #define ESDCTL0_REF1				(1 << 13)
 #define ESDCTL0_REF2				(2 << 13)
 #define ESDCTL0_REF4				(3 << 13)
@@ -124,3 +125,15 @@
 //#define ESDCFGx_tRC_14		0x0000000e	// 15 seems to not exist
 #define ESDCFGx_tRC_16			0x0000000f
 
+#ifndef __ASSEMBLY__
+
+void __naked imx1_barebox_entry(uint32_t boarddata);
+void __naked imx21_barebox_entry(uint32_t boarddata);
+void __naked imx25_barebox_entry(uint32_t boarddata);
+void __naked imx27_barebox_entry(uint32_t boarddata);
+void __naked imx31_barebox_entry(uint32_t boarddata);
+void __naked imx35_barebox_entry(uint32_t boarddata);
+void __naked imx51_barebox_entry(uint32_t boarddata);
+void __naked imx53_barebox_entry(uint32_t boarddata);
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
