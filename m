Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpnf-0006qS-2t
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:37:11 +0000
Received: by mail-wg0-f42.google.com with SMTP id 12so1512098wgh.3
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:37:05 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 11 Mar 2013 00:36:07 +0100
Message-Id: <1362958567-6110-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 4/4] ArchosG9: add keyboard input and new reset menu entries
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/board.c              | 25 +++++++++++++++++++++++
 arch/arm/boards/archosg9/env/bin/init         | 28 ++++++++++++++++++++++++++
 arch/arm/boards/archosg9/env/boot/usb-android |  2 +-
 arch/arm/boards/archosg9/env/boot/usb-linux   |  2 +-
 arch/arm/boards/archosg9/env/menu/mainmenu    | 29 +++++++++++++++++++++++++++
 arch/arm/configs/archosg9_defconfig           | 11 ++++++----
 6 files changed, 91 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index bf247de..edeb871 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -20,6 +20,9 @@
 #include <sizes.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
+#include <gpio_keys.h>
+#include <twl6030_pwrbtn.h>
+#include <readkey.h>
 #include "archos_features.h"
 
 static int archosg9_console_init(void){
@@ -44,11 +47,33 @@ mem_initcall(archosg9_mem_init);
 static struct i2c_board_info i2c_devices[] = {
 	{ I2C_BOARD_INFO("twl6030", 0x48), },
 };
+#ifdef CONFIG_KEYBOARD_TWL6030
+static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
+	.code = KEY_ENTER
+};
+#endif
+#ifdef CONFIG_KEYBOARD_GPIO
+static struct gpio_keys_button keys[] = {
+	{ .code = KEY_UP  , .gpio = 43, .active_low = 1 },
+	{ .code = KEY_DOWN, .gpio = 44, .active_low = 1 },
+};
+static struct gpio_keys_platform_data gk_data = {
+	.buttons = keys,
+	.nbuttons = ARRAY_SIZE(keys),
+};
+#endif
 
 static int archosg9_devices_init(void){
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	omap44xx_add_i2c1(NULL);
 	omap44xx_add_mmc1(NULL);
+#ifdef CONFIG_KEYBOARD_TWL6030
+	add_generic_device_res("twl6030_pwrbtn", DEVICE_ID_DYNAMIC, 0, 0,
+		&pwrbtn_data);
+#endif
+#ifdef CONFIG_KEYBOARD_GPIO
+	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
+#endif
 
 	armlinux_set_bootparams((void *)0x80000100);
 	/*
diff --git a/arch/arm/boards/archosg9/env/bin/init b/arch/arm/boards/archosg9/env/bin/init
new file mode 100644
index 0000000..0b36299
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/bin/init
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+export PATH=/env/bin
+
+global hostname=generic
+global user=none
+global boot.default=net
+global allow_color=true
+global linux.bootargs.base
+#linux.bootargs.dyn.* will be cleared at the beginning of boot
+global linux.bootargs.dyn.ip
+global linux.bootargs.dyn.root
+global editcmd=sedit
+
+/env/config
+
+timeout -s -a 0
+autoboot="$?"
+
+for i in /env/init/*; do
+	. $i
+done
+
+if [ "$autoboot" = 0 ]; then
+	boot
+fi
+
+/env/menu/mainmenu
diff --git a/arch/arm/boards/archosg9/env/boot/usb-android b/arch/arm/boards/archosg9/env/boot/usb-android
index f764681..7c6fb1f 100644
--- a/arch/arm/boards/archosg9/env/boot/usb-android
+++ b/arch/arm/boards/archosg9/env/boot/usb-android
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Android from usb" "$2"
+	boot-menu-add-entry "$0" "Android over usb" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/archosg9/env/boot/usb-linux b/arch/arm/boards/archosg9/env/boot/usb-linux
index 1d8e919..fe979fb 100644
--- a/arch/arm/boards/archosg9/env/boot/usb-linux
+++ b/arch/arm/boards/archosg9/env/boot/usb-linux
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Linux from usb" "$2"
+	boot-menu-add-entry "$0" "Linux over usb" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/archosg9/env/menu/mainmenu b/arch/arm/boards/archosg9/env/menu/mainmenu
new file mode 100644
index 0000000..1880692
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/mainmenu
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+savepath=$PATH
+export menupath=$PATH:/env/menu
+
+. /env/data/ansi-colors
+
+while true; do
+	export PATH=${menupath}
+
+	echo $PATH
+
+	menu -a -m boot -d "${CYAN}Welcome to Barebox${NC}"
+
+	boot-entries-collect boot
+
+	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
+	menu -e -a -R -m boot -c "$global.editcmd /env/config" -d "Config settings"
+	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
+	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
+	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
+	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
+	menu -e -a -m boot -c 'boot_order -r mmc2_1' -d "${RED}Reboot into internal flash${NC}"
+	menu -e -a -m boot -c 'boot_order -r mmc1' -d "${RED}Reboot into SD card${NC}"
+	menu -e -a -m boot -c 'boot_order -r usb_1' -d "${RED}Reboot over usb${NC}"
+
+	menu -s -m boot
+	menu -r -m boot
+done
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index cb0f6b2..40e4433 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -3,8 +3,8 @@ CONFIG_ARCH_OMAP4=y
 CONFIG_OMAP4_USBBOOT=y
 CONFIG_MACH_ARCHOSG9=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_MMU is not set
@@ -52,6 +52,7 @@ CONFIG_CMD_BOOTM_AIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
+CONFIG_CMD_BOOT_ORDER=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
@@ -70,9 +71,9 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
-CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
@@ -81,13 +82,15 @@ CONFIG_USB_EHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_MFD_TWL6030=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_TWL6030=y
 CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_MFD_TWL6030=y
 CONFIG_FS_OMAP4_USBBOOT=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
