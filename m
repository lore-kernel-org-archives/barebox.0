Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo6.mail-out.ovh.net ([87.98.171.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6J-0004PK-5v
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:34 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 748BBFFA3E3
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:54 +0100
Message-Id: <1419358918-25569-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/9] versatilepb: switch to defaultenv-2
To: barebox@lists.infradead.org

 - Boot from NOR
 - enable UBI
 - use PBL

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/versatile/env/boot.d/001-nor       |  1 +
 .../arm/boards/versatile/env/boot.d/101-nor-update |  1 +
 arch/arm/boards/versatile/env/boot/nor             | 15 +++++++++
 arch/arm/boards/versatile/env/boot/nor-update      | 14 ++++++++
 arch/arm/boards/versatile/env/config               | 38 ----------------------
 arch/arm/boards/versatile/env/init/automount       | 11 +++++++
 arch/arm/boards/versatile/env/init/mtdparts-nor    | 11 +++++++
 arch/arm/boards/versatile/env/init/ps1             |  7 ++++
 arch/arm/boards/versatile/env/nv/boot.default      |  1 +
 arch/arm/boards/versatile/env/nv/hostname          |  1 +
 .../boards/versatile/env/nv/linux.bootargs.base    |  1 +
 arch/arm/boards/versatile/versatilepb.c            |  4 +--
 arch/arm/configs/versatilepb_defconfig             | 31 ++++++++++++++++--
 arch/arm/mach-versatile/Kconfig                    |  1 +
 14 files changed, 94 insertions(+), 43 deletions(-)
 create mode 120000 arch/arm/boards/versatile/env/boot.d/001-nor
 create mode 120000 arch/arm/boards/versatile/env/boot.d/101-nor-update
 create mode 100644 arch/arm/boards/versatile/env/boot/nor
 create mode 100644 arch/arm/boards/versatile/env/boot/nor-update
 delete mode 100644 arch/arm/boards/versatile/env/config
 create mode 100644 arch/arm/boards/versatile/env/init/automount
 create mode 100644 arch/arm/boards/versatile/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/versatile/env/init/ps1
 create mode 100644 arch/arm/boards/versatile/env/nv/boot.default
 create mode 100644 arch/arm/boards/versatile/env/nv/hostname
 create mode 100644 arch/arm/boards/versatile/env/nv/linux.bootargs.base

diff --git a/arch/arm/boards/versatile/env/boot.d/001-nor b/arch/arm/boards/versatile/env/boot.d/001-nor
new file mode 120000
index 0000000..3db66ae
--- /dev/null
+++ b/arch/arm/boards/versatile/env/boot.d/001-nor
@@ -0,0 +1 @@
+../boot/nor
\ No newline at end of file
diff --git a/arch/arm/boards/versatile/env/boot.d/101-nor-update b/arch/arm/boards/versatile/env/boot.d/101-nor-update
new file mode 120000
index 0000000..e4f1952
--- /dev/null
+++ b/arch/arm/boards/versatile/env/boot.d/101-nor-update
@@ -0,0 +1 @@
+../boot/nor-update
\ No newline at end of file
diff --git a/arch/arm/boards/versatile/env/boot/nor b/arch/arm/boards/versatile/env/boot/nor
new file mode 100644
index 0000000..3f31605
--- /dev/null
+++ b/arch/arm/boards/versatile/env/boot/nor
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nor"
+	exit
+fi
+
+global.bootm.image="/dev/nor0.kernel"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=5 rootfstype=ubifs"
+
+dtb=/dev/nor0.dtb
+filetype -s t ${dtb}
+if [ "$t" = dtb ]; then
+	global.bootm.oftree="${dtb}"
+fi
diff --git a/arch/arm/boards/versatile/env/boot/nor-update b/arch/arm/boards/versatile/env/boot/nor-update
new file mode 100644
index 0000000..728889d
--- /dev/null
+++ b/arch/arm/boards/versatile/env/boot/nor-update
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nor update"
+	exit
+fi
+
+global.bootm.image="/dev/nor0.update"
+
+dtb=/dev/nor0.dtb
+filetype -s t ${dtb}
+if [ "$t" = dtb ]; then
+	global.bootm.oftree="${dtb}"
+fi
diff --git a/arch/arm/boards/versatile/env/config b/arch/arm/boards/versatile/env/config
deleted file mode 100644
index 1bc575b..0000000
--- a/arch/arm/boards/versatile/env/config
+++ /dev/null
@@ -1,38 +0,0 @@
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
-# can be either 'nfs', 'tftp' or 'nor'
-kernel_loc=tftp
-# can be either 'net', 'nor' or 'initrd'
-rootfs_loc=initrd
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-
-kernelimage=zImage
-#kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-nfsroot="$eth0.serverip:/opt/work/busybox/arm9/rootfs_arm"
-
-nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-autoboot_timeout=3
-
-bootargs="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
-
diff --git a/arch/arm/boards/versatile/env/init/automount b/arch/arm/boards/versatile/env/init/automount
new file mode 100644
index 0000000..53f9196
--- /dev/null
+++ b/arch/arm/boards/versatile/env/init/automount
@@ -0,0 +1,11 @@
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
diff --git a/arch/arm/boards/versatile/env/init/mtdparts-nor b/arch/arm/boards/versatile/env/init/mtdparts-nor
new file mode 100644
index 0000000..9079d48
--- /dev/null
+++ b/arch/arm/boards/versatile/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NOR partitions"
+	exit
+fi
+
+mtdparts="512k(nor0.barebox)ro,512k(nor0.bareboxenv),4864k(nor0.kernel),256k(nor0.dtb),3M(nor0.update),-(nor0.root)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/versatile/env/init/ps1 b/arch/arm/boards/versatile/env/init/ps1
new file mode 100644
index 0000000..a1d0754
--- /dev/null
+++ b/arch/arm/boards/versatile/env/init/ps1
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
+else
+	export PS1="barebox@\h:\w\n# "
+fi
diff --git a/arch/arm/boards/versatile/env/nv/boot.default b/arch/arm/boards/versatile/env/nv/boot.default
new file mode 100644
index 0000000..c47e1b2
--- /dev/null
+++ b/arch/arm/boards/versatile/env/nv/boot.default
@@ -0,0 +1 @@
+/env/boot.d
diff --git a/arch/arm/boards/versatile/env/nv/hostname b/arch/arm/boards/versatile/env/nv/hostname
new file mode 100644
index 0000000..7cdb629
--- /dev/null
+++ b/arch/arm/boards/versatile/env/nv/hostname
@@ -0,0 +1 @@
+versatilepb
diff --git a/arch/arm/boards/versatile/env/nv/linux.bootargs.base b/arch/arm/boards/versatile/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..826debe
--- /dev/null
+++ b/arch/arm/boards/versatile/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index fdd0820..7e2103e 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -46,8 +46,8 @@ static struct smc91c111_pdata net_pdata = {
 static int vpb_devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
 
 	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
 			64 * 1024, IORESOURCE_MEM, &net_pdata);
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 9f7e0e5..54a6fec 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -1,28 +1,41 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="versatile-pb"
 CONFIG_ARCH_VERSATILE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
 CONFIG_PROMPT="versatilepb> "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
@@ -30,12 +43,16 @@ CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_OF_NODE=y
@@ -51,10 +68,18 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_I2C=y
 CONFIG_I2C_VERSATILE=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_MTD_UBI=y
 CONFIG_GPIO_PL061=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_SHA1=y
 CONFIG_SHA256=y
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 9ad1869..f902576 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -11,6 +11,7 @@ config MACH_VERSATILEPB
 	bool "ARM Versatile/PB (ARM926EJ-S)"
 	select ARM_AMBA
 	select CLKDEV_LOOKUP
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
