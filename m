Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf9z4-0003kq-Bt
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 13:21:11 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 14 Jun 2012 15:20:58 +0200
Message-Id: <1339680065-12169-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
References: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V2 1/8] arm: mxs: make get_hclk result useable for upcoming
 set_hclk
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

To avoid getting a different divider due to rounding errors when using
set_hclk later, use DIV_ROUND_UP for the returned value.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/speed-imx23.c |    5 +++--
 arch/arm/mach-mxs/speed-imx28.c |    5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mxs/speed-imx23.c b/arch/arm/mach-mxs/speed-imx23.c
index b10c786..c9ca7ac 100644
--- a/arch/arm/mach-mxs/speed-imx23.c
+++ b/arch/arm/mach-mxs/speed-imx23.c
@@ -184,9 +184,10 @@ unsigned imx_get_hclk(void)
 
 	if (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x20) {
 		rate *= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
-		rate >>= 5U; /* / 32 */
+		rate = DIV_ROUND_UP(rate, 32);
 	} else
-		rate /= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+		rate = DIV_ROUND_UP(rate,
+			readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f);
 	return rate * 1000;
 }
 
diff --git a/arch/arm/mach-mxs/speed-imx28.c b/arch/arm/mach-mxs/speed-imx28.c
index 67cdbdf..4f4db1b 100644
--- a/arch/arm/mach-mxs/speed-imx28.c
+++ b/arch/arm/mach-mxs/speed-imx28.c
@@ -251,9 +251,10 @@ unsigned imx_get_hclk(void)
 
 	if (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x20) {
 		rate *= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
-		rate /= 32;
+		rate = DIV_ROUND_UP(rate, 32);
 	} else
-		rate /= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
+		rate = DIV_ROUND_UP(rate,
+			readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f);
 	return rate * 1000;
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
