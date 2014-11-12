Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoSFP-0008UX-4B
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:21:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Nov 2014 08:21:22 +0100
Message-Id: <1415776883-28870-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
References: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX51 efikasb: Use defaultenv_append_directory
To: barebox@lists.infradead.org

To have the smartbook specific env available in the multi image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/Makefile        |  1 +
 arch/arm/boards/efika-mx-smartbook/board.c         |  3 +++
 .../defaultenv-efikasb/bin/lvds_init               | 22 ++++++++++++++++
 .../defaultenv-efikasb/boot/hd-internal            | 12 +++++++++
 .../defaultenv-efikasb/boot/mmc-left               | 14 +++++++++++
 .../efika-mx-smartbook/defaultenv-efikasb/config   | 29 ++++++++++++++++++++++
 .../defaultenv-efikasb/init/automount              | 29 ++++++++++++++++++++++
 .../defaultenv-efikasb/init/bootsource             | 10 ++++++++
 .../defaultenv-efikasb/network/eth0-discover       |  4 +++
 .../boards/efika-mx-smartbook/env/bin/lvds_init    | 22 ----------------
 .../boards/efika-mx-smartbook/env/boot/hd-internal | 12 ---------
 .../boards/efika-mx-smartbook/env/boot/mmc-left    | 14 -----------
 arch/arm/boards/efika-mx-smartbook/env/config      | 29 ----------------------
 .../boards/efika-mx-smartbook/env/init/automount   | 29 ----------------------
 .../boards/efika-mx-smartbook/env/init/bootsource  | 10 --------
 .../efika-mx-smartbook/env/network/eth0-discover   |  4 ---
 16 files changed, 124 insertions(+), 120 deletions(-)
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/bin/lvds_init
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/hd-internal
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/mmc-left
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/bootsource
 create mode 100644 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/network/eth0-discover
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/automount
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/bootsource
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover

diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index 0ac4693..d00e0f6 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -2,3 +2,4 @@ obj-y += board.o flash-header-imx51-genesi-efikasb.dcd.o
 lwl-y += lowlevel.o
 extra-y += flash-header-imx51-genesi-efikasb.dcd.S
 extra-y += flash-header-imx51-genesi-efikasb.dcd
+bbenv-y += defaultenv-efikasb
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 59410c1..02fce4b 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -17,6 +17,7 @@
 #include <bootsource.h>
 #include <partition.h>
 #include <common.h>
+#include <envfs.h>
 #include <fcntl.h>
 #include <gpio.h>
 #include <init.h>
@@ -247,6 +248,8 @@ static int efikamx_late_init(void)
 
 	efikamx_power_init();
 
+	defaultenv_append_directory(defaultenv_efikasb);
+
 	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/bin/lvds_init b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/bin/lvds_init
new file mode 100644
index 0000000..692392c
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/bin/lvds_init
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+# Initialize lvds and backlight in case your Kernel does not handle this...
+
+GPIO_BACKLIGHT_POWER=108
+GPIO_BACKLIGHT_PWM=2
+GPIO_LVDS_POWER=71
+GPIO_LVDS_RESET=69
+GPIO_LVDS_ENABLE=76
+GPIO_LCD_ENABLE=77
+
+gpio_direction_output $GPIO_BACKLIGHT_PWM 0
+gpio_direction_output $GPIO_LVDS_RESET 1
+gpio_direction_output $GPIO_LVDS_POWER 1
+msleep 5
+gpio_direction_output $GPIO_LVDS_RESET 0
+msleep 5
+gpio_direction_output $GPIO_LVDS_ENABLE 1
+gpio_direction_output $GPIO_BACKLIGHT_POWER 0
+gpio_direction_output $GPIO_LCD_ENABLE 1
+msleep 300
+gpio_direction_output $GPIO_BACKLIGHT_PWM 1
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/hd-internal b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/hd-internal
new file mode 100644
index 0000000..2233f14
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/hd-internal
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+path="/mnt/internal-hd0.0"
+
+global.bootm.image="${path}/linuximage"
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+global.linux.bootargs.dyn.root="root=/dev/sda2"
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/mmc-left b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/mmc-left
new file mode 100644
index 0000000..da7bc03
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/boot/mmc-left
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+path="/mnt/mmc-left.0"
+
+global.bootm.image="${path}/linuximage"
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+# The rootdevice may actually be mmcblk1p2 if a card
+# is inserted to the back MMC slot
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/config b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/config
new file mode 100644
index 0000000..c63c6a1
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/config
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+# change network settings in /env/network/eth0
+# change mtd partition settings and automountpoints in /env/init/*
+
+#global.hostname=
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=none
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=1
+
+# default boot entry (one of /env/boot/*)
+# (if not overwritten here, the bootdevice barebox comes from
+# is used)
+#global.boot.default=net
+
+# base bootargs
+global.linux.bootargs.base="console=tty1"
+
+# suitable for 800MHz
+global linux.bootargs.lpj="lpj=3997696"
+
+# speed up booting by being more quiet
+global linux.bootargs.quiet="quiet"
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
new file mode 100644
index 0000000..8cb5eaf
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
@@ -0,0 +1,29 @@
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
+# internal harddisk /boot partition
+mkdir -p /mnt/internal-hd0.0
+automount -d /mnt/internal-hd0.0 'mount /dev/ata0.0 /mnt/internal-hd0.0'
+
+# internal harddisk rootfs
+mkdir -p /mnt/internal-hd0.1
+automount -d /mnt/internal-hd0.1 'mount /dev/ata0.1 /mnt/internal-hd0.1'
+
+# left SD card slot, first partition
+mkdir -p /mnt/mmc-left.0
+automount -d /mnt/mmc-left.0 'mount /dev/mmc_left.0 /mnt/mmc-left.0'
+
+# back SD card slot, first partition
+mkdir -p /mnt/mmc-back.0
+automount -d /mnt/mmc-back.0 'mount /dev/mmc_back.0 /mnt/mmc-back.0'
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/bootsource b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/bootsource
new file mode 100644
index 0000000..380e855
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/bootsource
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+# by default pick kernel from MMC card if booting from
+# it, otherwise default to boot from internal harddisk
+
+if [ $bootsource = mmc ]; then
+	global.boot.default=mmc-left
+else
+	global.boot.default=hd-internal
+fi
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/network/eth0-discover b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/network/eth0-discover
new file mode 100644
index 0000000..f8368a5
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/network/eth0-discover
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+usb
+sleep 3
diff --git a/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init b/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
deleted file mode 100644
index 692392c..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
+++ /dev/null
@@ -1,22 +0,0 @@
-#!/bin/sh
-
-# Initialize lvds and backlight in case your Kernel does not handle this...
-
-GPIO_BACKLIGHT_POWER=108
-GPIO_BACKLIGHT_PWM=2
-GPIO_LVDS_POWER=71
-GPIO_LVDS_RESET=69
-GPIO_LVDS_ENABLE=76
-GPIO_LCD_ENABLE=77
-
-gpio_direction_output $GPIO_BACKLIGHT_PWM 0
-gpio_direction_output $GPIO_LVDS_RESET 1
-gpio_direction_output $GPIO_LVDS_POWER 1
-msleep 5
-gpio_direction_output $GPIO_LVDS_RESET 0
-msleep 5
-gpio_direction_output $GPIO_LVDS_ENABLE 1
-gpio_direction_output $GPIO_BACKLIGHT_POWER 0
-gpio_direction_output $GPIO_LCD_ENABLE 1
-msleep 300
-gpio_direction_output $GPIO_BACKLIGHT_PWM 1
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
deleted file mode 100644
index 2233f14..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-path="/mnt/internal-hd0.0"
-
-global.bootm.image="${path}/linuximage"
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-global.linux.bootargs.dyn.root="root=/dev/sda2"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
deleted file mode 100644
index da7bc03..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
+++ /dev/null
@@ -1,14 +0,0 @@
-#!/bin/sh
-
-path="/mnt/mmc-left.0"
-
-global.bootm.image="${path}/linuximage"
-
-oftree=${path}/oftree
-if [ -f $oftree ]; then
-	global.bootm.oftree="$oftree"
-fi
-
-# The rootdevice may actually be mmcblk1p2 if a card
-# is inserted to the back MMC slot
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config b/arch/arm/boards/efika-mx-smartbook/env/config
deleted file mode 100644
index c63c6a1..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/config
+++ /dev/null
@@ -1,29 +0,0 @@
-#!/bin/sh
-
-# change network settings in /env/network/eth0
-# change mtd partition settings and automountpoints in /env/init/*
-
-#global.hostname=
-
-# set to false if you do not want to have colors
-global.allow_color=true
-
-# user (used for network filenames)
-global.user=none
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=1
-
-# default boot entry (one of /env/boot/*)
-# (if not overwritten here, the bootdevice barebox comes from
-# is used)
-#global.boot.default=net
-
-# base bootargs
-global.linux.bootargs.base="console=tty1"
-
-# suitable for 800MHz
-global linux.bootargs.lpj="lpj=3997696"
-
-# speed up booting by being more quiet
-global linux.bootargs.quiet="quiet"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/automount b/arch/arm/boards/efika-mx-smartbook/env/init/automount
deleted file mode 100644
index 8cb5eaf..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/init/automount
+++ /dev/null
@@ -1,29 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
-# automount tftp server based on $eth0.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
-
-# automount nfs server example
-
-# internal harddisk /boot partition
-mkdir -p /mnt/internal-hd0.0
-automount -d /mnt/internal-hd0.0 'mount /dev/ata0.0 /mnt/internal-hd0.0'
-
-# internal harddisk rootfs
-mkdir -p /mnt/internal-hd0.1
-automount -d /mnt/internal-hd0.1 'mount /dev/ata0.1 /mnt/internal-hd0.1'
-
-# left SD card slot, first partition
-mkdir -p /mnt/mmc-left.0
-automount -d /mnt/mmc-left.0 'mount /dev/mmc_left.0 /mnt/mmc-left.0'
-
-# back SD card slot, first partition
-mkdir -p /mnt/mmc-back.0
-automount -d /mnt/mmc-back.0 'mount /dev/mmc_back.0 /mnt/mmc-back.0'
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
deleted file mode 100644
index 380e855..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-# by default pick kernel from MMC card if booting from
-# it, otherwise default to boot from internal harddisk
-
-if [ $bootsource = mmc ]; then
-	global.boot.default=mmc-left
-else
-	global.boot.default=hd-internal
-fi
diff --git a/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover b/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
deleted file mode 100644
index f8368a5..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-usb
-sleep 3
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
