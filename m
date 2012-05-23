Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXCLF-0005nL-4e
 for barebox@lists.infradead.org; Wed, 23 May 2012 14:15:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 16:15:04 +0200
Message-Id: <1337782505-8382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM Freescale i.MX51 babbage: switch to new default env
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/env/config      |   47 --------------------
 .../freescale-mx51-pdk/env/init/bootargs-base      |    8 ++++
 .../boards/freescale-mx51-pdk/env/init/hostname    |    8 ++++
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   16 ++++---
 arch/arm/mach-imx/Kconfig                          |    1 +
 5 files changed, 27 insertions(+), 53 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/hostname

diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config b/arch/arm/boards/freescale-mx51-pdk/env/config
deleted file mode 100644
index 7a2841e..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/env/config
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-hostname=babbage
-eth0.serverip=
-user=
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
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
-
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc0,115200"
-
-disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base b/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/hostname b/arch/arm/boards/freescale-mx51-pdk/env/init/hostname
new file mode 100644
index 0000000..4c78902
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=babbage
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index c4f7aef..22ef163 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_IMX51=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
@@ -11,23 +12,26 @@ CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx51-pdk/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -47,10 +51,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_DRIVER_CFI=y
@@ -59,6 +61,8 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MFD_MC13XXX=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7905027..564e2fe 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -391,6 +391,7 @@ choice
 	prompt "i.MX51 Board Type"
 
 config MACH_FREESCALE_MX51_PDK
+	select DEFAULT_ENVIRONMENT_GENERIC_NEW
 	bool "Freescale i.MX51 PDK"
 
 config MACH_EUKREA_CPUIMX51SD
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
