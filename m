Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VorwS-0000MU-4A
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:43:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Dec 2013 10:43:00 +0100
Message-Id: <1386322981-30721-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
References: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: remove armlinux_set_bootparams() calls from boards
To: barebox@lists.infradead.org

As the place for the atags now is determined automatically the call
from the boards can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                  | 2 --
 arch/arm/boards/a9m2440/a9m2440.c                  | 1 -
 arch/arm/boards/animeo_ip/init.c                   | 1 -
 arch/arm/boards/archosg9/board.c                   | 2 --
 arch/arm/boards/at91rm9200ek/init.c                | 1 -
 arch/arm/boards/at91sam9260ek/init.c               | 1 -
 arch/arm/boards/at91sam9261ek/init.c               | 1 -
 arch/arm/boards/at91sam9263ek/init.c               | 1 -
 arch/arm/boards/at91sam9m10g45ek/init.c            | 1 -
 arch/arm/boards/at91sam9m10ihd/init.c              | 1 -
 arch/arm/boards/at91sam9n12ek/init.c               | 1 -
 arch/arm/boards/at91sam9x5ek/init.c                | 1 -
 arch/arm/boards/beagle/board.c                     | 1 -
 arch/arm/boards/beaglebone/board.c                 | 1 -
 arch/arm/boards/ccxmx51/ccxmx51.c                  | 2 --
 arch/arm/boards/chumby_falconwing/falconwing.c     | 1 -
 arch/arm/boards/clep7212/clep7212.c                | 1 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   | 1 -
 arch/arm/boards/dfi-fs700-m60/board.c              | 1 -
 arch/arm/boards/dss11/init.c                       | 1 -
 arch/arm/boards/edb93xx/edb93xx.c                  | 2 --
 arch/arm/boards/efika-mx-smartbook/board.c         | 1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  | 1 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  | 1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  | 1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  | 1 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      | 1 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    | 1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      | 1 -
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    | 1 -
 arch/arm/boards/freescale-mx51-pdk/board.c         | 1 -
 arch/arm/boards/freescale-mx53-loco/board.c        | 1 -
 arch/arm/boards/freescale-mx53-smd/board.c         | 1 -
 arch/arm/boards/freescale-mx53-vmx53/board.c       | 1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         | 1 -
 arch/arm/boards/freescale-mx6-sabrelite/board.c    | 1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c      | 1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    | 1 -
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    | 1 -
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      | 1 -
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    | 1 -
 arch/arm/boards/guf-cupid/board.c                  | 1 -
 arch/arm/boards/guf-neso/board.c                   | 1 -
 arch/arm/boards/guf-vincell/board.c                | 1 -
 arch/arm/boards/highbank/init.c                    | 2 --
 arch/arm/boards/imx21ads/imx21ads.c                | 1 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 1 -
 arch/arm/boards/imx27ads/imx27ads.c                | 1 -
 arch/arm/boards/karo-tx25/board.c                  | 1 -
 arch/arm/boards/karo-tx28/tx28.c                   | 1 -
 arch/arm/boards/karo-tx51/tx51.c                   | 1 -
 arch/arm/boards/karo-tx53/board.c                  | 1 -
 arch/arm/boards/mioa701/board.c                    | 1 -
 arch/arm/boards/mmccpu/init.c                      | 1 -
 arch/arm/boards/netx/netx.c                        | 1 -
 arch/arm/boards/nhk8815/setup.c                    | 1 -
 arch/arm/boards/omap3evm/board.c                   | 1 -
 arch/arm/boards/panda/board.c                      | 1 -
 arch/arm/boards/pcm027/board.c                     | 1 -
 arch/arm/boards/pcm037/pcm037.c                    | 2 --
 arch/arm/boards/pcm038/pcm038.c                    | 1 -
 arch/arm/boards/pcm043/pcm043.c                    | 1 -
 arch/arm/boards/pcm049/board.c                     | 1 -
 arch/arm/boards/pcm051/board.c                     | 1 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            | 1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          | 1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            | 1 -
 arch/arm/boards/pm9261/init.c                      | 1 -
 arch/arm/boards/pm9263/init.c                      | 1 -
 arch/arm/boards/pm9g45/init.c                      | 1 -
 arch/arm/boards/qil-a926x/init.c                   | 1 -
 arch/arm/boards/raspberry-pi/rpi.c                 | 1 -
 arch/arm/boards/sama5d3xek/init.c                  | 2 --
 arch/arm/boards/scb9328/scb9328.c                  | 1 -
 arch/arm/boards/telit-evk-pro3/init.c              | 2 --
 arch/arm/boards/tny-a926x/init.c                   | 1 -
 arch/arm/boards/tqma53/board.c                     | 1 -
 arch/arm/boards/usb-a926x/init.c                   | 1 -
 arch/arm/boards/versatile/versatilepb.c            | 1 -
 arch/arm/boards/vexpress/init.c                    | 2 --
 80 files changed, 89 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index e371b4e..b2b6c87 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -124,8 +124,6 @@ static int a9m2410_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-
-	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index fc0a84a..faac38a 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -144,7 +144,6 @@ static int a9m2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 13dd948..e684222 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -306,7 +306,6 @@ static int animeo_ip_devices_init(void)
 	animeo_ip_add_device_buttons();
 	animeo_ip_add_device_led();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	/*
 	 * in production the machine id used is the cpu module machine id
 	 * PICOCOM1
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 134b350..6a12180 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -78,8 +78,6 @@ static int archosg9_devices_init(void){
 		&pwrbtn_data);
 	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
 #endif
-
-	armlinux_set_bootparams((void *)0x80000100);
 	/*
 	 * This should be:
 	 * armlinux_set_architecture(MACH_TYPE_OMAP4_ARCHOSG9);
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index b63b1f7..c444669 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -175,7 +175,6 @@ static int at91rm9200ek_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 #endif
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_AT91RM9200EK);
 
 	return 0;
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 688ed99..1298dde 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -248,7 +248,6 @@ static int at91sam9260ek_devices_init(void)
 	ek_add_device_buttons();
 	ek_add_led();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index a0d81fc..c1d4d9d 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -389,7 +389,6 @@ static int at91sam9261ek_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	if (machine_is_at91sam9g10ek())
 		armlinux_set_architecture(MACH_TYPE_AT91SAM9G10EK);
 	else
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index ec59f72..889b4c2 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -270,7 +270,6 @@ static int at91sam9263ek_devices_init(void)
 		dev_add_bb_dev("env_raw1", "env1");
 	}
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9263EK);
 
 	return 0;
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index d0a37a6..34abe05 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -316,7 +316,6 @@ static int at91sam9m10g45ek_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
 	ek_set_board_revision();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 92b8874..61d7f9d 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -270,7 +270,6 @@ static int at91sam9m10ihd_devices_init(void)
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
 	/*
 	 * The internal Atmel kernel use the SAM9M10G45EK machine id
 	 * The mainline use DT
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 1912a1d..a206d6b 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -316,7 +316,6 @@ static int at91sam9n12ek_devices_init(void)
 	ek_add_device_buttons();
 	ek_add_device_lcdc();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9N12EK);
 
 	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 87a401c..62e5652 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -309,7 +309,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_i2c();
 	ek_add_device_lcdc();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
 
 	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 1262df1..1899b1d 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -136,7 +136,6 @@ static int beagle_devices_init(void)
 
 	omap3_add_mmc1(NULL);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
 
 	return 0;
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index dfeb47c..b87ccef 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -171,7 +171,6 @@ static int beaglebone_env_init(void)
 
 	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
 
 	return 0;
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 6d2606e..152816b 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -461,8 +461,6 @@ static int ccxmx51_devices_init(void)
 
 	imx51_add_usbotg(&ccxmx51_otg_pdata);
 
-	armlinux_set_bootparams((void *)(MX51_CSD0_BASE_ADDR + 0x100));
-
 	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51 : MACH_TYPE_CCMX51);
 
 	return 0;
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 198a35b..2ae902f 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -298,7 +298,6 @@ static int falconwing_devices_init(void)
 
 	falconwing_init_usb();
 
-	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
 	rc = envfs_register_partition("disk0", 1);
diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index 0ed0595..e521643 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -41,7 +41,6 @@ static int clps711x_devices_init(void)
 	devfs_add_partition("nor0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED,
 			    "env0");
 
-	armlinux_set_bootparams((void *)SDRAM0_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CLEP7212);
 	armlinux_set_serial(((u64)serial_h << 32) | serial_l);
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index d1df7b8..60f09d4 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -122,7 +122,6 @@ static int cfa10036_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
 		imx_gpio_mode(cfa10036_pads[i]);
 
-	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CFA10036);
 
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, SZ_8K,
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index 9894654..96f1b0e 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -72,7 +72,6 @@ static int dfi_fs700_m60_init(void)
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.boot0",
 		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
 
-	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(MACH_TYPE_MX6Q_SABRESD);
 
 	return 0;
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 51b01c3..feca909 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -139,7 +139,6 @@ static int dss11_devices_init(void)
 	at91_add_device_mci(0, &dss11_mci_data);
 	at91_add_device_usbh_ohci(&dss11_usbh_data);
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_DSS11);
 
 	devfs_add_partition("nand0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "bootstrap");
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 1388590..d83980d 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -72,8 +72,6 @@ static int ep93xx_devices_init(void)
 	add_generic_device("ep93xx_eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
 			NULL);
 
-	armlinux_set_bootparams((void *)CONFIG_EP93XX_SDRAM_BANK0_BASE + 0x100);
-
 	armlinux_set_architecture(MACH_TYPE);
 
 	return 0;
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 0293c3e..1b19acd 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -263,7 +263,6 @@ static int efikamx_late_init(void)
 			flash_header_imx51_genesi_efikasb_end -
 			flash_header_imx51_genesi_efikasb_start, 0);
 
-	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(2370);
 	armlinux_set_revision(0x5100 | imx_silicon_revision());
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 9457bfb..78d2bd4 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -220,7 +220,6 @@ static int eukrea_cpuimx25_devices_init(void)
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25SD);
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 5603bfd..e2ad1c8 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -198,7 +198,6 @@ static int eukrea_cpuimx27_devices_init(void)
 	gpio_set_value(GPIO_PORTA | 25, 1);
 #endif
 
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX27);
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index a26f9ad..3c87311 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -217,7 +217,6 @@ static int eukrea_cpuimx35_devices_init(void)
 	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX35_USB_OTG_BASE_ADDR, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 892fbe7..75f3250 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -120,7 +120,6 @@ static int eukrea_cpuimx51_devices_init(void)
 	gpio_set_value(GPIO_LAN8700_RESET, 1);
 	gpio_direction_output(GPIO_LCD_BL, 0);
 
-	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX51SD);
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 9ba32d3..1eae377 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -111,7 +111,6 @@ static int mx23_evk_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	armlinux_set_bootparams((void*)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cc4b111..bd0e839 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -215,7 +215,6 @@ static int imx25_3ds_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx25_add_i2c0(NULL);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 	armlinux_set_serial(imx_uid());
 
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index fa631df..3bbdb1d 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -268,7 +268,6 @@ static int mx28_evk_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mx28evk_pads); i++)
 		imx_gpio_mode(mx28evk_pads[i]);
 
-	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX28EVK);
 
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index f344099..dbd1c7a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -177,7 +177,6 @@ static int f3s_devices_init(void)
 
 	imx35_add_fb(&ipu_fb_data);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 379313e..8dc81d8 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -172,7 +172,6 @@ static int imx51_babbage_late_init(void)
 	imx51_init_lowlevel(800);
 	clock_notifier_call_chain();
 
-	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 1f00ec0..69036da 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -113,7 +113,6 @@ static int loco_late_init(void)
 
 	set_silicon_rev(imx_silicon_revision());
 
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
 	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index d36889b..c81f43c 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -131,7 +131,6 @@ static int smd_devices_init(void)
 
 	smd_fec_reset();
 
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_MX53_SMD);
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
index 5f2a9bf..b38db71 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/board.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -30,7 +30,6 @@ extern char flash_header_imx53_vmx53_end[];
 
 static int vmx53_late_init(void)
 {
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_VMX53);
 
 	barebox_set_model("Voipac VMX53");
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index 073c347..6bae6ba 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -133,7 +133,6 @@ static int arm2_devices_init(void)
 
 	imx6_add_fec(&fec_info);
 
-	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3837);
 
 	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index e9a8a4a..badfd9e 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -121,7 +121,6 @@ static int sabrelite_devices_init(void)
 
 	sabrelite_ehci_init();
 
-	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3769);
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index b027919..c87b555 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -81,7 +81,6 @@ static void sabresd_phy_reset(void)
 
 static int sabresd_devices_init(void)
 {
-	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3980);
 
 	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 5cf90bb..2c24260 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -313,7 +313,6 @@ static int mini2440_devices_init(void)
 	s3c24xx_add_mci(&mci_data);
 	s3c24xx_add_fb(&s3c24x0_fb_data);
 	s3c24xx_add_ohci();
-	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
 	return 0;
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
index 194d665..a372db5 100644
--- a/arch/arm/boards/friendlyarm-mini6410/mini6410.c
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -283,7 +283,6 @@ static int mini6410_devices_init(void)
 	add_dm9000_device(0, S3C_CS1_BASE + 0x300, S3C_CS1_BASE + 0x304,
 				IORESOURCE_MEM_16BIT, &dm9000_data);
 
-	armlinux_set_bootparams((void *)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI6410);
 
 	return 0;
diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index 6426bcf..a33af99 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -111,7 +111,6 @@ static int tiny210_devices_init(void)
 
 	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
 
-	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI210);
 
 	return 0;
diff --git a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
index 97dc322..e066a43 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
@@ -76,6 +76,5 @@ void tiny6410_init(const char *bb_name)
 	for (i = 0; i < ARRAY_SIZE(tiny6410_pin_usage); i++)
 		s3c_gpio_mode(tiny6410_pin_usage[i]);
 
-	armlinux_set_bootparams((void *)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TINY6410);
 }
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 057c1a7..e171331 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -127,7 +127,6 @@ static int cupid_devices_init(void)
 	imx35_add_fb(&ipu_fb_data);
 	imx35_add_mmc0(NULL);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
 
 	return 0;
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 631f077..67fd508 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -279,7 +279,6 @@ static int neso_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_NESO);
 
 	return 0;
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index e9808fc..cb09303 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -285,7 +285,6 @@ static int vincell_devices_init(void)
 
 	vincell_fec_reset();
 
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(3297);
 
 	devfs_add_partition("nand0", SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 8a24b21..d5d341a 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -124,8 +124,6 @@ static int highbank_devices_init(void)
 		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "firmware-dtb");
 	}
 
-	armlinux_set_bootparams((void *)(0x00000100));
-
 	devfs_add_partition("nvram", 0x00000, SZ_16K, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index ef187f4..1bbd8cb 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -163,7 +163,6 @@ static int mx21ads_devices_init(void)
 			IORESOURCE_MEM, NULL);
 	imx21_add_fb(&imx_fb_data);
 
-	armlinux_set_bootparams((void *)0xc0000100);
 	armlinux_set_architecture(MACH_TYPE_MX21ADS);
 
 	return 0;
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index a5c54fe..1181612 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -122,7 +122,6 @@ static int imx23_olinuxino_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_IMX233_OLINUXINO);
 
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 93085c0..9fb1760 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -104,7 +104,6 @@ static int mx27ads_devices_init(void)
 	devfs_add_partition("nor0", 0x20000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_MX27ADS);
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 46a9cb6..337ae01 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -112,7 +112,6 @@ static int tx25_devices_init(void)
 	add_mem_device("sram0", 0x78000000, 128 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
 
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 198d212..3fb1fe9 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -89,7 +89,6 @@ static int tx28_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
 
-	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX28);
 
 	base_board_init();
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 22ab9be..f5ebe46 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -249,7 +249,6 @@ static int tx51_devices_init(void)
 	tx51_leds_init();
 
 	//Linux Parameters
-	armlinux_set_bootparams((void *)MX51_CSD0_BASE_ADDR + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX51);
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index f3eccd2..b7e7f1c 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -214,7 +214,6 @@ static int tx53_devices_init(void)
 	imx53_add_mmc0(&tx53_sd1_data);
 	imx53_add_nand(&nand_info);
 
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_TX53);
 
 	/* rev xx30 can boot from nand or USB */
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index c46b5da..6c877bc 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -125,7 +125,6 @@ static int mioa701_devices_init(void)
 	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
 	add_generic_device("docg3", DEVICE_ID_DYNAMIC, NULL, (ulong) docg3_iospace,
 			0x2000, IORESOURCE_MEM, NULL);
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_MIOA701);
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 506f420..8979b81 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -63,7 +63,6 @@ static int mmccpu_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 256 * 1024, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 128 * 1024, DEVFS_PARTITION_FIXED, "env0");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_MMCCPU);
 
 	return 0;
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 4171866..a9cb6a5 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -57,7 +57,6 @@ static int netx_devices_init(void) {
 
 	protect_file("/dev/env0", 1);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_NXDB500);
 
 	return 0;
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 7cdc996..aaf9cd7 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -98,7 +98,6 @@ static int nhk8815_devices_init(void)
 	platform_device_register(&nhk8815_nand_device);
 
 	armlinux_set_architecture(MACH_TYPE_NOMADIK);
-	armlinux_set_bootparams((void *)(0x00000100));
 
 	devfs_add_partition("nand0", 0x0000000, 0x040000, DEVFS_PARTITION_FIXED, "xloader_raw");
 	devfs_add_partition("nand0", 0x0040000, 0x080000, DEVFS_PARTITION_FIXED, "meminit_raw");
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 25a965a..2813d3d 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -90,7 +90,6 @@ static int omap3evm_init_devices(void)
 #endif
 	omap3_add_mmc1(NULL);
 
-        armlinux_set_bootparams((void *)0x80000100);
         armlinux_set_architecture(MACH_TYPE_OMAP3EVM);
 
 	return 0;
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 55eb424..c63602b 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -158,7 +158,6 @@ static int panda_devices_init(void)
 	panda_ehci_init();
 
 	panda_led_init();
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
 
 	return 0;
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/pcm027/board.c
index b39a297..509569e 100644
--- a/arch/arm/boards/pcm027/board.c
+++ b/arch/arm/boards/pcm027/board.c
@@ -158,7 +158,6 @@ static int pcm027_devices_init(void)
 
 	pxa_add_fb((void *)0x44000000, &fb_pdata);
 
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM027);
 
 	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index e67d322..a1ffb2e 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -195,8 +195,6 @@ static int pcm037_devices_init(void)
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_OTG_BASE_ADDR, NULL);
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_HS2_BASE_ADDR, NULL);
 #endif
-
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM037);
 
 	return 0;
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 99c3770..1733261 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -357,7 +357,6 @@ static int pcm038_devices_init(void)
 
 	if (imx_iim_read(1, 0, &uid, 6) == 6)
 		armlinux_set_serial(uid);
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
 
 	return 0;
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 070108e..46821a7 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -164,7 +164,6 @@ static int pcm043_devices_init(void)
 
 	imx35_add_fb(&ipu_fb_data);
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM043);
 
 	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 65bd6b2..baf88a3 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -303,7 +303,6 @@ static int pcm049_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM049);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index e7a7b79..0836a19 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -204,7 +204,6 @@ static int pcm051_devices_init(void)
 	}
 
 	omap_set_barebox_part(&pcm051_barebox_part);
-	armlinux_set_bootparams((void *)(AM33XX_DRAM_ADDR_SPACE_START + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PCM051);
 
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 26a0ce7..68a17bf 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -150,7 +150,6 @@ static int pcaal1_init_devices(void)
 			   IORESOURCE_MEM, NULL);
 #endif
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCAAL1);
 
 	return 0;
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 902edc2..6429722 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -134,7 +134,6 @@ static int pcaaxl2_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCAAXL2);
 
 	return 0;
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 1b886cb..2ff1b79 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -293,7 +293,6 @@ static int pca100_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(2149);
 
 	return 0;
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index e5dc995..09d7f80 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -149,7 +149,6 @@ static int pm9261_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PM9261);
 
 	return 0;
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 9d4cf38..3dca9e4 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -132,7 +132,6 @@ static int pm9263_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PM9263);
 
 	return 0;
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 9df98ab..1e43be5 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -161,7 +161,6 @@ static int pm9g45_devices_init(void)
 	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PM9G45);
 
 	return 0;
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 6eb9e12..99a9604 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -203,7 +203,6 @@ static int qil_a9260_devices_init(void)
 	ek_add_device_button();
 	qil_a9260_add_device_mb();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	qil_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 96025ba..d2f27a8 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -142,7 +142,6 @@ static int rpi_devices_init(void)
 	bcm2835_register_mci();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
-	armlinux_set_bootparams((void *)(0x00000100));
 	rpi_env_init();
 	return 0;
 }
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index f56ec54..4f866aa 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -411,8 +411,6 @@ static int at91sama5d3xek_devices_init(void)
 	ek_add_device_mci();
 	ek_add_device_lcdc();
 
-	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
-
 	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
 	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 64f9a16..3af1404 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -77,7 +77,6 @@ static int scb9328_devices_init(void)
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
-	armlinux_set_bootparams((void *)0x08000100);
 	armlinux_set_architecture(MACH_TYPE_SCB9328);
 
 	return 0;
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 005d207..e094ea7 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -150,8 +150,6 @@ static int evk_devices_init(void)
 	at91_add_device_udc(&evk_udc_data);
 	evk_usb_add_device_mci();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-
 	devfs_add_partition("nand0", 0x00000, BOOTSTRAP_SIZE,
 			    DEVFS_PARTITION_FIXED, "bootstrap_raw");
 	dev_add_bb_dev("bootstrap_raw", "bootstrap");
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 82a1c4a..ac86457 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -229,7 +229,6 @@ static int tny_a9260_devices_init(void)
 	ek_add_device_udc();
 	ek_add_device_spi();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	tny_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index ed337ce..9069f7c 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -234,7 +234,6 @@ static int tqma53_devices_init(void)
 	imx53_add_mmc1(&tqma53_sd2_data);
 	imx53_add_mmc2(&tqma53_sd3_data);
 
-	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_TQMA53);
 
 	return 0;
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index b57e289..2d4408b 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -403,7 +403,6 @@ static int usb_a9260_devices_init(void)
 	ek_add_device_button();
 	usb_a9260_device_dab_mmx();
 
-	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 3df59ba..8f39dc9 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -63,7 +63,6 @@ static int vpb_devices_init(void)
 			64 * 1024, IORESOURCE_MEM, &net_pdata);
 
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
-	armlinux_set_bootparams((void *)(0x00000100));
 
 	return 0;
 }
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 6196c4e..6cda494 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -46,7 +46,6 @@ static void vexpress_ax_devices_init(void)
 	vexpress_register_mmc(&mmci_plat);
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x1a000000,
 			64 * 1024, IORESOURCE_MEM, NULL);
-	armlinux_set_bootparams((void *)(0x80000100));
 }
 
 static void vexpress_ax_console_init(void)
@@ -77,7 +76,6 @@ static void vexpress_a9_legacy_devices_init(void)
 			64 * 1024, IORESOURCE_MEM, NULL);
 	vexpress_a9_legacy_register_mmc(&mmci_plat);
 	armlinux_set_architecture(MACH_TYPE_VEXPRESS);
-	armlinux_set_bootparams((void *)(0x60000100));
 }
 
 static void vexpress_a9_legacy_console_init(void)
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
