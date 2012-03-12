Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73Rp-0006lq-6Y
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:29:55 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 18D3BDC6A57
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:04 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:52 +0100
Message-Id: <1331551082-7730-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/14] at91sam9263ek: add dfu and usb serial support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

if left_click is pressed 5s during boot enable dfu otherwise usbserial

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/env/bin/init_board |   51 ++++++++++++++++++++++
 arch/arm/boards/at91sam9263ek/init.c             |   29 ++++++++++++
 arch/arm/configs/at91sam9263ek_defconfig         |    9 +++-
 3 files changed, 86 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init_board

diff --git a/arch/arm/boards/at91sam9263ek/env/bin/init_board b/arch/arm/boards/at91sam9263ek/env/bin/init_board
new file mode 100644
index 0000000..ae2ac7d
--- /dev/null
+++ b/arch/arm/boards/at91sam9263ek/env/bin/init_board
@@ -0,0 +1,51 @@
+#!/bin/sh
+
+button_name="dfu_bp"
+button_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo "${button_name} pressed detected wait ${button_wait}s"
+timeout -s -a ${button_wait}
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	echo "${button_name} released, normal boot"
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+led ds2 1
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+led ds2 0
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 42b38ba..4a8d167 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -137,6 +137,33 @@ static void ek_device_add_leds(void)
 static void ek_device_add_leds(void) {}
 #endif
 
+#if defined(CONFIG_USB_GADGET_DRIVER_AT91)
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PA25,
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
+};
+
+static void ek_add_device_udc(void)
+{
+	at91_add_device_udc(&ek_udc_data);
+}
+#else
+static void ek_add_device_udc(void) {}
+#endif
+
+static void __init ek_add_device_buttons(void)
+{
+	at91_set_gpio_input(AT91_PIN_PC5, 1);
+	at91_set_deglitch(AT91_PIN_PC5, 1);
+	export_env_ull("dfu_button", AT91_PIN_PC5);
+	at91_set_gpio_input(AT91_PIN_PC4, 1);
+	at91_set_deglitch(AT91_PIN_PC4, 1);
+	export_env_ull("right_click", AT91_PIN_PC4);
+}
+
 static int at91sam9263ek_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -160,6 +187,8 @@ static int at91sam9263ek_devices_init(void)
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
 	ek_add_device_mci();
 	ek_device_add_leds();
+	ek_add_device_udc();
+	ek_add_device_buttons();
 
 	if (IS_ENABLED(CONFIG_DRIVER_CFI) && cdev_by_name("nor0")) {
 		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 1b4b2e3..3353601 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -6,16 +6,17 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
@@ -37,11 +38,13 @@ CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
