Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpl4-0005uh-H0
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:04 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 7764BFFA811
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:51 +0200
Message-Id: <1311955207-22372-14-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 07/23] omap: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/omap/board-beagle.c    |   19 ++++---------------
 arch/arm/boards/omap/board-sdp343x.c   |    1 -
 arch/arm/boards/panda/board.c          |   10 ++--------
 arch/arm/boards/pcm049/board.c         |   20 ++++----------------
 arch/arm/mach-omap/devices-gpmc-nand.c |   13 +++----------
 5 files changed, 13 insertions(+), 50 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index dcf2d72..899c34b 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -274,25 +274,12 @@ static struct ehci_platform_data ehci_pdata = {
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
@@ -304,7 +291,8 @@ static int beagle_devices_init(void)
 	armlinux_add_dram(sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	register_device(&i2c_dev);
+	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
+			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
@@ -317,7 +305,8 @@ static int beagle_devices_init(void)
 #endif
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
-	register_device(&hsmmc_dev);
+	add_generic_device("omap-hsmmc", -1, NULL, OMAP_I2C1_BASE, 0,
+			   IORESOURCE_MEM, NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 8e8d952..010fbd7 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -641,7 +641,6 @@ static int sdp3430_flash_init(void)
 static int sdp3430_devices_init(void)
 {
 	struct device_d *sdram_dev;
-	int ret;
 
 	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index de43ca5..4c9d8ee 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -113,13 +113,6 @@ static void __init panda_boardrev_init(void)
 	pr_info("PandaBoard Revision: %03d\n", board_revision);
 }
 
-static struct device_d hsmmc_dev = {
-	.id = -1,
-	.name = "omap-hsmmc",
-	.map_base = 0x4809C100,
-	.size = SZ_4K,
-};
-
 static int panda_devices_init(void)
 {
 	struct device_d *sdram_dev;
@@ -153,7 +146,8 @@ static int panda_devices_init(void)
 	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_1G,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
-	register_device(&hsmmc_dev);
+	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 7eae2cf..ec0d0b8 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -73,20 +73,6 @@ static int pcm049_mmu_init(void)
 device_initcall(pcm049_mmu_init);
 #endif
 
-static struct device_d hsmmc_dev = {
-	.id = -1,
-	.name = "omap-hsmmc",
-	.map_base = 0x4809C100,
-	.size = SZ_4K,
-};
-
-static struct device_d smc911x_dev = {
-	.id		= -1,
-	.name		= "smc911x",
-	.map_base	= 0x2C000000,
-	.size		= 0x4000,
-};
-
 static struct gpmc_config net_cfg = {
 	.cfg = {
 		0x00001000,	/* CONF1 */
@@ -104,7 +90,8 @@ static void pcm049_network_init(void)
 {
 	gpmc_cs_config(5, &net_cfg);
 
-	register_device(&smc911x_dev);
+	add_generic_device("smc911x", -1, NULL, 0x2C000000, 0x4000,
+			   IORESOURCE_MEM, NULL);
 }
 
 static int pcm049_devices_init(void)
@@ -116,7 +103,8 @@ static int pcm049_devices_init(void)
 	armlinux_add_dram(sdram_dev);
 	add_mem_device("ram0", 0x40300000, 48 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
-	register_device(&hsmmc_dev);
+	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+			   IORESOURCE_MEM, NULL);
 
 	gpmc_generic_init(0x10);
 
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
