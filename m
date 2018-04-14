Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKt-00022t-JL
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:44 +0000
Received: by mail-pl0-x244.google.com with SMTP id s13-v6so533417plq.11
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:51:02 -0700
Message-Id: <20180414175103.10125-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/17] ARM: VFxxx: Implement code to detect bootsource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c                 | 93 ++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/generic.h |  2 +
 2 files changed, 95 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 0398804b0..24e2501e9 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -26,6 +26,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/vf610-regs.h>
 
 /* [CTRL][TYPE] */
 static const enum bootsource locations[4][4] = {
@@ -177,6 +178,8 @@ static unsigned int sbmr(uint32_t r, unsigned int msb, unsigned int lsb)
 }
 
 #define BOOT_CFG1(r, n)	sbmr(r, n, n)
+#define BOOT_CFG2(r, n)	BOOT_CFG1(r, (n) + 8)
+#define BOOT_CFG4(r, n)	BOOT_CFG1(r, (n) + 24)
 
 static unsigned int imx53_get_bmod(uint32_t r)
 {
@@ -447,6 +450,95 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
+static int vf610_boot_instance_spi(uint32_t r)
+{
+	return BOOT_CFG1(r, 1);
+}
+
+static int vf610_boot_instance_nor(uint32_t r)
+{
+	return BOOT_CFG1(r, 3);
+}
+
+/*
+ * Vybrid's Serial ROM boot sources (BOOT_CFG4[2:0]) are as follows:
+ *
+ *	000 - SPI0
+ *	001 - SPI1
+ *	010 - SPI2
+ *	011 - SPI3
+ *	100 - I2C0
+ *	101 - I2C1
+ *	110 - I2C2
+ *	111 - I2C3
+ *
+ * Which we can neatly divide in two halves and use MSb to detect if
+ * bootsource is I2C or SPI EEPROM and 2 LSbs directly as boot
+ * insance.
+ */
+static enum bootsource vf610_bootsource_serial_rom(uint32_t r)
+{
+	return BOOT_CFG4(r, 2) ? BOOTSOURCE_I2C : BOOTSOURCE_SPI_NOR;
+}
+
+static int vf610_boot_instance_serial_rom(uint32_t r)
+{
+	return __imx6_bootsource_serial_rom(r) & 0b11;
+}
+
+static int vf610_boot_instance_can(uint32_t r)
+{
+	return BOOT_CFG1(r, 0);
+}
+
+static int vf610_boot_instance_mmc(uint32_t r)
+{
+	return BOOT_CFG2(r, 3);
+}
+
+void vf610_get_boot_source(enum bootsource *src, int *instance)
+{
+	void __iomem *src_base = IOMEM(VF610_SRC_BASE_ADDR);
+	uint32_t sbmr1 = readl(src_base + IMX6_SRC_SBMR1);
+	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
+
+	if (imx6_bootsource_reserved(sbmr2))
+		return;
+
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
+	switch (imx53_bootsource_internal(sbmr1)) {
+	case 0:
+		*src = BOOTSOURCE_SPI; /* Really: qspi */
+		*instance = vf610_boot_instance_spi(sbmr1);
+		break;
+	case 1:
+		*src = BOOTSOURCE_NOR;
+		*instance = vf610_boot_instance_nor(sbmr1);
+		break;
+	case 2:
+		*src = vf610_bootsource_serial_rom(sbmr1);
+		*instance = vf610_boot_instance_serial_rom(sbmr1);
+		break;
+	case 3:
+		*src = BOOTSOURCE_CAN;
+		*instance = vf610_boot_instance_can(sbmr1);
+		break;
+	case 6:
+	case 7:
+		*src = BOOTSOURCE_MMC;
+		*instance = vf610_boot_instance_mmc(sbmr1);
+		break;
+	default:
+		if (imx53_bootsource_nand(sbmr1))
+			*src = BOOTSOURCE_NAND;
+		break;
+	}
+}
+
 static void
 imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
 {
@@ -472,3 +564,4 @@ IMX_BOOT_SAVE_LOC(imx51)
 IMX_BOOT_SAVE_LOC(imx53)
 IMX_BOOT_SAVE_LOC(imx6)
 IMX_BOOT_SAVE_LOC(imx7)
+IMX_BOOT_SAVE_LOC(vf610)
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index cb5675185..ad9d9cb02 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -15,6 +15,7 @@ void imx51_boot_save_loc(void);
 void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
 void imx7_boot_save_loc(void);
+void vf610_boot_save_loc(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
 void imx35_get_boot_source(enum bootsource *src, int *instance);
@@ -22,6 +23,7 @@ void imx51_get_boot_source(enum bootsource *src, int *instance);
 void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 void imx7_get_boot_source(enum bootsource *src, int *instance);
+void vf610_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
 int imx21_init(void);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
