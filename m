Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000eb-7c
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:36 +0200
Message-Id: <1348484692-24993-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/23] ARM i.MX25: Switch to common clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile    |    2 +-
 arch/arm/mach-imx/clk-imx25.c |  154 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx25.c     |    3 +-
 3 files changed, 157 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx25.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 74e08ad..4cb7011 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,7 +1,7 @@
 obj-y += clocksource.o gpio.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o
-obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o
+obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
new file mode 100644
index 0000000..61033d6
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -0,0 +1,154 @@
+/*
+ * Copyright (C) 2009 by Sascha Hauer, Pengutronix
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
+#include <mach/imx25-regs.h>
+
+#include "clk.h"
+
+#define CCM_MPCTL	0x00
+#define CCM_UPCTL	0x04
+#define CCM_CCTL	0x08
+#define CCM_CGCR0	0x0C
+#define CCM_CGCR1	0x10
+#define CCM_CGCR2	0x14
+#define CCM_PCDR0	0x18
+#define CCM_PCDR1	0x1C
+#define CCM_PCDR2	0x20
+#define CCM_PCDR3	0x24
+#define CCM_RCSR	0x28
+#define CCM_CRDR	0x2C
+#define CCM_DCVR0	0x30
+#define CCM_DCVR1	0x34
+#define CCM_DCVR2	0x38
+#define CCM_DCVR3	0x3c
+#define CCM_LTR0	0x40
+#define CCM_LTR1	0x44
+#define CCM_LTR2	0x48
+#define CCM_LTR3	0x4c
+#define CCM_MCR		0x64
+
+enum mx25_clks {
+	dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
+	per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
+	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
+	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
+	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
+	clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *cpu_sel_clks[] = {
+	"mpll",
+	"mpll_cpu_3_4",
+};
+
+static const char *per_sel_clks[] = {
+	"ahb",
+	"upll",
+};
+
+static int imx25_ccm_probe(struct device_d *dev)
+{
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+
+	writel(0x10e88578, base + CCM_CGCR0);
+	writel(0x0478e1e0, base + CCM_CGCR0);
+	writel(0x0007c400, base + CCM_CGCR0);
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[osc] = clk_fixed("osc", 24000000);
+	clks[mpll] = imx_clk_pllv1("mpll", "osc", base + CCM_MPCTL);
+	clks[upll] = imx_clk_pllv1("upll", "osc", base + CCM_UPCTL);
+	clks[mpll_cpu_3_4] = imx_clk_fixed_factor("mpll_cpu_3_4", "mpll", 3, 4);
+	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CCTL, 14, 1, cpu_sel_clks, ARRAY_SIZE(cpu_sel_clks));
+	clks[cpu] = imx_clk_divider("cpu", "cpu_sel", base + CCM_CCTL, 30, 2);
+	clks[ahb] = imx_clk_divider("ahb", "cpu", base + CCM_CCTL, 28, 2);
+	clks[usb_div] = imx_clk_divider("usb_div", "upll", base + CCM_CCTL, 16, 6);
+	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+	clks[per0_sel] = imx_clk_mux("per0_sel", base + CCM_MCR, 0, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per1_sel] = imx_clk_mux("per1_sel", base + CCM_MCR, 1, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per2_sel] = imx_clk_mux("per2_sel", base + CCM_MCR, 2, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per3_sel] = imx_clk_mux("per3_sel", base + CCM_MCR, 3, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per4_sel] = imx_clk_mux("per4_sel", base + CCM_MCR, 4, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per5_sel] = imx_clk_mux("per5_sel", base + CCM_MCR, 5, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per6_sel] = imx_clk_mux("per6_sel", base + CCM_MCR, 6, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per7_sel] = imx_clk_mux("per7_sel", base + CCM_MCR, 7, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per8_sel] = imx_clk_mux("per8_sel", base + CCM_MCR, 8, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per9_sel] = imx_clk_mux("per9_sel", base + CCM_MCR, 9, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per10_sel] = imx_clk_mux("per10_sel", base + CCM_MCR, 10, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per11_sel] = imx_clk_mux("per11_sel", base + CCM_MCR, 11, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per12_sel] = imx_clk_mux("per12_sel", base + CCM_MCR, 12, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per13_sel] = imx_clk_mux("per13_sel", base + CCM_MCR, 13, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per14_sel] = imx_clk_mux("per14_sel", base + CCM_MCR, 14, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per15_sel] = imx_clk_mux("per15_sel", base + CCM_MCR, 15, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per0] = imx_clk_divider("per0", "per0_sel", base + CCM_PCDR0, 0, 6);
+	clks[per1] = imx_clk_divider("per1", "per1_sel", base + CCM_PCDR0, 8, 6);
+	clks[per2] = imx_clk_divider("per2", "per2_sel", base + CCM_PCDR0, 16, 6);
+	clks[per3] = imx_clk_divider("per3", "per3_sel", base + CCM_PCDR0, 24, 6);
+	clks[per4] = imx_clk_divider("per4", "per4_sel", base + CCM_PCDR1, 0, 6);
+	clks[per5] = imx_clk_divider("per5", "per5_sel", base + CCM_PCDR1, 8, 6);
+	clks[per6] = imx_clk_divider("per6", "per6_sel", base + CCM_PCDR1, 16, 6);
+	clks[per7] = imx_clk_divider("per7", "per7_sel", base + CCM_PCDR1, 24, 6);
+	clks[per8] = imx_clk_divider("per8", "per8_sel", base + CCM_PCDR2, 0, 6);
+	clks[per9] = imx_clk_divider("per9", "per9_sel", base + CCM_PCDR2, 8, 6);
+	clks[per10] = imx_clk_divider("per10", "per10_sel", base + CCM_PCDR2, 16, 6);
+	clks[per11] = imx_clk_divider("per11", "per11_sel", base + CCM_PCDR2, 24, 6);
+	clks[per12] = imx_clk_divider("per12", "per12_sel", base + CCM_PCDR3, 0, 6);
+	clks[per13] = imx_clk_divider("per13", "per13_sel", base + CCM_PCDR3, 8, 6);
+	clks[per14] = imx_clk_divider("per14", "per14_sel", base + CCM_PCDR3, 16, 6);
+	clks[per15] = imx_clk_divider("per15", "per15_sel", base + CCM_PCDR3, 24, 6);
+
+	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static struct driver_d imx25_ccm_driver = {
+	.probe	= imx25_ccm_probe,
+	.name	= "imx25-ccm",
+};
+
+static int imx25_ccm_init(void)
+{
+	return register_driver(&imx25_ccm_driver);
+}
+postcore_initcall(imx25_ccm_init);
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 32c0412..5e6532a 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -61,6 +61,7 @@ static int imx25_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
+	add_generic_device("imx25-ccm", 0, NULL, MX25_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX25_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX25_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX25_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -69,4 +70,4 @@ static int imx25_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx25_init);
+postcore_initcall(imx25_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
