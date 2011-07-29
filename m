Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmgHQ-000402-Eh
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 06:10:43 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 76C7EFFA2ED
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 08:11:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 07:52:56 +0200
Message-Id: <1311918777-26719-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] omap: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/omap/board-beagle.c    |   30 ++++++------------------------
 arch/arm/boards/omap/board-sdp343x.c   |    1 -
 arch/arm/mach-omap/devices-gpmc-nand.c |   13 +++----------
 3 files changed, 9 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index adf0b94..8f868ad 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -242,14 +242,6 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
-static struct device_d beagle_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
-	.platform_data = (void *)&serial_plat,
-};
-
 /**
  * @brief UART serial port initialization - remember to enable COM clocks in
  * arch
@@ -259,7 +251,8 @@ static struct device_d beagle_serial_device = {
 static int beagle_console_init(void)
 {
 	/* Register the serial port */
-	return register_device(&beagle_serial_device);
+	return !!add_generic_device("serial_ns16550", -1, NULL, OMAP_UART3_BASE, 1024,
+			   IORESOURCE_MEM, &serial_plat);
 }
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
@@ -280,25 +273,12 @@ static struct ehci_platform_data ehci_pdata = {
 };
 #endif /* CONFIG_USB_EHCI_OMAP */
 
-static struct device_d i2c_dev = {
-	.id		= -1,
-	.name		= "i2c-omap",
-	.map_base	= OMAP_I2C1_BASE,
-};
-
 static struct i2c_board_info i2c_devices[] = {
 	{
 		I2C_BOARD_INFO("twl4030", 0x48),
 	},
 };
 
-static struct device_d hsmmc_dev = {
-	.id = -1,
-	.name = "omap-hsmmc",
-	.map_base = 0x4809C000,
-	.size = SZ_4K,
-};
-
 static int beagle_devices_init(void)
 {
 	struct device_d *sdram_dev;
@@ -310,7 +290,8 @@ static int beagle_devices_init(void)
 	armlinux_add_dram(sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	register_device(&i2c_dev);
+	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
+			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
@@ -323,7 +304,8 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
-	register_device(&hsmmc_dev);
+	add_generic_device("omap-hsmmc", -1, NULL, OMAP_I2C1_BASE, 0,
+			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 04aa302..360766a 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -647,7 +647,6 @@ static int sdp3430_flash_init(void)
 static int sdp3430_devices_init(void)
 {
 	struct device_d *sdram_dev;
-	int ret;
 
 	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index c2a2b0d..bf409a7 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -70,15 +70,6 @@ static struct gpmc_nand_platform_data nand_plat = {
 	.priv = (void *)&nand_cfg,
 };
 
-/** NAND device definition */
-static struct device_d gpmc_generic_nand_nand_device = {
-	.id = -1,
-	.name = "gpmc_nand",
-	.map_base = OMAP_GPMC_BASE,
-	.size = 1024 * 4,	/* GPMC size */
-	.platform_data = (void *)&nand_plat,
-};
-
 /**
  * @brief gpmc_generic_nand_devices_init - init generic nand device
  *
@@ -99,5 +90,7 @@ int gpmc_generic_nand_devices_init(int cs, int width,
 
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, &nand_cfg);
-	return register_device(&gpmc_generic_nand_nand_device);
+
+	return !!add_generic_device("gpmc_nand", -1, NULL, OMAP_GPMC_BASE, 1024 * 4,
+			   IORESOURCE_MEM, &nand_plat);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
