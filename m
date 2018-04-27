Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGr-0006tK-0e
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:14 +0000
Received: by mail-pf0-x243.google.com with SMTP id f189so657869pfa.7
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:41 -0700
Message-Id: <20180427054946.11687-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180427054946.11687-1-andrew.smirnov@gmail.com>
References: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] ARM: i.MX51: Replace expicit casts with IOMEM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx51.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index ffe6a7c65..13444ccdb 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -43,7 +43,7 @@ static int imx51_silicon_revision(void)
 
 static void imx51_ipu_mipi_setup(void)
 {
-	void __iomem *hsc_addr = (void __iomem *)MX51_MIPI_HSC_BASE_ADDR;
+	void __iomem *hsc_addr = IOMEM(MX51_MIPI_HSC_BASE_ADDR);
 	u32 val;
 
 	/* setup MIPI module to legacy mode */
@@ -97,7 +97,7 @@ int imx51_devices_init(void)
  */
 static void imx51_setup_pll800_bug(void)
 {
-	void __iomem *base = (void *)MX51_PLL1_BASE_ADDR;
+	void __iomem *base = IOMEM(MX51_PLL1_BASE_ADDR);
 	u32 dp_config;
 	volatile int i;
 
@@ -132,7 +132,7 @@ static void imx51_setup_pll800_bug(void)
 
 void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 {
-	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
+	void __iomem *ccm = IOMEM(MX51_CCM_BASE_ADDR);
 	u32 r;
 	int rev = imx51_silicon_revision();
 
@@ -167,30 +167,30 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 
 	switch (cpufreq_mhz) {
 	case 600:
-		imx5_setup_pll_600((void __iomem *)MX51_PLL1_BASE_ADDR);
+		imx5_setup_pll_600(IOMEM(MX51_PLL1_BASE_ADDR));
 		break;
 	default:
 		/* Default maximum 800MHz */
 		if (rev <= IMX_CHIP_REV_3_0)
 			imx51_setup_pll800_bug();
 		else
-			imx5_setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
+			imx5_setup_pll_800(IOMEM(MX51_PLL1_BASE_ADDR));
 		break;
 	}
 
-	imx5_setup_pll_665((void __iomem *)MX51_PLL3_BASE_ADDR);
+	imx5_setup_pll_665(IOMEM(MX51_PLL3_BASE_ADDR));
 
 	/* Switch peripheral to PLL 3 */
 	writel(0x000010C0, ccm + MX5_CCM_CBCMR);
 	writel(0x13239145, ccm + MX5_CCM_CBCDR);
 
-	imx5_setup_pll_665((void __iomem *)MX51_PLL2_BASE_ADDR);
+	imx5_setup_pll_665(IOMEM(MX51_PLL2_BASE_ADDR));
 
 	/* Switch peripheral to PLL2 */
 	writel(0x19239145, ccm + MX5_CCM_CBCDR);
 	writel(0x000020C0, ccm + MX5_CCM_CBCMR);
 
-	imx5_setup_pll_216((void __iomem *)MX51_PLL3_BASE_ADDR);
+	imx5_setup_pll_216(IOMEM(MX51_PLL3_BASE_ADDR));
 
 	/* Set the platform clock dividers */
 	writel(0x00000125, MX51_ARM_BASE_ADDR + 0x14);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
