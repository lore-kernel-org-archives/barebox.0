Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7B-0003fI-9b
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:38:59 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:41 +0100
Message-Id: <1363282729-18545-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 02/10] ARM i.MX bootsource: convert all imx*_boot_save_loc
 functions to void
To: barebox@lists.infradead.org

This function gives all functions a common, i.e. void, return value.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 18 ++++++------------
 arch/arm/mach-imx/include/mach/generic.h |  8 ++++----
 2 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4c43487..068fa22 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -94,7 +94,7 @@ static const enum imx_bootsource locations[4][4] = {
  * Note also that I suspect that the boot source pins are only sampled at
  * power up.
  */
-int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
+void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 {
 	const char *bareboxloc = NULL;
 	enum imx_bootsource src;
@@ -106,8 +106,6 @@ int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 		setenv("barebox_loc", bareboxloc);
 		export("barebox_loc");
 	}
-
-	return 0;
 }
 
 #define IMX27_SYSCTRL_GPCR	0x18
@@ -153,7 +151,7 @@ void imx_27_boot_save_loc(void __iomem *sysctrl_base)
 #define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
 #define IMX51_SBMR_BMOD_SHIFT		14
 
-int imx51_boot_save_loc(void __iomem *src_base)
+void imx51_boot_save_loc(void __iomem *src_base)
 {
 	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t reg;
@@ -181,12 +179,10 @@ int imx51_boot_save_loc(void __iomem *src_base)
 	}
 
 	imx_set_bootsource(src);
-
-	return 0;
 }
 
 #define IMX53_SRC_SBMR	0x4
-int imx53_boot_save_loc(void __iomem *src_base)
+void imx53_boot_save_loc(void __iomem *src_base)
 {
 	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR) & 0xff;
@@ -215,14 +211,12 @@ int imx53_boot_save_loc(void __iomem *src_base)
 		src = BOOTSOURCE_NAND;
 
 	imx_set_bootsource(src);
-
-	return 0;
 }
 
 #define IMX6_SRC_SBMR1	0x04
 #define IMX6_SRC_SBMR2	0x1c
 
-int imx6_boot_save_loc(void __iomem *src_base)
+void imx6_boot_save_loc(void __iomem *src_base)
 {
 	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2) >> 24;
@@ -245,7 +239,7 @@ int imx6_boot_save_loc(void __iomem *src_base)
 
 	imx_set_bootsource(src);
 
-	return 0;
+	return;
 
 internal_boot:
 
@@ -276,5 +270,5 @@ internal_boot:
 
 	imx_set_bootsource(src);
 
-	return 0;
+	return;
 }
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index a271b5b..e6edb94 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -16,11 +16,11 @@ enum imx_bootsource {
 enum imx_bootsource imx_bootsource(void);
 void imx_set_bootsource(enum imx_bootsource src);
 
-int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
+void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
 void imx_27_boot_save_loc(void __iomem *sysctrl_base);
-int imx51_boot_save_loc(void __iomem *src_base);
-int imx53_boot_save_loc(void __iomem *src_base);
-int imx6_boot_save_loc(void __iomem *src_base);
+void imx51_boot_save_loc(void __iomem *src_base);
+void imx53_boot_save_loc(void __iomem *src_base);
+void imx6_boot_save_loc(void __iomem *src_base);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
