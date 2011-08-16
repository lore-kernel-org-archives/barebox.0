Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtCcU-00063P-OT
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 05:55:30 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 71CB2FFB700
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 07:55:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 16 Aug 2011 07:36:04 +0200
Message-Id: <1313472967-19324-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] device: update id support to allow device without id
To: barebox@lists.infradead.org

as in linux use -1 for this

as example on bus we may have only one device so no need to have
devname<number>

for automatic id use -2 now
udpate all the device that use -1 to -2

device that really want -1 will have to update later

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    6 +++---
 arch/arm/boards/a9m2440/a9m2440.c                 |    6 +++---
 arch/arm/boards/chumby_falconwing/falconwing.c    |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                 |    6 +++---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    4 ++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    8 ++++----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    4 ++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    4 ++--
 arch/arm/boards/guf-neso/board.c                  |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    4 ++--
 arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    4 ++--
 arch/arm/boards/netx/netx.c                       |    8 ++++----
 arch/arm/boards/nhk8815/setup.c                   |    4 ++--
 arch/arm/boards/omap/board-beagle.c               |    8 ++++----
 arch/arm/boards/omap/board-omap3evm.c             |    2 +-
 arch/arm/boards/omap/board-sdp343x.c              |    2 +-
 arch/arm/boards/panda/board.c                     |    6 +++---
 arch/arm/boards/pcm037/pcm037.c                   |    8 ++++----
 arch/arm/boards/pcm038/pcm038.c                   |    4 ++--
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/pcm049/board.c                    |    6 +++---
 arch/arm/boards/phycard-i.MX27/pca100.c           |    4 ++--
 arch/arm/boards/scb9328/scb9328.c                 |    4 ++--
 arch/arm/boards/versatile/versatilepb.c           |    4 ++--
 arch/arm/mach-at91/at91sam9263_devices.c          |    2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c          |    2 +-
 arch/arm/mach-imx/devices.c                       |    8 ++++----
 arch/arm/mach-omap/devices-gpmc-nand.c            |    2 +-
 arch/blackfin/boards/ipe337/ipe337.c              |    6 +++---
 arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
 arch/mips/boards/qemu-malta/serial.c              |    2 +-
 arch/nios2/boards/generic/generic.c               |    6 +++---
 arch/ppc/boards/pcm030/pcm030.c                   |    8 ++++----
 arch/sandbox/board/hostfile.c                     |    2 +-
 arch/x86/boards/x86_generic/generic_pc.c          |    4 ++--
 common/console.c                                  |    2 +-
 drivers/base/driver.c                             |    5 ++++-
 drivers/mci/mci-core.c                            |    2 +-
 drivers/net/miidev.c                              |    2 +-
 include/driver.h                                  |    2 +-
 net/eth.c                                         |    2 +-
 43 files changed, 89 insertions(+), 86 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 44ac44b..0d26da9 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -131,14 +131,14 @@ static int a9m2410_devices_init(void)
 	writel(reg, MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+	add_generic_device("s3c24x0_nand", -2, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 	/*
 	 * SMSC 91C111 network controller on the baseboard
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 32 bit
 	 */
-	add_generic_device("smc91c111", -1, NULL, CS1_BASE + 0x300, 16,
+	add_generic_device("smc91c111", -2, NULL, CS1_BASE + 0x300, 16,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
@@ -167,7 +167,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2410_console_init(void)
 {
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c24x0_serial", -2, NULL, UART1_BASE, UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 89c9cdf..fece4ac 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -133,14 +133,14 @@ static int a9m2440_devices_init(void)
 	writel(reg, MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+	add_generic_device("s3c24x0_nand", -2, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 	/*
 	 * cs8900 network controller onboard
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
 	 * data width is 16 bit
 	 */
-	add_generic_device("cs8900", -1, NULL, CS5_BASE + (1 << 24) + 0x300, 16,
+	add_generic_device("cs8900", -2, NULL, CS5_BASE + (1 << 24) + 0x300, 16,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
@@ -168,7 +168,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2440_console_init(void)
 {
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c24x0_serial", -2, NULL, UART1_BASE, UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 1c66eb2..db9974b 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -318,7 +318,7 @@ static void falconwing_init_usb(void)
 
 	imx_usb_phy_enable();
 
-	add_generic_usb_ehci_device(-1, IMX_USB_BASE, NULL);
+	add_generic_usb_ehci_device(-2, IMX_USB_BASE, NULL);
 }
 
 static int falconwing_devices_init(void)
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 3e4e0b0..1ec93f7 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -57,7 +57,7 @@ mem_initcall(ep93xx_mem_init);
 
 static int ep93xx_devices_init(void)
 {
-	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
+	add_cfi_flash_device(-2, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
 
 	/*
 	 * Create partitions that should be
@@ -72,7 +72,7 @@ static int ep93xx_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 6, data width is 16 bit
 	 */
-	add_generic_device("ep93xx_eth", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
+	add_generic_device("ep93xx_eth", -2, NULL, 0, 0, IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)CONFIG_EP93XX_SDRAM_BANK0_BASE + 0x100);
 
@@ -101,7 +101,7 @@ static int edb93xx_console_init(void)
 	writel(0xAA, &syscon->sysswlock);
 	writel(value, &syscon->devicecfg);
 
-	add_generic_device("pl010_serial", -1, NULL, UART1_BASE, 4096,
+	add_generic_device("pl010_serial", -2, NULL, UART1_BASE, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1c54202..c589ec6 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -253,9 +253,9 @@ static int eukrea_cpuimx25_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
-	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+	add_generic_device("fsl-udc", -2, NULL, IMX_OTG_BASE, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index a5aadac..5ee8b54 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -191,9 +191,9 @@ static int eukrea_cpuimx27_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC0000000, 32 * 1024 * 1024, 0);
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
-	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC2000000, 32 * 1024 * 1024, 0);
 #endif
 	imx27_add_nand(&nand_info);
 
@@ -227,7 +227,7 @@ device_initcall(eukrea_cpuimx27_devices_init);
 static int eukrea_cpuimx27_console_init(void)
 {
 #ifdef CONFIG_DRIVER_SERIAL_IMX
-	imx_add_uart((void *)IMX_UART1_BASE, -1);
+	imx_add_uart((void *)IMX_UART1_BASE, -2);
 #endif
 	/* configure 8 bit UART on cs3 */
 	FMCR &= ~0x2;
@@ -235,7 +235,7 @@ static int eukrea_cpuimx27_console_init(void)
 	CS3L = 0x0D1D0D01;
 	CS3A = 0x00D20000;
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
-	add_ns16550_device(-1, IMX_CS3_BASE + QUART_OFFSET, 0xf,
+	add_ns16550_device(-2, IMX_CS3_BASE + QUART_OFFSET, 0xf,
 			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
 #endif
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 426445f..f047688 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -159,13 +159,13 @@ static int eukrea_cpuimx35_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx35_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
 #ifdef CONFIG_USB_GADGET
 	/* Workaround ENGcm09152 */
 	tmp = readl(IMX_OTG_BASE + 0x608);
 	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
-	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
+	add_generic_device("fsl-udc", -2, NULL, IMX_OTG_BASE, 0x200,
 			   IORESOURCE_MEM, &usb_pdata);
 #endif
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 979115d..957e35a 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -215,7 +215,7 @@ static int imx25_devices_init(void)
 	 * the CPLD has to be initialized.
 	 */
 	imx25_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	imx25_iim_register_fec_ethaddr();
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index ab70265..6df644e 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -156,7 +156,7 @@ static int f3s_devices_init(void)
 	 * This platform supports NOR and NAND
 	 */
 	imx35_add_nand(&nand_info);
-	add_cfi_flash_device(-1, IMX_CS0_BASE, 64 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, IMX_CS0_BASE, 64 * 1024 * 1024, 0);
 
 	switch ((reg >> 25) & 0x3) {
 	case 0x01:		/* NAND is the source */
@@ -179,7 +179,7 @@ static int f3s_devices_init(void)
 	imx35_add_i2c0(NULL);
 
 	imx35_add_fec(&fec_info);
-	add_generic_device("smc911x", -1, NULL,	IMX_CS5_BASE, IMX_CS5_RANGE,
+	add_generic_device("smc911x", -2, NULL,	IMX_CS5_BASE, IMX_CS5_RANGE,
 			IORESOURCE_MEM, NULL);
 
 	imx35_add_mmc0(NULL);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 446b333..743d6b3 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -279,7 +279,7 @@ static int neso_devices_init(void)
 
 #ifdef CONFIG_USB
 	neso_usbh_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	imx27_add_fec(&fec_info);
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index d58831e..e41a1cb 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -164,9 +164,9 @@ static int mx21ads_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC8000000, 32 * 1024 * 1024, 0);
 	imx21_add_nand(&nand_info);
-	add_generic_device("cs8900", -1, NULL,	IMX_CS1_BASE, 0x1000,
+	add_generic_device("cs8900", -2, NULL,	IMX_CS1_BASE, 0x1000,
 			IORESOURCE_MEM, NULL);
 	imx21_add_fb(&imx_fb_data);
 
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index da4260f..ccd4b02 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -114,7 +114,7 @@ static int mx27ads_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC0000000, 32 * 1024 * 1024, 0);
 
 	imx27_add_fec(&fec_info);
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index fd1f2f2..c69827c 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -294,7 +294,7 @@ static int mini2440_devices_init(void)
 	reg |= 0x10000;
 	writel(reg, MISCCR);
 
-	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+	add_generic_device("s3c24x0_nand", -2, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 
 	add_dm9000_device(0, CS4_BASE + 0x300, CS4_BASE + 0x304,
@@ -339,7 +339,7 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c24x0_serial", -2, NULL, UART1_BASE, UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 92d2911..cd8abd2 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -47,10 +47,10 @@ static int netx_mem_init(void)
 mem_initcall(netx_mem_init);
 
 static int netx_devices_init(void) {
-	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
-	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
+	add_generic_device("netx-eth", -2, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
+	add_generic_device("netx-eth", -2, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 
@@ -75,7 +75,7 @@ static int netx_console_init(void)
 	*(volatile unsigned long *)(0x00100808) = 2;
 	*(volatile unsigned long *)(0x0010080c) = 2;
 
-	add_generic_device("netx_serial", -1, NULL, NETX_PA_UART0, 0x40,
+	add_generic_device("netx_serial", -2, NULL, NETX_PA_UART0, 0x40,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index dcf7166..15c16a0 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -69,7 +69,7 @@ static struct resource nhk8815_nand_resources[] = {
 };
 
 static struct device_d nhk8815_nand_device = {
-	.id		= -1,
+	.id		= -2,
 	.name		= "nomadik_nand",
 	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
 	.resource	= nhk8815_nand_resources,
@@ -95,7 +95,7 @@ static int nhk8815_devices_init(void)
 	writel(0x0000305b, FSMC_BCR(1));
 	writel(0x00033f33, FSMC_BTR(1));
 
-	add_generic_device("smc91c111", -1, NULL, 0x34000300, 16,
+	add_generic_device("smc91c111", -2, NULL, 0x34000300, 16,
 			   IORESOURCE_MEM, NULL);
 
 	register_device(&nhk8815_nand_device);
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 49af40c..c9a7d2e 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -248,7 +248,7 @@ static struct NS16550_plat serial_plat = {
 static int beagle_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+	add_ns16550_device(-2, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
 			   &serial_plat);
 
 	return 0;
@@ -289,12 +289,12 @@ mem_initcall(beagle_mem_init);
 static int beagle_devices_init(void)
 {
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
+	add_generic_device("i2c-omap", -2, NULL, 0x4809C000, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
-		add_usb_ehci_device(-1, 0x48064700 + 0x100,
+		add_usb_ehci_device(-2, 0x48064700 + 0x100,
 				    0x48064700 + 0x110, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_GPMC
@@ -303,7 +303,7 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
-	add_generic_device("omap-hsmmc", -1, NULL, OMAP_I2C1_BASE, 0,
+	add_generic_device("omap-hsmmc", -2, NULL, OMAP_I2C1_BASE, 0,
 			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index a2532d5..e894ad4 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -222,7 +222,7 @@ static struct NS16550_plat serial_plat = {
  */
 static int omap3evm_init_console(void)
 {
-	add_ns16550_device(-1,
+	add_ns16550_device(-2,
 #if defined(CONFIG_OMAP3EVM_UART1)
 			OMAP_UART1_BASE,
 #elif defined(CONFIG_OMAP3EVM_UART3)
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 82fc16d..9d94f09 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -615,7 +615,7 @@ static struct NS16550_plat serial_plat = {
 static int sdp3430_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+	add_ns16550_device(-2, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
 			   &serial_plat);
 
 	return 0;
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 1303c47..616fa7d 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -37,7 +37,7 @@ static struct NS16550_plat serial_plat = {
 static int panda_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+	add_ns16550_device(-2, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
 			   &serial_plat);
 
 	return 0;
@@ -87,7 +87,7 @@ static void panda_ehci_init(void)
 	/* enable power to hub */
 	gpio_set_value(GPIO_HUB_POWER, 1);
 
-	add_usb_ehci_device(-1, 0x4a064c00,
+	add_usb_ehci_device(-2, 0x4a064c00,
 			    0x4a064c00 + 0x10, &ehci_pdata);
 }
 #else
@@ -132,7 +132,7 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+	add_generic_device("omap-hsmmc", -2, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 85f004f..6d6ed3c 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -187,7 +187,7 @@ static int imx31_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 0, data width is 16 bit
 	 */
-	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 
 	/*
 	 * Create partitions that should be
@@ -211,13 +211,13 @@ static int imx31_devices_init(void)
 	 * connected to CS line 1 and interrupt line
 	 * GPIO3, data width is 16 bit
 	 */
-	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
+	add_generic_device("smc911x", -2, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
 			IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 4db50fe..bc879ab 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -243,13 +243,13 @@ static int pcm038_devices_init(void)
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
-	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
 	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
 	pcm038_usbh_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 #endif
 
 	/* Register the fec device after the PLL re-initialisation
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 966899a..3bf6c3a 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -146,7 +146,7 @@ static int imx35_devices_init(void)
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 0, data width is 16 bit
 	 */
-	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 
 	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
 		switch ( (reg >> 25) & 0x3) {
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 502e121..5ef0d3c 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -48,7 +48,7 @@ static struct NS16550_plat serial_plat = {
 static int pcm049_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+	add_ns16550_device(-2, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
@@ -81,13 +81,13 @@ static void pcm049_network_init(void)
 {
 	gpmc_cs_config(5, &net_cfg);
 
-	add_generic_device("smc911x", -1, NULL, 0x2C000000, 0x4000,
+	add_generic_device("smc911x", -2, NULL, 0x2C000000, 0x4000,
 			   IORESOURCE_MEM, NULL);
 }
 
 static int pcm049_devices_init(void)
 {
-	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+	add_generic_device("omap-hsmmc", -2, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
 	gpmc_generic_init(0x10);
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index f285466..09d7bf8 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -63,9 +63,9 @@ static void pca100_usb_register(void)
 	mdelay(10);
 
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x170), 1);
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE, NULL);
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+	add_generic_usb_ehci_device(-2, IMX_OTG_BASE + 0x400, NULL);
 }
 #endif
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index e90417f..5653e48 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -88,8 +88,8 @@ static int scb9328_devices_init(void)
 	CS5U = 0x00008400;
 	CS5L = 0x00000D03;
 
-	add_cfi_flash_device(-1, 0x10000000, 16 * 1024 * 1024, 0);
-	add_dm9000_device(-1, 0x16000000, 0x16000004,
+	add_cfi_flash_device(-2, 0x10000000, 16 * 1024 * 1024, 0);
+	add_dm9000_device(-2, 0x16000000, 0x16000004,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 4e09de3..2f42fa9 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -50,11 +50,11 @@ mem_initcall(vpb_mem_init);
 
 static int vpb_devices_init(void)
 {
-	add_cfi_flash_device(-1, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
+	add_cfi_flash_device(-2, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 
-	add_generic_device("smc91c111", -1, NULL, VERSATILE_ETH_BASE, 64 * 1024,
+	add_generic_device("smc91c111", -2, NULL, VERSATILE_ETH_BASE, 64 * 1024,
 			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index c7ae45a..f881151 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -84,7 +84,7 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
+	add_generic_device("atmel_nand", -2, NULL, AT91_CHIPSELECT_3, 0x10,
 			   IORESOURCE_MEM, data);
 }
 #else
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index f6e1eb4..5084ba2 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -88,7 +88,7 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
+	add_generic_device("atmel_nand", -2, NULL, AT91_CHIPSELECT_3, 0x10,
 			   IORESOURCE_MEM, data);
 }
 #else
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 5b062f5..cccb0c1 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -10,7 +10,7 @@ static inline struct device_d *imx_add_device(char *name, int id, void *base, in
 
 struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata)
 {
-	return imx_add_device("fec_imx", -1, base, 0x1000, pdata);
+	return imx_add_device("fec_imx", -2, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata)
@@ -30,17 +30,17 @@ struct device_d *imx_add_uart(void *base, int id)
 
 struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
 {
-	return imx_add_device("imx_nand", -1, base, 0x1000, pdata);
+	return imx_add_device("imx_nand", -2, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata)
 {
-	return imx_add_device("imxfb", -1, base, 0x1000, pdata);
+	return imx_add_device("imxfb", -2, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata)
 {
-	return imx_add_device("imx-ipu-fb", -1, base, 0x1000, pdata);
+	return imx_add_device("imx-ipu-fb", -2, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_mmc(void *base, int id, void *pdata)
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 76ceb20..0f09c80 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -91,7 +91,7 @@ int gpmc_generic_nand_devices_init(int cs, int width,
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, &nand_cfg);
 
-	add_generic_device("gpmc_nand", -1, NULL, OMAP_GPMC_BASE, 1024 * 4,
+	add_generic_device("gpmc_nand", -2, NULL, OMAP_GPMC_BASE, 1024 * 4,
 			   IORESOURCE_MEM, &nand_plat);
 
 	return 0;
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index ee642d1..4558957 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -6,7 +6,7 @@
 #include <fs.h>
 
 static int ipe337_devices_init(void) {
-	add_cfi_flash_device(-1, 0x20000000, 32 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0x20000000, 32 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 128 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
 
@@ -16,7 +16,7 @@ static int ipe337_devices_init(void) {
 	mdelay(100);
 	*pFIO0_FLAG_S = (1<<12);
 
-	add_generic_device("smc911x", -1, NULL, 0x24000000, 4096,
+	add_generic_device("smc911x", -2, NULL, 0x24000000, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
@@ -31,7 +31,7 @@ device_initcall(ipe337_devices_init);
 
 static int blackfin_console_init(void)
 {
-	add_generic_device("blackfin_serial", -1, NULL, 0, 4096,
+	add_generic_device("blackfin_serial", -2, NULL, 0, 4096,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
index ebe8c06..ea5bb66 100644
--- a/arch/mips/boards/dlink-dir-320/serial.c
+++ b/arch/mips/boards/dlink-dir-320/serial.c
@@ -35,7 +35,7 @@ static struct NS16550_plat serial_plat = {
 static int dir320_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
+	add_ns16550_device(-2, DEBUG_LL_UART_ADDR, 8,
 			IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
diff --git a/arch/mips/boards/qemu-malta/serial.c b/arch/mips/boards/qemu-malta/serial.c
index ef6be17..8846af2 100644
--- a/arch/mips/boards/qemu-malta/serial.c
+++ b/arch/mips/boards/qemu-malta/serial.c
@@ -35,7 +35,7 @@ static struct NS16550_plat serial_plat = {
 static int malta_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
+	add_ns16550_device(-2, DEBUG_LL_UART_ADDR, 8,
 			IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 0e3852b..84fe5b8 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -25,7 +25,7 @@ static struct resource mac_resources[] = {
 };
 
 static struct device_d mac_dev = {
-	.id            = -1,
+	.id            = -2,
 	.name          = "altera_tse",
 	.num_resources = ARRAY_SIZE(mac_resources),
 	.resource      = mac_resources,
@@ -34,7 +34,7 @@ static struct device_d mac_dev = {
 
 static int generic_devices_init(void)
 {
-	add_cfi_flash_device(-1, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
+	add_cfi_flash_device(-2, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
 	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
 		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&mac_dev);
@@ -53,7 +53,7 @@ device_initcall(generic_devices_init);
 
 static int altera_console_init(void)
 {
-	add_generic_device("altera_serial", -1, NULL, NIOS_SOPC_UART_BASE, 0x20,
+	add_generic_device("altera_serial", -2, NULL, NIOS_SOPC_UART_BASE, 0x20,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index ba59bfe..7fcfc22 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -43,10 +43,10 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 
 static int devices_init (void)
 {
-	add_cfi_flash_device(-1, 0xff000000, 16 * 1024 * 1024, 0);
+	add_cfi_flash_device(-2, 0xff000000, 16 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 64 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
-	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0,
+	add_generic_device("fec_mpc5xxx", -2, NULL, MPC5XXX_FEC, 0,
 			   IORESOURCE_MEM, &fec_info);
 
 	devfs_add_partition("nor0", 0x00f00000, 0x40000, PARTITION_FIXED, "self0");
@@ -59,9 +59,9 @@ device_initcall(devices_init);
 
 static int console_init(void)
 {
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC3, 4096,
+	add_generic_device("mpc5xxx_serial", -2, NULL, MPC5XXX_PSC3, 4096,
 			   IORESOURCE_MEM, NULL);
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC6, 4096,
+	add_generic_device("mpc5xxx_serial", -2, NULL, MPC5XXX_PSC6, 4096,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index f5452af..b3a7cd3 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -102,7 +102,7 @@ device_initcall(hf_init);
 
 int barebox_register_filedev(struct hf_platform_data *hf)
 {
-	return !add_generic_device("hostfile", -1, NULL, hf->base, hf->size,
+	return !add_generic_device("hostfile", -2, NULL, hf->base, hf->size,
 			   IORESOURCE_MEM, hf);
 }
 
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 0ddf883..2371b8d 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -51,7 +51,7 @@ static int devices_init(void)
 	/* extended memory only */
 	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
 		       IORESOURCE_MEM_WRITEABLE);
-	add_generic_device("biosdrive", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
+	add_generic_device("biosdrive", -2, NULL, 0, 0, IORESOURCE_MEM, NULL);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
 		rc = devfs_add_partition("biosdisk0",
@@ -77,7 +77,7 @@ static struct NS16550_plat serial_plat = {
 static int pc_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, 0x3f8, 8, 0, &serial_plat);
+	add_ns16550_device(-2, 0x3f8, 8, 0, &serial_plat);
 
 	return 0;
 }
diff --git a/common/console.c b/common/console.c
index 1f6ee93..6c88fba 100644
--- a/common/console.c
+++ b/common/console.c
@@ -129,7 +129,7 @@ int console_register(struct console_device *newcdev)
 	int first = 0;
 	char ch;
 
-	dev->id = -1;
+	dev->id = -2;
 	strcpy(dev->name, "cs");
 	dev->type_data = newcdev;
 	if (newcdev->dev)
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0b80103..dfd81c5 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -103,7 +103,7 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
-	if (new_device->id < 0) {
+	if (new_device->id == -2) {
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
 		if (get_device_by_name_id(new_device->name, new_device->id)) {
@@ -267,6 +267,9 @@ const char *dev_id(const struct device_d *dev)
 {
 	static char buf[MAX_DRIVER_NAME + 16];
 
+	if (dev->id == -1)
+		return dev->name;
+
 	snprintf(buf, sizeof(buf), FORMAT_DRIVER_NAME_ID, dev->name, dev->id);
 
 	return buf;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 681de0a..ce3c1eb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1229,7 +1229,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->read = mci_sd_read;
 	p->priv = mci_dev;
 
-	dev = add_generic_device("disk", -1, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
+	dev = add_generic_device("disk", -2, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
 	dev_add_child(&host->dev, dev);
 
 	pr_debug("SD Card successfully added\n");
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 501a4f8..fe02db7 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -208,7 +208,7 @@ static struct driver_d miidev_drv = {
 int mii_register(struct mii_device *mdev)
 {
 	mdev->dev.priv = mdev;
-	mdev->dev.id = -1;
+	mdev->dev.id = -2;
 	strcpy(mdev->dev.name, "miidev");
 	if (mdev->parent)
 		dev_add_child(mdev->parent, &mdev->dev);
diff --git a/include/driver.h b/include/driver.h
index e9ac727..0b5a652 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -210,7 +210,7 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 static inline struct device_d *add_mem_device(const char *name, resource_size_t start,
 		resource_size_t size, unsigned int flags)
 {
-	return add_generic_device("mem", -1, name, start, size,
+	return add_generic_device("mem", -2, name, start, size,
 				  IORESOURCE_MEM | flags, NULL);
 }
 
diff --git a/net/eth.c b/net/eth.c
index 621cb59..406a4e6 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -198,7 +198,7 @@ int eth_register(struct eth_device *edev)
 	}
 
 	strcpy(edev->dev.name, "eth");
-	edev->dev.id = -1;
+	edev->dev.id = -2;
 
 	if (edev->parent)
 		dev_add_child(edev->parent, &edev->dev);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
