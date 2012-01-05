Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rinau-0004ZG-Vh
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:43:02 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5E5FF1058582
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:44:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:36:37 +0100
Message-Id: <1325770598-10931-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] at91sam9260/9g20ek: add dfu and usb serial support
To: barebox@lists.infradead.org

if bp3 is pressed 5s during boot enable dfu otherwise usbserial

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/bin/init_board |   72 +++++++++++++++-------
 arch/arm/boards/at91sam9260ek/init.c             |    2 +
 arch/arm/configs/at91sam9260ek_defconfig         |   15 ++++-
 arch/arm/configs/at91sam9g20ek_defconfig         |   15 ++++-
 4 files changed, 79 insertions(+), 25 deletions(-)
 rewrite arch/arm/boards/at91sam9260ek/env/bin/init_board (67%)

diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/env/bin/init_board
dissimilarity index 67%
index 0da2781..0a6baf7 100644
--- a/arch/arm/boards/at91sam9260ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9260ek/env/bin/init_board
@@ -1,23 +1,49 @@
-#!/bin/sh
-
-#PIOA_31
-gpio_get_value 63
-if [ $? != 0 ]
-then
-	exit
-fi
-
-echo "BP4 pressed detected wait 5s"
-timeout -s -a 5
-gpio_get_value 63
-if [ $? != 0 ]
-then
-	echo "BP4 released, normal boot"
-	exit
-fi
-
-echo ""
-echo "Start DFU Mode"
-echo ""
-
-dfu /dev/self0(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r -P 0x1234 -V 0x4321
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
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index b10d0dc..a11998a 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -212,8 +212,10 @@ static void __init ek_add_device_buttons(void)
 {
 	at91_set_gpio_input(AT91_PIN_PA30, 1);	/* btn3 */
 	at91_set_deglitch(AT91_PIN_PA30, 1);
+	export_env_ull("dfu_button", AT91_PIN_PA30);
 	at91_set_gpio_input(AT91_PIN_PA31, 1);	/* btn4 */
 	at91_set_deglitch(AT91_PIN_PA31, 1);
+	export_env_ull("btn4", AT91_PIN_PA31);
 }
 
 static int at91sam9260ek_devices_init(void)
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 3367cee..f6d0f25 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,6 +1,8 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9260-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -8,6 +10,8 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
@@ -24,6 +28,11 @@ CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
@@ -40,9 +49,14 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -50,4 +64,3 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
-CONFIG_BZLIB=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 2492b30..16b6252 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_AT91_HAVE_2MMC=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9G20-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -9,6 +11,8 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
@@ -25,6 +29,11 @@ CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
@@ -41,9 +50,14 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -51,4 +65,3 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
