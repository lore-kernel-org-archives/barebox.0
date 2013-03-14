Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7B-0003fH-6r
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:38:59 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:40 +0100
Message-Id: <1363282729-18545-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 01/10] ARM i.MX bootsource: convert enums from enum
 imx_bootsource to uppercase
To: barebox@lists.infradead.org

Enums are in the same way as defines, so write them in uppercase.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c |  2 +-
 arch/arm/boards/karo-tx53/board.c          |  4 +-
 arch/arm/boards/pcm038/pcm038.c            |  2 +-
 arch/arm/mach-imx/boot.c                   | 90 +++++++++++++++---------------
 arch/arm/mach-imx/include/mach/generic.h   | 18 +++---
 5 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 5c02689..03399a3 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -479,7 +479,7 @@ device_initcall(efikamx_devices_init);
 
 static int efikamx_part_init(void)
 {
-	if (imx_bootsource() == bootsource_mmc) {
+	if (imx_bootsource() == BOOTSOURCE_MMC) {
 		devfs_add_partition("mmc_left", 0x00000, 0x80000,
 				DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("mmc_left", 0x80000, 0x80000,
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 8a69e99..3112552 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -235,12 +235,12 @@ static int tx53_part_init(void)
 	const char *envdev;
 
 	switch (imx_bootsource()) {
-	case bootsource_mmc:
+	case BOOTSOURCE_MMC:
 		devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
 		envdev = "MMC";
 		break;
-	case bootsource_nand:
+	case BOOTSOURCE_NAND:
 	default:
 		devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 5e9c0fd..af31414 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -296,7 +296,7 @@ static int pcm038_devices_init(void)
 	imx27_add_fec(&fec_info);
 
 	switch (imx_bootsource()) {
-	case bootsource_nand:
+	case BOOTSOURCE_NAND:
 		devfs_add_partition("nand0", 0x00000, 0x80000,
 					DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8c7f8ee..4c43487 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -20,15 +20,15 @@
 #include <mach/generic.h>
 
 static const char *bootsource_str[] = {
-	[bootsource_unknown] = "unknown",
-	[bootsource_nand] = "nand",
-	[bootsource_nor] = "nor",
-	[bootsource_mmc] = "mmc",
-	[bootsource_i2c] = "i2c",
-	[bootsource_spi] = "spi",
-	[bootsource_serial] = "serial",
-	[bootsource_onenand] = "onenand",
-	[bootsource_hd] = "harddisk",
+	[BOOTSOURCE_UNKNOWN] = "unknown",
+	[BOOTSOURCE_NAND] = "nand",
+	[BOOTSOURCE_NOR] = "nor",
+	[BOOTSOURCE_MMC] = "mmc",
+	[BOOTSOURCE_I2C] = "i2c",
+	[BOOTSOURCE_SPI] = "spi",
+	[BOOTSOURCE_SERIAL] = "serial",
+	[BOOTSOURCE_ONENAND] = "onenand",
+	[BOOTSOURCE_HD] = "harddisk",
 };
 
 static enum imx_bootsource bootsource;
@@ -36,7 +36,7 @@ static enum imx_bootsource bootsource;
 void imx_set_bootsource(enum imx_bootsource src)
 {
 	if (src >= ARRAY_SIZE(bootsource_str))
-		src = bootsource_unknown;
+		src = BOOTSOURCE_UNKNOWN;
 
 	bootsource = src;
 
@@ -54,25 +54,25 @@ BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
 /* [CTRL][TYPE] */
 static const enum imx_bootsource locations[4][4] = {
 	{ /* CTRL = WEIM */
-		bootsource_nor,
-		bootsource_unknown,
-		bootsource_onenand,
-		bootsource_unknown,
+		BOOTSOURCE_NOR,
+		BOOTSOURCE_UNKNOWN,
+		BOOTSOURCE_ONENAND,
+		BOOTSOURCE_UNKNOWN,
 	}, { /* CTRL == NAND */
-		bootsource_nand,
-		bootsource_nand,
-		bootsource_nand,
-		bootsource_nand,
+		BOOTSOURCE_NAND,
+		BOOTSOURCE_NAND,
+		BOOTSOURCE_NAND,
+		BOOTSOURCE_NAND,
 	}, { /* CTRL == ATA, (imx35 only) */
-		bootsource_unknown,
-		bootsource_unknown, /* might be p-ata */
-		bootsource_unknown,
-		bootsource_unknown,
+		BOOTSOURCE_UNKNOWN,
+		BOOTSOURCE_UNKNOWN, /* might be p-ata */
+		BOOTSOURCE_UNKNOWN,
+		BOOTSOURCE_UNKNOWN,
 	}, { /* CTRL == expansion */
-		bootsource_mmc, /* note imx25 could also be: movinand, ce-ata */
-		bootsource_unknown,
-		bootsource_i2c,
-		bootsource_spi,
+		BOOTSOURCE_MMC, /* note imx25 could also be: movinand, ce-ata */
+		BOOTSOURCE_UNKNOWN,
+		BOOTSOURCE_I2C,
+		BOOTSOURCE_SPI,
 	}
 };
 
@@ -132,16 +132,16 @@ void imx_27_boot_save_loc(void __iomem *sysctrl_base)
 
 	switch (val) {
 	case IMX27_GPCR_BOOT_UART_USB:
-		src = bootsource_serial;
+		src = BOOTSOURCE_SERIAL;
 		break;
 	case IMX27_GPCR_BOOT_8BIT_NAND_2k:
 	case IMX27_GPCR_BOOT_16BIT_NAND_2k:
 	case IMX27_GPCR_BOOT_16BIT_NAND_512:
 	case IMX27_GPCR_BOOT_8BIT_NAND_512:
-		src = bootsource_nand;
+		src = BOOTSOURCE_NAND;
 		break;
 	default:
-		src = bootsource_nor;
+		src = BOOTSOURCE_NOR;
 		break;
 	}
 
@@ -155,7 +155,7 @@ void imx_27_boot_save_loc(void __iomem *sysctrl_base)
 
 int imx51_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = bootsource_unknown;
+	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t reg;
 	unsigned int ctrl, type;
 
@@ -172,10 +172,10 @@ int imx51_boot_save_loc(void __iomem *src_base)
 		break;
 	case 1:
 		/* reserved */
-		src = bootsource_unknown;
+		src = BOOTSOURCE_UNKNOWN;
 		break;
 	case 3:
-		src = bootsource_serial;
+		src = BOOTSOURCE_SERIAL;
 		break;
 
 	}
@@ -188,31 +188,31 @@ int imx51_boot_save_loc(void __iomem *src_base)
 #define IMX53_SRC_SBMR	0x4
 int imx53_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = bootsource_unknown;
+	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR) & 0xff;
 
 	switch (cfg1 >> 4) {
 	case 2:
-		src = bootsource_hd;
+		src = BOOTSOURCE_HD;
 		break;
 	case 3:
 		if (cfg1 & (1 << 3))
-			src = bootsource_spi;
+			src = BOOTSOURCE_SPI;
 		else
-			src = bootsource_i2c;
+			src = BOOTSOURCE_I2C;
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
-		src = bootsource_mmc;
+		src = BOOTSOURCE_MMC;
 		break;
 	default:
 		break;
 	}
 
 	if (cfg1 & (1 << 7))
-		src = bootsource_nand;
+		src = BOOTSOURCE_NAND;
 
 	imx_set_bootsource(src);
 
@@ -224,7 +224,7 @@ int imx53_boot_save_loc(void __iomem *src_base)
 
 int imx6_boot_save_loc(void __iomem *src_base)
 {
-	enum imx_bootsource src = bootsource_unknown;
+	enum imx_bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2) >> 24;
 	uint32_t cfg1 = readl(src_base + IMX6_SRC_SBMR1) & 0xff;
 	uint32_t boot_cfg_4_2_0;
@@ -237,7 +237,7 @@ int imx6_boot_save_loc(void __iomem *src_base)
 	case 2: /* internal boot */
 		goto internal_boot;
 	case 1: /* Serial Downloader */
-		src = bootsource_serial;
+		src = BOOTSOURCE_SERIAL;
 		break;
 	case 3: /* reserved */
 		break;
@@ -251,28 +251,28 @@ internal_boot:
 
 	switch (cfg1 >> 4) {
 	case 2:
-		src = bootsource_hd;
+		src = BOOTSOURCE_HD;
 		break;
 	case 3:
 		boot_cfg_4_2_0 = (cfg1 >> 16) & 0x7;
 
 		if (boot_cfg_4_2_0 > 4)
-			src = bootsource_i2c;
+			src = BOOTSOURCE_I2C;
 		else
-			src = bootsource_spi;
+			src = BOOTSOURCE_SPI;
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
-		src = bootsource_mmc;
+		src = BOOTSOURCE_MMC;
 		break;
 	default:
 		break;
 	}
 
 	if (cfg1 & (1 << 7))
-		src = bootsource_nand;
+		src = BOOTSOURCE_NAND;
 
 	imx_set_bootsource(src);
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 5e600a3..a271b5b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -2,15 +2,15 @@
 u64 imx_uid(void);
 
 enum imx_bootsource {
-	bootsource_unknown,
-	bootsource_nand,
-	bootsource_nor,
-	bootsource_mmc,
-	bootsource_i2c,
-	bootsource_spi,
-	bootsource_serial,
-	bootsource_onenand,
-	bootsource_hd,
+	BOOTSOURCE_UNKNOWN,
+	BOOTSOURCE_NAND,
+	BOOTSOURCE_NOR,
+	BOOTSOURCE_MMC,
+	BOOTSOURCE_I2C,
+	BOOTSOURCE_SPI,
+	BOOTSOURCE_SERIAL,
+	BOOTSOURCE_ONENAND,
+	BOOTSOURCE_HD,
 };
 
 enum imx_bootsource imx_bootsource(void);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
