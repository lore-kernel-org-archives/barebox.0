Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-00041i-CB
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:54 +0100
Message-Id: <1295516821-8988-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
References: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] ARM Chumby: Add USB support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |   37 ++++++++++++++++++++++-
 1 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 76ff906..2887f8c 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -22,6 +22,7 @@
 #include <environment.h>
 #include <errno.h>
 #include <mci.h>
+#include <usb/ehci.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <generated/mach-types.h>
@@ -29,6 +30,7 @@
 #include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
+#include <mach/usb.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -197,10 +199,10 @@ static const uint32_t pad_setup[] = {
 	/* backlight control, to be controled by PWM, here we only want to disable it */
 	PWM2_GPIO | GPIO_OUT | GPIO_VALUE(0),	/* 1 enables, 0 disables the backlight */
 
-	/* send a reset signal to the USB hub */
+	/* USB hub reset (active low) */
 	AUART1_TX_GPIO | GPIO_OUT | GPIO_VALUE(0),
 
-	/* USB power disable (FIXME what level to be switched off) */
+	/* USB power (active high) */
 	AUART1_CTS_GPIO | GPIO_OUT | GPIO_VALUE(0),
 
 	/* Detecting if a display is connected (0 = display attached) (external pull up) */
@@ -298,6 +300,35 @@ static int register_persistant_environment(void)
 	return devfs_add_partition("disk0.1", 0, cdev->size, DEVFS_PARTITION_FIXED, "env0");
 }
 
+static struct ehci_platform_data chumby_usb_pdata = {
+	.flags = EHCI_HAS_TT,
+	.hccr_offset = 0x100,
+	.hcor_offset = 0x140,
+};
+
+static struct device_d usb_dev = {
+	.name		= "ehci",
+	.id		= -1,
+	.map_base	= IMX_USB_BASE,
+	.size		= 0x200,
+	.platform_data	= &chumby_usb_pdata,
+};
+
+#define GPIO_USB_HUB_RESET	29
+#define GPIO_USB_HUB_POWER	26
+
+static void falconwing_init_usb(void)
+{
+	/* power USB hub */
+	gpio_direction_output(GPIO_USB_HUB_POWER, 1);
+	mdelay(1);
+	/* bring USB hub out of reset */
+	gpio_direction_output(GPIO_USB_HUB_RESET, 1);
+
+	imx_usb_phy_enable();
+	register_device(&usb_dev);
+}
+
 static int falconwing_devices_init(void)
 {
 	int i, rc;
@@ -313,6 +344,8 @@ static int falconwing_devices_init(void)
 	register_device(&mci_dev);
 	register_device(&ldcif_dev);
 
+	falconwing_init_usb();
+
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
