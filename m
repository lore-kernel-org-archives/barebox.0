Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Oi-Et
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:11:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:13 +0200
Message-Id: <1343902216-13262-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
References: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM OMAP gpmc nand: specify platform data in boards
To: barebox@lists.infradead.org

Instead of passing several options into the nand register function
it is much more straight forward to just pass the platformdata.
While at it, rename the function to omap_add_gpmc_nand_device to
better describe what it does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c              |    9 +++++++--
 arch/arm/boards/pcm049/board.c              |   10 ++++++++--
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c   |    9 +++++++--
 arch/arm/mach-omap/devices-gpmc-nand.c      |   24 ++++++------------------
 arch/arm/mach-omap/include/mach/gpmc_nand.h |    7 +++----
 5 files changed, 31 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 9ddf317..5122817 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -283,6 +283,12 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+static struct gpmc_nand_platform_data nand_plat = {
+	.device_width = 16,
+	.ecc_mode = OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
+	.nand_cfg = &omap3_nand_cfg,
+};
+
 static int beagle_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
@@ -306,8 +312,7 @@ static int beagle_devices_init(void)
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
-	gpmc_generic_nand_devices_init(0, 16,
-			OMAP_ECC_HAMMING_CODE_HW_ROMCODE, &omap3_nand_cfg);
+	omap_add_gpmc_nand_device(&nand_plat);
 
 	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP_MMC1_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 5b7854a..09f0d6d 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -94,6 +94,13 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+static struct gpmc_nand_platform_data nand_plat = {
+	.wait_mon_pin = 1,
+	.device_width = 8,
+	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
+	.nand_cfg = &omap4_nand_cfg,
+};
+
 static int pcm049_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
@@ -107,8 +114,7 @@ static int pcm049_devices_init(void)
 
 	pcm049_network_init();
 
-	gpmc_generic_nand_devices_init(0, 8,
-			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
+	omap_add_gpmc_nand_device(&nand_plat);
 
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 128cb8f..220f7f4 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -104,6 +104,12 @@ static struct omap_hsmmc_platform_data mmc_device = {
 #define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
 #define OMAP4_MMC1_PWRDNZ			(1<<26)
 
+static struct gpmc_nand_platform_data nand_plat = {
+	.device_width = 16,
+	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
+	.nand_cfg = &omap4_nand_cfg,
+};
+
 static int pcaaxl2_devices_init(void)
 {
 	u32 value;
@@ -124,8 +130,7 @@ static int pcaaxl2_devices_init(void)
 
 	pcaaxl2_network_init();
 
-	gpmc_generic_nand_devices_init(0, 16,
-			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
+	omap_add_gpmc_nand_device(&nand_plat);
 
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K,
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 9d0ab6e..64ca666 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -39,35 +39,23 @@
 #define GPMC_CONF1_VALx8	0x00000800
 #define GPMC_CONF1_VALx16	0x00001800
 
-/** NAND platform specific settings settings */
-static struct gpmc_nand_platform_data nand_plat = {
-	.wait_mon_pin = 0,
-};
-
 /**
  * @brief gpmc_generic_nand_devices_init - init generic nand device
  *
  * @return success/fail based on device function
  */
-int gpmc_generic_nand_devices_init(int cs, int width,
-		enum gpmc_ecc_mode eccmode, struct gpmc_config *nand_cfg)
+int omap_add_gpmc_nand_device(struct gpmc_nand_platform_data *pdata)
 {
-	nand_plat.cs = cs;
-
-	if (width == 16)
-		nand_cfg->cfg[0] = GPMC_CONF1_VALx16;
+	if (pdata->device_width == 16)
+		pdata->nand_cfg->cfg[0] = GPMC_CONF1_VALx16;
 	else
-		nand_cfg->cfg[0] = GPMC_CONF1_VALx8;
-
-	nand_plat.device_width = width;
-	nand_plat.ecc_mode = eccmode;
-	nand_plat.priv = nand_cfg;
+		pdata->nand_cfg->cfg[0] = GPMC_CONF1_VALx8;
 
 	/* Configure GPMC CS before register */
-	gpmc_cs_config(nand_plat.cs, nand_cfg);
+	gpmc_cs_config(pdata->cs, pdata->nand_cfg);
 
 	add_generic_device("gpmc_nand", DEVICE_ID_DYNAMIC, NULL, OMAP_GPMC_BASE,
-			1024 * 4, IORESOURCE_MEM, &nand_plat);
+			1024 * 4, IORESOURCE_MEM, pdata);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index 8a6927b..582fb36 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -61,12 +61,11 @@ struct gpmc_nand_platform_data {
 
 	/* if you like a custom oob use this. */
 	struct nand_ecclayout *oob;
-	/** platform specific private data */
-	void *priv;
+	/** gpmc config for nand */
+	struct gpmc_config *nand_cfg;
 };
 
-int gpmc_generic_nand_devices_init(int cs, int width,
-			enum gpmc_ecc_mode, struct gpmc_config *nand_cfg);
+int omap_add_gpmc_nand_device(struct gpmc_nand_platform_data *pdata);
 
 extern struct gpmc_config omap3_nand_cfg;
 extern struct gpmc_config omap4_nand_cfg;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
