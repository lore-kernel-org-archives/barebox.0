Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000eY-60
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:35 +0200
Message-Id: <1348484692-24993-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/23] ARM i.MX27: implement clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |    2 +
 arch/arm/mach-imx/Makefile    |    2 +-
 arch/arm/mach-imx/clk-imx27.c |  154 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx27.c     |    4 +-
 4 files changed, 160 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx27.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a54ad03..1cb56c5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -40,6 +40,8 @@ config ARCH_IMX
 	bool "Freescale iMX-based"
 	select GENERIC_GPIO
 	select GPIOLIB
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index f6d487f..74e08ad 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -3,7 +3,7 @@ obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o
 obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
-obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o
+obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
new file mode 100644
index 0000000..74a3495
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -0,0 +1,154 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx27-regs.h>
+#include <mach/generic.h>
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
+enum mx27_clks {
+	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
+	per2_div, per3_div, per4_div, usb_div, cpu_sel,	clko_sel, cpu_div, clko_div,
+	clko_en, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *cpu_sel_clks[] = {
+	"mpll_main2",
+	"mpll",
+};
+
+static const char *clko_sel_clks[] = {
+	"ckil",
+	NULL,
+	"ckih",
+	"ckih",
+	"ckih",
+	"mpll",
+	"spll",
+	"cpu_div",
+	"ahb",
+	"ipg",
+	"per1_div",
+	"per2_div",
+	"per3_div",
+	"per4_div",
+	NULL,
+	NULL,
+	"nfc_div",
+	NULL,
+	NULL,
+	NULL,
+	"ckil",
+	"usb_div",
+	NULL,
+};
+
+static int imx27_ccm_probe(struct device_d *dev)
+{
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+
+	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
+			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN | PCCR0_I2C2_EN |
+			PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN | PCCR0_GPT4_EN |
+			PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN | PCCR0_GPIO_EN |
+			PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN | PCCR0_CSPI1_EN,
+			base + CCM_PCCR0);
+
+	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK3_EN |
+		       PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN | PCCR1_HCLK_USB |
+		       PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN | PCCR1_USB_EN |
+		       PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
+		       PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
+		       base + CCM_PCCR1);
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[ckih] = clk_fixed("ckih", 26000000);
+	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
+	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
+
+	if (imx_silicon_revision() >= IMX27_CHIP_REVISION_2_0) {
+		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 8, 2);
+		clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+	} else {
+		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 9, 4);
+		clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CSCR, 8, 1);
+	}
+
+	clks[nfc_div] = imx_clk_divider("nfc_div", "ahb", base + CCM_PCDR0, 6, 4);
+	clks[per1_div] = imx_clk_divider("per1_div", "mpll_main2", base + CCM_PCDR1, 0, 6);
+	clks[per2_div] = imx_clk_divider("per2_div", "mpll_main2", base + CCM_PCDR1, 8, 6);
+	clks[per3_div] = imx_clk_divider("per3_div", "mpll_main2", base + CCM_PCDR1, 16, 6);
+	clks[per4_div] = imx_clk_divider("per4_div", "mpll_main2", base + CCM_PCDR1, 24, 6);
+	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 28, 3);
+	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CSCR, 15, 1, cpu_sel_clks,
+			ARRAY_SIZE(cpu_sel_clks));
+	clks[clko_sel] = imx_clk_mux("clko_sel", base + CCM_CCSR, 0, 5, clko_sel_clks,
+			ARRAY_SIZE(clko_sel_clks));
+	if (imx_silicon_revision() >= IMX27_CHIP_REVISION_2_0)
+		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 12, 2);
+	else
+		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
+	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
+
+	clkdev_add_physbase(clks[ipg], MX27_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_GPT4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_GPT5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_GPT6_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART6_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3_div], MX27_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static struct driver_d imx27_ccm_driver = {
+	.probe	= imx27_ccm_probe,
+	.name	= "imx27-ccm",
+};
+
+static int imx27_ccm_init(void)
+{
+	return register_driver(&imx27_ccm_driver);
+}
+postcore_initcall(imx27_ccm_init);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 0c92385..8116e6f 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -78,6 +78,7 @@ static int imx27_init(void)
 
 	imx27_init_max();
 
+	add_generic_device("imx27-ccm", 0, NULL, MX27_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX27_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX27_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, MX27_GPIO2_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
@@ -85,6 +86,7 @@ static int imx27_init(void)
 	add_generic_device("imx1-gpio", 3, NULL, MX27_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 4, NULL, MX27_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 5, NULL, MX27_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
-console_initcall(imx27_init);
+postcore_initcall(imx27_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
