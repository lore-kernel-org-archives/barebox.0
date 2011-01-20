Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00040f-CE
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:56 +0100
Message-Id: <1295516821-8988-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] i.MX23/28: Fix setting of lcd clock
To: barebox@lists.infradead.org

Use the correct bitmask for masking out which is
SET_PIXFRAC(MASK_PIXFRAC)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm/imx_lcd_clk.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-stm/imx_lcd_clk.c b/arch/arm/mach-stm/imx_lcd_clk.c
index 8938664..65bfc6e 100644
--- a/arch/arm/mach-stm/imx_lcd_clk.c
+++ b/arch/arm/mach-stm/imx_lcd_clk.c
@@ -120,7 +120,8 @@ unsigned imx_set_lcdifclk(unsigned nc)
 			best_frac, best_div, 480 * 18 / best_frac,
 			480000 * 18 / best_frac / best_div);
 
-	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC) & ~MASK_PIXFRAC;
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
+	reg &= ~SET_PIXFRAC(MASK_PIXFRAC);
 	reg |= SET_PIXFRAC(best_frac);
 	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
 	writel(reg & ~CLKCTRL_FRAC_CLKGATEPIX, IMX_CCM_BASE + HW_CLKCTRL_FRAC);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
