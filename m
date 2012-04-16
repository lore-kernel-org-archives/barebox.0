Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJgcX-0004lb-Cd
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 07:45:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Apr 2012 09:44:55 +0200
Message-Id: <1334562295-15058-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Use DEVICE_ID_DYNAMIC where applicable
To: barebox@lists.infradead.org

We now have DEVICE_ID_DYNAMIC for dynamic allocation of device ids,
Use it where applicable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |   12 ++++++------
 arch/arm/boards/a9m2440/a9m2440.c                 |   10 +++++-----
 arch/arm/boards/beagle/board.c                    |    6 +++---
 arch/arm/boards/edb93xx/edb93xx.c                 |    5 +++--
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    4 ++--
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    4 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    8 ++++----
 arch/arm/boards/mioa701/board.c                   |    4 ++--
 arch/arm/boards/netx/netx.c                       |    8 +++++---
 arch/arm/boards/nhk8815/setup.c                   |    4 ++--
 arch/arm/boards/omap3evm/board.c                  |    4 ++--
 arch/arm/boards/panda/board.c                     |    6 +++---
 arch/arm/boards/pcm027/board.c                    |    4 ++--
 arch/arm/boards/pcm037/pcm037.c                   |   10 +++++-----
 arch/arm/boards/pcm049/board.c                    |    9 +++++----
 arch/arm/boards/phycard-a-l1/pca-a-l1.c           |    4 ++--
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c         |    4 ++--
 arch/arm/boards/versatile/versatilepb.c           |    4 ++--
 arch/arm/mach-at91/at91rm9200_devices.c           |    8 ++++----
 arch/arm/mach-at91/at91sam9260_devices.c          |    8 ++++----
 arch/arm/mach-at91/at91sam9261_devices.c          |    8 ++++----
 arch/arm/mach-at91/at91sam9263_devices.c          |    8 ++++----
 arch/arm/mach-at91/at91sam9g45_devices.c          |    6 +++---
 arch/arm/mach-at91/at91sam9x5_devices.c           |    4 ++--
 arch/arm/mach-imx/include/mach/devices-imx51.h    |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h    |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c            |    4 ++--
 arch/blackfin/boards/ipe337/ipe337.c              |    6 +++---
 arch/nios2/boards/generic/generic.c               |    6 +++---
 arch/ppc/boards/pcm030/pcm030.c                   |    8 ++++----
 arch/sandbox/board/board.c                        |    2 +-
 arch/sandbox/board/hostfile.c                     |    2 +-
 arch/x86/boards/x86_generic/generic_pc.c          |    3 ++-
 common/console.c                                  |    2 +-
 drivers/mci/mci-core.c                            |    2 +-
 drivers/mtd/core.c                                |    2 +-
 drivers/net/miidev.c                              |    2 +-
 drivers/serial/arm_dcc.c                          |    2 +-
 drivers/usb/host/ohci-at91.c                      |    2 +-
 include/driver.h                                  |    2 +-
 net/eth.c                                         |    2 +-
 43 files changed, 106 insertions(+), 101 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index adeaacc..1a3181e 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -109,15 +109,15 @@ static int a9m2410_devices_init(void)
 	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
-			   IORESOURCE_MEM, &nand_info);
+	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE,
+			0, IORESOURCE_MEM, &nand_info);
 	/*
 	 * SMSC 91C111 network controller on the baseboard
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 32 bit
 	 */
-	add_generic_device("smc91c111", -1, NULL, S3C_CS1_BASE + 0x300, 16,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, S3C_CS1_BASE + 0x300,
+			16, IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -145,8 +145,8 @@ void __bare_init nand_boot(void)
 
 static int a9m2410_console_init(void)
 {
-	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
+			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
 	return 0;
 }
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 6c6ccdb..4094e31 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -129,15 +129,15 @@ static int a9m2440_devices_init(void)
 	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 	/*
 	 * cs8900 network controller onboard
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
 	 * data width is 16 bit
 	 */
-	add_generic_device("cs8900", -1, NULL, S3C_CS5_BASE + (1 << 24) + 0x300, 16,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL,
+			S3C_CS5_BASE + (1 << 24) + 0x300, 16, IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -164,8 +164,8 @@ void __bare_init nand_boot(void)
 
 static int a9m2440_console_init(void)
 {
-	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
+			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
 	return 0;
 }
 
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 90525d8..9ddf317 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -294,12 +294,12 @@ mem_initcall(beagle_mem_init);
 static int beagle_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	add_generic_device("i2c-omap", -1, NULL, OMAP_I2C1_BASE, SZ_4K,
+	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC, NULL, OMAP_I2C1_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
-		add_usb_ehci_device(-1, OMAP_EHCI_BASE,
+		add_usb_ehci_device(DEVICE_ID_DYNAMIC, OMAP_EHCI_BASE,
 				    OMAP_EHCI_BASE + 0x10, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_OMAP_GPMC
@@ -309,7 +309,7 @@ static int beagle_devices_init(void)
 	gpmc_generic_nand_devices_init(0, 16,
 			OMAP_ECC_HAMMING_CODE_HW_ROMCODE, &omap3_nand_cfg);
 
-	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP_MMC1_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 70fd12c..e1e8adc 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -72,7 +72,8 @@ static int ep93xx_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 6, data width is 16 bit
 	 */
-	add_generic_device("ep93xx_eth", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
+	add_generic_device("ep93xx_eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
+			NULL);
 
 	armlinux_set_bootparams((void *)CONFIG_EP93XX_SDRAM_BANK0_BASE + 0x100);
 
@@ -101,7 +102,7 @@ static int edb93xx_console_init(void)
 	writel(0xAA, &syscon->sysswlock);
 	writel(value, &syscon->devicecfg);
 
-	add_generic_device("pl010_serial", -1, NULL, UART1_BASE, 4096,
+	add_generic_device("pl010_serial", DEVICE_ID_DYNAMIC, NULL, UART1_BASE, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index d6d169f..c717f0b 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -253,9 +253,9 @@ static int eukrea_cpuimx25_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
 #endif
-	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_OTG_BASE, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 094c3e2..37c32ad 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -162,13 +162,13 @@ static int eukrea_cpuimx35_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx35_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
 #endif
 #ifdef CONFIG_USB_GADGET
 	/* Workaround ENGcm09152 */
 	tmp = readl(IMX_OTG_BASE + 0x608);
 	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
-	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_OTG_BASE, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 1721ed7..ca8680a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -181,7 +181,7 @@ static int f3s_devices_init(void)
 	imx35_add_i2c0(NULL);
 
 	imx35_add_fec(&fec_info);
-	add_generic_device("smc911x", -1, NULL,	IMX_CS5_BASE, IMX_CS5_RANGE,
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	IMX_CS5_BASE, IMX_CS5_RANGE,
 			IORESOURCE_MEM, NULL);
 
 	imx35_add_mmc0(NULL);
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index a0c9fb6..e394417 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -168,7 +168,7 @@ static int mx21ads_devices_init(void)
 
 	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
 	imx21_add_nand(&nand_info);
-	add_generic_device("cs8900", -1, NULL,	IMX_CS1_BASE, 0x1000,
+	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL, IMX_CS1_BASE, 0x1000,
 			IORESOURCE_MEM, NULL);
 	imx21_add_fb(&imx_fb_data);
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 97e56db..361a3e2 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -297,8 +297,8 @@ static int mini2440_devices_init(void)
 	reg |= 0x10000;
 	writel(reg, S3C_MISCCR);
 
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
-			   IORESOURCE_MEM, &nand_info);
+	add_generic_device("s3c24x0_nand", DEVICE_ID_DYNAMIC, NULL, S3C24X0_NAND_BASE,
+			0, IORESOURCE_MEM, &nand_info);
 
 	add_dm9000_device(0, S3C_CS4_BASE + 0x300, S3C_CS4_BASE + 0x304,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
@@ -344,8 +344,8 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
-	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
+			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
 	return 0;
 }
 
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index 6a67a03..14c8110 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -123,8 +123,8 @@ static int mioa701_devices_init(void)
 	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
 	pxa_add_mmc((void *)0x41100000, -1, &mioa701_mmc_info);
 	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
-	add_generic_device("docg3", -1, NULL, (ulong) docg3_iospace, 0x2000,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("docg3", DEVICE_ID_DYNAMIC, NULL, (ulong) docg3_iospace,
+			0x2000, IORESOURCE_MEM, NULL);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_MIOA701);
 
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 92d2911..7873d32 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -49,8 +49,10 @@ mem_initcall(netx_mem_init);
 static int netx_devices_init(void) {
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
-	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
+	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
+			&eth0_data);
+	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
+			&eth1_data);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 
@@ -75,7 +77,7 @@ static int netx_console_init(void)
 	*(volatile unsigned long *)(0x00100808) = 2;
 	*(volatile unsigned long *)(0x0010080c) = 2;
 
-	add_generic_device("netx_serial", -1, NULL, NETX_PA_UART0, 0x40,
+	add_generic_device("netx_serial", DEVICE_ID_DYNAMIC, NULL, NETX_PA_UART0, 0x40,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 42d981c..ae76124 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -69,7 +69,7 @@ static struct resource nhk8815_nand_resources[] = {
 };
 
 static struct device_d nhk8815_nand_device = {
-	.id		= -1,
+	.id		= DEVICE_ID_DYNAMIC,
 	.name		= "nomadik_nand",
 	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
 	.resource	= nhk8815_nand_resources,
@@ -95,7 +95,7 @@ static int nhk8815_devices_init(void)
 	writel(0x0000305b, FSMC_BCR(1));
 	writel(0x00033f33, FSMC_BTR(1));
 
-	add_generic_device("smc91c111", -1, NULL, 0x34000300, 16,
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, 0x34000300, 16,
 			   IORESOURCE_MEM, NULL);
 
 	register_device(&nhk8815_nand_device);
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 3108146..6747ee4 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -230,7 +230,7 @@ static struct NS16550_plat serial_plat = {
  */
 static int omap3evm_init_console(void)
 {
-	add_ns16550_device(-1,
+	add_ns16550_device(DEVICE_ID_DYNAMIC,
 #if defined(CONFIG_OMAP3EVM_UART1)
 			OMAP_UART1_BASE,
 #elif defined(CONFIG_OMAP3EVM_UART3)
@@ -260,7 +260,7 @@ static int omap3evm_init_devices(void)
 	gpmc_generic_init(0x10);
 #endif
 #ifdef CONFIG_MCI_OMAP_HSMMC
-	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP_MMC1_BASE, SZ_4K,
 				IORESOURCE_MEM, NULL);
 #endif
         armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index be3ad77..628d3f1 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -38,8 +38,8 @@ static struct NS16550_plat serial_plat = {
 static int panda_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
-			   &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP44XX_UART3_BASE, 1024,
+			IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
@@ -133,7 +133,7 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
 
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/pcm027/board.c
index a5da9de..ab55c34 100644
--- a/arch/arm/boards/pcm027/board.c
+++ b/arch/arm/boards/pcm027/board.c
@@ -154,11 +154,11 @@ static int pcm027_devices_init(void)
 {
 	void *cfi_iospace;
 
-	add_generic_device("smc91c111", -1, NULL, 0x14000300, 16,
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, 0x14000300, 16,
 			IORESOURCE_MEM, NULL);
 
 	cfi_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_32M);
-	add_cfi_flash_device(-1, (unsigned long)cfi_iospace, SZ_32M, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_iospace, SZ_32M, 0);
 
 	pxa_add_fb((void *)0x44000000, &fb_pdata);
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 46f2ce9..660c9ab 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -188,7 +188,7 @@ static int imx31_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 0, data width is 16 bit
 	 */
-	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 
 	/*
 	 * Create partitions that should be
@@ -212,13 +212,13 @@ static int imx31_devices_init(void)
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 16 bit
 	 */
-	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
-			IORESOURCE_MEM, NULL);
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	IMX_CS1_BASE,
+			IMX_CS1_RANGE, IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE, NULL);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 0c82261..e4043ed 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -50,7 +50,8 @@ static struct NS16550_plat serial_plat = {
 static int pcm049_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP44XX_UART3_BASE, 1024,
+			IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
@@ -83,7 +84,7 @@ static void pcm049_network_init(void)
 {
 	gpmc_cs_config(5, &net_cfg);
 
-	add_generic_device("smc911x", -1, NULL, 0x2C000000, 0x4000,
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x2C000000, 0x4000,
 			   IORESOURCE_MEM, NULL);
 }
 
@@ -96,10 +97,10 @@ static struct i2c_board_info i2c_devices[] = {
 static int pcm049_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	add_generic_device("i2c-omap", -1, NULL, 0x48070000, 0x1000,
+	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC, NULL, 0x48070000, 0x1000,
 				IORESOURCE_MEM, NULL);
 
-	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 	gpmc_generic_init(0x10);
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 3fc3542..c8e9364 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -311,13 +311,13 @@ struct omap_hsmmc_platform_data pcaal1_hsmmc_plat = {
 static int pcaal1_init_devices(void)
 {
 #ifdef CONFIG_MCI_OMAP_HSMMC
-	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP_MMC1_BASE, SZ_4K,
 			   IORESOURCE_MEM, &pcaal1_hsmmc_plat);
 #endif
 
 #ifdef CONFIG_DRIVER_NET_SMC911X
 	pcaal1_setup_net_chip();
-	add_generic_device("smc911x", -1, NULL, SMC911X_BASE, SZ_4K,
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, SMC911X_BASE, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 #endif
 
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 72fc18f..7358fe0 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -109,7 +109,7 @@ static int pcaaxl2_devices_init(void)
 	u32 value;
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	add_generic_device("i2c-omap", -1, NULL, 0x48070000, 0x1000,
+	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC, NULL, 0x48070000, 0x1000,
 				IORESOURCE_MEM, NULL);
 
 	value = readl(OMAP4_CONTROL_PBIASLITE);
@@ -117,7 +117,7 @@ static int pcaaxl2_devices_init(void)
 	value |= (OMAP4_MMC1_PBIASLITE_PWRDNZ |	OMAP4_MMC1_PWRDNZ);
 	writel(value, OMAP4_CONTROL_PBIASLITE);
 
-	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, &mmc_device);
 
 	gpmc_generic_init(0x10);
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 4e09de3..436f421 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -54,8 +54,8 @@ static int vpb_devices_init(void)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 
-	add_generic_device("smc91c111", -1, NULL, VERSATILE_ETH_BASE, 64 * 1024,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
+			64 * 1024, IORESOURCE_MEM, NULL);
 
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
 	armlinux_set_bootparams((void *)(0x00000100));
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index c380c7d..9eb27f0 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -38,8 +38,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	if (!data)
 		return;
 
-	add_generic_device("at91_ohci", -1, NULL, AT91RM9200_UHP_BASE, 1024 * 1024,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91RM9200_UHP_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
@@ -60,8 +60,8 @@ void __init at91_add_device_udc(struct at91_udc_data *data)
 	if (data->pullup_pin > 0)
 		at91_set_gpio_output(data->pullup_pin, 0);
 
-	add_generic_device("at91_udc", -1, NULL, AT91RM9200_BASE_UDP, SZ_16K,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_udc", DEVICE_ID_DYNAMIC, NULL, AT91RM9200_BASE_UDP,
+			SZ_16K, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_udc(struct at91_udc_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 23da8c1..cce99ad 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -40,8 +40,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	if (!data)
 		return;
 
-	add_generic_device("at91_ohci", -1, NULL, AT91SAM9260_UHP_BASE, 1024 * 1024,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9260_UHP_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
@@ -59,8 +59,8 @@ void __init at91_add_device_udc(struct at91_udc_data *data)
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
 
-	add_generic_device("at91_udc", -1, NULL, AT91SAM9260_BASE_UDP, SZ_16K,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_udc", DEVICE_ID_DYNAMIC, NULL, AT91SAM9260_BASE_UDP,
+			SZ_16K,  IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_udc(struct at91_udc_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index d4f7b5e..ab9ebaf 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -43,8 +43,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 	if (!data)
 		return;
 
-	add_generic_device("at91_ohci", -1, NULL, AT91SAM9261_UHP_BASE, 1024 * 1024,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9261_UHP_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
@@ -62,8 +62,8 @@ void __init at91_add_device_udc(struct at91_udc_data *data)
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
 
-	add_generic_device("at91_udc", -1, NULL, AT91SAM9261_BASE_UDP, SZ_16K,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_udc", DEVICE_ID_DYNAMIC, NULL, AT91SAM9261_BASE_UDP,
+			SZ_16K, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_udc(struct at91_udc_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 12d6a24..4ad9b8d 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -48,8 +48,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
-	add_generic_device("at91_ohci", -1, NULL, AT91SAM9263_UHP_BASE, 1024 * 1024,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9263_UHP_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
@@ -67,7 +67,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data)
 		at91_set_deglitch(data->vbus_pin, 1);
 	}
 
-	add_generic_device("at91_udc", -1, NULL, AT91SAM9263_BASE_UDP, SZ_16K,
+	add_generic_device("at91_udc", DEVICE_ID_DYNAMIC, NULL, AT91SAM9263_BASE_UDP, SZ_16K,
 			   IORESOURCE_MEM, data);
 }
 #else
@@ -145,7 +145,7 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device_res("atmel_nand", -1, nand_resources,
+	add_generic_device_res("atmel_nand", DEVICE_ID_DYNAMIC, nand_resources,
 			       ARRAY_SIZE(nand_resources), data);
 }
 #else
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 25a8d80..e68e72d 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -46,8 +46,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
-	add_generic_device("at91_ohci", -1, NULL, AT91SAM9G45_OHCI_BASE, 1024 * 1024,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9G45_OHCI_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
@@ -125,7 +125,7 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device_res("atmel_nand", -1, nand_resources,
+	add_generic_device_res("atmel_nand", DEVICE_ID_DYNAMIC, nand_resources,
 			       ARRAY_SIZE(nand_resources), data);
 }
 #else
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 76f67b0..51a2024 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -47,8 +47,8 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 			at91_set_gpio_output(data->vbus_pin[i], 0);
 	}
 
-	add_generic_device("at91_ohci", -1, NULL, AT91SAM9X5_OHCI_BASE, SZ_1M,
-			   IORESOURCE_MEM, data);
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9X5_OHCI_BASE,
+			SZ_1M, IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 27fcaa2..9ad6476 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -76,7 +76,7 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
 	dev->num_resources = ARRAY_SIZE(res);
 	strcpy(dev->name, "imx_nand");
-	dev->id = -1;
+	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
 	register_device(dev);
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 1fc2417..a9fe454 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -75,7 +75,7 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
 	dev->num_resources = ARRAY_SIZE(res);
 	strcpy(dev->name, "imx_nand");
-	dev->id = -1;
+	dev->id = DEVICE_ID_DYNAMIC;
 	dev->platform_data = pdata;
 
 	register_device(dev);
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 54625ca..0fc32f1 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -68,8 +68,8 @@ int gpmc_generic_nand_devices_init(int cs, int width,
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, nand_cfg);
 
-	add_generic_device("gpmc_nand", -1, NULL, OMAP_GPMC_BASE, 1024 * 4,
-			   IORESOURCE_MEM, &nand_plat);
+	add_generic_device("gpmc_nand", DEVICE_ID_DYNAMIC, NULL, OMAP_GPMC_BASE,
+			1024 * 4, IORESOURCE_MEM, &nand_plat);
 
 	return 0;
 }
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index ee642d1..3c5566d 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -6,7 +6,7 @@
 #include <fs.h>
 
 static int ipe337_devices_init(void) {
-	add_cfi_flash_device(-1, 0x20000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x20000000, 32 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 128 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
 
@@ -16,7 +16,7 @@ static int ipe337_devices_init(void) {
 	mdelay(100);
 	*pFIO0_FLAG_S = (1<<12);
 
-	add_generic_device("smc911x", -1, NULL, 0x24000000, 4096,
+	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x24000000, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
@@ -31,7 +31,7 @@ device_initcall(ipe337_devices_init);
 
 static int blackfin_console_init(void)
 {
-	add_generic_device("blackfin_serial", -1, NULL, 0, 4096,
+	add_generic_device("blackfin_serial", DEVICE_ID_DYNAMIC, NULL, 0, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 0e3852b..758e75a 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -25,7 +25,7 @@ static struct resource mac_resources[] = {
 };
 
 static struct device_d mac_dev = {
-	.id            = -1,
+	.id            = DEVICE_ID_DYNAMIC,
 	.name          = "altera_tse",
 	.num_resources = ARRAY_SIZE(mac_resources),
 	.resource      = mac_resources,
@@ -53,8 +53,8 @@ device_initcall(generic_devices_init);
 
 static int altera_console_init(void)
 {
-	add_generic_device("altera_serial", -1, NULL, NIOS_SOPC_UART_BASE, 0x20,
-			   IORESOURCE_MEM, NULL);
+	add_generic_device("altera_serial", DEVICE_ID_DYNAMIC, NULL,
+			NIOS_SOPC_UART_BASE, 0x20, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 80f1cbe..36e80a1 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -53,9 +53,9 @@ static int devices_init (void)
 	 * what we find later.
 	 */
 	mpc5200_setup_cs(MPC5200_BOOTCS, 0xfe000000, SZ_32M, 0x0008fd00);
-	add_cfi_flash_device(-1, 0xfe000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xfe000000, 32 * 1024 * 1024, 0);
 
-	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0x200,
+	add_generic_device("fec_mpc5xxx", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_FEC, 0x200,
 			   IORESOURCE_MEM, &fec_info);
 
 	ret = stat("/dev/nor0", &s);
@@ -72,9 +72,9 @@ device_initcall(devices_init);
 
 static int console_init(void)
 {
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC3, 0x200,
+	add_generic_device("mpc5xxx_serial", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_PSC3, 0x200,
 			   IORESOURCE_MEM, NULL);
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC6, 0x200,
+	add_generic_device("mpc5xxx_serial", DEVICE_ID_DYNAMIC, NULL, MPC5XXX_PSC6, 0x200,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 7d489fd..d2f0667 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 
 static struct device_d tap_device = {
-	.id	  = -1,
+	.id	  = DEVICE_ID_DYNAMIC,
         .name     = "tap",
 };
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index f5452af..90a9741 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -102,7 +102,7 @@ device_initcall(hf_init);
 
 int barebox_register_filedev(struct hf_platform_data *hf)
 {
-	return !add_generic_device("hostfile", -1, NULL, hf->base, hf->size,
+	return !add_generic_device("hostfile", DEVICE_ID_DYNAMIC, NULL, hf->base, hf->size,
 			   IORESOURCE_MEM, hf);
 }
 
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 0ddf883..4be1237 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -51,7 +51,8 @@ static int devices_init(void)
 	/* extended memory only */
 	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
 		       IORESOURCE_MEM_WRITEABLE);
-	add_generic_device("biosdrive", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
+	add_generic_device("biosdrive", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
+			NULL);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
 		rc = devfs_add_partition("biosdisk0",
diff --git a/common/console.c b/common/console.c
index 83cc2a5..37b8697 100644
--- a/common/console.c
+++ b/common/console.c
@@ -141,7 +141,7 @@ int console_register(struct console_device *newcdev)
 	if (initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
 
-	dev->id = -1;
+	dev->id = DEVICE_ID_DYNAMIC;
 	strcpy(dev->name, "cs");
 	if (newcdev->dev)
 		dev_add_child(newcdev->dev, dev);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6432391..85f5dbc 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1515,7 +1515,7 @@ int mci_register(struct mci_host *host)
 {
 	struct device_d *mci_dev = xzalloc(sizeof(struct device_d));
 
-	mci_dev->id = -1;
+	mci_dev->id = DEVICE_ID_DYNAMIC;
 	strcpy(mci_dev->name, mci_driver.name);
 	mci_dev->platform_data = host;
 	dev_add_child(host->hw_dev, mci_dev);
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 7bc0a0f..87dcba6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -219,7 +219,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	if (!devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
-	mtd->class_dev.id = -1;
+	mtd->class_dev.id = DEVICE_ID_DYNAMIC;
 	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 3b73133..0db738d 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -246,7 +246,7 @@ static struct driver_d miidev_drv = {
 int mii_register(struct mii_device *mdev)
 {
 	mdev->dev.priv = mdev;
-	mdev->dev.id = -1;
+	mdev->dev.id = DEVICE_ID_DYNAMIC;
 	strcpy(mdev->dev.name, "miidev");
 	if (mdev->parent)
 		dev_add_child(mdev->parent, &mdev->dev);
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index 70d397e..3f87d3f 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -154,7 +154,7 @@ static struct driver_d arm_dcc_driver = {
 };
 
 static struct device_d arm_dcc_device = {
-	.id	= -1,
+	.id	= DEVICE_ID_DYNAMIC,
 	.name	= "arm_dcc",
 };
 
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 7465182..2ce7c6e 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -63,7 +63,7 @@ static int at91_ohci_probe(struct device_d *dev)
 	 */
 	writel(0, &regs->control);
 
-	add_generic_device("ohci", -1, NULL, dev->resource[0].start,
+	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
 			   dev->resource[0].size, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/include/driver.h b/include/driver.h
index 4efa964..09dd1e4 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -211,7 +211,7 @@ struct device_d *add_generic_device_res(const char* devname, int id,
 static inline struct device_d *add_mem_device(const char *name, resource_size_t start,
 		resource_size_t size, unsigned int flags)
 {
-	return add_generic_device("mem", -1, name, start, size,
+	return add_generic_device("mem", DEVICE_ID_DYNAMIC, name, start, size,
 				  IORESOURCE_MEM | flags, NULL);
 }
 
diff --git a/net/eth.c b/net/eth.c
index f62d24a..130805b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -198,7 +198,7 @@ int eth_register(struct eth_device *edev)
 	}
 
 	strcpy(edev->dev.name, "eth");
-	edev->dev.id = -1;
+	edev->dev.id = DEVICE_ID_DYNAMIC;
 
 	if (edev->parent)
 		dev_add_child(edev->parent, &edev->dev);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
