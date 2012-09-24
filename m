Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000ec-I6
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:39 +0200
Message-Id: <1348484692-24993-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/23] ARM i.MX31: Switch to common clk
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile    |    2 +-
 arch/arm/mach-imx/clk-imx31.c |  133 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx31.c     |    3 +-
 3 files changed, 136 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx31.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 994159d..db203e8 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
-obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
+obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o clk-imx5.o
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
new file mode 100644
index 0000000..6c181a1
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -0,0 +1,133 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx31-regs.h>
+
+#include "clk.h"
+
+/* Register addresses */
+#define CCM_CCMR		0x00
+#define CCM_PDR0		0x04
+#define CCM_PDR1		0x08
+//#define CCM_RCSR		0x0C
+#define CCM_MPCTL		0x10
+#define CCM_UPCTL		0x14
+#define CCM_SRPCTL		0x18
+#define CCM_COSR		0x1C
+#define CCM_CGR0		0x20
+#define CCM_CGR1		0x24
+#define CCM_CGR2		0x28
+#define CCM_WIMR		0x2C
+#define CCM_LDC		0x30
+#define CCM_DCVR0		0x34
+#define CCM_DCVR1		0x38
+#define CCM_DCVR2		0x3C
+#define CCM_DCVR3		0x40
+#define CCM_LTR0		0x44
+#define CCM_LTR1		0x48
+#define CCM_LTR2		0x4C
+#define CCM_LTR3		0x50
+#define CCM_LTBR0		0x54
+#define CCM_LTBR1		0x58
+#define CCM_PMCR0		0x5C
+#define CCM_PMCR1		0x60
+#define CCM_PDR2		0x64
+
+enum mx31_clks {
+	ckih, ckil, mpll, spll, upll, mcu_main, hsp, ahb, nfc, ipg, per_div,
+	per, csi, fir, csi_div, usb_div_pre, usb_div_post, fir_div_pre,
+	fir_div_post, sdhc1_gate, sdhc2_gate, gpt_gate, epit1_gate, epit2_gate,
+	iim_gate, ata_gate, sdma_gate, cspi3_gate, rng_gate, uart1_gate,
+	uart2_gate, ssi1_gate, i2c1_gate, i2c2_gate, i2c3_gate, hantro_gate,
+	mstick1_gate, mstick2_gate, csi_gate, rtc_gate, wdog_gate, pwm_gate,
+	sim_gate, ect_gate, usb_gate, kpp_gate, ipu_gate, uart3_gate,
+	uart4_gate, uart5_gate, owire_gate, ssi2_gate, cspi1_gate, cspi2_gate,
+	gacc_gate, emi_gate, rtic_gate, firi_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *mcu_main_sel[] = {
+	"spll",
+	"mpll",
+};
+
+static const char *per_sel[] = {
+	"per_div",
+	"ipg",
+};
+
+static int imx31_ccm_probe(struct device_d *dev)
+{
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+
+	writel(0xffffffff, base + CCM_CGR0);
+	writel(0xffffffff, base + CCM_CGR1);
+	writel(0xffffffff, base + CCM_CGR2);
+
+	clks[ckih] = clk_fixed("ckih", 26000000);
+	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
+	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SRPCTL);
+	clks[upll] = imx_clk_pllv1("upll", "ckih", base + CCM_UPCTL);
+	clks[mcu_main] = imx_clk_mux("mcu_main", base + CCM_PMCR0, 31, 1,
+			mcu_main_sel, ARRAY_SIZE(mcu_main_sel));
+	clks[hsp] = imx_clk_divider("hsp", "mcu_main", base + CCM_PDR0, 11, 3);
+	clks[ahb] = imx_clk_divider("ahb", "mcu_main", base + CCM_PDR0, 3, 3);
+	clks[nfc] = imx_clk_divider("nfc", "ahb", base + CCM_PDR0, 8, 3);
+	clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_PDR0, 6, 2);
+	clks[per_div] = imx_clk_divider("per_div", "upll", base + CCM_PDR0, 16, 5);
+	clks[per] = imx_clk_mux("per", base + CCM_CCMR, 24, 1, per_sel, ARRAY_SIZE(per_sel));
+
+	clkdev_add_physbase(clks[per], MX31_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hsp], MX31_IPU_CTRL_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static struct driver_d imx31_ccm_driver = {
+	.probe	= imx31_ccm_probe,
+	.name	= "imx31-ccm",
+};
+
+static int imx31_ccm_init(void)
+{
+	return register_driver(&imx31_ccm_driver);
+}
+postcore_initcall(imx31_ccm_init);
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 11d8f49..90eee0a 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -31,6 +31,7 @@ static int imx31_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-ccm", 0, NULL, MX31_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX31_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX31_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 1, NULL, MX31_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -38,4 +39,4 @@ static int imx31_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx31_init);
+postcore_initcall(imx31_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
