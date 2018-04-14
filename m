Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKf-0001zP-M6
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:29 +0000
Received: by mail-pl0-x244.google.com with SMTP id e7-v6so7790468plt.6
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:58 -0700
Message-Id: <20180414175103.10125-13-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/17] ARM: i.MX53: boot: Move magic numbers info utility
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8fbccb260..3cd79acfc 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -169,6 +169,7 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 }
 
 #define IMX53_SRC_SBMR	0x4
+#define IMX53_BMOD_SERIAL	0b11
 
 static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
 {
@@ -187,17 +188,27 @@ static int imx53_bootsource_internal(uint32_t r)
 	return sbmr(r, 7, 4);	/* BOOT_CFG1[7:4] */
 }
 
+static int imx53_port_select(uint32_t r)
+{
+	return sbmr(r, 21, 20);	/* BOOT_CFG3[5:4] */
+}
+
 static bool imx53_bootsource_nand(uint32_t r)
 {
 	return BOOT_CFG1(r, 7);
 }
 
+static enum bootsource imx53_bootsource_serial_rom(uint32_t r)
+{
+	return BOOT_CFG1(r, 3) ? BOOTSOURCE_SPI : BOOTSOURCE_I2C;
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
 
-	if (imx53_get_bmod(cfg1) == 0x3) {
+	if (imx53_get_bmod(cfg1) == IMX53_BMOD_SERIAL) {
 		*src = BOOTSOURCE_USB;
 		*instance = 0;
 		return;
@@ -208,10 +219,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
-		if (cfg1 & (1 << 3))
-			*src = BOOTSOURCE_SPI;
-		else
-			*src = BOOTSOURCE_I2C;
+		*src = imx53_bootsource_serial_rom(cfg1);
 		break;
 	case 4:
 	case 5:
@@ -229,7 +237,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 	case BOOTSOURCE_MMC:
 	case BOOTSOURCE_SPI:
 	case BOOTSOURCE_I2C:
-		*instance = (cfg1 >> 20) & 0x3;
+		*instance = imx53_port_select(cfg1);
 		break;
 	default:
 		*instance = 0;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
