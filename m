Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003Eh-H8
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000UA-DP
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xb-9e
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:06 +0100
Message-Id: <1292857509-13881-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 07/10] ARM STM/i.MX: Add a pixel clock calculation routine for
	i.MX23/i.MX28
To: barebox@lists.infradead.org

In order to support video graphics output on i.MX23/i.MX28 based platforms,
a calculation routine for the pixel clock is required.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/Makefile                   |    1 +
 arch/arm/mach-stm/imx_lcd_clk.c              |  149 ++++++++++++++++++++++++++
 arch/arm/mach-stm/include/mach/clock-imx23.h |    2 +
 arch/arm/mach-stm/include/mach/clock-imx28.h |    2 +
 4 files changed, 154 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-stm/imx_lcd_clk.c

diff --git a/arch/arm/mach-stm/Makefile b/arch/arm/mach-stm/Makefile
index 3c7ce09..0ff8fd1 100644
--- a/arch/arm/mach-stm/Makefile
+++ b/arch/arm/mach-stm/Makefile
@@ -1,3 +1,4 @@
 obj-y += imx.o iomux-imx.o reset-imx.o
+obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
 obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o
 obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
diff --git a/arch/arm/mach-stm/imx_lcd_clk.c b/arch/arm/mach-stm/imx_lcd_clk.c
new file mode 100644
index 0000000..8938664
--- /dev/null
+++ b/arch/arm/mach-stm/imx_lcd_clk.c
@@ -0,0 +1,149 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <asm/io.h>
+
+#ifdef CONFIG_ARCH_IMX23
+
+# define HW_CLKCTRL_DIS_LCDIF 0x060
+#  define CLKCTRL_DIS_LCDIF_GATE (1 << 31)
+#  define CLKCTRL_DIS_LCDIF_BUSY (1 << 29)
+#  define MASK_DIS_LCDIF_DIV 0xfff
+#  define SET_DIS_LCDIF_DIV(x) ((x) & MASK_DIS_LCDIF_DIV)
+#  define GET_DIS_LCDIF_DIV(x) ((x) & MASK_DIS_LCDIF_DIV)
+
+# define HW_CLKCTRL_FRAC 0xf0
+#  define MASK_PIXFRAC 0x3f
+#  define GET_PIXFRAC(x) (((x) >> 16) & MASK_PIXFRAC)
+#  define SET_PIXFRAC(x) (((x) & MASK_PIXFRAC) << 16)
+#  define CLKCTRL_FRAC_CLKGATEPIX (1 << 23)
+
+# define HW_CLKCTRL_CLKSEQ 0x110
+#  define CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF (1 << 1)
+
+#endif
+
+#ifdef CONFIG_ARCH_IMX28
+
+# define HW_CLKCTRL_DIS_LCDIF 0x120
+#  define CLKCTRL_DIS_LCDIF_GATE (1 << 31)
+#  define CLKCTRL_DIS_LCDIF_BUSY (1 << 29)
+#  define MASK_DIS_LCDIF_DIV 0x1fff
+#  define SET_DIS_LCDIF_DIV(x) ((x) & MASK_DIS_LCDIF_DIV)
+#  define GET_DIS_LCDIF_DIV(x) ((x) & MASK_DIS_LCDIF_DIV)
+
+/* note: On i.MX28 this is called 'FRAC1' */
+# define HW_CLKCTRL_FRAC 0x1c0
+#  define MASK_PIXFRAC 0x3f
+#  define GET_PIXFRAC(x) ((x) & MASK_PIXFRAC)
+#  define SET_PIXFRAC(x) ((x) & MASK_PIXFRAC)
+#  define CLKCTRL_FRAC_CLKGATEPIX (1 << 7)
+
+# define HW_CLKCTRL_CLKSEQ 0x1d0
+#  define CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF (1 << 14)
+
+#endif
+
+unsigned imx_get_lcdifclk(void)
+{
+	unsigned rate = (imx_get_mpllclk() / 1000) * 18U;
+	unsigned div;
+
+	div = GET_PIXFRAC(readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC));
+	if (div != 0U) {
+		rate /= div;
+		div = GET_DIS_LCDIF_DIV(readl(IMX_CCM_BASE +
+							HW_CLKCTRL_DIS_LCDIF));
+		if (div != 0U)
+			rate /= div;
+		else
+			pr_debug("LCDIF clock has divisor 0!\n");
+	} else
+		pr_debug("LCDIF clock has frac divisor 0!\n");
+
+	return rate * 1000;
+}
+
+/*
+ * The source of the pixel clock can be the external 24 MHz crystal or the
+ * internal PLL running at 480 MHz. In order to support at least VGA sized
+ * displays/resolutions this routine forces the PLL as the clock source.
+ */
+unsigned imx_set_lcdifclk(unsigned nc)
+{
+	unsigned frac, best_frac = 0, div, best_div = 0, result;
+	int delta, best_delta = 0xffffff;
+	unsigned i, parent_rate = imx_get_mpllclk() / 1000;
+	uint32_t reg;
+
+#define SH_DIV(NOM, DEN, LSH) ((((NOM) / (DEN)) << (LSH)) + \
+			DIV_ROUND_CLOSEST(((NOM) % (DEN)) << (LSH), DEN))
+#define SHIFT 4
+
+	nc /= 1000;
+	nc <<= SHIFT;
+
+	for (frac = 18; frac <= 35; ++frac) {
+		for (div = 1; div <= 255; ++div) {
+			result = DIV_ROUND_CLOSEST(parent_rate *
+						SH_DIV(18U, frac, SHIFT), div);
+			delta = nc - result;
+			if (abs(delta) < abs(best_delta)) {
+				best_delta = delta;
+				best_frac = frac;
+				best_div = div;
+			}
+		}
+	}
+
+	if (best_delta == 0xffffff) {
+		pr_debug("Unable to match the pixelclock\n");
+		return 0;
+	}
+
+	pr_debug("Programming PFD=%u,DIV=%u ref_pix=%u MHz PIXCLK=%u kHz\n",
+			best_frac, best_div, 480 * 18 / best_frac,
+			480000 * 18 / best_frac / best_div);
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC) & ~MASK_PIXFRAC;
+	reg |= SET_PIXFRAC(best_frac);
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	writel(reg & ~CLKCTRL_FRAC_CLKGATEPIX, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_DIS_LCDIF) & ~MASK_DIS_LCDIF_DIV;
+	reg &= ~CLKCTRL_DIS_LCDIF_GATE;
+	reg |= SET_DIS_LCDIF_DIV(best_div);
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_DIS_LCDIF);
+
+	/* Wait for divider update */
+	for (i = 0; i < 10000; i++) {
+		if (!(readl(IMX_CCM_BASE + HW_CLKCTRL_DIS_LCDIF) &
+						CLKCTRL_DIS_LCDIF_BUSY))
+			break;
+	}
+
+	if (i >= 10000) {
+		pr_debug("Setting LCD clock failed\n");
+		return 0;
+	}
+
+	writel(CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF,
+		IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + BIT_CLR);
+
+	return imx_get_lcdifclk();
+}
diff --git a/arch/arm/mach-stm/include/mach/clock-imx23.h b/arch/arm/mach-stm/include/mach/clock-imx23.h
index bb499f2..723f343 100644
--- a/arch/arm/mach-stm/include/mach/clock-imx23.h
+++ b/arch/arm/mach-stm/include/mach/clock-imx23.h
@@ -22,5 +22,7 @@ unsigned imx_get_xclk(void);
 unsigned imx_get_sspclk(unsigned);
 unsigned imx_set_sspclk(unsigned, unsigned, int);
 unsigned imx_set_ioclk(unsigned);
+unsigned imx_set_lcdifclk(unsigned);
+unsigned imx_get_lcdifclk(void);
 
 #endif /* MACH_CLOCK_IMX23_H */
diff --git a/arch/arm/mach-stm/include/mach/clock-imx28.h b/arch/arm/mach-stm/include/mach/clock-imx28.h
index afc9fb6..45fb043 100644
--- a/arch/arm/mach-stm/include/mach/clock-imx28.h
+++ b/arch/arm/mach-stm/include/mach/clock-imx28.h
@@ -22,6 +22,8 @@ unsigned imx_get_xclk(void);
 unsigned imx_get_sspclk(unsigned);
 unsigned imx_set_sspclk(unsigned, unsigned, int);
 unsigned imx_set_ioclk(unsigned, unsigned);
+unsigned imx_set_lcdifclk(unsigned);
+unsigned imx_get_lcdifclk(void);
 unsigned imx_get_fecclk(void);
 void imx_enable_enetclk(void);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
