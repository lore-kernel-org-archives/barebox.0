Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rar6P-0000me-69
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 15:50:42 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0CA93FFBB66
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 16:51:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 14 Dec 2011 16:46:13 +0100
Message-Id: <1323877574-10276-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
References: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] at91sam9260/9g20-ek: update nand support
To: barebox@lists.infradead.org

by default boot from nand with the bootstrap as first stage
update the smc config for 9g20-ek

switch to defaultenv

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/bin/_update      |   36 ------------
 arch/arm/boards/at91sam9260ek/env/bin/boot         |   38 ------------
 arch/arm/boards/at91sam9260ek/env/bin/init         |   19 ------
 arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop   |   14 -----
 arch/arm/boards/at91sam9260ek/env/bin/pciloop      |   13 ----
 .../arm/boards/at91sam9260ek/env/bin/update_kernel |    8 ---
 arch/arm/boards/at91sam9260ek/env/bin/update_root  |    8 ---
 arch/arm/boards/at91sam9260ek/env/config           |   61 +++++++++++++-------
 arch/arm/boards/at91sam9260ek/init.c               |   42 ++++++++++++--
 arch/arm/configs/at91sam9260ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    2 +-
 11 files changed, 79 insertions(+), 164 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/_update
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/boot
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/init
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/pciloop
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/update_root
 rewrite arch/arm/boards/at91sam9260ek/env/config (88%)

diff --git a/arch/arm/boards/at91sam9260ek/env/bin/_update b/arch/arm/boards/at91sam9260ek/env/bin/_update
deleted file mode 100644
index 014bce3..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/boot b/arch/arm/boards/at91sam9260ek/env/bin/boot
deleted file mode 100644
index ed6f11a..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/boot
+++ /dev/null
@@ -1,38 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xflash ]; then
-	root=flash
-	kernel=flash
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$root = xflash ]; then
-	bootargs="$bootargs root=$rootpart rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=192.168.23.111:$nfsroot"
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$mtdparts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage
-	bootm uImage
-else
-	bootm /dev/nor0.kernel
-fi
-
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init b/arch/arm/boards/at91sam9260ek/env/bin/init
deleted file mode 100644
index b8d8399..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/init
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel [<imagename>] to update kernel into flash"
-	echo "type udate_root [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
\ No newline at end of file
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop b/arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
deleted file mode 100644
index 24e76cb..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
+++ /dev/null
@@ -1,14 +0,0 @@
-pci stat
-pci stat -c
-while true; do 
-        pci readm 32 0xA1000000 32 -s
-        pci readm 32 0xA2000000 256 -s
-        pci dmatx 2000 a2000100 128 -s
-        pci writem 32 0xa2000100 0x12345678 4 -s
-        pci readm 32 0xA3000000 256 -s
-        pci dmatx 2000 a3000040 128 -s
-        pci writem 32 0xa3000100 0x12345678 4 -s
-        pci readm 32 0xA4000000 16 -s
-        pci dmatx 2000 a4000080 4 -s
-        pci writem 32 0xa4000080 0x12345678 4 -s
-done
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/pciloop b/arch/arm/boards/at91sam9260ek/env/bin/pciloop
deleted file mode 100644
index 4a804f9..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/pciloop
+++ /dev/null
@@ -1,13 +0,0 @@
-pci stat
-pci stat -c
-while true; do 
-        pci readm 32 0xA1000000 32 -s
-        pci readm 32 0xA2000000 256 -s
-        pci writem 32 0xa2000100 0x12345678 4 -s
-        pci readm 32 0xA3000000 256 -s
-        pci writem 32 0xa3000100 0x12345678 4 -s
-        pci readm 32 0xA4000000 16 -s
-        pci writem 32 0xa4000080 0x12345678 4 -s
-
-#       pci dmatx 2000 a3000040 128 -s
-done
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/update_kernel b/arch/arm/boards/at91sam9260ek/env/bin/update_kernel
deleted file mode 100644
index 1ad95fc..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/update_kernel
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-part=/dev/nor0.kernel
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/at91sam9260ek/env/bin/update_root b/arch/arm/boards/at91sam9260ek/env/bin/update_root
deleted file mode 100644
index b757a5b..0000000
--- a/arch/arm/boards/at91sam9260ek/env/bin/update_root
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$jffs2
-part=/dev/nor0.root
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
dissimilarity index 88%
index 71d6f88..ba14c2b 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -1,20 +1,41 @@
-#!/bin/sh
-
-# can be either 'net' or 'flash'
-kernel=net
-root=net
-
-# use 'dhcp' todo dhcp in barebox and in kernel
-ip=dhcp
-
-#
-# setup default ethernet address
-#
-eth0.serverip=192.168.23.108
-
-uimage=uImage-at91sam9260ek
-
-autoboot_timeout=3
-
-nfsroot="/home/jbe/pengutronix/bsp/OSELAS.BSP-Phytec-phyCORE-i.MX27-trunk/root,v3"
-bootargs="console=ttyS0,115200 rw init=/bin/sh"
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nfs
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+#kernelimage_type=zimage
+#kernelimage=zImage
+kernelimage_type=uimage
+kernelimage=uImage
+#kernelimage_type=raw
+#kernelimage=Image
+#kernelimage_type=raw_lzo
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=5
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 958319e..5aacc75 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -31,6 +31,7 @@
 #include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
+#include <sizes.h>
 #include <linux/mtd/nand.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
@@ -72,7 +73,7 @@ static struct atmel_nand_data nand_pdata = {
 #endif
 };
 
-static struct sam9_smc_config ek_nand_smc_config = {
+static struct sam9_smc_config ek_9260_nand_smc_config = {
 	.ncs_read_setup		= 0,
 	.nrd_setup		= 1,
 	.ncs_write_setup	= 0,
@@ -90,16 +91,41 @@ static struct sam9_smc_config ek_nand_smc_config = {
 	.tdf_cycles		= 2,
 };
 
+static struct sam9_smc_config ek_9g20_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+};
+
 static void ek_add_device_nand(void)
 {
+	struct sam9_smc_config *smc;
+
+	if (machine_is_at91sam9g20ek())
+		smc = &ek_9g20_nand_smc_config;
+	else
+		smc = &ek_9260_nand_smc_config;
+
 	/* setup bus-width (8 or 16) */
 	if (nand_pdata.bus_width_16)
-		ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
+		smc->mode |= AT91_SMC_DBW_16;
 	else
-		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+		smc->mode |= AT91_SMC_DBW_8;
 
 	/* configure chip-select 3 (NAND) */
-	sam9_smc_configure(3, &ek_nand_smc_config);
+	sam9_smc_configure(3, smc);
 
 	at91_add_device_nand(&nand_pdata);
 }
@@ -156,10 +182,14 @@ static int at91sam9260ek_devices_init(void)
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
 
-	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
 
 	return 0;
 }
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 2d04206..a08607f 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -5,6 +5,7 @@ CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -14,7 +15,6 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index bc7c242..e6916f7 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -9,6 +9,7 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -18,7 +19,6 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
