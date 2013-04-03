Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHpG-0000Kb-JZ
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:09:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 09:09:37 +0200
Message-Id: <1364972980-32527-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
References: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX53: Fix pll216 setup
To: barebox@lists.infradead.org

The value for i.MX53 216MHz is actually 432MHz. Use the same value
as for i.MX51 which really corresponds to 216MHz. These are the same
PLL216 values as U-Boot uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c             | 2 +-
 arch/arm/mach-imx/imx53.c             | 2 +-
 arch/arm/mach-imx/include/mach/imx5.h | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index cffcca3..737ab9b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -151,7 +151,7 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 	writel(0x19239145, ccm + MX5_CCM_CBCDR);
 	writel(0x000020C0, ccm + MX5_CCM_CBCMR);
 
-	imx51_setup_pll_216((void __iomem *)MX51_PLL3_BASE_ADDR);
+	imx5_setup_pll_216((void __iomem *)MX51_PLL3_BASE_ADDR);
 
 	/* Set the platform clock dividers */
 	writel(0x00000124, MX51_ARM_BASE_ADDR + 0x14);
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 3135ada..b06a5d0 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -146,7 +146,7 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
 	/* make sure change is effective */
 	while (readl(ccm + MX5_CCM_CDHIPR));
 
-	imx53_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
+	imx5_setup_pll_216((void __iomem *)MX53_PLL3_BASE_ADDR);
 	imx5_setup_pll_455((void __iomem *)MX53_PLL4_BASE_ADDR);
 
 	/* Set the platform clock dividers */
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index cd0a347..ff570c4 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -13,7 +13,6 @@ void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 #define imx5_setup_pll_600(base)	imx5_setup_pll((base),  600, (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
 #define imx5_setup_pll_455(base)	imx5_setup_pll((base),  455, (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
 #define imx5_setup_pll_400(base)	imx5_setup_pll((base),  400, (( 8 << 4) + ((2 - 1) << 0)), (3 - 1), 1)
-#define imx53_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 8 << 4) + ((2 - 1) << 0)), (1 - 1), 1)
-#define imx51_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 6 << 4) + ((3 - 1) << 0)), (4 - 1), 3)
+#define imx5_setup_pll_216(base)	imx5_setup_pll((base),  216, (( 6 << 4) + ((3 - 1) << 0)), (4 - 1), 3)
 
 #endif /* __MACH_MX53_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
