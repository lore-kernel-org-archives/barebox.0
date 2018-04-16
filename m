Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rm-0003vT-Tl
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:44 +0000
Received: by mail-pf0-x244.google.com with SMTP id o16so10996449pfk.9
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:53 -0700
Message-Id: <20180416193157.16094-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180416193157.16094-1-andrew.smirnov@gmail.com>
References: <20180416193157.16094-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/19] ARM: i.MX6: boot: Move magic numbers into utility
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move magic numbers and algorithm for determining Serial ROM bootsource
and boot instance into utility functions. Add a comment on the logic
behing the latter while at it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 67 ++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 53 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 799d5ec93..60307ffb6 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -176,7 +176,9 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 #define __BOOT_CFG(n, m, l)	GENMASK((m) + ((n) - 1) * 8, \
 					(l) + ((n) - 1) * 8)
 #define BOOT_CFG1(m, l)		__BOOT_CFG(1, m, l)
+#define BOOT_CFG2(m, l)		__BOOT_CFG(2, m, l)
 #define BOOT_CFG3(m, l)		__BOOT_CFG(3, m, l)
+#define BOOT_CFG4(m, l)		__BOOT_CFG(4, m, l)
 
 #define ___BOOT_CFG(n, i)	__BOOT_CFG(n, i, i)
 #define __MAKE_BOOT_CFG_BITS(idx)					\
@@ -192,6 +194,8 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 	};
 
 __MAKE_BOOT_CFG_BITS(1)
+__MAKE_BOOT_CFG_BITS(2)
+__MAKE_BOOT_CFG_BITS(4)
 #undef __MAKE_BOOT_CFG
 #undef ___BOOT_CFG
 
@@ -287,12 +291,57 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
 		!(sbmr2 & BT_FUSE_SEL));
 }
 
+static int __imx6_bootsource_serial_rom(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG4(2, 0), r);
+}
+
+/*
+ * Serial ROM bootsource on i.MX6 are as follows:
+ *
+ *	000 - ECSPI-1
+ *	001 - ECSPI-2
+ *	010 - ECSPI-3
+ *	011 - ECSPI-4
+ *	100 - ECSPI-5
+ *	101 - I2C1
+ *	110 - I2C2
+ *	111 - I2C3
+ *
+ * There's no single bit that would tell us we are booting from I2C or
+ * SPI, so we just have to compare the "source" agains the value for
+ * I2C1 for both: calculating bootsource and boot instance.
+ */
+#define IMX6_BOOTSOURCE_SERIAL_ROM_I2C1	0b101
+
+static enum bootsource imx6_bootsource_serial_rom(uint32_t sbmr)
+{
+	const int source = __imx6_bootsource_serial_rom(sbmr);
+
+	return source < IMX6_BOOTSOURCE_SERIAL_ROM_I2C1 ?
+		BOOTSOURCE_SPI : BOOTSOURCE_I2C;
+}
+
+static int imx6_boot_instance_serial_rom(uint32_t sbmr)
+{
+	const int source = __imx6_bootsource_serial_rom(sbmr);
+
+	if (source < IMX6_BOOTSOURCE_SERIAL_ROM_I2C1)
+		return source;
+
+	return source - IMX6_BOOTSOURCE_SERIAL_ROM_I2C1;
+}
+
+static int imx6_boot_instance_mmc(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG2(4, 3), r);
+}
+
 void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX6_SRC_BASE_ADDR);
 	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
-	uint32_t boot_cfg_4_2_0;
 
 	if (imx6_bootsource_reserved(sbmr2))
 		return;
@@ -307,25 +356,15 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
-		/* BOOT_CFG4[2:0] */
-		boot_cfg_4_2_0 = (sbmr1 >> 24) & 0x7;
-
-		if (boot_cfg_4_2_0 > 4) {
-			*src = BOOTSOURCE_I2C;
-			*instance = boot_cfg_4_2_0 - 5;
-		} else {
-			*src = BOOTSOURCE_SPI;
-			*instance = boot_cfg_4_2_0;
-		}
+		*src = imx6_bootsource_serial_rom(sbmr1);
+		*instance = imx6_boot_instance_serial_rom(sbmr1);
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
 		*src = BOOTSOURCE_MMC;
-
-		/* BOOT_CFG2[4:3] */
-		*instance = (sbmr1 >> 11) & 0x3;
+		*instance = imx6_boot_instance_mmc(sbmr1);
 		break;
 	default:
 		if (imx53_bootsource_nand(sbmr1))
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
