Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000ee-Ly
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:38 +0200
Message-Id: <1348484692-24993-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/23] ARM i.MX1: Switch to common clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile   |    2 +-
 arch/arm/mach-imx/clk-imx1.c |  108 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx1.c     |    3 +-
 3 files changed, 111 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx1.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 282913d..994159d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,6 +1,6 @@
 obj-y += clocksource.o gpio.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
-obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o
+obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
new file mode 100644
index 0000000..30906bf
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -0,0 +1,108 @@
+/*
+ *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx1-regs.h>
+
+#include "clk.h"
+
+#define CCM_CSCR	0x0
+#define CCM_MPCTL0	0x4
+#define CCM_SPCTL0	0xc
+#define CCM_PCDR	0x20
+
+enum imx1_clks {
+	dummy, clk32, clk16m, clk32_premult, prem, mpll, spll, mcu,
+	fclk, hclk, clk48m, per1, per2, per3, clko, dma_gate, csi_gate,
+	mma_gate, usbd_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *prem_sel_clks[] = {
+	"clk32_premult",
+	"clk16m",
+};
+
+static const char *clko_sel_clks[] = {
+	"per1",
+	"hclk",
+	"clk48m",
+	"clk16m",
+	"prem",
+	"fclk",
+};
+
+int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
+{
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[clk32] = clk_fixed("clk32", fref);
+	clks[clk16m] = clk_fixed("clk16m", 16000000);
+	clks[clk32_premult] = imx_clk_fixed_factor("clk32_premult", "clk32", 512, 1);
+	clks[prem] = imx_clk_mux("prem", regs + CCM_CSCR, 16, 1, prem_sel_clks,
+			ARRAY_SIZE(prem_sel_clks));
+	clks[mpll] = imx_clk_pllv1("mpll", "clk32_premult", regs + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "prem", regs + CCM_SPCTL0);
+	clks[mcu] = imx_clk_divider("mcu", "clk32_premult", regs + CCM_CSCR, 15, 1);
+	clks[fclk] = imx_clk_divider("fclk", "mpll", regs + CCM_CSCR, 15, 1);
+	clks[hclk] = imx_clk_divider("hclk", "spll", regs + CCM_CSCR, 10, 4);
+	clks[clk48m] = imx_clk_divider("clk48m", "spll", regs + CCM_CSCR, 26, 3);
+	clks[per1] = imx_clk_divider("per1", "spll", regs + CCM_PCDR, 0, 4);
+	clks[per2] = imx_clk_divider("per2", "spll", regs + CCM_PCDR, 4, 4);
+	clks[per3] = imx_clk_divider("per3", "spll", regs + CCM_PCDR, 16, 7);
+	clks[clko] = imx_clk_mux("clko", regs + CCM_CSCR, 29, 3, clko_sel_clks,
+			ARRAY_SIZE(clko_sel_clks));
+
+	clkdev_add_physbase(clks[hclk], MX1_TIM1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hclk], MX1_TIM2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX1_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX1_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hclk], MX1_I2C_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static int imx1_ccm_probe(struct device_d *dev)
+{
+	void __iomem *regs;
+
+	regs = dev_request_mem_region(dev, 0);
+
+	mx1_clocks_init(regs, 32000);
+
+	return 0;
+}
+
+static struct driver_d imx1_ccm_driver = {
+	.probe	= imx1_ccm_probe,
+	.name	= "imx1-ccm",
+};
+
+static int imx1_ccm_init(void)
+{
+	return register_driver(&imx1_ccm_driver);
+}
+postcore_initcall(imx1_ccm_init);
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 536a9ad..790e453 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -25,6 +25,7 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 
 static int imx1_init(void)
 {
+	add_generic_device("imx1-ccm", 0, NULL, MX1_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, MX1_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
@@ -33,4 +34,4 @@ static int imx1_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx1_init);
+postcore_initcall(imx1_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
