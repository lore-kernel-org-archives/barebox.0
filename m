Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRLm-0005Le-Ip
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:28:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2018 09:28:03 +0200
Message-Id: <20180628072803.25428-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX53: Make clock tree setup better readable
To: Barebox List <barebox@lists.infradead.org>

Change write register accesses to read-modify-write accesses. This
makes it clearer which bits are actually changed by the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 56f1bda75e..b22929f749 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -86,7 +86,7 @@ int imx53_devices_init(void)
 void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
-	u32 r;
+	u32 r, cbcdr, cbcmr;
 
 	imx5_init_lowlevel();
 
@@ -122,8 +122,16 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 	imx5_setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
 
         /* Switch peripheral to PLL3 */
-	writel(0x00015154, ccm + MX5_CCM_CBCMR);
-	writel(0x02888945 | (1<<16), ccm + MX5_CCM_CBCDR);
+	cbcmr = readl(ccm + MX5_CCM_CBCMR);
+	cbcmr &= ~(3 << 12);
+	cbcmr |= (1 << 12);
+	writel(cbcmr, ccm + MX5_CCM_CBCMR);
+
+	cbcdr = readl(ccm + MX5_CCM_CBCDR);
+	cbcdr |= (1 << 25);
+	cbcdr &= ~(7 << 16);
+	cbcdr |= (1 << 16);
+	writel(cbcdr, ccm + MX5_CCM_CBCDR);
 
 	/* make sure change is effective */
 	while (readl(ccm + MX5_CCM_CDHIPR));
@@ -131,14 +139,13 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 	imx5_setup_pll_400((void __iomem *)MX53_PLL2_BASE_ADDR);
 
 	/* Switch peripheral to PLL2 */
-	r = 0x00808145 |
-		(2 << 10) |
-		(0 << 16) |
-		(1 << 19);
-
-	writel(r, ccm + MX5_CCM_CBCDR);
+	cbcdr &= ~(1 << 25);
+	cbcdr &= ~(7 << 16);
+	writel(cbcdr, ccm + MX5_CCM_CBCDR);
 
-	writel(0x00016154, ccm + MX5_CCM_CBCMR);
+	cbcmr &= ~(3 << 12);
+	cbcmr |= (2 << 12);
+	writel(cbcmr, ccm + MX5_CCM_CBCMR);
 
 	r = readl(ccm + MX5_CCM_CSCMR1);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
