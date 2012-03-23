Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB1rO-0003AY-LU
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 10:36:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 11:36:17 +0100
Message-Id: <1332498979-13742-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
References: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM i.MX51 clk: select uart clk parent based on hardware
 setting
To: barebox@lists.infradead.org

The previous code assumed pll2 which is correct when we set the
uart parent to pll2 beforehand. The reset default is different
though, so calculate uart parent based on hardware setting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/speed-imx51.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 643ad8f..84f4892 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -115,7 +115,15 @@ unsigned long imx_get_uartclk(void)
 	u32 reg, prediv, podf;
 	unsigned long parent_rate;
 
-	parent_rate = pll2_sw_get_rate();
+	reg = ccm_readl(MX5_CCM_CSCMR1);
+	reg &= MX5_CCM_CSCMR1_UART_CLK_SEL_MASK;
+	reg >>= MX5_CCM_CSCMR1_UART_CLK_SEL_OFFSET;
+
+	parent_rate = get_rate_select(reg,
+			pll1_main_get_rate,
+			pll2_sw_get_rate,
+			pll3_sw_get_rate,
+			NULL);
 
 	reg = ccm_readl(MX5_CCM_CSCDR1);
 	prediv = ((reg & MX5_CCM_CSCDR1_UART_CLK_PRED_MASK) >>
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
