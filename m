Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000eh-6w
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:41 +0200
Message-Id: <1348484692-24993-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/23] ARM i.MX21: Switch to common clk
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile    |    2 +-
 arch/arm/mach-imx/clk-imx21.c |  119 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx21.c     |    1 +
 3 files changed, 121 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/clk-imx21.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 9d00c56..a06ddf5 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -2,7 +2,7 @@ obj-y += clocksource.o gpio.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o clk-imx25.o
-obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
+obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o clk-imx21.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
new file mode 100644
index 0000000..09000af
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -0,0 +1,119 @@
+/*
+ * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
+ * Copyright 2008 Juergen Beisert, kernel@pengutronix.de
+ * Copyright 2008 Martin Fuzzey, mfuzzey@gmail.com
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
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx21-regs.h>
+
+#include "clk.h"
+
+/* Register offsets */
+#define CCM_CSCR		0x0
+#define CCM_MPCTL0		0x4
+#define CCM_MPCTL1		0x8
+#define CCM_SPCTL0		0xc
+#define CCM_SPCTL1		0x10
+#define CCM_OSC26MCTL		0x14
+#define CCM_PCDR0		0x18
+#define CCM_PCDR1		0x1c
+#define CCM_PCCR0		0x20
+#define CCM_PCCR1		0x24
+#define CCM_CCSR		0x28
+#define CCM_PMCTL		0x2c
+#define CCM_PMCOUNT		0x30
+#define CCM_WKGDCTL		0x34
+
+enum imx21_clks {
+	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
+	per2, per3, per4, usb_div, nfc_div, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *mpll_sel_clks[] = {
+	"fpm",
+	"ckih",
+};
+
+static const char *spll_sel_clks[] = {
+	"fpm",
+	"ckih",
+};
+
+static int imx21_ccm_probe(struct device_d *dev)
+{
+	void __iomem *base;
+	unsigned long lref = 32768;
+	unsigned long href = 26000000;
+
+	base = dev_request_mem_region(dev, 0);
+
+	clks[ckil] = clk_fixed("ckil", lref);
+	clks[ckih] = clk_fixed("ckih", href);
+	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 512, 1);
+	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
+			ARRAY_SIZE(mpll_sel_clks));
+	clks[spll_sel] = imx_clk_mux("spll_sel", base + CCM_CSCR, 17, 1, spll_sel_clks,
+			ARRAY_SIZE(spll_sel_clks));
+	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "spll_sel", base + CCM_SPCTL0);
+	clks[fclk] = imx_clk_divider("fclk", "mpll", base + CCM_CSCR, 29, 3);
+	clks[hclk] = imx_clk_divider("hclk", "fclk", base + CCM_CSCR, 10, 4);
+	clks[ipg] = imx_clk_divider("ipg", "hclk", base + CCM_CSCR, 9, 1);
+	clks[per1] = imx_clk_divider("per1", "mpll", base + CCM_PCDR1, 0, 6);
+	clks[per2] = imx_clk_divider("per2", "mpll", base + CCM_PCDR1, 8, 6);
+	clks[per3] = imx_clk_divider("per3", "mpll", base + CCM_PCDR1, 16, 6);
+	clks[per4] = imx_clk_divider("per4", "mpll", base + CCM_PCDR1, 24, 6);
+	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 26, 3);
+	clks[nfc_div] = imx_clk_divider("nfc_div", "ipg", base + CCM_PCDR0, 12, 4);
+
+	clkdev_add_physbase(clks[ipg], MX21_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3], MX21_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3], MX21_LCDC_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static struct driver_d imx21_ccm_driver = {
+	.probe	= imx21_ccm_probe,
+	.name	= "imx21-ccm",
+};
+
+static int imx21_ccm_init(void)
+{
+	return register_driver(&imx21_ccm_driver);
+}
+postcore_initcall(imx21_ccm_init);
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 5448ca4..7ed0809 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -33,6 +33,7 @@ int imx_silicon_revision(void)
 
 static int imx21_init(void)
 {
+	add_generic_device("imx21-ccm", 0, NULL, MX21_CCM_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX21_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 1, NULL, MX21_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
