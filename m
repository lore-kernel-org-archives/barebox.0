Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kQ-PU
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:20 +0200
Message-Id: <1437036628-29439-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] ARM: i.MX6: add function to get bootsource in pbl
To: Barebox List <barebox@lists.infradead.org>

In the pbl the regular bootsource_get cannot be used. Add a function
which returns the bootsource directly with values from the hardware.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 38 ++++++++++++++++++--------------
 arch/arm/mach-imx/include/mach/generic.h |  2 ++
 2 files changed, 24 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4416011..376e370 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -21,6 +21,7 @@
 #include <mach/generic.h>
 #include <mach/imx25-regs.h>
 #include <mach/imx35-regs.h>
+#include <mach/imx6-regs.h>
 
 /* [CTRL][TYPE] */
 static const enum bootsource locations[4][4] = {
@@ -214,10 +215,9 @@ void imx53_boot_save_loc(void __iomem *src_base)
 #define IMX6_SRC_SBMR1	0x04
 #define IMX6_SRC_SBMR2	0x1c
 
-void imx6_boot_save_loc(void __iomem *src_base)
+void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	void __iomem *src_base = IOMEM(MX6_SRC_BASE_ADDR);
 	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
 	uint32_t boot_cfg_4_2_0;
@@ -231,14 +231,12 @@ void imx6_boot_save_loc(void __iomem *src_base)
 	case 2: /* internal boot */
 		goto internal_boot;
 	case 1: /* Serial Downloader */
-		src = BOOTSOURCE_SERIAL;
+		*src = BOOTSOURCE_SERIAL;
 		break;
 	case 3: /* reserved */
 		break;
 	};
 
-	bootsource_set(src);
-
 	return;
 
 internal_boot:
@@ -246,28 +244,28 @@ internal_boot:
 	/* BOOT_CFG1[7:4] */
 	switch ((sbmr1 >> 4) & 0xf) {
 	case 2:
-		src = BOOTSOURCE_HD;
+		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
 		/* BOOT_CFG4[2:0] */
 		boot_cfg_4_2_0 = (sbmr1 >> 24) & 0x7;
 
 		if (boot_cfg_4_2_0 > 4) {
-			src = BOOTSOURCE_I2C;
-			instance = boot_cfg_4_2_0 - 5;
+			*src = BOOTSOURCE_I2C;
+			*instance = boot_cfg_4_2_0 - 5;
 		} else {
-			src = BOOTSOURCE_SPI;
-			instance = boot_cfg_4_2_0;
+			*src = BOOTSOURCE_SPI;
+			*instance = boot_cfg_4_2_0;
 		}
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
-		src = BOOTSOURCE_MMC;
+		*src = BOOTSOURCE_MMC;
 
 		/* BOOT_CFG2[4:3] */
-		instance = (sbmr1 >> 11) & 0x3;
+		*instance = (sbmr1 >> 11) & 0x3;
 		break;
 	default:
 		break;
@@ -275,10 +273,18 @@ internal_boot:
 
 	/* BOOT_CFG1[7:0] */
 	if (sbmr1 & (1 << 7))
-		src = BOOTSOURCE_NAND;
+		*src = BOOTSOURCE_NAND;
+
+	return;
+}
+
+void imx6_boot_save_loc(void __iomem *src_base)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx6_get_boot_source(&src, &instance);
 
 	bootsource_set(src);
 	bootsource_set_instance(instance);
-
-	return;
 }
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index d4b6a1f..46fe388 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -3,6 +3,7 @@
 
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include <bootsource.h>
 
 u64 imx_uid(void);
 
@@ -12,6 +13,7 @@ void imx27_boot_save_loc(void __iomem *sysctrl_base);
 void imx51_boot_save_loc(void __iomem *src_base);
 void imx53_boot_save_loc(void __iomem *src_base);
 void imx6_boot_save_loc(void __iomem *src_base);
+void imx6_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
 int imx21_init(void);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
