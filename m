Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdS5Q-00072c-6o
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:48:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:48:46 +0100
Message-Id: <1354049328-3534-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354049328-3534-1-git-send-email-s.hauer@pengutronix.de>
References: <1354049328-3534-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM i.MX: Add driver to get sdram base and size
To: barebox@lists.infradead.org

The code initializing the SDRAM controller is not at the same
place where SDRAM is registered with barebox. To reduce the
risk of registering wrong SDRAM sizes this patch adds a
driver for the ESDCTL which reads back the configured SDRAM
size and registers the memory found with barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile                 |    3 +-
 arch/arm/mach-imx/esdctl.c                 |  348 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx1.c                   |    2 +
 arch/arm/mach-imx/include/mach/esdctl.h    |    1 +
 arch/arm/mach-imx/include/mach/imx1-regs.h |    3 +
 5 files changed, 356 insertions(+), 1 deletion(-)
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
index 0000000..99b7f80
--- /dev/null
+++ b/arch/arm/mach-imx/esdctl.c
@@ -0,0 +1,348 @@
+/*
+ * esdctl.c - i.MX sdram controller functions
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
+#include <sizes.h>
+#include <init.h>
+#include <asm/barebox-arm.h>
+#include <asm/memory.h>
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
+struct imx_esdctl_data {
+	unsigned long base0;
+	unsigned long base1;
+	void (*add_mem)(void *esdctlbase, struct imx_esdctl_data *);
+};
+
+/*
+ * v1 - found on i.MX1
+ */
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
+/*
+ * v2 - found on i.MX25, i.MX27, i.MX31 and i.MX35
+ */
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
+/*
+ * v3 - found on i.MX51
+ */
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
+#define IMX_ESDCTL_V4_ESDMISC	0x18
+
+#define ESDCTL_V4_ESDCTL_DSIZ		(1 << 16)
+#define ESDCTL_V4_ESDMISC_DDR_4_BANK	(1 << 5)
+#define ESDCTL_V4_ESDMISC_ONECS		(1 << 20)
+
+#define ESDCTL_V4_ESDCTL_SDE_0		(1 << 31)
+#define ESDCTL_V4_ESDCTL_SDE_1		(1 << 30)
+#define ESDCTL_V4_ESDMISC_BI		(1 << 12)
+
+/*
+ * v4 - found on i.MX53
+ */
+static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
+{
+	u32 ctlval = readl(esdctlbase + IMX_ESDCTL_V4_ESDCTL);
+	u32 esdmisc = readl(esdctlbase + IMX_ESDCTL_V4_ESDMISC);
+	unsigned long size;
+	int rows, cols, width = 2, banks = 8;
+
+	if (cs == 0 && !(ctlval & ESDCTL_V4_ESDCTL_SDE_0))
+		return 0;
+	if (cs == 1 && !(ctlval & ESDCTL_V4_ESDCTL_SDE_1))
+		return 0;
+
+	/* one 2GiB cs, memory is returned for cs0 only */
+	if (cs == 1 && (esdmisc & ESDCTL_V4_ESDMISC_ONECS))
+		return 9;
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
+	/* bank interleaved, double size */
+	if (esdmisc & ESDCTL_V4_ESDMISC_BI)
+		return size * 2;
+
+	return size;
+}
+
+static void add_mem(unsigned long base0, unsigned long size0,
+		unsigned long base1, unsigned long size1)
+{
+	debug("%s: cs0 base: 0x%08x cs0 size: 0x%08x\n", __func__, base0, size0);
+	debug("%s: cs1 base: 0x%08x cs1 size: 0x%08x\n", __func__, base1, size1);
+
+	if (base0 + size0 == base1 && size1 > 0) {
+		/*
+		 * concatenate both chip selects to a single bank
+		 */
+		arm_add_mem_device("ram0", base0, size0 + size1);
+
+		return;
+	}
+
+	if (size0)
+		arm_add_mem_device("ram0", base0, size0);
+
+	if (size1)
+		arm_add_mem_device(size0 ? "ram1" : "ram0", base1, size1);
+}
+
+static void imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+{
+	add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
+			data->base1, imx_v1_sdram_size(esdctlbase, 1));
+}
+
+static void imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+{
+	add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
+			data->base1, imx_v2_sdram_size(esdctlbase, 1));
+}
+
+static void imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+{
+	add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
+			data->base1, imx_v3_sdram_size(esdctlbase, 1));
+}
+
+static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+{
+	add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
+			data->base1, imx_v4_sdram_size(esdctlbase, 1));
+}
+
+static __maybe_unused struct imx_esdctl_data imx1_data = {
+	.base0 = MX1_CSD0_BASE_ADDR,
+	.base1 = MX1_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v1_add_mem,
+};
+
+static int imx_esdctl_probe(struct device_d *dev)
+{
+	struct imx_esdctl_data *data;
+	int ret;
+	void *base;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&data);
+	if (ret)
+		return ret;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -ENOMEM;
+
+	data->add_mem(base, data);
+
+	return 0;
+}
+
+static __maybe_unused struct imx_esdctl_data imx25_data = {
+	.base0 = MX25_CSD0_BASE_ADDR,
+	.base1 = MX25_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v2_add_mem,
+};
+
+static __maybe_unused struct imx_esdctl_data imx27_data = {
+	.base0 = MX27_CSD0_BASE_ADDR,
+	.base1 = MX27_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v2_add_mem,
+};
+
+static __maybe_unused struct imx_esdctl_data imx31_data = {
+	.base0 = MX31_CSD0_BASE_ADDR,
+	.base1 = MX31_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v2_add_mem,
+};
+
+static __maybe_unused struct imx_esdctl_data imx35_data = {
+	.base0 = MX35_CSD0_BASE_ADDR,
+	.base1 = MX35_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v2_add_mem,
+};
+
+static __maybe_unused struct imx_esdctl_data imx51_data = {
+	.base0 = MX51_CSD0_BASE_ADDR,
+	.base1 = MX51_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v3_add_mem,
+};
+
+static __maybe_unused struct imx_esdctl_data imx53_data = {
+	.base0 = MX53_CSD0_BASE_ADDR,
+	.base1 = MX53_CSD1_BASE_ADDR,
+	.add_mem = imx_esdctl_v4_add_mem,
+};
+
+static struct platform_device_id imx_esdctl_ids[] = {
+#ifdef CONFIG_ARCH_IMX1
+	{
+		.name = "imx1-sdramc",
+		.driver_data = (unsigned long)&imx1_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX25
+	{
+		.name = "imx25-esdctl",
+		.driver_data = (unsigned long)&imx25_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	{
+		.name = "imx27-esdctl",
+		.driver_data = (unsigned long)&imx27_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	{
+		.name = "imx31-esdctl",
+		.driver_data = (unsigned long)&imx31_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	{
+		.name = "imx35-esdctl",
+		.driver_data = (unsigned long)&imx35_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX51
+	{
+		.name = "imx51-esdctl",
+		.driver_data = (unsigned long)&imx51_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX53
+	{
+		.name = "imx53-esdctl",
+		.driver_data = (unsigned long)&imx53_data,
+	},
+#endif
+	{
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_serial_driver = {
+	.name   = "imx-esdctl",
+	.probe  = imx_esdctl_probe,
+	.id_table = imx_esdctl_ids,
+};
+
+static int imx_esdctl_init(void)
+{
+	return platform_driver_register(&imx_serial_driver);
+}
+
+mem_initcall(imx_esdctl_init);
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
index 8124c87..1aec2a8 100644
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
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index df6ede5..69e57e3 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -4,6 +4,9 @@
 #define MX1_IO_BASE_ADDR	0x00200000
 #define MX1_IO_SIZE		SZ_1M
 
+#define MX1_CSD0_BASE_ADDR	0x08000000
+#define MX1_CSD1_BASE_ADDR	0x0c000000
+
 #define MX1_CS0_PHYS		0x10000000
 #define MX1_CS0_SIZE		0x02000000
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
