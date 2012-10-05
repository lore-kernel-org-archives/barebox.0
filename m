Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iV-UX
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:36 +0200
Message-Id: <1349434416-4231-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] ARM i.MX: rework bootsource setting
To: barebox@lists.infradead.org

This moves the known i.MX bootsource settings to a single file
so that the code can be shared. Also we add a enum for the different
boot sources so that it can be used in C Code and not only on the shell.
The pcm038 board is changed to use it instead of digging in the registers
manually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c             |    8 +-
 arch/arm/mach-imx/boot.c                    |  178 +++++++++++++++++++--------
 arch/arm/mach-imx/imx25.c                   |    7 ++
 arch/arm/mach-imx/imx35.c                   |    6 +
 arch/arm/mach-imx/imx51.c                   |   67 ----------
 arch/arm/mach-imx/include/mach/generic.h    |   17 +++
 arch/arm/mach-imx/include/mach/imx27-regs.h |   10 --
 7 files changed, 158 insertions(+), 135 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 58b1ec9..ec4ffd7 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -39,6 +39,7 @@
 #include <mach/devices-imx27.h>
 #include <mach/iim.h>
 #include <mfd/mc13xxx.h>
+#include <mach/generic.h>
 
 #include "pll.h"
 
@@ -302,11 +303,8 @@ static int pcm038_devices_init(void)
 	 */
 	imx27_add_fec(&fec_info);
 
-	switch ((GPCR & GPCR_BOOT_MASK) >> GPCR_BOOT_SHIFT) {
-	case GPCR_BOOT_8BIT_NAND_2k:
-	case GPCR_BOOT_16BIT_NAND_2k:
-	case GPCR_BOOT_16BIT_NAND_512:
-	case GPCR_BOOT_8BIT_NAND_512:
+	switch (imx_bootsource()) {
+	case bootsource_nand:
 		devfs_add_partition("nand0", 0x00000, 0x80000,
 					DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 11c688e..409c237 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -17,9 +17,64 @@
 #include <magicvar.h>
 
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/generic.h>
+
+static const char *bootsource_str[] = {
+	[bootsource_unknown] = "unknown",
+	[bootsource_nand] = "nand",
+	[bootsource_nor] = "nor",
+	[bootsource_mmc] = "mmc",
+	[bootsource_i2c] = "i2c",
+	[bootsource_spi] = "spi",
+	[bootsource_serial] = "serial",
+	[bootsource_onenand] = "onenand",
+};
+
+static enum imx_bootsource bootsource;
+
+void imx_set_bootsource(enum imx_bootsource src)
+{
+	if (src >= ARRAY_SIZE(bootsource_str))
+		src = bootsource_unknown;
+
+	bootsource = src;
+
+	setenv("barebox_loc", bootsource_str[src]);
+	export("barebox_loc");
+}
+
+enum imx_bootsource imx_bootsource(void)
+{
+	return bootsource;
+}
+
+BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
+
+/* [CTRL][TYPE] */
+static const enum imx_bootsource locations[4][4] = {
+	{ /* CTRL = WEIM */
+		bootsource_nor,
+		bootsource_unknown,
+		bootsource_onenand,
+		bootsource_unknown,
+	}, { /* CTRL == NAND */
+		bootsource_nand,
+		bootsource_nand,
+		bootsource_nand,
+		bootsource_nand,
+	}, { /* CTRL == ATA, (imx35 only) */
+		bootsource_unknown,
+		bootsource_unknown, /* might be p-ata */
+		bootsource_unknown,
+		bootsource_unknown,
+	}, { /* CTRL == expansion */
+		bootsource_mmc, /* note imx25 could also be: movinand, ce-ata */
+		bootsource_unknown,
+		bootsource_i2c,
+		bootsource_spi,
+	}
+};
 
-#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
 /*
  * Saves the boot source media into the $barebox_loc enviroment variable
  *
@@ -38,43 +93,14 @@
  * Note also that I suspect that the boot source pins are only sampled at
  * power up.
  */
-static int imx_25_35_boot_save_loc(void)
+int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 {
 	const char *bareboxloc = NULL;
-	uint32_t reg;
-	unsigned int ctrl, type;
+	enum imx_bootsource src;
 
-	/* [CTRL][TYPE] */
-	const char *const locations[4][4] = {
-		{ /* CTRL = WEIM */
-			"nor",
-			NULL,
-			"onenand",
-			NULL,
-		}, { /* CTRL == NAND */
-			"nand",
-			"nand",
-			"nand",
-			"nand",
-		}, { /* CTRL == ATA, (imx35 only) */
-			NULL,
-			NULL, /* might be p-ata */
-			NULL,
-			NULL,
-		}, { /* CTRL == expansion */
-			"mmc", /* note imx25 could also be: movinand, ce-ata */
-			NULL,
-			"i2c",
-			"spi",
-		}
-	};
-
-	reg = readl(IMX_CCM_BASE + CCM_RCSR);
-	ctrl = (reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3;
-	type = (reg >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3;
-
-	bareboxloc = locations[ctrl][type];
+	src = locations[ctrl][type];
 
+	imx_set_bootsource(src);
 	if (bareboxloc) {
 		setenv("barebox_loc", bareboxloc);
 		export("barebox_loc");
@@ -82,32 +108,78 @@ static int imx_25_35_boot_save_loc(void)
 
 	return 0;
 }
-coredevice_initcall(imx_25_35_boot_save_loc);
-#endif
 
-#if defined(CONFIG_ARCH_IMX27)
-static int imx_27_boot_save_loc(void)
+#define IMX27_SYSCTRL_GPCR	0x18
+#define IMX27_GPCR_BOOT_SHIFT			16
+#define IMX27_GPCR_BOOT_MASK			(0xf << IMX27_GPCR_BOOT_SHIFT)
+#define IMX27_GPCR_BOOT_UART_USB		0
+#define IMX27_GPCR_BOOT_8BIT_NAND_2k		2
+#define IMX27_GPCR_BOOT_16BIT_NAND_2k		3
+#define IMX27_GPCR_BOOT_16BIT_NAND_512		4
+#define IMX27_GPCR_BOOT_16BIT_CS0		5
+#define IMX27_GPCR_BOOT_32BIT_CS0		6
+#define IMX27_GPCR_BOOT_8BIT_NAND_512		7
+
+void imx_27_boot_save_loc(void __iomem *sysctrl_base)
 {
-	switch ((GPCR & GPCR_BOOT_MASK) >> GPCR_BOOT_SHIFT) {
-	case GPCR_BOOT_UART_USB:
-		setenv("barebox_loc", "serial");
+	enum imx_bootsource src;
+	uint32_t val;
+
+	val = readl(sysctrl_base + IMX27_SYSCTRL_GPCR);
+	val &= IMX27_GPCR_BOOT_MASK;
+	val >>= IMX27_GPCR_BOOT_SHIFT;
+
+	switch (val) {
+	case IMX27_GPCR_BOOT_UART_USB:
+		src = bootsource_serial;
 		break;
-	case GPCR_BOOT_8BIT_NAND_2k:
-	case GPCR_BOOT_16BIT_NAND_2k:
-	case GPCR_BOOT_16BIT_NAND_512:
-	case GPCR_BOOT_8BIT_NAND_512:
-		setenv("barebox_loc", "nand");
+	case IMX27_GPCR_BOOT_8BIT_NAND_2k:
+	case IMX27_GPCR_BOOT_16BIT_NAND_2k:
+	case IMX27_GPCR_BOOT_16BIT_NAND_512:
+	case IMX27_GPCR_BOOT_8BIT_NAND_512:
+		src = bootsource_nand;
 		break;
 	default:
-		setenv("barebox_loc", "nor");
+		src = bootsource_nor;
 		break;
 	}
 
-	export("barebox_loc");
+	imx_set_bootsource(src);
+}
+
+#define IMX51_SRC_SBMR			0x4
+#define IMX51_SBMR_BT_MEM_TYPE_SHIFT	7
+#define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
+#define IMX51_SBMR_BMOD_SHIFT		14
+
+int imx51_boot_save_loc(void __iomem *src_base)
+{
+	enum imx_bootsource src = bootsource_unknown;
+	uint32_t reg;
+	unsigned int ctrl, type;
+
+	reg = readl(src_base + IMX51_SRC_SBMR);
+
+	switch ((reg >> IMX51_SBMR_BMOD_SHIFT) & 0x3) {
+	case 0:
+	case 2:
+		/* internal boot */
+		ctrl = (reg >> IMX51_SBMR_BT_MEM_CTL_SHIFT) & 0x3;
+		type = (reg >> IMX51_SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
+
+		src = locations[ctrl][type];
+		break;
+	case 1:
+		/* reserved */
+		src = bootsource_unknown;
+		break;
+	case 3:
+		src = bootsource_serial;
+		break;
+
+	}
+
+	imx_set_bootsource(src);
 
 	return 0;
 }
-coredevice_initcall(imx_27_boot_save_loc);
-#endif
-
-BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 5e6532a..87c23ec 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -17,6 +17,7 @@
 #include <mach/iim.h>
 #include <io.h>
 #include <mach/weim.h>
+#include <mach/generic.h>
 #include <sizes.h>
 
 void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
@@ -58,6 +59,12 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 
 static int imx25_init(void)
 {
+	uint32_t val;
+
+	val = readl(MX25_CCM_BASE_ADDR + CCM_RCSR);
+	imx_25_35_boot_save_loc((val >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			(val >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index bb93c37..f89bd10 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -59,8 +59,14 @@ core_initcall(imx35_l2_fix);
 
 static int imx35_init(void)
 {
+	uint32_t val;
+
 	imx35_silicon_revision();
 
+	val = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
+	imx_25_35_boot_save_loc((val >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			(val >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 81e6211..805361d 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -104,73 +104,6 @@ postcore_initcall(imx51_init);
  * power up.
  */
 
-#define SRC_SBMR	0x4
-#define SBMR_BT_MEM_TYPE_SHIFT	7
-#define SBMR_BT_MEM_CTL_SHIFT	0
-#define SBMR_BMOD_SHIFT		14
-
-static int imx51_boot_save_loc(void)
-{
-	const char *bareboxloc = NULL;
-	uint32_t reg;
-	unsigned int ctrl, type;
-
-	/* [CTRL][TYPE] */
-	const char *const locations[4][4] = {
-		{ /* CTRL = WEIM */
-			"nor",
-			NULL,
-			"onenand",
-			NULL,
-		}, { /* CTRL == NAND */
-			"nand",
-			"nand",
-			"nand",
-			"nand",
-		}, { /* CTRL == reserved */
-			NULL,
-			NULL,
-			NULL,
-			NULL,
-		}, { /* CTRL == expansion */
-			"mmc",
-			NULL,
-			"i2c",
-			"spi",
-		}
-	};
-
-	reg = readl(MX51_SRC_BASE_ADDR + SRC_SBMR);
-
-	switch ((reg >> SBMR_BMOD_SHIFT) & 0x3) {
-	case 0:
-	case 2:
-		/* internal boot */
-		ctrl = (reg >> SBMR_BT_MEM_CTL_SHIFT) & 0x3;
-		type = (reg >> SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
-
-		bareboxloc = locations[ctrl][type];
-		break;
-	case 1:
-		/* reserved */
-		bareboxloc = "unknown";
-		break;
-	case 3:
-		bareboxloc = "serial";
-		break;
-
-	}
-
-	if (bareboxloc) {
-		setenv("barebox_loc", bareboxloc);
-		export("barebox_loc");
-	}
-
-	return 0;
-}
-
-coredevice_initcall(imx51_boot_save_loc);
-
 #define setup_pll_800(base)	imx5_setup_pll((base), 800,  (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
 #define setup_pll_665(base)	imx5_setup_pll((base), 665,  (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
 #define setup_pll_600(base)	imx5_setup_pll((base), 600,  (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 691a146..7fe5810 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,6 +1,23 @@
 
 u64 imx_uid(void);
 
+enum imx_bootsource {
+	bootsource_unknown,
+	bootsource_nand,
+	bootsource_nor,
+	bootsource_mmc,
+	bootsource_i2c,
+	bootsource_spi,
+	bootsource_serial,
+	bootsource_onenand,
+};
+
+enum imx_bootsource imx_bootsource(void);
+void imx_set_bootsource(enum imx_bootsource src);
+
+int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
+void imx_27_boot_save_loc(void __iomem *sysctrl_base);
+int imx51_boot_save_loc(void __iomem *src_base);
 
 #ifdef CONFIG_ARCH_IMX1
 #define cpu_is_mx1()	(1)
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 5db1a3c..e7372e4 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -129,16 +129,6 @@
 #define WBCR	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C)		/* Well Bias Control Register */
 #define DSCR(x)	__REG(MX27_SYSCTRL_BASE_ADDR + 0x1C + ((x) << 2))	/* Driving Strength Control Register 1 - 13 */
 
-#define GPCR_BOOT_SHIFT			16
-#define GPCR_BOOT_MASK			(0xf << GPCR_BOOT_SHIFT)
-#define GPCR_BOOT_UART_USB		0
-#define GPCR_BOOT_8BIT_NAND_2k		2
-#define GPCR_BOOT_16BIT_NAND_2k		3
-#define GPCR_BOOT_16BIT_NAND_512	4
-#define GPCR_BOOT_16BIT_CS0		5
-#define GPCR_BOOT_32BIT_CS0		6
-#define GPCR_BOOT_8BIT_NAND_512		7
-
 #include "esdctl.h"
 
 /* PLL registers */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
