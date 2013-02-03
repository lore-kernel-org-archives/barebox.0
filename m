Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Kl-0002qz-LR
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:18:20 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1363F104EA74
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:28:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:17:04 +0100
Message-Id: <1359904624-12478-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359896867-32312-1-git-send-email-plagnioj@jcrosoft.com>
References: <1359896867-32312-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] usb-a926x: only provide the resource if the driver is
 enable
To: barebox@lists.infradead.org

usefull for bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	fix udc without ohci

 arch/arm/boards/usb-a926x/init.c |   42 +++++++++++++++++++++++++++++++++++---
 1 file changed, 39 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index a5beeed..0383280 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -51,6 +51,7 @@ static void usb_a9260_set_board_type(void)
 		armlinux_set_architecture(MACH_TYPE_USB_A9260);
 }
 
+#if defined(CONFIG_NAND_ATMEL)
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -111,7 +112,11 @@ static void usb_a9260_add_device_nand(void)
 
 	at91_add_device_nand(&nand_pdata);
 }
+#else
+static void usb_a9260_add_device_nand(void) {}
+#endif
 
+#if defined(CONFIG_DRIVER_NET_MACB)
 static struct at91_ether_platform_data macb_pdata = {
 	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
@@ -149,6 +154,16 @@ static void usb_a9260_phy_reset(void)
 				     AT91_RSTC_URSTEN);
 }
 
+static void usb_a9260_add_device_eth(void)
+{
+	usb_a9260_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+}
+#else
+static void usb_a9260_add_device_eth(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
 static const struct spi_board_info usb_a9263_spi_devices[] = {
 	{
 		.name		= "mtd_dataflash",
@@ -191,6 +206,9 @@ static void usb_a9260_add_spi(void)
 		at91_add_device_spi(1, &spi_a9g20_pdata);
 	}
 }
+#else
+static void usb_a9260_add_spi(void) {}
+#endif
 
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata usb_a9260_mci_data = {
@@ -205,11 +223,21 @@ static void usb_a9260_add_device_mci(void)
 static void usb_a9260_add_device_mci(void) {}
 #endif
 
+#if defined(CONFIG_USB_OHCI)
 static struct at91_usbh_data ek_usbh_data = {
 	.ports		= 2,
 	.vbus_pin	= { -EINVAL, -EINVAL },
 };
 
+static void usb_a9260_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+}
+#else
+static void usb_a9260_add_device_usb(void) {}
+#endif
+
+#ifdef CONFIG_USB_GADGET_DRIVER_AT91
 /*
  * USB Device port
  */
@@ -225,7 +253,11 @@ static void __init ek_add_device_udc(void)
 
 	at91_add_device_udc(&ek_udc_data);
 }
+#else
+static void __init ek_add_device_udc(void) {}
+#endif
 
+#ifdef CONFIG_LED_GPIO
 struct gpio_led led = {
 	.gpio = AT91_PIN_PB21,
 	.led = {
@@ -241,6 +273,9 @@ static void __init ek_add_led(void)
 	at91_set_gpio_output(led.gpio, led.active_low);
 	led_gpio_register(&led);
 }
+#else
+static void ek_add_led(void) {}
+#endif
 
 static int usb_a9260_mem_init(void)
 {
@@ -356,11 +391,10 @@ static void usb_a9260_device_dab_mmx(void) {}
 static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
-	usb_a9260_phy_reset();
-	at91_add_device_eth(0, &macb_pdata);
 	usb_a9260_add_device_mci();
+	usb_a9260_add_device_eth();
 	usb_a9260_add_spi();
-	at91_add_device_usbh_ohci(&ek_usbh_data);
+	usb_a9260_add_device_usb();
 	ek_add_device_udc();
 	ek_add_led();
 	ek_add_device_button();
@@ -382,6 +416,7 @@ static int usb_a9260_devices_init(void)
 }
 device_initcall(usb_a9260_devices_init);
 
+#ifndef CONFIG_CONSOLE_NONE
 static int usb_a9260_console_init(void)
 {
 	struct device_d *dev;
@@ -398,3 +433,4 @@ static int usb_a9260_console_init(void)
 	return 0;
 }
 console_initcall(usb_a9260_console_init);
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
