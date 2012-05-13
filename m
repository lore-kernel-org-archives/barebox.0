Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp17.mail.ru ([94.100.176.154])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXrk-0003H1-TG
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:25:41 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 13 May 2012 16:26:23 +0400
Message-Id: <1336911983-18930-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Removed duplicate definition for DEVFS_PARTITION_xxx
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    4 ++--
 arch/arm/boards/a9m2440/a9m2440.c                 |    4 ++--
 arch/arm/boards/at91rm9200ek/init.c               |    4 ++--
 arch/arm/boards/at91sam9260ek/init.c              |    8 ++++----
 arch/arm/boards/at91sam9261ek/init.c              |    8 ++++----
 arch/arm/boards/at91sam9263ek/init.c              |   12 ++++++------
 arch/arm/boards/at91sam9m10g45ek/init.c           |    8 ++++----
 arch/arm/boards/at91sam9x5ek/init.c               |    8 ++++----
 arch/arm/boards/dss11/init.c                      |    6 +++---
 arch/arm/boards/edb93xx/edb93xx.c                 |    4 ++--
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    4 ++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    4 ++--
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    4 ++--
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    4 ++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    4 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    8 ++++----
 arch/arm/boards/freescale-mx51-pdk/board.c        |    4 ++--
 arch/arm/boards/freescale-mx53-loco/board.c       |    4 ++--
 arch/arm/boards/freescale-mx53-smd/board.c        |    4 ++--
 arch/arm/boards/freescale-mx6-arm2/board.c        |    4 ++--
 arch/arm/boards/guf-cupid/board.c                 |    4 ++--
 arch/arm/boards/guf-neso/board.c                  |    4 ++--
 arch/arm/boards/imx27ads/imx27ads.c               |    4 ++--
 arch/arm/boards/karo-tx25/board.c                 |    4 ++--
 arch/arm/boards/karo-tx51/tx51.c                  |    4 ++--
 arch/arm/boards/mini2440/mini2440.c               |    4 ++--
 arch/arm/boards/mmccpu/init.c                     |    4 ++--
 arch/arm/boards/netx/netx.c                       |    4 ++--
 arch/arm/boards/nhk8815/setup.c                   |    8 ++++----
 arch/arm/boards/pcm027/board.c                    |    4 ++--
 arch/arm/boards/pcm037/pcm037.c                   |    4 ++--
 arch/arm/boards/pcm038/pcm038.c                   |    8 ++++----
 arch/arm/boards/pcm043/pcm043.c                   |    8 ++++----
 arch/arm/boards/pcm049/board.c                    |    6 +++---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c           |    6 +++---
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c         |    6 +++---
 arch/arm/boards/phycard-i.MX27/pca100.c           |    4 ++--
 arch/arm/boards/pm9261/init.c                     |    4 ++--
 arch/arm/boards/pm9263/init.c                     |    4 ++--
 arch/arm/boards/pm9g45/init.c                     |    4 ++--
 arch/arm/boards/scb9328/scb9328.c                 |    4 ++--
 arch/arm/boards/tny-a926x/init.c                  |    8 ++++----
 arch/arm/boards/tqma53/board.c                    |    4 ++--
 arch/arm/boards/usb-a926x/init.c                  |    8 ++++----
 arch/arm/boards/versatile/versatilepb.c           |    4 ++--
 arch/arm/mach-omap/xload.c                        |    2 +-
 arch/blackfin/boards/ipe337/ipe337.c              |    4 ++--
 arch/mips/boards/qemu-malta/init.c                |    4 ++--
 arch/nios2/boards/generic/generic.c               |    4 ++--
 arch/ppc/boards/pcm030/pcm030.c                   |    4 ++--
 commands/partition.c                              |    2 +-
 include/partition.h                               |    3 ---
 52 files changed, 128 insertions(+), 131 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 1a3181e..7c51d58 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -121,10 +121,10 @@ static int a9m2410_devices_init(void)
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 4094e31..fcb8729 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -141,10 +141,10 @@ static int a9m2440_devices_init(void)
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 3875f4a..17fb8e1 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -124,8 +124,8 @@ static int at91rm9200ek_devices_init(void)
 	ek_add_device_udc();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 #endif
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index a1d3750..daadf94 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -264,13 +264,13 @@ static int at91sam9260ek_devices_init(void)
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
 
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	return 0;
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index acc71f4..b0cab5b 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -251,12 +251,12 @@ static int at91sam9261ek_devices_init(void)
 	ek_add_device_buttons();
 	ek_device_add_leds();
 
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 33b7955..68f4bfc 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -191,16 +191,16 @@ static int at91sam9263ek_devices_init(void)
 	ek_add_device_buttons();
 
 	if (IS_ENABLED(CONFIG_DRIVER_CFI) && cdev_by_name("nor0")) {
-		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-		devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+		devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
+		devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	} else if (IS_ENABLED(CONFIG_NAND_ATMEL)) {
-		devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+		devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 		dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-		devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+		devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+		devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
-		devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+		devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 		dev_add_bb_dev("env_raw1", "env1");
 	}
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index c4b1a97..d4209a0 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -230,13 +230,13 @@ static int at91sam9m10g45ek_devices_init(void)
 	ek_device_add_leds();
 	ek_device_add_keyboard();
 
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 1839dd6..ee0343a 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -144,13 +144,13 @@ static int at91sam9x5ek_devices_init(void)
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
 
-	devfs_add_partition("nand0", 0x00000, SZ_256K, PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_512K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_512K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	return 0;
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 950cf76..aacef33 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -138,11 +138,11 @@ static int dss11_devices_init(void)
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_DSS11);
 
-	devfs_add_partition("nand0", 0x00000, 0x20000, PARTITION_FIXED, "bootstrap");
+	devfs_add_partition("nand0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "bootstrap");
 	dev_add_bb_dev("bootstrap", "bootstrap.bb");
-	devfs_add_partition("nand0", 0x20000, 0x40000, PARTITION_FIXED, "barebox");
+	devfs_add_partition("nand0", 0x20000, 0x40000, DEVFS_PARTITION_FIXED, "barebox");
 	dev_add_bb_dev("barebox", "barebox.bb");
-	devfs_add_partition("nand0", 0x60000, 0x40000, PARTITION_FIXED, "barebox-env");
+	devfs_add_partition("nand0", 0x60000, 0x40000, DEVFS_PARTITION_FIXED, "barebox-env");
 	dev_add_bb_dev("barebox-env", "env0");
 
 	return 0;
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index e1e8adc..d32daf4 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -63,8 +63,8 @@ static int ep93xx_devices_init(void)
 	 * Create partitions that should be
 	 * not touched by any regular user
 	 */
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	protect_file("/dev/env0", 1);
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index c717f0b..ff12d49 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -232,11 +232,11 @@ static int eukrea_cpuimx25_devices_init(void)
 	imx25_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000,
-		PARTITION_FIXED, "self_raw");
+		DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
 	devfs_add_partition("nand0", 0x40000, 0x20000,
-		PARTITION_FIXED, "env_raw");
+		DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	/* enable LCD */
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 45ba4f0..63e87c9 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -200,8 +200,8 @@ static int eukrea_cpuimx27_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx27_add_i2c0(NULL);
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 	envdev = "NOR";
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 37c32ad..55fcc0c 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -149,9 +149,9 @@ static int eukrea_cpuimx35_devices_init(void)
 #endif
 	imx35_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	imx35_add_fec(&fec_info);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 2bda974..3cc7a72 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -118,9 +118,9 @@ static int eukrea_cpuimx51_devices_init(void)
 #endif
 	imx51_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	gpio_direction_output(GPIO_LAN8700_RESET, 0);
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index ac781fd..323cd11 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -225,10 +225,10 @@ static int imx25_devices_init(void)
 
 	imx25_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index ca8680a..cb1280d 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -162,15 +162,15 @@ static int f3s_devices_init(void)
 
 	switch ((reg >> 25) & 0x3) {
 	case 0x01:		/* NAND is the source */
-		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+		devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+		devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		break;
 
 	case 0x00:		/* NOR is the source */
-		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-		devfs_add_partition("nor0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
+		devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("nor0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env0");
 		protect_file("/dev/env0", 1);
 		break;
 	}
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 3b1b574..937fcfa 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -257,8 +257,8 @@ device_initcall(f3s_devices_init);
 
 static int f3s_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index ac3323b..0d71555 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -203,8 +203,8 @@ device_initcall(loco_devices_init);
 
 static int loco_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index b663255..0483103 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -149,8 +149,8 @@ device_initcall(smd_devices_init);
 
 static int smd_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index 1422472..e4a9a49 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -152,8 +152,8 @@ static int arm2_devices_init(void)
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3837);
 
-	devfs_add_partition("disk0", 0, SZ_1M, PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_1M + SZ_1M, SZ_512K, PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", SZ_1M + SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 653d440..fb3c560 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -130,9 +130,9 @@ static int cupid_devices_init(void)
 	imx35_add_fec(&fec_info);
 	imx35_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	imx35_add_fb(&ipu_fb_data);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 84ef225..fbb20c1 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -285,10 +285,10 @@ static int neso_devices_init(void)
 
 	imx27_add_fec(&fec_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)0xa0000100);
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 7ffaeab..ff00224 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -111,8 +111,8 @@ static int mx27ads_devices_init(void)
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
 	imx27_add_fec(&fec_info);
-	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x20000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
 	armlinux_set_bootparams((void *)0xa0000100);
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 7df2e4c..040c75b 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -116,10 +116,10 @@ static int tx25_devices_init(void)
 
 	imx25_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 82ed177..38aefed 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -271,9 +271,9 @@ device_initcall(tx51_devices_init);
 
 static int tx51_part_init(void)
 {
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	return 0;
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 361a3e2..03e3d6c 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -305,11 +305,11 @@ static int mini2440_devices_init(void)
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
 	devfs_del_partition("self_raw");
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
 	devfs_del_partition("env_raw");
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	add_generic_device("s3c_mci", 0, NULL, S3C2410_SDI_BASE, 0,
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 9d4d496..a712040 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -63,8 +63,8 @@ static int mmccpu_devices_init(void)
 	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 
-	devfs_add_partition("nor0", 0x00000, 256 * 1024, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 128 * 1024, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 256 * 1024, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 128 * 1024, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_MMCCPU);
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 7873d32..c4a8733 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -54,10 +54,10 @@ static int netx_devices_init(void) {
 	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
 			&eth1_data);
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
 
 	/* Do not overwrite primary env for now */
-	devfs_add_partition("nor0", 0xc0000, 0x80000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0xc0000, 0x80000, DEVFS_PARTITION_FIXED, "env0");
 
 	protect_file("/dev/env0", 1);
 
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index ae76124..173892a 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -103,11 +103,11 @@ static int nhk8815_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_NOMADIK);
 	armlinux_set_bootparams((void *)(0x00000100));
 
-	devfs_add_partition("nand0", 0x0000000, 0x040000, PARTITION_FIXED, "xloader_raw");
-	devfs_add_partition("nand0", 0x0040000, 0x080000, PARTITION_FIXED, "meminit_raw");
-	devfs_add_partition("nand0", 0x0080000, 0x200000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x0000000, 0x040000, DEVFS_PARTITION_FIXED, "xloader_raw");
+	devfs_add_partition("nand0", 0x0040000, 0x080000, DEVFS_PARTITION_FIXED, "meminit_raw");
+	devfs_add_partition("nand0", 0x0080000, 0x200000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x7FE0000, 0x020000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x7FE0000, 0x020000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	return 0;
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/pcm027/board.c
index ab55c34..2801967 100644
--- a/arch/arm/boards/pcm027/board.c
+++ b/arch/arm/boards/pcm027/board.c
@@ -165,8 +165,8 @@ static int pcm027_devices_init(void)
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM027);
 
-	devfs_add_partition("nor0", 0x00000, SZ_512K, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", SZ_512K, SZ_256K, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
 	return 0;
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 660c9ab..d789b28 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -194,8 +194,8 @@ static int imx31_devices_init(void)
 	 * Create partitions that should be
 	 * not touched by any regular user
 	 */
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");	/* ourself */
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");	/* environment */
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");	/* ourself */
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");	/* environment */
 
 	protect_file("/dev/env0", 1);
 
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index db60f2c..c8a6aac 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -326,19 +326,19 @@ static int pcm038_devices_init(void)
 	case GPCR_BOOT_16BIT_NAND_512:
 	case GPCR_BOOT_8BIT_NAND_512:
 		devfs_add_partition("nand0", 0x00000, 0x80000,
-					PARTITION_FIXED, "self_raw");
+					DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
 
 		devfs_add_partition("nand0", 0x80000, 0x100000,
-					PARTITION_FIXED, "env_raw");
+					DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		envdev = "NAND";
 		break;
 	default:
 		devfs_add_partition("nor0", 0x00000, 0x80000,
-					PARTITION_FIXED, "self0");
+					DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("nor0", 0x80000, 0x100000,
-					PARTITION_FIXED, "env0");
+					DEVFS_PARTITION_FIXED, "env0");
 		protect_file("/dev/env0", 1);
 
 		envdev = "NOR";
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 6da5dd4..152b47c 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -153,15 +153,15 @@ static int imx35_devices_init(void)
 	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
 		switch ( (reg >> 25) & 0x3) {
 		case 0x01:              /* NAND is the source */
-			devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+			devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 			dev_add_bb_dev("self_raw", "self0");
-			devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+			devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 			dev_add_bb_dev("env_raw", "env0");
 			break;
 
 		case 0x00:              /* NOR is the source */
-			devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0"); /* ourself */
-			devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");  /* environment */
+			devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
+			devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");  /* environment */
 			protect_file("/dev/env0", 1);
 			break;
 		}
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index e4043ed..5b7854a 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -111,11 +111,11 @@ static int pcm049_devices_init(void)
 			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
 
 #ifdef CONFIG_PARTITION
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "xload_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
 	dev_add_bb_dev("xload_raw", "xload");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index c8e9364..1cc2815 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -336,13 +336,13 @@ static int pcaal1_late_init(void)
 
 	nand = get_device_by_name("nand0");
 
-	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "x-loader");
+	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "x-loader");
 	dev_add_bb_dev("self_raw", "x_loader0");
 
-	devfs_add_partition("nand0", 0x80000, 0x1e0000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x80000, 0x1e0000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x260000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x260000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	return 0;
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 7358fe0..128cb8f 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -129,13 +129,13 @@ static int pcaaxl2_devices_init(void)
 
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K,
-			PARTITION_FIXED, "xload_raw");
+			DEVFS_PARTITION_FIXED, "xload_raw");
 	dev_add_bb_dev("xload_raw", "xload");
 	devfs_add_partition("nand0", SZ_128K, SZ_256K,
-			PARTITION_FIXED, "self_raw");
+			DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K,
-			PARTITION_FIXED, "env_raw");
+			DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index a0a9911..6fdcf6e 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -303,10 +303,10 @@ static int pca100_devices_init(void)
 #endif
 
 	nand = get_device_by_name("nand0");
-	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)0xa0000100);
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index f7f2928..7f22f9b 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -140,8 +140,8 @@ static int pm9261_devices_init(void)
 	pm_add_device_dm9000();
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PM9261);
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 499ee46..28e1b1c 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -111,8 +111,8 @@ static int pm9263_devices_init(void)
 	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PM9263);
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 9b22276..6ef31b6 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -141,9 +141,9 @@ static int pm9g45_devices_init(void)
 	at91_add_device_eth(0, &macb_pdata);
 	pm9g45_add_device_usbh();
 
-	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x40000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 906a17e..9a342a8 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -92,8 +92,8 @@ static int scb9328_devices_init(void)
 	add_dm9000_device(-1, 0x16000000, 0x16000004,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
 	armlinux_set_bootparams((void *)0x08000100);
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 2065eae..79fc40f 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -224,13 +224,13 @@ static int tny_a9260_devices_init(void)
 		at91_add_device_spi(0, &spi_pdata);
 	}
 
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	return 0;
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 947c3f1..8c3d855 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -254,8 +254,8 @@ device_initcall(tqma53_devices_init);
 
 static int tqma53_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, SZ_1M, PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_1M, SZ_1M, PARTITION_FIXED, "env0");
+	devfs_add_partition("disk0", 0x00000, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 57609b1..824a38a 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -331,13 +331,13 @@ static int usb_a9260_devices_init(void)
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
 
-	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
 	return 0;
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 436f421..b95e605 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -51,8 +51,8 @@ mem_initcall(vpb_mem_init);
 static int vpb_devices_init(void)
 {
 	add_cfi_flash_device(-1, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
 			64 * 1024, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 59f75e2..13024ab 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -14,7 +14,7 @@ void *omap_xload_boot_nand(int offset, int size)
 	void *to = xmalloc(size);
 	struct cdev *cdev;
 
-	devfs_add_partition("nand0", offset, size, PARTITION_FIXED, "x");
+	devfs_add_partition("nand0", offset, size, DEVFS_PARTITION_FIXED, "x");
 	dev_add_bb_dev("x", "bbx");
 
 	cdev = cdev_open("bbx", O_RDONLY);
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 3c5566d..b3f07bb 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -19,8 +19,8 @@ static int ipe337_devices_init(void) {
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x24000000, 4096,
 			   IORESOURCE_MEM, NULL);
 
-	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x20000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	protect_file("/dev/env0", 1);
 
diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index 16dc77c..2a6eadb 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -34,8 +34,8 @@ static int malta_devices_init(void)
 {
 	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
 
-	devfs_add_partition("nor0", 0x0, SZ_512K, PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", SZ_512K, SZ_64K, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x0, SZ_512K, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", SZ_512K, SZ_64K, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 758e75a..b51b94a 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -40,8 +40,8 @@ static int generic_devices_init(void)
 	register_device(&mac_dev);
 	/*register_device(&epcs_flash_device);*/
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	protect_file("/dev/env0", 1);
 
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 36e80a1..ba6aa43 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -62,8 +62,8 @@ static int devices_init (void)
 	if (ret)
 		return 0;
 
-	devfs_add_partition("nor0", s.st_size - SZ_1M, SZ_512K, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", s.st_size - SZ_512K, SZ_512K, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", s.st_size - SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", s.st_size - SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/commands/partition.c b/commands/partition.c
index 6cce042..4c3f30c 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -97,7 +97,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	partstr = end;
 
 	if (*partstr == 'r' && *(partstr + 1) == 'o') {
-		flags |= PARTITION_READONLY;
+		flags |= DEVFS_PARTITION_READONLY;
 		end = (char *)(partstr + 2);
 	}
 
diff --git a/include/partition.h b/include/partition.h
index 4eac8de..0827bb4 100644
--- a/include/partition.h
+++ b/include/partition.h
@@ -3,9 +3,6 @@
 
 struct device_d;
 
-#define PARTITION_FIXED		(1 << 0)
-#define PARTITION_READONLY	(1 << 1)
-
 struct partition {
         int num;
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
