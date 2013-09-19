Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMdeK-0004o4-7k
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 12:48:00 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D7157DC8D85
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 14:47:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 14:48:47 +0200
Message-Id: <1379594927-3859-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Animeo IP: add usb host support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c     | 16 ++++++++++++++++
 arch/arm/configs/animeo_ip_defconfig |  5 +++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 56b8df2..5419ddb 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -146,6 +146,21 @@ static void animeo_ip_add_device_mci(void)
 static void animeo_ip_add_device_mci(void) {}
 #endif
 
+/*
+ * USB Host port
+ */
+static struct at91_usbh_data __initdata animeo_ip_usbh_data = {
+	.ports		= 2,
+	.vbus_pin	= {AT91_PIN_PB15, -EINVAL},
+	.vbus_pin_active_low	= {0, 0},
+
+};
+
+static void animeo_ip_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&animeo_ip_usbh_data);
+}
+
 struct gpio_bicolor_led leds[] = {
 	{
 		.gpio_c0 = AT91_PIN_PC17,
@@ -216,6 +231,7 @@ static int animeo_ip_devices_init(void)
 	animeo_ip_power_control();
 	animeo_ip_add_device_nand();
 	at91_add_device_eth(0, &macb_pdata);
+	animeo_ip_add_device_usb();
 	animeo_ip_add_device_mci();
 	animeo_ip_add_device_buttons();
 	animeo_ip_add_device_led();
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 23e7278..7f6961f 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -56,6 +56,8 @@ CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
@@ -65,6 +67,9 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB=y
+CONFIG_USB_OHCI=y
+CONFIG_USB_OHCI_AT91=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
