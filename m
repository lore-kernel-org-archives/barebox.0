Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f89rq-0003xf-I8
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 19:32:48 +0000
Received: by mail-pg0-x244.google.com with SMTP id j3so4279019pgf.2
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 12:32:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 12:31:56 -0700
Message-Id: <20180416193157.16094-19-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/19] ARM: VFxxx: Implement code to detect bootsource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c                 | 91 ++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/generic.h |  2 +
 2 files changed, 93 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 3f67c2510..f8a04d8f3 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -27,6 +27,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/vf610-regs.h>
 
 /* [CTRL][TYPE] */
 static const enum bootsource locations[4][4] = {
@@ -474,6 +475,95 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	}
 }
 
+static int vf610_boot_instance_spi(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG1_1, r);
+}
+
+static int vf610_boot_instance_nor(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG1_3, r);
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
+	return FIELD_GET(BOOT_CFG4_2, r) ? BOOTSOURCE_I2C : BOOTSOURCE_SPI_NOR;
+}
+
+static int vf610_boot_instance_serial_rom(uint32_t r)
+{
+	return __imx6_bootsource_serial_rom(r) & 0b11;
+}
+
+static int vf610_boot_instance_can(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG1_0, r);
+}
+
+static int vf610_boot_instance_mmc(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG2_3, r);
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
@@ -499,3 +589,4 @@ IMX_BOOT_SAVE_LOC(imx51)
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
