Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlHjS-0007rt-D1
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:41:19 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 17 Aug 2010 10:40:51 +0200
Message-Id: <1282034451-18154-1-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-13-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-13-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] beagle: fix usb dependencies
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/omap/Kconfig        |    2 --
 arch/arm/boards/omap/board-beagle.c |    4 ++++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
index 6012227..d612064 100644
--- a/arch/arm/boards/omap/Kconfig
+++ b/arch/arm/boards/omap/Kconfig
@@ -48,8 +48,6 @@ config MACH_BEAGLE
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
-	select USB_EHCI_OMAP
-	select USB_TWL4030
 	  help
 	  Say Y here if you are using Beagle Board
 
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index c0b6b43..e9d3072 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -273,6 +273,7 @@ static struct device_d sdram_dev = {
 	.platform_data = &sram_pdata,
 };
 
+#ifdef CONFIG_USB_EHCI_OMAP
 static struct omap_hcd omap_ehci_pdata = {
 	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
 	.port_mode[1] = EHCI_HCD_OMAP_MODE_PHY,
@@ -295,6 +296,7 @@ static struct device_d usbh_dev = {
 	.size     = 4 * 1024,
 	.platform_data = &ehci_pdata,
 };
+#endif /* CONFIG_USB_EHCI_OMAP */
 
 static struct device_d i2c_dev = {
 	.name		= "i2c-omap",
@@ -318,8 +320,10 @@ static int beagle_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
 
+#ifdef CONFIG_USB_EHCI_OMAP
 	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
 		register_device(&usbh_dev);
+#endif /* CONFIG_USB_EHCI_OMAP */
 #ifdef CONFIG_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
