Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHYd-0005du-Tz
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 06:52:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 08:52:22 +0200
Message-Id: <1364971945-24352-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
References: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] bootsource: create arch independent bootsource framework
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

This patch seperates the imx independent from the arch independent code. The
following functions and enums are renamed:

- imx_bootsource() -> bootsource_get()
- imx_set_bootsource() -> bootsource_set()
- enum imx_bootsource -> enum bootsource

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c |  3 +-
 arch/arm/boards/karo-tx53/board.c          |  3 +-
 arch/arm/boards/pcm038/pcm038.c            |  3 +-
 arch/arm/mach-imx/boot.c                   | 57 +++++++-----------------------
 arch/arm/mach-imx/include/mach/generic.h   | 15 --------
 common/Makefile                            |  1 +
 common/bootsource.c                        | 53 +++++++++++++++++++++++++++
 include/bootsource.h                       | 19 ++++++++++
 8 files changed, 92 insertions(+), 62 deletions(-)
 create mode 100644 common/bootsource.c
 create mode 100644 include/bootsource.h

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 03399a3..e9b6062 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <bootsource.h>
 #include <net.h>
 #include <init.h>
 #include <environment.h>
@@ -479,7 +480,7 @@ device_initcall(efikamx_devices_init);
 
 static int efikamx_part_init(void)
 {
-	if (imx_bootsource() == BOOTSOURCE_MMC) {
+	if (bootsource_get() == BOOTSOURCE_MMC) {
 		devfs_add_partition("mmc_left", 0x00000, 0x80000,
 				DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("mmc_left", 0x80000, 0x80000,
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index f3976ee..6ead6a9 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -13,6 +13,7 @@
  *
  */
 #include <common.h>
+#include <bootsource.h>
 #include <environment.h>
 #include <fcntl.h>
 #include <fec.h>
@@ -234,7 +235,7 @@ static int tx53_part_init(void)
 {
 	const char *envdev;
 
-	switch (imx_bootsource()) {
+	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 78ed2ef..df8b1f9 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -16,6 +16,7 @@
 #define pr_fmt(fmt) "pcm038: " fmt
 
 #include <common.h>
+#include <bootsource.h>
 #include <net.h>
 #include <init.h>
 #include <environment.h>
@@ -299,7 +300,7 @@ static int pcm038_devices_init(void)
 	 */
 	imx27_add_fec(&fec_info);
 
-	switch (imx_bootsource()) {
+	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
 		devfs_add_partition("nand0", 0x00000, 0x80000,
 					DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 3d0b09b..7824206 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -12,6 +12,7 @@
  */
 
 #include <common.h>
+#include <bootsource.h>
 #include <environment.h>
 #include <init.h>
 #include <magicvar.h>
@@ -21,40 +22,8 @@
 #include <mach/imx25-regs.h>
 #include <mach/imx35-regs.h>
 
-static const char *bootsource_str[] = {
-	[BOOTSOURCE_UNKNOWN] = "unknown",
-	[BOOTSOURCE_NAND] = "nand",
-	[BOOTSOURCE_NOR] = "nor",
-	[BOOTSOURCE_MMC] = "mmc",
-	[BOOTSOURCE_I2C] = "i2c",
-	[BOOTSOURCE_SPI] = "spi",
-	[BOOTSOURCE_SERIAL] = "serial",
-	[BOOTSOURCE_ONENAND] = "onenand",
-	[BOOTSOURCE_HD] = "harddisk",
-};
-
-static enum imx_bootsource bootsource;
-
-void imx_set_bootsource(enum imx_bootsource src)
-{
-	if (src >= ARRAY_SIZE(bootsource_str))
-		src = BOOTSOURCE_UNKNOWN;
-
-	bootsource = src;
-
-	setenv("bootsource", bootsource_str[src]);
-	export("bootsource");
-}
-
-enum imx_bootsource imx_bootsource(void)
-{
-	return bootsource;
-}
-
-BAREBOX_MAGICVAR(bootsource, "The source barebox has been booted from");
-
 /* [CTRL][TYPE] */
-static const enum imx_bootsource locations[4][4] = {
+static const enum bootsource locations[4][4] = {
 	{ /* CTRL = WEIM */
 		BOOTSOURCE_NOR,
 		BOOTSOURCE_UNKNOWN,
@@ -98,11 +67,11 @@ static const enum imx_bootsource locations[4][4] = {
  */
 static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 {
-	enum imx_bootsource src;
+	enum bootsource src;
 
 	src = locations[ctrl][type];
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 }
 
 void imx25_boot_save_loc(void __iomem *ccm_base)
@@ -136,7 +105,7 @@ void imx35_boot_save_loc(void __iomem *ccm_base)
 
 void imx27_boot_save_loc(void __iomem *sysctrl_base)
 {
-	enum imx_bootsource src;
+	enum bootsource src;
 	uint32_t val;
 
 	val = readl(sysctrl_base + IMX27_SYSCTRL_GPCR);
@@ -158,7 +127,7 @@ void imx27_boot_save_loc(void __iomem *sysctrl_base)
 		break;
 	}
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 }
 
 #define IMX51_SRC_SBMR			0x4
@@ -168,7 +137,7 @@ void imx27_boot_save_loc(void __iomem *sysctrl_base)
 
 void imx51_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t reg;
 	unsigned int ctrl, type;
 
@@ -193,13 +162,13 @@ void imx51_boot_save_loc(void __iomem *src_base)
 
 	}
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 }
 
 #define IMX53_SRC_SBMR	0x4
 void imx53_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR) & 0xff;
 
 	switch (cfg1 >> 4) {
@@ -225,7 +194,7 @@ void imx53_boot_save_loc(void __iomem *src_base)
 	if (cfg1 & (1 << 7))
 		src = BOOTSOURCE_NAND;
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 }
 
 #define IMX6_SRC_SBMR1	0x04
@@ -233,7 +202,7 @@ void imx53_boot_save_loc(void __iomem *src_base)
 
 void imx6_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2) >> 24;
 	uint32_t cfg1 = readl(src_base + IMX6_SRC_SBMR1) & 0xff;
 	uint32_t boot_cfg_4_2_0;
@@ -252,7 +221,7 @@ void imx6_boot_save_loc(void __iomem *src_base)
 		break;
 	};
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 
 	return;
 
@@ -283,7 +252,7 @@ internal_boot:
 	if (cfg1 & (1 << 7))
 		src = BOOTSOURCE_NAND;
 
-	imx_set_bootsource(src);
+	bootsource_set(src);
 
 	return;
 }
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 58d487a..189b32f 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -3,21 +3,6 @@
 
 u64 imx_uid(void);
 
-enum imx_bootsource {
-	BOOTSOURCE_UNKNOWN,
-	BOOTSOURCE_NAND,
-	BOOTSOURCE_NOR,
-	BOOTSOURCE_MMC,
-	BOOTSOURCE_I2C,
-	BOOTSOURCE_SPI,
-	BOOTSOURCE_SERIAL,
-	BOOTSOURCE_ONENAND,
-	BOOTSOURCE_HD,
-};
-
-enum imx_bootsource imx_bootsource(void);
-void imx_set_bootsource(enum imx_bootsource src);
-
 void imx25_boot_save_loc(void __iomem *ccm_base);
 void imx35_boot_save_loc(void __iomem *ccm_base);
 void imx27_boot_save_loc(void __iomem *sysctrl_base);
diff --git a/common/Makefile b/common/Makefile
index 1b3b009..dcb07c2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -40,6 +40,7 @@ obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
+obj-y += bootsource.o
 extra-$(CONFIG_MODULES) += module.lds
 extra-y += barebox_default_env barebox_default_env.h
 
diff --git a/common/bootsource.c b/common/bootsource.c
new file mode 100644
index 0000000..6f9ae54
--- /dev/null
+++ b/common/bootsource.c
@@ -0,0 +1,53 @@
+/*
+ *
+ * Copyright (C) 2011 Marc Reilly <marc@cpdesign.com.au>
+ * Copyright (C) 2013 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <magicvar.h>
+
+static const char *bootsource_str[] = {
+	[BOOTSOURCE_UNKNOWN] = "unknown",
+	[BOOTSOURCE_NAND] = "nand",
+	[BOOTSOURCE_NOR] = "nor",
+	[BOOTSOURCE_MMC] = "mmc",
+	[BOOTSOURCE_I2C] = "i2c",
+	[BOOTSOURCE_SPI] = "spi",
+	[BOOTSOURCE_SERIAL] = "serial",
+	[BOOTSOURCE_ONENAND] = "onenand",
+	[BOOTSOURCE_HD] = "harddisk",
+};
+
+static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
+
+void bootsource_set(enum bootsource src)
+{
+	if (src >= ARRAY_SIZE(bootsource_str))
+		src = BOOTSOURCE_UNKNOWN;
+
+	bootsource = src;
+
+	setenv("bootsource", bootsource_str[src]);
+	export("bootsource");
+}
+
+enum bootsource bootsource_get(void)
+{
+	return bootsource;
+}
+
+BAREBOX_MAGICVAR(bootsource, "The source barebox has been booted from");
diff --git a/include/bootsource.h b/include/bootsource.h
new file mode 100644
index 0000000..ecd5938
--- /dev/null
+++ b/include/bootsource.h
@@ -0,0 +1,19 @@
+#ifndef __BOOTSOURCE_H__
+#define __BOOTSOURCE_H__
+
+enum bootsource {
+	BOOTSOURCE_UNKNOWN,
+	BOOTSOURCE_NAND,
+	BOOTSOURCE_NOR,
+	BOOTSOURCE_MMC,
+	BOOTSOURCE_I2C,
+	BOOTSOURCE_SPI,
+	BOOTSOURCE_SERIAL,
+	BOOTSOURCE_ONENAND,
+	BOOTSOURCE_HD,
+};
+
+enum bootsource bootsource_get(void);
+void bootsource_set(enum bootsource src);
+
+#endif	/* __BOOTSOURCE_H__ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
