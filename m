Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiW-0002Ki-Hq
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:05:00 +0000
Received: by mail-pl0-x244.google.com with SMTP id e11-v6so4414124plb.3
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:26 -0700
Message-Id: <20180810190429.10823-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] ARM: i.MX: boot: Rework boot source detection for i.MX7
 and i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

For both SoCs data found in SBMR registers reflects only the boot
source that was selected via pins of fuses and not the final boot
source that ended up being used by MaskROM code. Original i.MX7 boot
source detection implementation worked around that fact by having a
special code to correctly handle "Manufacturing Mode".

MaskROM in i.MX8MQ changed what SoC uses as recovery device and
switched it to be USDHC2. It also made recovery device switch always
enabled. Since correct actual boot source detection is important to
being able to properly boot i.MX8MQ (due to not using DCD to
initialize RAM), change the code to handle described exception.

Instead of trying to adapt original i.MX7 code with yet another
special case if(), change the whole thing to do what U-Boot does on
i.MX7 and i.MX8MQ and use "Boot information for software" provided by
recent (found in i.MX7 and i.MX8MQ) versions of MaskROM.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 97 +++++++++++++---------------------------
 1 file changed, 30 insertions(+), 67 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 45170ab10..f1fc40479 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -28,6 +28,7 @@
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
 #include <mach/vf610-regs.h>
+#include <mach/imx8mq.h>
 
 
 static void
@@ -424,32 +425,12 @@ void imx6_boot_save_loc(void)
 	imx_boot_save_loc(imx6_get_boot_source);
 }
 
-#define IMX7_SRC_SBMR1	0x58
-#define IMX7_SRC_SBMR2	0x70
+#define IMX7_BOOT_SW_INFO_POINTER_ADDR		0x000001E8
+#define IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0	0x000009e8
+#define IMX8M_BOOT_SW_INFO_POINTER_ADDR_B0	0x00000968
 
-/*
- * Re-defined to match the naming in reference manual
- */
-#define BOOT_CFG(m, l)	BOOT_CFG1(m, l)
-
-#define IMX_BOOT_SW_INFO_POINTER_ADDR	0x000001E8
 #define IMX_BOOT_SW_INFO_BDT_SD		0x1
 
-static unsigned int imx7_bootsource_internal(uint32_t r)
-{
-	return FIELD_GET(BOOT_CFG(15, 12), r);
-}
-
-static int imx7_boot_instance_spi_nor(uint32_t r)
-{
-	return FIELD_GET(BOOT_CFG(11, 9), r);
-}
-
-static int imx7_boot_instance_mmc(uint32_t r)
-{
-	return FIELD_GET(BOOT_CFG(11, 10), r);
-}
-
 struct imx_boot_sw_info {
 	uint8_t  reserved_1;
 	uint8_t  boot_device_instance;
@@ -460,60 +441,26 @@ struct imx_boot_sw_info {
 	uint32_t reserved_3[3];
 } __packed;
 
-void imx7_get_boot_source(enum bootsource *src, int *instance)
+static void __imx7_get_boot_source(enum bootsource *src, int *instance,
+				   unsigned long boot_sw_info_pointer_addr)
 {
-	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
-	uint32_t sbmr1 = readl(src_base + IMX7_SRC_SBMR1);
-	uint32_t sbmr2 = readl(src_base + IMX7_SRC_SBMR2);
+	const struct imx_boot_sw_info *info;
 
-	if (imx6_bootsource_reserved(sbmr2))
-		return;
+	info = (const void *)(unsigned long)
+		readl(boot_sw_info_pointer_addr);
 
-	if (imx6_bootsource_serial(sbmr2)) {
-		/*
-		 * On i.MX7 ROM code will try to bood from uSDHC1
-		 * before entering serial mode. It doesn't seem to be
-		 * reflected in the contents of SBMR1 in any way when
-		 * that happens, so we check "Boot_SW_Info" structure
-		 * (per 6.6.14 Boot information for software) to see
-		 * if that really happened.
-		 *
-		 * FIXME: This behaviour can be inhibited by
-		 * DISABLE_SDMMC_MFG, but location of that fuse
-		 * doesn't seem to be documented anywhere. Once that
-		 * is known it should be taken into account here.
-		 */
-		const struct imx_boot_sw_info *info;
-
-		info = (const void *)(unsigned long)
-			readl(IMX_BOOT_SW_INFO_POINTER_ADDR);
-
-		if (info->boot_device_type == IMX_BOOT_SW_INFO_BDT_SD) {
-			*src = BOOTSOURCE_MMC;
-			/*
-			 * We are expecting to only ever boot from
-			 * uSDHC1 here
-			 */
-			WARN_ON(*instance = info->boot_device_instance);
-			return;
-		}
-
-		*src = BOOTSOURCE_SERIAL;
-		return;
-	}
-
-	switch (imx7_bootsource_internal(sbmr1)) {
+	switch (info->boot_device_type) {
 	case 1:
 	case 2:
 		*src = BOOTSOURCE_MMC;
-		*instance = imx7_boot_instance_mmc(sbmr1);
+		*instance = info->boot_device_instance;
 		break;
 	case 3:
 		*src = BOOTSOURCE_NAND;
 		break;
 	case 6:
 		*src = BOOTSOURCE_SPI_NOR;
-		*instance = imx7_boot_instance_spi_nor(sbmr1);
+		*instance = info->boot_device_instance;
 		break;
 	case 4:
 		*src = BOOTSOURCE_SPI; /* Really: qspi */
@@ -526,6 +473,11 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
+void imx7_get_boot_source(enum bootsource *src, int *instance)
+{
+	__imx7_get_boot_source(src, instance, IMX7_BOOT_SW_INFO_POINTER_ADDR);
+}
+
 void imx7_boot_save_loc(void)
 {
 	imx_boot_save_loc(imx7_get_boot_source);
@@ -626,6 +578,17 @@ void vf610_boot_save_loc(void)
 }
 
 void imx8_get_boot_source(enum bootsource *src, int *instance)
-	__alias(imx7_get_boot_source);
+{
+	unsigned long addr;
+
+	addr = (imx8mq_cpu_revision() == IMX_CHIP_REV_1_0) ?
+		IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0 :
+		IMX8M_BOOT_SW_INFO_POINTER_ADDR_B0;
 
-void imx8_boot_save_loc(void) __alias(imx7_boot_save_loc);
+	__imx7_get_boot_source(src, instance, addr);
+}
+
+void imx8_boot_save_loc(void)
+{
+	imx_boot_save_loc(imx8_get_boot_source);
+}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
