Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f42.google.com ([209.85.220.42])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLBoS-00086q-C5
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 14:29:17 +0000
Received: by mail-pa0-f42.google.com with SMTP id rd3so5928423pab.1
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 06:28:55 -0800 (PST)
From: Doug Brainard <dbrainard@brainardinsight.com>
Date: Tue, 10 Feb 2015 07:28:01 -0700
Message-Id: <1423578481-25230-2-git-send-email-dbrainard@brainardinsight.com>
In-Reply-To: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
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
Subject: [PATCH 2/2] Switched SAMA5D4EK development board to the newer
 environment method.
To: barebox@lists.infradead.org

---
 arch/arm/boards/sama5d4ek/env/bin/init_board       | 15 --------
 arch/arm/boards/sama5d4ek/env/boot/nand-ubi        |  8 +++++
 arch/arm/boards/sama5d4ek/env/config               | 42 ----------------------
 arch/arm/boards/sama5d4ek/env/init/mtdparts-nand   |  6 ++++
 arch/arm/boards/sama5d4ek/env/init/ps1             |  7 ++++
 arch/arm/boards/sama5d4ek/env/init/splash          | 10 ++++++
 arch/arm/boards/sama5d4ek/env/nv/boot.default      |  1 +
 arch/arm/boards/sama5d4ek/env/nv/bootargs.base     |  1 +
 arch/arm/boards/sama5d4ek/env/nv/hostname          |  1 +
 .../boards/sama5d4ek/env/nv/linux.bootargs.console |  1 +
 arch/arm/configs/sama5d4ek_defconfig               |  5 +--
 arch/arm/mach-at91/Kconfig                         |  1 +
 12 files changed, 39 insertions(+), 59 deletions(-)
 delete mode 100644 arch/arm/boards/sama5d4ek/env/bin/init_board
 create mode 100644 arch/arm/boards/sama5d4ek/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/sama5d4ek/env/config
 create mode 100644 arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/sama5d4ek/env/init/ps1
 create mode 100644 arch/arm/boards/sama5d4ek/env/init/splash
 create mode 100644 arch/arm/boards/sama5d4ek/env/nv/boot.default
 create mode 100644 arch/arm/boards/sama5d4ek/env/nv/bootargs.base
 create mode 100644 arch/arm/boards/sama5d4ek/env/nv/hostname
 create mode 100644 arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console

diff --git a/arch/arm/boards/sama5d4ek/env/bin/init_board b/arch/arm/boards/sama5d4ek/env/bin/init_board
deleted file mode 100644
index f3d417e..0000000
--- a/arch/arm/boards/sama5d4ek/env/bin/init_board
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-splash=/env/splash.png
-
-if [ -f ${splash} -a -e /dev/fb0 ]; then
-	splash -o ${splash}
-	fb0.enable=1
-fi
-
-exit 1
diff --git a/arch/arm/boards/sama5d4ek/env/boot/nand-ubi b/arch/arm/boards/sama5d4ek/env/boot/nand-ubi
new file mode 100644
index 0000000..e8d6bde
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/boot/nand-ubi
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+
+bootargs-ip
+
+global.linux.bootargs.dyn.root="root=ubi0:nand0.rootfs ubi.mtd=nand0.rootfs rootfstype=ubifs noinitrd"
diff --git a/arch/arm/boards/sama5d4ek/env/config b/arch/arm/boards/sama5d4ek/env/config
deleted file mode 100644
index ee86c07..0000000
--- a/arch/arm/boards/sama5d4ek/env/config
+++ /dev/null
@@ -1,42 +0,0 @@
-#!/bin/sh
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=nand
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=nand
-# can be either 'nfs', 'tftp', 'nand' or empty
-oftree_loc=nand
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-ubiroot=system
-
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage=zImage
-#kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)"
-rootfs_mtdblock_nand=10
-
-m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
-
-autoboot_timeout=3
-
-bootargs="console=ttyS0,115200 ubi.mtd=8 ubi.mtd=9 init=/init androidboot.hardware=sama5-pda androidboot.lcd=wvga"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand b/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
new file mode 100644
index 0000000..f20a135
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mtdparts="256k(nand0.at91bootstrap),512k(nand0.barebox)ro,256k(nand0.bareboxenv),256k(nand0.bareboxenv2),256k(nand0.spare),512k(nand0.oftree),6M(nand0.kernel),-(nand0.rootfs)"
+kernelname="atmel_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/sama5d4ek/env/init/ps1 b/arch/arm/boards/sama5d4ek/env/init/ps1
new file mode 100644
index 0000000..c0ec1a5
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/init/ps1
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
+else
+        export PS1="barebox@\h:\w "
+fi
diff --git a/arch/arm/boards/sama5d4ek/env/init/splash b/arch/arm/boards/sama5d4ek/env/init/splash
new file mode 100644
index 0000000..190ef31
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/init/splash
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+splash=/env/splash.png
+
+if [ -f ${splash} -a -e /dev/fb0 ]; then
+	splash -o ${splash}
+	fb0.enable=1
+fi
+
+exit 1
diff --git a/arch/arm/boards/sama5d4ek/env/nv/boot.default b/arch/arm/boards/sama5d4ek/env/nv/boot.default
new file mode 100644
index 0000000..d9dfbbc
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/nv/boot.default
@@ -0,0 +1 @@
+nand-ubi
diff --git a/arch/arm/boards/sama5d4ek/env/nv/bootargs.base b/arch/arm/boards/sama5d4ek/env/nv/bootargs.base
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/boards/sama5d4ek/env/nv/hostname b/arch/arm/boards/sama5d4ek/env/nv/hostname
new file mode 100644
index 0000000..b74056d
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/nv/hostname
@@ -0,0 +1 @@
+sama5d4ek
diff --git a/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console b/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index bbf254a..f050fe4 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -9,13 +9,12 @@ CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="A5D4EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
 CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
@@ -35,6 +34,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 9ee4f30..7207232 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -489,6 +489,7 @@ choice
 
 config MACH_SAMA5D4EK
 	bool "Atmel SAMA5D4 Evaluation Kit"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
 
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
