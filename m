Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkTsz-00070r-B6
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 06:41:26 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so942205bkh.39
 for <barebox@lists.infradead.org>; Wed, 05 Jun 2013 23:40:59 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Thu,  6 Jun 2013 08:32:49 +0200
Message-Id: <1370500369-3657-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH] ARM i.MX6: Fix bootsource detection
To: barebox@lists.infradead.org

This patch fixes bootsource detection on i.MX6 for serial and i2c boot.
The bootsource_instance is now determined for spi, i2c, and mmc/sd boot.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/mach-imx/boot.c |   26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index bd0cb84..4d81fd4 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -217,11 +217,13 @@ void imx53_boot_save_loc(void __iomem *src_base)
 void imx6_boot_save_loc(void __iomem *src_base)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2) >> 24;
-	uint32_t cfg1 = readl(src_base + IMX6_SRC_SBMR1) & 0xff;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
+	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
 	uint32_t boot_cfg_4_2_0;
 	int boot_mode;
 
+	/* BMOD[1:0] */
 	boot_mode = (sbmr2 >> 24) & 0x3;
 
 	switch (boot_mode) {
@@ -241,32 +243,42 @@ void imx6_boot_save_loc(void __iomem *src_base)
 
 internal_boot:
 
-	switch (cfg1 >> 4) {
+	/* BOOT_CFG1[7:4] */
+	switch ((sbmr1 >> 4) & 0xf) {
 	case 2:
 		src = BOOTSOURCE_HD;
 		break;
 	case 3:
-		boot_cfg_4_2_0 = (cfg1 >> 16) & 0x7;
+		/* BOOT_CFG4[2:0] */
+		boot_cfg_4_2_0 = (sbmr1 >> 24) & 0x7;
 
-		if (boot_cfg_4_2_0 > 4)
+		if (boot_cfg_4_2_0 > 4) {
 			src = BOOTSOURCE_I2C;
-		else
+			instance = boot_cfg_4_2_0 - 5;
+		} else {
 			src = BOOTSOURCE_SPI;
+			instance = boot_cfg_4_2_0;
+		}
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
 		src = BOOTSOURCE_MMC;
+
+		/* BOOT_CFG2[4:3] */
+		instance = (sbmr1 >> 11) & 0x3;
 		break;
 	default:
 		break;
 	}
 
-	if (cfg1 & (1 << 7))
+	/* BOOT_CFG1[7:0] */
+	if (sbmr1 & (1 << 7))
 		src = BOOTSOURCE_NAND;
 
 	bootsource_set(src);
+	bootsource_set_instance(instance);
 
 	return;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
