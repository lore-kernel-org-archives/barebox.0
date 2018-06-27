Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYB6l-0005bz-DC
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 14:07:45 +0000
Received: by mail-ed1-x541.google.com with SMTP id g12-v6so3175449edi.9
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 07:07:32 -0700 (PDT)
From: Mogens Lauridsen <mlauridsen171@gmail.com>
Date: Wed, 27 Jun 2018 16:07:11 +0200
Message-Id: <20180627140711.16764-1-mlauridsen171@gmail.com>
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
Subject: [PATCH] ARM: i.MX53: Set pll3 directly to 216MHz.
To: s.hauer@pengutronix.de, festevam@gmail.com
Cc: barebox@lists.infradead.org, Mogens Lauridsen <mlauridsen171@gmail.com>

PLL3 was first set to 400MHz and then some peripheral was switched
to PLL3. Finally PLL3 was set to 216MHz. This could make some
i.MX538 hang in a dead loop in the boot process.

Signed-off-by: Mogens Lauridsen <mlauridsen171@gmail.com>
---
 arch/arm/mach-imx/imx53.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 56f1bda75..3fdb3b91a 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -119,7 +119,7 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 	else
 		imx5_setup_pll_800((void __iomem *)MX53_PLL1_BASE_ADDR);
 
-	imx5_setup_pll_400((void __iomem *)MX53_PLL3_BASE_ADDR);
+	imx5_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
 
         /* Switch peripheral to PLL3 */
 	writel(0x00015154, ccm + MX5_CCM_CBCMR);
@@ -154,7 +154,6 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
 	/* make sure change is effective */
 	while (readl(ccm + MX5_CCM_CDHIPR));
 
-	imx5_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
 	imx5_setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);
 
 	/* Set the platform clock dividers */
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
