Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRLaD-0004rU-G5
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 14:08:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0007tV-RH
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0005ta-QR
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 Feb 2015 15:07:30 +0100
Message-Id: <1425046053-21214-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
References: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/5] phyCORE-PXA270: switch to the new environment template
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-pxa270/env/config   | 45 ----------------------
 .../phytec-phycore-pxa270/env/init/mtdparts-nor    | 11 ++++++
 .../env/nv/linux.bootargs.base                     |  1 +
 arch/arm/configs/phytec-phycore-pxa270_defconfig   | 45 +++++++++++-----------
 4 files changed, 34 insertions(+), 68 deletions(-)
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/config
 create mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.base

diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/config b/arch/arm/boards/phytec-phycore-pxa270/env/config
deleted file mode 100644
index d427800..0000000
--- a/arch/arm/boards/phytec-phycore-pxa270/env/config
+++ /dev/null
@@ -1,45 +0,0 @@
-#!/bin/sh
-
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
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyS0,115200"
-
-nor_parts="512k(barebox)ro,256k(bareboxenv),4M(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
new file mode 100644
index 0000000..e617cba
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+        init-menu-add-entry "$0" "NOR partitions"
+        exit
+fi
+
+mtdparts="512k(nor0.barebox),256k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.base b/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index 57eaff0..304624b 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -8,50 +8,48 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-pxa270/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_PXA=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
@@ -59,4 +57,5 @@ CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_PXA=y
+CONFIG_FS_TFTP=y
 CONFIG_LZO_DECOMPRESS=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
