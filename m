Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9m-00074H-0b
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:51 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ABEACFF8BD9
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:42 +0200
Message-Id: <1333083528-24289-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 3/9] at91rm9200ek: add usb serial support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/env/bin/init_board |   11 +++++++++++
 arch/arm/boards/at91rm9200ek/init.c             |   19 +++++++++++++++++++
 arch/arm/configs/at91rm9200ek_defconfig         |    5 +++++
 3 files changed, 35 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/env/bin/init_board

diff --git a/arch/arm/boards/at91rm9200ek/env/bin/init_board b/arch/arm/boards/at91rm9200ek/env/bin/init_board
new file mode 100644
index 0000000..0d40eb4
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/env/bin/init_board
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+autoboot_timeout=16
+echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+usbserial
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 3a5da53..9a46ac6 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -88,6 +88,24 @@ static void ek_device_add_leds(void)
 static void ek_device_add_leds(void) {}
 #endif
 
+#if defined(CONFIG_USB_GADGET_DRIVER_AT91)
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PD4,
+	.pullup_pin	= AT91_PIN_PD5,
+};
+
+static void ek_add_device_udc(void)
+{
+	at91_add_device_udc(&ek_udc_data);
+	at91_set_multi_drive(ek_udc_data.pullup_pin, 1);	/* pullup_pin is connected to reset */
+}
+#else
+static void ek_add_device_udc(void) {}
+#endif
+
 static int at91rm9200ek_devices_init(void)
 {
 	/*
@@ -102,6 +120,7 @@ static int at91rm9200ek_devices_init(void)
 	/* USB Host */
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_device_add_leds();
+	ek_add_device_udc();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 8802d5a..d81f1ff 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9200-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -7,6 +8,8 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91rm9200ek/env"
 CONFIG_CMD_EDIT=y
@@ -53,6 +56,8 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
