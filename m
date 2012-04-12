Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPsM-0003pP-JG
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:40:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 21:40:04 +0200
Message-Id: <1334259605-21907-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
References: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX53: Setup USB clocks
To: barebox@lists.infradead.org

- get USB PHY clock from OSC (24MHz)
- adjust USB clock to 54MHz

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c |   17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 8742c46..b5dbc39 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -154,10 +154,15 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 
 	writel(0x00016154, ccm + MX5_CCM_CBCMR);
 
-	/* change uart clk parent to pll2 */
 	r = readl(ccm + MX5_CCM_CSCMR1);
-	r &= ~(3 << 24);
-	r |= (1 << 24);
+
+	/* change uart clk parent to pll2 */
+	r &= ~MX5_CCM_CSCMR1_UART_CLK_SEL_MASK;
+	r |= 1 << MX5_CCM_CSCMR1_UART_CLK_SEL_OFFSET;
+
+	/* USB phy clock from osc */
+	r &= ~(1 << MX5_CCM_CSCMR1_USB_PHY_CLK_SEL_OFFSET);
+
 	writel(r, ccm + MX5_CCM_CSCMR1);
 
 	/* make sure change is effective */
@@ -187,6 +192,12 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	r &= ~MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_MASK;
 	r |= 1 << MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_OFFSET;
 
+	r &= ~MX5_CCM_CSCDR1_USBOH3_CLK_PRED_MASK;
+	r &= ~MX5_CCM_CSCDR1_USBOH3_CLK_PODF_MASK;
+
+	r |= 3 << MX5_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET;
+	r |= 1 << MX5_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET;
+
 	writel(r, ccm + MX5_CCM_CSCDR1);
 
 	/* Restore the default values in the Gate registers */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
