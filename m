Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zfbgs-0003VH-5w
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 22:42:07 +0000
Received: by wiclk2 with SMTP id lk2so36803034wic.1
 for <barebox@lists.infradead.org>; Fri, 25 Sep 2015 15:41:44 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 25 Sep 2015 23:41:02 +0100
Message-Id: <1443220863-24355-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
References: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
References: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
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
Subject: [PATCH 2/3] archosg9: Use defaultenv-2-menu
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/env/bin/init              | 28 ----------------------
 arch/arm/boards/archosg9/env/init/automount        | 28 ----------------------
 arch/arm/boards/archosg9/env/init/automount2       |  7 ++++++
 .../boards/archosg9/env/menu/11-boot-flash/action  |  4 ++++
 .../boards/archosg9/env/menu/11-boot-flash/title   |  1 +
 .../arm/boards/archosg9/env/menu/12-boot-sd/action |  4 ++++
 arch/arm/boards/archosg9/env/menu/12-boot-sd/title |  1 +
 .../boards/archosg9/env/menu/13-boot-usb/action    |  4 ++++
 .../arm/boards/archosg9/env/menu/13-boot-usb/title |  1 +
 arch/arm/boards/archosg9/env/menu/mainmenu         | 25 -------------------
 arch/arm/configs/archosg9_defconfig                |  1 +
 11 files changed, 23 insertions(+), 81 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/env/bin/init
 delete mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/automount2
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/title
 delete mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu

diff --git a/arch/arm/boards/archosg9/env/bin/init b/arch/arm/boards/archosg9/env/bin/init
deleted file mode 100644
index 0b36299..0000000
--- a/arch/arm/boards/archosg9/env/bin/init
+++ /dev/null
@@ -1,28 +0,0 @@
-#!/bin/sh
-
-export PATH=/env/bin
-
-global hostname=generic
-global user=none
-global boot.default=net
-global allow_color=true
-global linux.bootargs.base
-#linux.bootargs.dyn.* will be cleared at the beginning of boot
-global linux.bootargs.dyn.ip
-global linux.bootargs.dyn.root
-global editcmd=sedit
-
-/env/config
-
-timeout -s -a 0
-autoboot="$?"
-
-for i in /env/init/*; do
-	. $i
-done
-
-if [ "$autoboot" = 0 ]; then
-	boot
-fi
-
-/env/menu/mainmenu
diff --git a/arch/arm/boards/archosg9/env/init/automount b/arch/arm/boards/archosg9/env/init/automount
deleted file mode 100644
index 700b5e4..0000000
--- a/arch/arm/boards/archosg9/env/init/automount
+++ /dev/null
@@ -1,28 +0,0 @@
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
-#nfshost=somehost
-#mkdir -p /mnt/${nfshost}
-#automount /mnt/$nfshost "ifup eth0 && mount -t nfs ${nfshost}:/tftpboot /mnt/${nfshost}"
-
-# FAT on usb disk example
-
-#mkdir -p /mnt/fat
-#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
-
-mkdir -p /mnt/sd
-automount -d /mnt/sd 'mount /dev/disk0.0 /mnt/sd'
-
-mkdir -p /mnt/usb
-automount -d /mnt/usb 'mount -t omap4_usbbootfs omap4_usbboot /mnt/usb'
diff --git a/arch/arm/boards/archosg9/env/init/automount2 b/arch/arm/boards/archosg9/env/init/automount2
new file mode 100644
index 0000000..fa10439
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/init/automount2
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+mkdir -p /mnt/sd
+automount -d /mnt/sd '[ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/sd'
+
+mkdir -p /mnt/usb
+automount -d /mnt/usb 'mount -t omap4_usbbootfs omap4_usbboot /mnt/usb'
diff --git a/arch/arm/boards/archosg9/env/menu/11-boot-flash/action b/arch/arm/boards/archosg9/env/menu/11-boot-flash/action
new file mode 100644
index 0000000..f83028b
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/11-boot-flash/action
@@ -0,0 +1,4 @@
+#!/bin/sh
+boot_order mmc2_1
+echo "Rebooting into internal flash..."
+reset
diff --git a/arch/arm/boards/archosg9/env/menu/11-boot-flash/title b/arch/arm/boards/archosg9/env/menu/11-boot-flash/title
new file mode 100644
index 0000000..2628b5a
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/11-boot-flash/title
@@ -0,0 +1 @@
+${RED}Reboot into internal flash${NC}
diff --git a/arch/arm/boards/archosg9/env/menu/12-boot-sd/action b/arch/arm/boards/archosg9/env/menu/12-boot-sd/action
new file mode 100644
index 0000000..19bc3ff
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/12-boot-sd/action
@@ -0,0 +1,4 @@
+#!/bin/sh
+boot_order mmc1
+echo "Rebooting into SD card..."
+reset
diff --git a/arch/arm/boards/archosg9/env/menu/12-boot-sd/title b/arch/arm/boards/archosg9/env/menu/12-boot-sd/title
new file mode 100644
index 0000000..92e940f
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/12-boot-sd/title
@@ -0,0 +1 @@
+${RED}Reboot into SD card${NC}
diff --git a/arch/arm/boards/archosg9/env/menu/13-boot-usb/action b/arch/arm/boards/archosg9/env/menu/13-boot-usb/action
new file mode 100644
index 0000000..885acba
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/13-boot-usb/action
@@ -0,0 +1,4 @@
+#!/bin/sh
+boot_order usb_1
+echo "Rebooting over usb..."
+reset
diff --git a/arch/arm/boards/archosg9/env/menu/13-boot-usb/title b/arch/arm/boards/archosg9/env/menu/13-boot-usb/title
new file mode 100644
index 0000000..76edccd
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/menu/13-boot-usb/title
@@ -0,0 +1 @@
+${RED}Reboot over usb${NC}
diff --git a/arch/arm/boards/archosg9/env/menu/mainmenu b/arch/arm/boards/archosg9/env/menu/mainmenu
deleted file mode 100644
index 6856261..0000000
--- a/arch/arm/boards/archosg9/env/menu/mainmenu
+++ /dev/null
@@ -1,25 +0,0 @@
-#!/bin/sh
-
-savepath=$PATH
-export menupath=$PATH:/env/menu
-
-. /env/data/ansi-colors
-
-while true; do
-	export PATH=${menupath}
-
-	echo $PATH
-
-	menu -a -m boot -d "${CYAN}Welcome to Barebox${NC}"
-
-	boot-entries-collect
-
-	menu -e -a -m boot -c "settings" -d "Settings"
-	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
-	menu -e -a -m boot -c 'boot_order mmc2_1 && reset' -d "${RED}Reboot into internal flash${NC}"
-	menu -e -a -m boot -c 'boot_order mmc1 && reset' -d "${RED}Reboot into SD card${NC}"
-	menu -e -a -m boot -c 'boot_order usb_1 && reset' -d "${RED}Reboot over usb${NC}"
-
-	menu -s -m boot
-	menu -r -m boot
-done
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index c870209..db80c38 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -52,6 +52,7 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-- 
2.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
