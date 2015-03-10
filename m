Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVDso-0006eY-3g
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 06:43:15 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 10 Mar 2015 14:42:46 +0800
Message-ID: <1425969766-14812-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: atmel: sama5d4_xplained: switch to env2
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Switch sama5d4 xplained board to use default environment 2.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/sama5d4_xplained/env/boot/mmc      |  8 +++++
 arch/arm/boards/sama5d4_xplained/env/boot/nand     |  8 +++++
 arch/arm/boards/sama5d4_xplained/env/config        | 42 ----------------------
 .../arm/boards/sama5d4_xplained/env/init/automount |  5 +++
 .../boards/sama5d4_xplained/env/init/mtdparts-nand |  6 ++++
 .../env/{bin/init_board => init/splash}            |  0
 .../boards/sama5d4_xplained/env/nv/boot.default    |  1 +
 .../sama5d4_xplained/env/nv/linux.bootargs.console |  1 +
 arch/arm/configs/sama5d4_xplained_defconfig        |  5 +--
 arch/arm/mach-at91/Kconfig                         |  1 +
 10 files changed, 33 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/mmc
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/config
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/init/automount
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
 rename arch/arm/boards/sama5d4_xplained/env/{bin/init_board => init/splash} (100%)
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/boot.default
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console

diff --git a/arch/arm/boards/sama5d4_xplained/env/boot/mmc b/arch/arm/boards/sama5d4_xplained/env/boot/mmc
new file mode 100644
index 0000000..75a0f9b
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/boot/mmc
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+global.bootm.oftree="/mnt/mmcblk0p1/at91-sama5d4_xplained.dtb"
+global.bootm.image="/mnt/mmcblk0p1/zImage"
+
+bootargs-ip
+
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
diff --git a/arch/arm/boards/sama5d4_xplained/env/boot/nand b/arch/arm/boards/sama5d4_xplained/env/boot/nand
new file mode 100644
index 0000000..d1485c6
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/boot/nand
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+
+bootargs-ip
+
+global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=rootfs rootfstype=ubifs noinitrd"
diff --git a/arch/arm/boards/sama5d4_xplained/env/config b/arch/arm/boards/sama5d4_xplained/env/config
deleted file mode 100644
index 1007345..0000000
--- a/arch/arm/boards/sama5d4_xplained/env/config
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
-kernel_loc=nfs
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-# can be either 'nfs', 'tftp', 'nand' or empty
-oftree_loc=nfs
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-ubiroot=rootfs
-
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage=zImage
-#kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
-rootfs_mtdblock_nand=7
-
-m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
-
-autoboot_timeout=3
-
-bootargs="console=ttyS0,115200"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/sama5d4_xplained/env/init/automount b/arch/arm/boards/sama5d4_xplained/env/init/automount
new file mode 100644
index 0000000..3476922
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/init/automount
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# SD card slot, first partition
+mkdir -p /mnt/mmcblk0p1
+automount -d /mnt/mmcblk0p1 'mount /dev/disk0.0 /mnt/mmcblk0p1'
diff --git a/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand b/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
new file mode 100644
index 0000000..c947910
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mtdparts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
+kernelname="atmel_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/sama5d4_xplained/env/bin/init_board b/arch/arm/boards/sama5d4_xplained/env/init/splash
similarity index 100%
rename from arch/arm/boards/sama5d4_xplained/env/bin/init_board
rename to arch/arm/boards/sama5d4_xplained/env/init/splash
diff --git a/arch/arm/boards/sama5d4_xplained/env/nv/boot.default b/arch/arm/boards/sama5d4_xplained/env/nv/boot.default
new file mode 100644
index 0000000..026a25c
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console b/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 84a1bbd..5b9a793 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -10,13 +10,12 @@ CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="A5D4_XPLAINED:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4_xplained/env"
 CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
@@ -36,6 +35,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 5b27526..4166fa5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -500,6 +500,7 @@ config MACH_SAMA5D4EK
 
 config MACH_SAMA5D4_XPLAINED
 	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
 
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
