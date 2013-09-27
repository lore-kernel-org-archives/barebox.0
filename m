Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPTgy-0003PX-RS
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:46:30 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1DF5DDC1FDB
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 10:46:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 10:47:21 +0200
Message-Id: <1380271641-23174-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] omap: xload: switch to generic bootstrap
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../configs/am335x_beaglebone_mlo_small_defconfig  |   2 +
 arch/arm/configs/archosg9_xload_defconfig          |   2 +
 arch/arm/configs/omap3530_beagle_xload_defconfig   |   3 +
 arch/arm/configs/panda_xload_defconfig             |   2 +
 arch/arm/configs/pcm049_xload_defconfig            |   3 +
 arch/arm/configs/phycard_a_l1_xload_defconfig      |   3 +
 arch/arm/configs/phycard_a_xl2_xload_defconfig     |   3 +
 arch/arm/mach-omap/xload.c                         | 273 +++++----------------
 8 files changed, 78 insertions(+), 213 deletions(-)
 rewrite arch/arm/mach-omap/xload.c (76%)

diff --git a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
index 886dad9..91c18a5 100644
--- a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
@@ -29,3 +29,5 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 24369b2..9bd37c2 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -30,3 +30,5 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_OMAP4_USBBOOT=y
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 585ee0f..0407c68 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -36,3 +36,6 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index 5cedcff..b305ea0 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -22,3 +22,5 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/pcm049_xload_defconfig b/arch/arm/configs/pcm049_xload_defconfig
index 6bbc2e4..3eae59b 100644
--- a/arch/arm/configs/pcm049_xload_defconfig
+++ b/arch/arm/configs/pcm049_xload_defconfig
@@ -40,3 +40,6 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/phycard_a_l1_xload_defconfig b/arch/arm/configs/phycard_a_l1_xload_defconfig
index 5901ed1..30fd3cc 100644
--- a/arch/arm/configs/phycard_a_l1_xload_defconfig
+++ b/arch/arm/configs/phycard_a_l1_xload_defconfig
@@ -41,3 +41,6 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/phycard_a_xl2_xload_defconfig b/arch/arm/configs/phycard_a_xl2_xload_defconfig
index 84160e3..8b9eb0c 100644
--- a/arch/arm/configs/phycard_a_xl2_xload_defconfig
+++ b/arch/arm/configs/phycard_a_xl2_xload_defconfig
@@ -39,3 +39,6 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
dissimilarity index 76%
index 3cce3f2..74a5f00 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -1,213 +1,60 @@
-#include <common.h>
-#include <bootsource.h>
-#include <partition.h>
-#include <nand.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/mtd/mtd.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <sizes.h>
-#include <filetype.h>
-
-static void *read_image_head(const char *name)
-{
-	void *header = xmalloc(ARM_HEAD_SIZE);
-	struct cdev *cdev;
-	int ret;
-
-	cdev = cdev_open(name, O_RDONLY);
-	if (!cdev) {
-		printf("failed to open partition\n");
-		return NULL;
-	}
-
-	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
-	cdev_close(cdev);
-
-	if (ret != ARM_HEAD_SIZE) {
-		printf("failed to read from partition\n");
-		return NULL;
-	}
-
-	return header;
-}
-
-static unsigned int get_image_size(void *head)
-{
-	unsigned int ret = 0;
-	unsigned int *psize = head + ARM_HEAD_SIZE_OFFSET;
-
-	if (is_barebox_arm_head(head))
-		ret = *psize;
-	debug("Detected barebox image size %u\n", ret);
-
-	return ret;
-}
-
-static void *omap_xload_boot_nand(int offset)
-{
-	int ret;
-	int size;
-	void *to, *header;
-	struct cdev *cdev;
-
-	devfs_add_partition("nand0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
-	dev_add_bb_dev("x", "bbx");
-
-	header = read_image_head("bbx");
-	if (header == NULL)
-		return NULL;
-
-	size = get_image_size(header);
-	if (!size) {
-		printf("failed to get image size\n");
-		return NULL;
-	}
-
-	to = xmalloc(size);
-
-	cdev = cdev_open("bbx", O_RDONLY);
-	if (!cdev) {
-		printf("failed to open nand\n");
-		return NULL;
-	}
-
-	ret = cdev_read(cdev, to, size, 0, 0);
-	if (ret != size) {
-		printf("failed to read from nand\n");
-		return NULL;
-	}
-
-	return to;
-}
-
-static void *omap_xload_boot_mmc(void)
-{
-	int ret;
-	void *buf;
-	int len;
-	const char *diskdev = "disk0.0";
-
-	ret = mount(diskdev, "fat", "/");
-	if (ret) {
-		printf("Unable to mount %s (%d)\n", diskdev, ret);
-		return NULL;
-	}
-
-	buf = read_file("/barebox.bin", &len);
-	if (!buf) {
-		printf("could not read barebox.bin from sd card\n");
-		return NULL;
-	}
-
-	return buf;
-}
-
-static void *omap_xload_boot_spi(int offset)
-{
-	int ret;
-	int size;
-	void *to, *header;
-	struct cdev *cdev;
-
-	devfs_add_partition("m25p0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
-
-	header = read_image_head("x");
-	if (header == NULL)
-		return NULL;
-
-	size = get_image_size(header);
-	if (!size) {
-		printf("failed to get image size\n");
-		return NULL;
-	}
-
-	to = xmalloc(size);
-
-	cdev = cdev_open("x", O_RDONLY);
-	if (!cdev) {
-		printf("failed to open spi flash\n");
-		return NULL;
-	}
-
-	ret = cdev_read(cdev, to, size, 0, 0);
-	if (ret != size) {
-		printf("failed to read from spi flash\n");
-		return NULL;
-	}
-
-	return to;
-}
-
-static void *omap4_xload_boot_usb(void){
-	int ret;
-	void *buf;
-	int len;
-
-	ret = mount("omap4_usbboot", "omap4_usbbootfs", "/");
-	if (ret) {
-		printf("Unable to mount omap4_usbbootfs (%d)\n", ret);
-		return NULL;
-	}
-
-	buf = read_file("/barebox.bin", &len);
-	if (!buf)
-		printf("could not read barebox.bin from omap4_usbbootfs\n");
-
-	return buf;
-}
-
-/*
- * Replaces the default shell in xload configuration
- */
-static __noreturn int omap_xload(void)
-{
-	int (*func)(void) = NULL;
-
-	switch (bootsource_get())
-	{
-	case BOOTSOURCE_MMC:
-		printf("booting from MMC\n");
-		func = omap_xload_boot_mmc();
-		break;
-	case BOOTSOURCE_USB:
-		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
-			printf("booting from USB\n");
-			func = omap4_xload_boot_usb();
-			break;
-		} else {
-			printf("booting from USB not enabled\n");
-		}
-	case BOOTSOURCE_NAND:
-		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(SZ_128K);
-		break;
-	case BOOTSOURCE_SPI:
-		printf("booting from SPI\n");
-		func = omap_xload_boot_spi(SZ_128K);
-		break;
-	default:
-		printf("unknown boot source. Fall back to nand\n");
-		func = omap_xload_boot_nand(SZ_128K);
-		break;
-	}
-
-	if (!func) {
-		printf("booting failed\n");
-		while (1);
-	}
-
-	shutdown_barebox();
-	func();
-
-	while (1);
-}
-
-static int omap_set_xload(void)
-{
-	barebox_main = omap_xload;
-
-	return 0;
-}
-late_initcall(omap_set_xload);
+#include <common.h>
+#include <bootsource.h>
+#include <partition.h>
+#include <nand.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/mtd/mtd.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <sizes.h>
+#include <filetype.h>
+#include <bootstrap.h>
+
+/*
+ * Replaces the default shell in xload configuration
+ */
+static __noreturn int omap_xload(void)
+{
+	int (*func)(void) = NULL;
+
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		printf("booting from MMC\n");
+		func = bootstrap_read_disk("disk0.0", "fat");
+		break;
+	case BOOTSOURCE_USB:
+		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
+			printf("booting from USB\n");
+			func = bootstrap_read_disk("omap4_usbboot", "omap4_usbbootfs");
+			break;
+		} else {
+			printf("booting from USB not enabled\n");
+		}
+	case BOOTSOURCE_NAND:
+		printf("booting from NAND\n");
+		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
+		break;
+	case BOOTSOURCE_SPI:
+		printf("booting from SPI\n");
+		func = bootstrap_read_devfs("m25p0", false, SZ_128K, SZ_256K, SZ_1M);
+		break;
+	default:
+		printf("unknown boot source. Fall back to nand\n");
+		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
+		break;
+	}
+
+	bootstrap_boot(func, false);
+	bootstrap_err("... failed\n");
+
+	while (1);
+}
+
+static int omap_set_xload(void)
+{
+	barebox_main = omap_xload;
+
+	return 0;
+}
+late_initcall(omap_set_xload);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
