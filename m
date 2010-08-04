Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000Vd-Id
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:30 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:16 +0200
Message-Id: <1280915957-2910-13-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 12/13] beagle: add usb support
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/omap/Kconfig        |    2 +
 arch/arm/boards/omap/board-beagle.c |   44 +++++++++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
index d612064..6012227 100644
--- a/arch/arm/boards/omap/Kconfig
+++ b/arch/arm/boards/omap/Kconfig
@@ -48,6 +48,8 @@ config MACH_BEAGLE
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
+	select USB_EHCI_OMAP
+	select USB_TWL4030
 	  help
 	  Say Y here if you are using Beagle Board
 
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 01c6cd2..c0b6b43 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -59,6 +59,7 @@
 #include <asm/io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
+#include <asm/mach-types.h>
 #include <mach/silicon.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
@@ -67,6 +68,10 @@
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
+#include <mach/ehci.h>
+#include <i2c/i2c.h>
+#include <linux/err.h>
+#include <usb/ehci.h>
 #include "board.h"
 
 /******************** Board Boot Time *******************/
@@ -268,6 +273,40 @@ static struct device_d sdram_dev = {
 	.platform_data = &sram_pdata,
 };
 
+static struct omap_hcd omap_ehci_pdata = {
+	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
+	.port_mode[1] = EHCI_HCD_OMAP_MODE_PHY,
+	.port_mode[2] = EHCI_HCD_OMAP_MODE_UNKNOWN,
+	.phy_reset  = 1,
+	.reset_gpio_port[0]  = -EINVAL,
+	.reset_gpio_port[1]  = 147,
+	.reset_gpio_port[2]  = -EINVAL
+};
+
+static struct ehci_platform_data ehci_pdata = {
+	.flags = 0,
+	.hccr_offset = 0x100,
+	.hcor_offset = 0x110,
+};
+
+static struct device_d usbh_dev = {
+	.name     = "ehci",
+	.map_base = 0x48064700,
+	.size     = 4 * 1024,
+	.platform_data = &ehci_pdata,
+};
+
+static struct device_d i2c_dev = {
+	.name		= "i2c-omap",
+	.map_base	= OMAP_I2C1_BASE,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("twl4030", 0x48),
+	},
+};
+
 static int beagle_devices_init(void)
 {
 	int ret;
@@ -276,6 +315,11 @@ static int beagle_devices_init(void)
 	if (ret)
 		goto failed;
 
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	register_device(&i2c_dev);
+
+	if (ehci_omap_init(&omap_ehci_pdata) >= 0)
+		register_device(&usbh_dev);
 #ifdef CONFIG_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
