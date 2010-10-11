Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Jk7-0005GU-Ff
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:52:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 16:52:25 +0200
Message-Id: <1286808746-19456-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/4] Spend the ChumbyOne a persistant environment memory on
	MCI card
To: barebox@lists.infradead.org

The ChumbyOne boot from MCI card only. As ist more fun to run barebox with
a persistant environment, provide one in the second partition on the MCI card.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/env/bin/boot |   38 +++++++++++
 arch/arm/boards/chumby_falconwing/env/bin/init |   15 +++++
 arch/arm/boards/chumby_falconwing/env/config   |   36 +++++++++++
 arch/arm/boards/chumby_falconwing/falconwing.c |   81 +++++++++++++++++++++++-
 4 files changed, 169 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/chumby_falconwing/env/bin/boot
 create mode 100644 arch/arm/boards/chumby_falconwing/env/bin/init
 create mode 100644 arch/arm/boards/chumby_falconwing/env/config

diff --git a/arch/arm/boards/chumby_falconwing/env/bin/boot b/arch/arm/boards/chumby_falconwing/env/bin/boot
new file mode 100644
index 0000000..981a387
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/env/bin/boot
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xdisk ]; then
+	rootfs_loc=disk
+	kernel_loc=disk
+elif [ x$1 = xnet ]; then
+	rootfs_loc=net
+	kernel_loc=net
+fi
+
+if [ x$ip = xdhcp ]; then
+	bootargs="$bootargs ip=dhcp"
+elif [ x$ip = xnone ]; then
+	bootargs="$bootargs ip=none"
+else
+	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
+fi
+
+if [ x$rootfs_loc = xdisk ]; then
+	bootargs="$bootargs noinitrd rootfstype=$rootfs_type root=/dev/$rootfs_part"
+elif [ x$rootfs_loc = xnet ]; then
+	bootargs="$bootargs root=/dev/nfs nfsroot=$nfsroot,v3,tcp noinitrd"
+elif [ x$rootfs_loc = xinitrd ]; then
+	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
+fi
+
+if [ x$kernelimage_type = xuimage ]; then
+	bootm /dev/$kernel_part
+elif [ x$kernelimage_type = xzimage ]; then
+	bootz /dev/$kernel_part
+else
+	echo "Booting failed. Correct setup of 'kernelimage_type'?"
+	exit
+fi
+
+echo "Booting failed. Correct setup of 'kernel_part'?"
diff --git a/arch/arm/boards/chumby_falconwing/env/bin/init b/arch/arm/boards/chumby_falconwing/env/bin/init
new file mode 100644
index 0000000..3ed68f7
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/env/bin/init
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	exit
+fi
+
+boot
diff --git a/arch/arm/boards/chumby_falconwing/env/config b/arch/arm/boards/chumby_falconwing/env/config
new file mode 100644
index 0000000..1e61dce
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/env/config
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+machine=falconwing
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=none
+
+# or set your networking parameters here (if a USB network adapter is attached)
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'net' or 'disk'
+kernel_loc=disk
+# can be either 'net', or 'disk' or 'initrd'
+rootfs_loc=disk
+
+# can be any regular filesystem like ext2, ext3, reiserfs in case of 'rootfs_loc=disk'
+rootfs_type=ext2
+# Where is the rootfs in case of 'rootfs_loc=disk'
+rootfs_part=mmcblk0p4
+
+# Where is the rootfs in case of 'rootfs_loc=net'
+nfsroot=FIXME
+
+# The image type of the kernel. Can be uimage, zimage
+kernelimage_type=uimage
+# Where to get the kernel image in case of 'kernel_loc=disk'
+kernel_part=disk0.2
+
+# base kernel parameter
+bootargs="console=ttyAM0,115200 debug ro lcd_panel=lms350 ssp1=mmc line=1 sysrq_always_enabled rotary=1"
+
+autoboot_timeout=2
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index d209dd5..952a384 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -20,10 +20,14 @@
 #include <init.h>
 #include <gpio.h>
 #include <environment.h>
+#include <errno.h>
+#include <mci.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <mach/mci.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -37,6 +41,17 @@ static struct device_d sdram_dev = {
 	.platform_data = &ram_pdata,
 };
 
+static struct stm_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+};
+
+static struct device_d mci_dev = {
+	.name     = "stm_mci",
+	.map_base = IMX_SSP1_BASE,
+	.platform_data = &mci_pdata,
+};
+
 static const uint32_t pad_setup[] = {
 	/* may be not required as already done by the bootlet code */
 #if 0
@@ -205,20 +220,64 @@ static const uint32_t pad_setup[] = {
 	GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
 };
 
+/**
+ * Try to register an environment storage on the attached MCI card
+ * @return 0 on success
+ *
+ * We relay on the existance of a useable SD card, already attached to
+ * our system, to get someting like a persistant memory for our environment.
+ * If this SD card is also the boot media, we can use the second partition
+ * for our environment purpose (if present!).
+ */
+static int register_persistant_environment(void)
+{
+	struct cdev *cdev;
+
+	/*
+	 * The chumby one only has one MCI card socket.
+	 * So, we expect its name as "disk0".
+	 */
+	cdev = cdev_by_name("disk0");
+	if (cdev == NULL) {
+		pr_err("No MCI card preset\n");
+		return -ENODEV;
+	}
+
+	/* MCI card is present, also a useable partition on it? */
+	cdev = cdev_by_name("disk0.1");
+	if (cdev == NULL) {
+		pr_err("No second partition available\n");
+		pr_info("Please create at least a second partition with"
+			" 256 kiB...512 kiB in size (your choice)\n");
+		return -ENODEV;
+	}
+
+	/* use the full partition as our persistant environment storage */
+	return devfs_add_partition("disk0.1", 0, cdev->size, DEVFS_PARTITION_FIXED, "env0");
+}
+
 static int falconwing_devices_init(void)
 {
-	int i;
+	int i, rc;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
 	register_device(&sdram_dev);
+	imx_set_ioclk(480U * 1000U);	/* enable IOCLK to run at the PLL frequency */
+	/* run the SSP unit clock at 100,000 kHz */
+	imx_set_sspclk(0, 100U * 1000U, 1);
+	register_device(&mci_dev);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
+	rc = register_persistant_environment();
+	if (rc != 0)
+		printf("Cannot create the 'env0' persistant environment storage (%d)\n", rc);
+
 	return 0;
 }
 
@@ -268,4 +327,24 @@ make ARCH=arm CROSS_COMPILE=armv5compiler
 @endverbatim
 
 @note replace the armv5compiler with your ARM v5 cross compiler.
+
+@section setup_falconwing How to prepare an MCI card to boot the "chumby one" with barebox
+
+- Create four primary partitions on the MCI card
+ - the first one for the bootlets (about 256 kiB)
+ - the second one for the persistant environment (size is up to you, at least 256k)
+ - the third one for the kernel (2 MiB ... 4 MiB in size)
+ - the 4th one for the root filesystem which can fill the rest of the available space
+
+- Mark the first partition with the partition ID "53" and copy the bootlets
+  into this partition (currently not part of @b barebox!).
+
+- Copy the default @b barebox environment into the second partition (no filesystem required).
+
+- Copy the kernel into the third partition (no filesystem required).
+
+- Create the root filesystem in the 4th partition. You may copy an image into this
+  partition or you can do it in the classic way: mkfs on it, mount it and copy
+  all required data and programs into it.
+
 */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
