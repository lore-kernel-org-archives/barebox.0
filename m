Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f51.google.com ([74.125.82.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4P-0005V3-05
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:56 +0000
Received: by mail-wg0-f51.google.com with SMTP id 8so3697746wgl.6
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:51 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:42 +0100
Message-Id: <1362871182-25726-10-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 9/9] archosg9: enable booting from sd-card
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/board.c                  |  1 -
 arch/arm/boards/archosg9/env/boot/sd-card-android | 11 ++++
 arch/arm/boards/archosg9/env/boot/sd-card-linux   | 17 ++++++
 arch/arm/boards/archosg9/env/boot/usb-android     | 11 ++++
 arch/arm/boards/archosg9/env/boot/usb-linux       | 17 ++++++
 arch/arm/boards/archosg9/env/config               |  3 -
 arch/arm/boards/archosg9/env/init/automount       | 28 ++++++++++
 arch/arm/boards/archosg9/env/init/bootsource      | 11 ++++
 arch/arm/boards/archosg9/env/init/usbboot         |  6 --
 arch/arm/configs/archosg9_defconfig               | 67 ++++++++++++++++-------
 arch/arm/configs/archosg9_xload_defconfig         | 20 +++++--
 11 files changed, 155 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-linux
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-linux
 delete mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/bootsource
 delete mode 100644 arch/arm/boards/archosg9/env/init/usbboot

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 8366cca..bf247de 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -49,7 +49,6 @@ static int archosg9_devices_init(void){
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	omap44xx_add_i2c1(NULL);
 	omap44xx_add_mmc1(NULL);
-	omap44xx_add_mmc2(NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
 	/*
diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-android b/arch/arm/boards/archosg9/env/boot/sd-card-android
new file mode 100644
index 0000000..dc6f15e
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/boot/sd-card-android
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "Android from SD card" "$2"
+	exit
+fi
+
+path=/mnt/sd
+global.bootm.image=${path}/android
+global.bootm.initrd=${path}/initramfs.cpio.lzo
+global.linux.bootargs.base="mem=512M init=/linuxrc debug omapdss.debug=0 omapfb.debug=0 mem=512M@0xa0000000"
diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-linux b/arch/arm/boards/archosg9/env/boot/sd-card-linux
new file mode 100644
index 0000000..1ae7340
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/boot/sd-card-linux
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "Linux from SD card" "$2"
+	exit
+fi
+
+path=/mnt/sd
+global.bootm.image=${path}/zImage
+initrd=${path}/initrd
+
+if [ -f ${initrd} ]; then
+	global.bootm.initrd=${initrd}
+	global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
+else
+	global.linux.bootargs.base="console=ttyO0,115200n8 rootwait root=/dev/mmcblk0p2"
+fi
diff --git a/arch/arm/boards/archosg9/env/boot/usb-android b/arch/arm/boards/archosg9/env/boot/usb-android
new file mode 100644
index 0000000..f764681
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/boot/usb-android
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "Android from usb" "$2"
+	exit
+fi
+
+path=/mnt/usb
+global.bootm.image=${path}/android
+global.bootm.initrd=${path}/initramfs.cpio.lzo
+global.linux.bootargs.base="mem=512M init=/linuxrc debug omapdss.debug=0 omapfb.debug=0 mem=512M@0xa0000000"
diff --git a/arch/arm/boards/archosg9/env/boot/usb-linux b/arch/arm/boards/archosg9/env/boot/usb-linux
new file mode 100644
index 0000000..1d8e919
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/boot/usb-linux
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "Linux from usb" "$2"
+	exit
+fi
+
+path=/mnt/usb
+global.bootm.image=${path}/zImage
+initrd=${path}/initrd
+
+if [ -f ${initrd} ]; then
+	global.bootm.initrd=${initrd}
+	global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
+else
+	global.linux.bootargs.base="console=ttyO0,115200n8"
+fi
diff --git a/arch/arm/boards/archosg9/env/config b/arch/arm/boards/archosg9/env/config
deleted file mode 100644
index 8f3edb0..0000000
--- a/arch/arm/boards/archosg9/env/config
+++ /dev/null
@@ -1,3 +0,0 @@
-global.bootm.image="${TARGET_ROOT}/boot/zImage"
-global.bootm.initrd="${TARGET_ROOT}/boot/initrd"
-global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
diff --git a/arch/arm/boards/archosg9/env/init/automount b/arch/arm/boards/archosg9/env/init/automount
new file mode 100644
index 0000000..700b5e4
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/init/automount
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+# automount nfs server example
+
+#nfshost=somehost
+#mkdir -p /mnt/${nfshost}
+#automount /mnt/$nfshost "ifup eth0 && mount -t nfs ${nfshost}:/tftpboot /mnt/${nfshost}"
+
+# FAT on usb disk example
+
+#mkdir -p /mnt/fat
+#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
+
+mkdir -p /mnt/sd
+automount -d /mnt/sd 'mount /dev/disk0.0 /mnt/sd'
+
+mkdir -p /mnt/usb
+automount -d /mnt/usb 'mount -t omap4_usbbootfs omap4_usbboot /mnt/usb'
diff --git a/arch/arm/boards/archosg9/env/init/bootsource b/arch/arm/boards/archosg9/env/init/bootsource
new file mode 100644
index 0000000..b3df447
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/init/bootsource
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ -f /mnt/sd/zImage ]; then
+	global.boot.default=sd-card-linux
+elif [ -f /mnt/sd/android ]; then
+	global.boot.default=sd-card-android
+elif [ -f /mnt/usb/zImage ]; then
+	global.boot.default=usb-linux
+elif [ -f /mnt/usb/android ]; then
+	global.boot.default=usb-android
+fi
diff --git a/arch/arm/boards/archosg9/env/init/usbboot b/arch/arm/boards/archosg9/env/init/usbboot
deleted file mode 100644
index 83dd19a..0000000
--- a/arch/arm/boards/archosg9/env/init/usbboot
+++ /dev/null
@@ -1,6 +0,0 @@
-TARGET_ROOT="/mnt/usb"
-mkdir ${TARGET_ROOT}
-mount -t omap4_usbbootfs omap4_usbboot ${TARGET_ROOT}
-. /env/config
-. ${TARGET_ROOT}/boot/config
-bootm
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 452d2ec..cb0f6b2 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -1,48 +1,56 @@
-CONFIG_MACH_ARCHOSG9=y
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_OMAP4=y
-CONFIG_AEABI=y
+CONFIG_OMAP4_USBBOOT=y
+CONFIG_MACH_ARCHOSG9=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_MMU is not set
-CONFIG_OMAP4_USBBOOT=y
-CONFIG_TEXT_BASE=0xa0000000
-CONFIG_MALLOC_BASE=0x90000000
-CONFIG_MALLOC_SIZE=0x10000000
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv-2 arch/arm/boards/archosg9/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/archosg9/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA224SUM=y
-CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
@@ -52,19 +60,36 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
-CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_BAUDRATE=115200
+CONFIG_NET_USB=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-CONFIG_MFD_TWLCORE=y
-CONFIG_MFD_TWL6030=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_MFD_TWL6030=y
+CONFIG_FS_OMAP4_USBBOOT=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_FS_OMAP4_USBBOOT=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 83743fa..24369b2 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -1,24 +1,32 @@
-CONFIG_MACH_ARCHOSG9=y
 CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_ARCH_OMAP4=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_AEABI=y
 CONFIG_OMAP4_USBBOOT=y
+CONFIG_MACH_ARCHOSG9=y
+CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_MMU is not set
+# CONFIG_BANNER is not set
+# CONFIG_MEMINFO is not set
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x8f000000
-CONFIG_MALLOC_BASE=0x84000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
+# CONFIG_DISK_WRITE is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_OMAP4_USBBOOT=y
+CONFIG_FS_FAT=y
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
