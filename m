Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T4-Uw
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:56 +0200
Message-Id: <1301923918-28746-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
References: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mtd nand omap: Pass ecc mode from platform
To: barebox@lists.infradead.org

As we will get more ecc modes pass through the exact mode from
the platform, not only a flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/omap/board-beagle.c         |    2 +-
 arch/arm/boards/omap/devices-gpmc-nand.c    |    5 +++--
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   14 ++++++++------
 drivers/mtd/nand/nand_omap_gpmc.c           |    2 +-
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 6de2cce..17a349c 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -332,7 +332,7 @@ static int beagle_devices_init(void)
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
-	gpmc_generic_nand_devices_init(0, 16, 1);
+	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
index 4369aa0..c2a2b0d 100644
--- a/arch/arm/boards/omap/devices-gpmc-nand.c
+++ b/arch/arm/boards/omap/devices-gpmc-nand.c
@@ -84,7 +84,8 @@ static struct device_d gpmc_generic_nand_nand_device = {
  *
  * @return success/fail based on device funtion
  */
-int gpmc_generic_nand_devices_init(int cs, int width, int hwecc)
+int gpmc_generic_nand_devices_init(int cs, int width,
+		enum gpmc_ecc_mode eccmode)
 {
 	nand_plat.cs = cs;
 
@@ -94,7 +95,7 @@ int gpmc_generic_nand_devices_init(int cs, int width, int hwecc)
 		nand_cfg.cfg[0] = GPMC_CONF1_VALx8;
 
 	nand_plat.device_width = width;
-	nand_plat.plat_options = hwecc ? NAND_HWECC_ENABLE : 0;
+	nand_plat.ecc_mode = eccmode;
 
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, &nand_cfg);
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index e23faab..a57d2a9 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -33,6 +33,11 @@
 #include <linux/mtd/nand.h>
 #include <linux/mtd/nand_ecc.h>
 
+enum gpmc_ecc_mode {
+	OMAP_ECC_SOFT,
+	OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
+};
+
 /** omap nand platform data structure */
 struct gpmc_nand_platform_data {
 	/** Chip select you want to use */
@@ -46,6 +51,8 @@ struct gpmc_nand_platform_data {
 	 * platform specific configs here
 	 */
 	unsigned short plat_options;
+	/** ecc mode to use */
+	enum gpmc_ecc_mode ecc_mode;
 	/** setup any special options */
 	unsigned int options;
 	/** set up device access as 8,16 as per GPMC config */
@@ -68,11 +75,6 @@ struct gpmc_nand_platform_data {
 #define NAND_WAITPOL_HIGH       (1 << 0)
 #define NAND_WAITPOL_MASK       (1 << 0)
 
-/** plat_options: hw ecc enabled */
-#define NAND_HWECC_ENABLE       (1 << 1)
-/** plat_options: hw ecc disabled */
-#define NAND_HWECC_MASK         (1 << 1)
-
-int gpmc_generic_nand_devices_init(int cs, int width, int hwecc);
+int gpmc_generic_nand_devices_init(int cs, int width, enum gpmc_ecc_mode);
 
 #endif				/* __ASM_OMAP_NAND_GPMC_H */
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 7c9bc32..86fe6b9 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -548,7 +548,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
-	if (pdata->plat_options & NAND_HWECC_ENABLE) {
+	if (pdata->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE) {
 		nand->ecc.layout = layout;
 
 		/* Program how many columns we expect+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
