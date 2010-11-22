Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVRm-0000dE-58
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:24:40 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:24:23 +0100
Message-Id: <1290428665-23561-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
References: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/6] i.MX23: Add pixel clock calculation routine for
	framebuffer support
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/clock.h |    2 +
 arch/arm/mach-stm/speed-imx23.c        |  100 +++++++++++++++++++++++++++++++-
 2 files changed, 101 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/clock.h b/arch/arm/mach-stm/include/mach/clock.h
index 0e1a6d6..99b0d99 100644
--- a/arch/arm/mach-stm/include/mach/clock.h
+++ b/arch/arm/mach-stm/include/mach/clock.h
@@ -29,6 +29,8 @@ unsigned imx_get_xclk(void);
 unsigned imx_get_sspclk(unsigned);
 unsigned imx_set_sspclk(unsigned, unsigned, int);
 unsigned imx_set_ioclk(unsigned);
+unsigned imx_set_lcdifclk(unsigned);
+unsigned imx_get_lcdifclk(void);
 
 #endif /* ASM_ARCH_CLOCK_IMX23_H */
 
diff --git a/arch/arm/mach-stm/speed-imx23.c b/arch/arm/mach-stm/speed-imx23.c
index 7418ad5..0f68f7d 100644
--- a/arch/arm/mach-stm/speed-imx23.c
+++ b/arch/arm/mach-stm/speed-imx23.c
@@ -39,7 +39,11 @@
 #define HW_CLKCTRL_HBUS 0x30
 #define HW_CLKCTRL_XBUS 0x40
 #define HW_CLKCTRL_XTAL 0x050
-#define HW_CLKCTRL_PIX 0x060
+#define HW_CLKCTRL_DIS_LCDIF 0x060
+# define CLKCTRL_DIS_LCDIF_GATE (1 << 31)
+# define CLKCTRL_DIS_LCDIF_BUSY (1 << 29)
+# define SET_DIS_LCDIF_DIV(x) ((x) & 0xfff)
+# define GET_DIS_LCDIF_DIV(x) ((x) & 0xfff)
 /* note: no set/clear register! */
 #define HW_CLKCTRL_SSP 0x070
 /* note: no set/clear register! */
@@ -66,6 +70,7 @@
 # define SET_IOFRAC(x) (((x) & 0x3f) << 24)
 # define CLKCTRL_FRAC_CLKGATEPIX (1 << 23)
 # define GET_PIXFRAC(x) (((x) >> 16) & 0x3f)
+# define SET_PIXFRAC(x) (((x) & 0x3f) << 16)
 # define CLKCTRL_FRAC_CLKGATEEMI (1 << 15)
 # define GET_EMIFRAC(x) (((x) >> 8) & 0x3f)
 # define CLKCTRL_FRAC_CLKGATECPU (1 << 7)
@@ -77,6 +82,7 @@
 # define CLKCTRL_CLKSEQ_BYPASS_EMI (1 << 6)
 # define CLKCTRL_CLKSEQ_BYPASS_SSP (1 << 5)
 # define CLKCTRL_CLKSEQ_BYPASS_GPMI (1 << 4)
+# define CLKCTRL_CLKSEQ_BYPASS_DIS_LCDIF (1 << 1)
 #define HW_CLKCTRL_RESET 0x120
 #define HW_CLKCTRL_STATUS 0x130
 #define HW_CLKCTRL_VERSION 0x140
@@ -268,6 +274,97 @@ unsigned imx_set_sspclk(unsigned index, unsigned nc, int high)
 	return imx_get_sspclk(index);
 }
 
+unsigned imx_get_lcdifclk(void)
+{
+	unsigned rate = imx_get_mpllclk() * 18U;
+	unsigned div;
+
+	div = GET_PIXFRAC(readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC));
+	if (div != 0U) {
+		rate /= div;
+		div = GET_DIS_LCDIF_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_DIS_LCDIF));
+		if (div != 0U)
+			rate /= div;
+		else
+			pr_debug("LCDIF clock has divisor 0!\n");
+	} else
+		pr_debug("LCDIF clock has frac divisor 0!\n");
+
+	return rate;
+}
+
+/**
+ * @param nc Pixel clock in [kHz]
+ *
+ * Calculate the best settings for the fractional and integer divider to match
+ * the requested pixel clock as close as possible.
+ *
+ * pixel clock = 480 MHz * 18 / frac_div / int_div
+ */
+unsigned imx_set_lcdifclk(unsigned nc)
+{
+	unsigned frac, best_frac = 0, div, best_div = 0, result;
+	int delta, best_delta = 0xffffff;
+	unsigned i, parent_rate = imx_get_mpllclk();
+	uint32_t reg;
+
+#define DIV(NOM, DEN) (((NOM) + (DEN) / 2) / (DEN))
+#define SH_DIV(NOM, DEN, LSH) \
+	((((NOM) / (DEN)) << (LSH)) + DIV(((NOM) % (DEN)) << (LSH), DEN))
+#define ABS(x) (((x) < 0) ? (-(x)) : (x))
+#define SHIFT 4
+
+	nc <<= SHIFT;
+
+	for (frac = 18; frac <= 35; ++frac) {
+		for (div = 1; div <= 255; ++div) {
+			result = DIV(parent_rate * SH_DIV(18U, frac, SHIFT), div);
+			delta = nc - result;
+			if (ABS(delta) < ABS(best_delta)) {
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
+	pr_debug("Programming PFD=%u,DIV=%u ref_pix=%u MHz PIXCLK=%u MHz\n",
+			best_frac, best_div, 480 * 18 / best_frac,
+			480 * 18 / best_frac / best_div);
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC) & ~0x003f0000;
+	reg |= SET_PIXFRAC(best_frac);
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	writel(reg & ~CLKCTRL_FRAC_CLKGATEPIX, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_DIS_LCDIF) & ~0x1fff;
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
+				IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ + 8);
+
+	return imx_get_lcdifclk();
+}
+
 void imx_dump_clocks(void)
 {
 	printf("mpll:    %10u kHz\n", imx_get_mpllclk());
@@ -277,4 +374,5 @@ void imx_dump_clocks(void)
 	printf("hclk:    %10u kHz\n", imx_get_hclk());
 	printf("xclk:    %10u kHz\n", imx_get_xclk());
 	printf("ssp:     %10u kHz\n", imx_get_sspclk(0));
+	printf("lcdif:   %10u kHz\n", imx_get_lcdifclk());
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
