Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7V0-00073C-S8
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:56:18 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Yk7Ue-00089K-RU
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 10:55:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 10:55:50 +0200
Message-Id: <1429520152-27399-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: omap: move GPMC calls under config define
To: barebox@lists.infradead.org

Fixes build failures on a few boards if CONFIG_OMAP_GPMC
is not set.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/beagle/board.c                   |  4 +++-
 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c  | 11 +++++++----
 arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c | 10 +++++++---
 arch/arm/boards/phytec-phycore-omap4460/board.c  |  9 +++++++--
 4 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 775621069c27..c7fd5a30542e 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -74,11 +74,13 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_nand_platform_data nand_plat = {
 	.device_width = 16,
 	.ecc_mode = OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
 	.nand_cfg = &omap3_nand_cfg,
 };
+#endif
 
 static int beagle_mem_init(void)
 {
@@ -100,8 +102,8 @@ static int beagle_devices_init(void)
 #ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
-#endif
 	omap_add_gpmc_nand_device(&nand_plat);
+#endif
 
 	omap3_add_mmc1(NULL);
 
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
index 1c2e7f7429a2..0f3b79752d26 100644
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
@@ -77,7 +77,7 @@ static int pcaal1_init_console(void)
 }
 console_initcall(pcaal1_init_console);
 
-#ifdef CONFIG_DRIVER_NET_SMC911X
+#if defined(CONFIG_DRIVER_NET_SMC911X) && defined(CONFIG_OMAP_GPMC)
 /** GPMC timing for our SMSC9221 device */
 static struct gpmc_config smsc_cfg = {
 	.cfg = {
@@ -132,23 +132,26 @@ struct omap_hsmmc_platform_data pcaal1_hsmmc_plat = {
 	.f_max = 26000000,
 };
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_nand_platform_data nand_plat = {
 	.device_width = 16,
 	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
 	.nand_cfg = &omap3_nand_cfg,
 };
+#endif
 
 static int pcaal1_init_devices(void)
 {
+#ifdef CONFIG_OMAP_GPMC
 	omap_add_gpmc_nand_device(&nand_plat);
-
-	omap3_add_mmc1(&pcaal1_hsmmc_plat);
-
 #ifdef CONFIG_DRIVER_NET_SMC911X
 	pcaal1_setup_net_chip();
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, SMC911X_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 #endif
+#endif
+
+	omap3_add_mmc1(&pcaal1_hsmmc_plat);
 
 	armlinux_set_architecture(MACH_TYPE_PCAAL1);
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
index 78890ba5a978..e2ce6060e20a 100644
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
@@ -60,6 +60,7 @@ static int pcaaxl2_mem_init(void)
 }
 mem_initcall(pcaaxl2_mem_init);
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_config net_cfg = {
 	.cfg = {
 		0x00001000, /* CONF1 */
@@ -80,6 +81,7 @@ static void pcaaxl2_network_init(void)
 	add_ks8851_device(DEVICE_ID_DYNAMIC, net_cfg.base, net_cfg.base + 2,
 				IORESOURCE_MEM_16BIT, NULL);
 }
+#endif
 
 static struct i2c_board_info i2c_devices[] = {
 	{
@@ -96,11 +98,13 @@ static struct omap_hsmmc_platform_data mmc_device = {
 #define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
 #define OMAP4_MMC1_PWRDNZ			(1<<26)
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_nand_platform_data nand_plat = {
 	.device_width = 16,
 	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
 	.nand_cfg = &omap4_nand_cfg,
 };
+#endif
 
 static int pcaaxl2_devices_init(void)
 {
@@ -116,11 +120,11 @@ static int pcaaxl2_devices_init(void)
 
 	omap44xx_add_mmc1(&mmc_device);
 
+#ifdef CONFIG_OMAP_GPMC
 	gpmc_generic_init(0x10);
-
-	pcaaxl2_network_init();
-
 	omap_add_gpmc_nand_device(&nand_plat);
+	pcaaxl2_network_init();
+#endif
 
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K,
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 6495a6f6ab0a..1cee75ddb946 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -64,6 +64,7 @@ static int pcm049_mem_init(void)
 }
 mem_initcall(pcm049_mem_init);
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_config net_cfg = {
 	.cfg = {
 		0xc1001000,	/* CONF1 */
@@ -84,6 +85,7 @@ static void pcm049_network_init(void)
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x2C000000, 0x4000,
 			   IORESOURCE_MEM, NULL);
 }
+#endif
 
 static struct i2c_board_info i2c_devices[] = {
 	{
@@ -91,11 +93,13 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+#ifdef CONFIG_OMAP_GPMC
 static struct gpmc_nand_platform_data nand_plat = {
 	.wait_mon_pin = 1,
 	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
 	.nand_cfg = &omap4_nand_cfg,
 };
+#endif
 
 static struct omapfb_display const pcm049_displays[] = {
 	{
@@ -287,12 +291,13 @@ static int pcm049_devices_init(void)
 	omap44xx_add_i2c1(NULL);
 	omap44xx_add_mmc1(NULL);
 
+#ifdef CONFIG_OMAP_GPMC
 	gpmc_generic_init(0x10);
+	omap_add_gpmc_nand_device(&nand_plat);
 
 	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X))
 		pcm049_network_init();
-
-	omap_add_gpmc_nand_device(&nand_plat);
+#endif
 
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
