Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT4-0006Hp-Dc
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:22 +0200
Message-Id: <1287753331-7696-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] i.MX51: Fix mmcclk rate
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/speed-imx51.c |   33 ++++++++++++++++++++++++++++++---
 1 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index dcfc874..9983297 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -90,6 +90,26 @@ static unsigned long pll3_sw_get_rate(void)
 	return pll_get_rate((void __iomem *)MX51_PLL3_BASE_ADDR);
 }
 
+static unsigned long get_rate_select(int select,
+	unsigned long (* get_rate1)(void),
+	unsigned long (* get_rate2)(void),
+	unsigned long (* get_rate3)(void),
+	unsigned long (* get_rate4)(void))
+{
+	switch (select) {
+	case 0:
+		return get_rate1() ? get_rate1() : 0;
+	case 1:
+		return get_rate2() ? get_rate2() : 0;
+	case 2:
+		return get_rate3 ? get_rate3() : 0;
+	case 3:
+		return get_rate4 ? get_rate4() : 0;
+	}
+
+	return 0;
+}
+
 unsigned long imx_get_uartclk(void)
 {
 	u32 reg, prediv, podf;
@@ -140,15 +160,22 @@ unsigned long imx_get_mmcclk(void)
 {
 	u32 reg, prediv, podf, rate;
 
+	reg = ccm_readl(MX51_CCM_CSCMR1);
+	reg &= MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK;
+	reg >>= MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET;
+	rate = get_rate_select(reg,
+			pll1_main_get_rate,
+			pll2_sw_get_rate,
+			pll3_sw_get_rate,
+			NULL);
+
 	reg = ccm_readl(MX51_CCM_CSCDR1);
 	prediv = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK) >>
 			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET) + 1;
 	podf = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK) >>
 			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET) + 1;
 
-	rate = pll2_sw_get_rate() / (prediv * podf);
-
-	return rate;
+	return rate / (prediv * podf);
 }
 
 void imx_dump_clocks(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
