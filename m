Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000ei-6J
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:42 +0200
Message-Id: <1348484692-24993-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/23] ARM i.MX35: Switch to common clk
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile    |    2 +-
 arch/arm/mach-imx/clk-imx35.c |  186 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx35.c     |    3 +-
 3 files changed, 189 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx35.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index a06ddf5..f7a5ba4 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -5,7 +5,7 @@ obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o clk-imx21.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o clk-imx31.o
-obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
+obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX6) += speed-imx6.o imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
new file mode 100644
index 0000000..d9f88c2
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -0,0 +1,186 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx35-regs.h>
+
+#include "clk.h"
+
+#define CCM_CCMR	0x00
+#define CCM_PDR0	0x04
+#define CCM_PDR1	0x08
+#define CCM_PDR2	0x0C
+#define CCM_PDR3	0x10
+#define CCM_PDR4	0x14
+#define CCM_RCSR	0x18
+#define CCM_MPCTL	0x1C
+#define CCM_PPCTL	0x20
+#define CCM_ACMR	0x24
+#define CCM_COSR	0x28
+#define CCM_CGR0	0x2C
+#define CCM_CGR1	0x30
+#define CCM_CGR2	0x34
+#define CCM_CGR3	0x38
+
+struct arm_ahb_div {
+	unsigned char arm, ahb, sel;
+};
+
+static struct arm_ahb_div clk_consumer[] = {
+	{ .arm = 1, .ahb = 4, .sel = 0},
+	{ .arm = 1, .ahb = 3, .sel = 1},
+	{ .arm = 2, .ahb = 2, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 4, .ahb = 1, .sel = 0},
+	{ .arm = 1, .ahb = 5, .sel = 0},
+	{ .arm = 1, .ahb = 8, .sel = 0},
+	{ .arm = 1, .ahb = 6, .sel = 1},
+	{ .arm = 2, .ahb = 4, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 4, .ahb = 2, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+};
+
+static char hsp_div_532[] = { 4, 8, 3, 0 };
+static char hsp_div_400[] = { 3, 6, 3, 0 };
+
+enum mx35_clks {
+	ckih, mpll, ppll, mpll_075, arm, hsp, hsp_div, hsp_sel, ahb, ipg,
+	arm_per_div, ahb_per_div, ipg_per, uart_sel, uart_div, esdhc_sel,
+	esdhc1_div, esdhc2_div, esdhc3_div, spdif_sel, spdif_div_pre,
+	spdif_div_post, ssi_sel, ssi1_div_pre, ssi1_div_post, ssi2_div_pre,
+	ssi2_div_post, usb_sel, usb_div, nfc_div, asrc_gate, pata_gate,
+	audmux_gate, can1_gate, can2_gate, cspi1_gate, cspi2_gate, ect_gate,
+	edio_gate, emi_gate, epit1_gate, epit2_gate, esai_gate, esdhc1_gate,
+	esdhc2_gate, esdhc3_gate, fec_gate, gpio1_gate, gpio2_gate, gpio3_gate,
+	gpt_gate, i2c1_gate, i2c2_gate, i2c3_gate, iomuxc_gate, ipu_gate,
+	kpp_gate, mlb_gate, mshc_gate, owire_gate, pwm_gate, rngc_gate,
+	rtc_gate, rtic_gate, scc_gate, sdma_gate, spba_gate, spdif_gate,
+	ssi1_gate, ssi2_gate, uart1_gate, uart2_gate, uart3_gate, usbotg_gate,
+	wdog_gate, max_gate, admux_gate, csi_gate, iim_gate, gpu2d_gate,
+	clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *std_sel[] = {
+	"ppll",
+	"arm",
+};
+
+static const char *ipg_per_sel[] = {
+	"ahb_per_div",
+	"arm_per_div",
+};
+
+static int imx35_ccm_probe(struct device_d *dev)
+{
+	u32 pdr0, consumer_sel, hsp_sel;
+	struct arm_ahb_div *aad;
+	unsigned char *hsp_div;
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+
+	writel(0xffffffff, base + CCM_CGR0);
+	writel(0xffffffff, base + CCM_CGR1);
+	writel(0xffffffff, base + CCM_CGR2);
+	writel(0xffffffff, base + CCM_CGR3);
+
+	pdr0 = __raw_readl(base + CCM_PDR0);
+	consumer_sel = (pdr0 >> 16) & 0xf;
+	aad = &clk_consumer[consumer_sel];
+	if (!aad->arm) {
+		pr_err("i.MX35 clk: illegal consumer mux selection 0x%x\n", consumer_sel);
+		/*
+		 * We are basically stuck. Continue with a default entry and hope we
+		 * get far enough to actually show the above message
+		 */
+		aad = &clk_consumer[0];
+	}
+
+	clks[ckih] = clk_fixed("ckih", 24000000);
+	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
+	clks[ppll] = imx_clk_pllv1("ppll", "ckih", base + CCM_PPCTL);
+
+	clks[mpll_075] = imx_clk_fixed_factor("mpll_075", "mpll", 3, 4);
+
+	if (aad->sel)
+		clks[arm] = imx_clk_fixed_factor("arm", "mpll_075", 1, aad->arm);
+	else
+		clks[arm] = imx_clk_fixed_factor("arm", "mpll", 1, aad->arm);
+
+	if (clk_get_rate(clks[arm]) > 400000000)
+		hsp_div = hsp_div_532;
+	else
+		hsp_div = hsp_div_400;
+
+	hsp_sel = (pdr0 >> 20) & 0x3;
+	if (!hsp_div[hsp_sel]) {
+		pr_err("i.MX35 clk: illegal hsp clk selection 0x%x\n", hsp_sel);
+		hsp_sel = 0;
+	}
+
+	clks[hsp] = imx_clk_fixed_factor("hsp", "arm", 1, hsp_div[hsp_sel]);
+
+	clks[ahb] = imx_clk_fixed_factor("ahb", "arm", 1, aad->ahb);
+	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+
+	clks[arm_per_div] = imx_clk_divider("arm_per_div", "arm", base + CCM_PDR4, 16, 6);
+	clks[ahb_per_div] = imx_clk_divider("ahb_per_div", "ahb", base + CCM_PDR0, 12, 3);
+	clks[ipg_per] = imx_clk_mux("ipg_per", base + CCM_PDR0, 26, 1, ipg_per_sel, ARRAY_SIZE(ipg_per_sel));
+
+	clks[uart_sel] = imx_clk_mux("uart_sel", base + CCM_PDR3, 14, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[uart_div] = imx_clk_divider("uart_div", "uart_sel", base + CCM_PDR4, 10, 6);
+
+	clks[esdhc_sel] = imx_clk_mux("esdhc_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[esdhc1_div] = imx_clk_divider("esdhc1_div", "esdhc_sel", base + CCM_PDR3, 0, 6);
+	clks[esdhc2_div] = imx_clk_divider("esdhc2_div", "esdhc_sel", base + CCM_PDR3, 8, 6);
+	clks[esdhc3_div] = imx_clk_divider("esdhc3_div", "esdhc_sel", base + CCM_PDR3, 16, 6);
+
+	clks[usb_sel] = imx_clk_mux("usb_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[usb_div] = imx_clk_divider("usb_div", "usb_sel", base + CCM_PDR4, 22, 6);
+
+	clkdev_add_physbase(clks[uart_div], MX35_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_div], MX35_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_div], MX35_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc1_div], MX35_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc2_div], MX35_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc3_div], MX35_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hsp], MX35_IPU_CTRL_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static struct driver_d imx35_ccm_driver = {
+	.probe	= imx35_ccm_probe,
+	.name	= "imx35-ccm",
+};
+
+static int imx35_ccm_init(void)
+{
+	return register_driver(&imx35_ccm_driver);
+}
+postcore_initcall(imx35_ccm_init);
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 2a9f576..722dd4c 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -61,6 +61,7 @@ static int imx35_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx35-ccm", 0, NULL, MX35_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX35_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX35_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 1, NULL, MX35_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -68,4 +69,4 @@ static int imx35_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx35_init);
+postcore_initcall(imx35_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
