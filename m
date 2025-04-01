Delivery-date: Tue, 01 Apr 2025 13:05:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQw-006xww-11
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQu-0003KR-R8
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwJNriluHu9oyGFvDcycTPm7QfI1NRF+ibfiT9HK1p0=; b=SJyk5vBq4AEtiMvRUh18aU6SFN
	lLu9gkp0rF4I0QTXTW92npJ75EPBMK5cWsPttjYNQ4TKJlGMKM7oInka1BP0Yt4HTs0yXpzBOnh5U
	8VE0F7o4fwmOzdbLwcTzC/X7AC4R5CttCIzzlEz5MgeAdPQ5g7twvhDOrzTOivLMiIBN4ef87sums
	8S40OI8uIQKJLoGEhDJUlyAl/HPY1vDMhwYx+ndbuvsa2+0cRJcWHCx31pS35AldaI//Q5+pKPn+V
	/1roJG0BuwqDSa7KuCJZWg8g0ryK115d5xb7HX+kgqHpoLq38VNQfhk7uREqN/En27Vde9Xw+iI5+
	iiaQKsdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQM-00000002irU-0ZrQ;
	Tue, 01 Apr 2025 11:04:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002fob-46hi
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Mr-NX; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWi-1Y;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1F;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:55 +0200
Message-Id: <20250401104806.3959859-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_402116_07240085 
X-CRM114-Status: GOOD (  29.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/16] blspec: factor out generic parts into bootscan helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Other boot entry providers (like incoming ESP provider) would share much
code with the blspec driver. Factor out the common parts into a separate
bootscannr functionality, so bootspec need only implement a couple of
callbacks.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile    |   2 +-
 common/blspec.c    | 222 +++++++++++++--------------------------------
 common/bootscan.c  | 168 ++++++++++++++++++++++++++++++++++
 include/bootscan.h |  31 +++++++
 4 files changed, 261 insertions(+), 162 deletions(-)
 create mode 100644 common/bootscan.c
 create mode 100644 include/bootscan.h

diff --git a/common/Makefile b/common/Makefile
index 4a8dc1ff0613..0e9648378d8c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -78,7 +78,7 @@ obj-y				+= file-list.o
 obj-$(CONFIG_FIRMWARE)		+= firmware.o
 obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
-obj-$(CONFIG_BOOT)		+= boot.o
+obj-$(CONFIG_BOOT)		+= boot.o bootscan.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USB_GADGET)	+= usbgadget.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
diff --git a/common/blspec.c b/common/blspec.c
index d2db9f0db9fa..b58efc06338b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -4,11 +4,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <firmware.h>
-#include <readkey.h>
-#include <common.h>
-#include <driver.h>
 #include <malloc.h>
-#include <block.h>
 #include <fcntl.h>
 #include <libfile.h>
 #include <libbb.h>
@@ -20,9 +16,10 @@
 #include <linux/stat.h>
 #include <linux/list.h>
 #include <linux/err.h>
-#include <mtd/ubi-user.h>
 #include <boot.h>
 
+#include <bootscan.h>
+
 struct blspec_entry {
 	struct bootentry entry;
 
@@ -32,8 +29,6 @@ struct blspec_entry {
 	const char *configpath;
 };
 
-static int blspec_scan_device(struct bootentries *bootentries, struct device *dev);
-
 /*
  * blspec_entry_var_get - get the value of a variable
  */
@@ -396,8 +391,8 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
 	return ret;
 }
 
-static int blspec_scan_file(struct bootentries *bootentries, const char *root,
-			    const char *configname)
+static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
+			      const char *configname)
 {
 	char *devname = NULL, *hwdevname = NULL;
 	struct blspec_entry *entry;
@@ -445,6 +440,16 @@ static int blspec_scan_file(struct bootentries *bootentries, const char *root,
 	return 1;
 }
 
+static int blspec_scan_file(struct bootscanner *scanner,
+			    struct bootentries *bootentries,
+			    const char *configname)
+{
+	if (!strends(configname, ".conf"))
+		return 0;
+
+	return __blspec_scan_file(bootentries, NULL, configname);
+}
+
 /*
  * blspec_scan_directory - scan over a directory
  *
@@ -452,7 +457,8 @@ static int blspec_scan_file(struct bootentries *bootentries, const char *root,
  *
  * returns the number of entries found or a negative error value otherwise.
  */
-static int blspec_scan_directory(struct bootentries *bootentries, const char *root)
+static int blspec_scan_directory(struct bootscanner *bootscanner,
+				 struct bootentries *bootentries, const char *root)
 {
 	glob_t globb;
 	char *abspath;
@@ -479,7 +485,7 @@ static int blspec_scan_directory(struct bootentries *bootentries, const char *ro
 		if (ret || !S_ISREG(s.st_mode))
 			continue;
 
-		ret = blspec_scan_file(bootentries, root, configname);
+		ret = __blspec_scan_file(bootentries, root, configname);
 		if (ret > 0)
 			found += ret;
 	}
@@ -493,108 +499,20 @@ static int blspec_scan_directory(struct bootentries *bootentries, const char *ro
 	return ret;
 }
 
-/*
- * blspec_scan_ubi - scan over a cdev containing UBI volumes
- *
- * This function attaches a cdev as UBI devices and collects all bootentries
- * entries found in the UBI volumes
- *
- * returns the number of entries found or a negative error code if some unexpected
- * error occurred.
- */
-static int blspec_scan_ubi(struct bootentries *bootentries, struct cdev *cdev)
+static int blspec_scan_disk(struct bootscanner *scanner,
+			    struct bootentries *bootentries, struct cdev *cdev)
 {
-	struct device *child;
-	int ret, found = 0;
+	struct cdev *partcdev;
+	int ret;
 
-	pr_debug("%s: %s\n", __func__, cdev->name);
-
-	ret = ubi_attach_mtd_dev(cdev->mtd, UBI_DEV_NUM_AUTO, 0, 20);
-	if (ret && ret != -EEXIST)
-		return 0;
-
-	device_for_each_child(cdev->dev, child) {
-		ret = blspec_scan_device(bootentries, child);
-		if (ret > 0)
-			found += ret;
-	}
-
-	return found;
-}
-
-/*
- * blspec_scan_cdev - scan over a cdev
- *
- * Given a cdev this function mounts the filesystem and collects all bootentries
- * entries found under /bootentries/entries/.
- *
- * returns the number of entries found or a negative error code if some unexpected
- * error occurred.
- */
-static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
-{
-	int ret, found = 0;
-	void *buf = xzalloc(512);
-	enum filetype type, filetype;
-	const char *rootpath;
-
-	pr_debug("%s: %s\n", __func__, cdev->name);
-
-	ret = cdev_read(cdev, buf, 512, 0, 0);
-	if (ret < 0) {
-		free(buf);
-		return ret;
-	}
-
-	type = file_detect_partition_table(buf, 512);
-	filetype = file_detect_type(buf, 512);
-	free(buf);
-
-	if (type == filetype_mbr || type == filetype_gpt)
-		return -EINVAL;
-
-	if (filetype == filetype_ubi && IS_ENABLED(CONFIG_MTD_UBI)) {
-		ret = blspec_scan_ubi(bootentries, cdev);
-		if (ret > 0)
-			found += ret;
-	}
-
-	rootpath = cdev_mount(cdev);
-	if (!IS_ERR(rootpath)) {
-		ret = blspec_scan_directory(bootentries, rootpath);
-		if (ret > 0)
-			found += ret;
-	}
-
-	return found;
-}
-
-/*
- * blspec_scan_device - scan a device for child cdevs
- *
- * Given a device this functions scans over all child cdevs looking
- * for bootentries entries.
- * Returns the number of entries found or a negative error code if some unexpected
- * error occurred.
- */
-static int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
-{
-	struct device *child;
-	struct cdev *cdev;
-	int ret, found = 0;
-
-	pr_debug("%s: %s\n", __func__, dev_name(dev));
-
-	device_detect(dev);
-
-	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+	for_each_cdev_partition(partcdev, cdev) {
 		/*
 		 * If the OS is installed on a disk with MBR disk label, and a
 		 * partition with the MBR type id of 0xEA already exists it
 		 * should be used as $BOOT
 		 */
 		if (cdev_is_mbr_partitioned(cdev->master) && cdev->dos_partition_type == 0xea) {
-			ret = blspec_scan_cdev(bootentries, cdev);
+			ret = boot_scan_cdev(scanner, bootentries, cdev);
 			if (ret == 0)
 				ret = -ENOENT;
 
@@ -611,9 +529,38 @@ static int blspec_scan_device(struct bootentries *bootentries, struct device *de
 		 */
 	}
 
+	return 0;
+}
+
+/*
+ * blspec_scan_device - scan a device for child cdevs
+ *
+ * Given a device this functions scans over all child cdevs looking
+ * for bootentries entries.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occurred.
+ */
+static int blspec_scan_device(struct bootscanner *scanner,
+			      struct bootentries *bootentries, struct device *dev)
+{
+	struct device *child;
+	struct cdev *cdev;
+	int ret, found = 0;
+
+	pr_debug("%s: %s\n", __func__, dev_name(dev));
+
+	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		if (cdev_is_partition(cdev))
+			continue;
+
+		ret = blspec_scan_disk(scanner, bootentries, cdev);
+		if (ret)
+			return ret;
+	}
+
 	/* Try child devices */
 	device_for_each_child(dev, child) {
-		ret = blspec_scan_device(bootentries, child);
+		ret = blspec_scan_device(scanner, bootentries, child);
 		if (ret > 0)
 			return ret;
 	}
@@ -623,7 +570,7 @@ static int blspec_scan_device(struct bootentries *bootentries, struct device *de
 	 * by the bootblspec spec).
 	 */
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-		ret = blspec_scan_cdev(bootentries, cdev);
+		ret = boot_scan_cdev(scanner, bootentries, cdev);
 		if (ret > 0)
 			found += ret;
 	}
@@ -631,64 +578,17 @@ static int blspec_scan_device(struct bootentries *bootentries, struct device *de
 	return found;
 }
 
-/*
- * blspec_scan_devicename - scan a hardware device for child cdevs
- *
- * Given a name of a hardware device this functions scans over all child
- * cdevs looking for bootentries entries.
- * Returns the number of entries found or a negative error code if some unexpected
- * error occurred.
- */
-static int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
-{
-	struct device *dev;
-	struct cdev *cdev;
-
-	pr_debug("%s: %s\n", __func__, devname);
-
-	/* Support both boot /dev/disk0.rootfs and boot disk0.rootfs */
-	devname += str_has_prefix(devname, "/dev/");
-
-	device_detect_by_name(devname);
-
-	cdev = cdev_by_name(devname);
-	if (cdev) {
-		int ret = blspec_scan_cdev(bootentries, cdev);
-		if (ret > 0)
-			return ret;
-	}
-
-	dev = get_device_by_name(devname);
-	if (!dev)
-		return -ENODEV;
-
-	return blspec_scan_device(bootentries, dev);
-}
+static struct bootscanner blspec_scanner = {
+	.name		= "blspec",
+	.scan_file	= blspec_scan_file,
+	.scan_directory	= blspec_scan_directory,
+	.scan_device	= blspec_scan_device,
+};
 
 static int blspec_bootentry_generate(struct bootentries *bootentries,
 				     const char *name)
 {
-	struct stat s;
-	int ret, found = 0;
-
-	ret = blspec_scan_devicename(bootentries, name);
-	if (ret > 0)
-		found += ret;
-
-	if (*name == '/') {
-		ret = stat(name, &s);
-		if (ret)
-			return found;
-
-		if (S_ISDIR(s.st_mode))
-			ret = blspec_scan_directory(bootentries, name);
-		else if (S_ISREG(s.st_mode) && strends(name, ".conf"))
-			ret = blspec_scan_file(bootentries, NULL, name);
-		if (ret > 0)
-			found += ret;
-	}
-
-	return found;
+	return bootentry_scan_generate(&blspec_scanner, bootentries, name);
 }
 
 static struct bootentry_provider blspec_bootentry_provider = {
diff --git a/common/bootscan.c b/common/bootscan.c
new file mode 100644
index 000000000000..cc25f070508a
--- /dev/null
+++ b/common/bootscan.c
@@ -0,0 +1,168 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#define pr_fmt(fmt)  "bootscan: " fmt
+
+#include <driver.h>
+#include <xfuncs.h>
+#include <block.h>
+#include <fs.h>
+#include <linux/stat.h>
+#include <linux/err.h>
+#include <mtd/ubi-user.h>
+
+#include <bootscan.h>
+
+static int boot_scan_device(struct bootscanner *scanner,
+			    struct bootentries *bootentries, struct device *dev)
+{
+
+	pr_debug("%s(%s): %s\n", __func__, scanner->name, dev_name(dev));
+
+	device_detect(dev);
+	return scanner->scan_device(scanner, bootentries, dev);
+}
+
+/*
+ * boot_scan_ubi - scan over a cdev containing UBI volumes
+ *
+ * This function attaches a cdev as UBI devices and collects all bootentries
+ * entries found in the UBI volumes
+ *
+ * returns the number of entries found or a negative error code if some unexpected
+ * error occurred.
+ */
+static int boot_scan_ubi(struct bootscanner *scanner,
+			 struct bootentries *bootentries, struct cdev *cdev)
+{
+	struct device *child;
+	int ret, found = 0;
+
+	pr_debug("%s(%s): %s\n", __func__, scanner->name, cdev->name);
+
+	if (!scanner->scan_device)
+		return 0;
+
+	ret = ubi_attach_mtd_dev(cdev->mtd, UBI_DEV_NUM_AUTO, 0, 20);
+	if (ret && ret != -EEXIST)
+		return 0;
+
+	device_for_each_child(cdev->dev, child) {
+		ret = boot_scan_device(scanner, bootentries, child);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found;
+}
+
+/*
+ * boot_scan_cdev - scan over a cdev
+ *
+ * Given a cdev this function mounts the filesystem and collects all bootentries
+ * entries found in it.
+ *
+ * returns the number of entries found or a negative error code if some unexpected
+ * error occurred.
+ */
+int boot_scan_cdev(struct bootscanner *scanner,
+		   struct bootentries *bootentries, struct cdev *cdev)
+{
+	int ret, found = 0;
+	void *buf = xzalloc(512);
+	enum filetype type, filetype;
+	const char *rootpath;
+
+	pr_debug("%s(%s): %s\n", __func__, scanner->name, cdev->name);
+
+	ret = cdev_read(cdev, buf, 512, 0, 0);
+	if (ret < 0) {
+		free(buf);
+		return ret;
+	}
+
+	type = file_detect_partition_table(buf, 512);
+	filetype = file_detect_type(buf, 512);
+	free(buf);
+
+	if (type == filetype_mbr || type == filetype_gpt)
+		return -EINVAL;
+
+	if (filetype == filetype_ubi && IS_ENABLED(CONFIG_MTD_UBI)) {
+		ret = boot_scan_ubi(scanner, bootentries, cdev);
+		if (ret > 0)
+			found += ret;
+	}
+
+	rootpath = cdev_mount(cdev);
+	if (!IS_ERR(rootpath) && scanner->scan_directory) {
+		ret = scanner->scan_directory(scanner, bootentries, rootpath);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found;
+}
+
+/*
+ * boot_scan_devicename - scan a hardware device for child cdevs
+ *
+ * Given a name of a hardware device this functions scans over all child
+ * cdevs looking for bootentries entries.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occurred.
+ */
+static int boot_scan_devicename(struct bootscanner *scanner,
+				struct bootentries *bootentries, const char *devname)
+{
+	struct device *dev;
+	struct cdev *cdev;
+
+	pr_debug("%s(%s): %s\n", __func__, scanner->name, devname);
+
+	/* Support both boot /dev/disk0.rootfs and boot disk0.rootfs */
+	devname += str_has_prefix(devname, "/dev/");
+
+	device_detect_by_name(devname);
+
+	cdev = cdev_by_name(devname);
+	if (cdev) {
+		int ret = boot_scan_cdev(scanner, bootentries, cdev);
+		if (ret > 0)
+			return ret;
+	}
+
+	if (!scanner->scan_device)
+		return 0;
+
+	dev = get_device_by_name(devname);
+	if (!dev)
+		return -ENODEV;
+
+	return boot_scan_device(scanner, bootentries, dev);
+}
+
+int bootentry_scan_generate(struct bootscanner *scanner,
+			    struct bootentries *bootentries,
+			    const char *name)
+{
+	struct stat s;
+	int ret, found = 0;
+
+	ret = boot_scan_devicename(scanner, bootentries, name);
+	if (ret > 0)
+		found += ret;
+
+	if (*name == '/') {
+		ret = stat(name, &s);
+		if (ret)
+			return found;
+
+		if (S_ISDIR(s.st_mode) && scanner->scan_directory)
+			ret = scanner->scan_directory(scanner, bootentries, name);
+		else if (S_ISREG(s.st_mode) && scanner->scan_file)
+			ret = scanner->scan_file(scanner, bootentries, name);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found;
+}
diff --git a/include/bootscan.h b/include/bootscan.h
new file mode 100644
index 000000000000..3161896faf07
--- /dev/null
+++ b/include/bootscan.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTSCAN_H
+#define __BOOTSCAN_H
+
+struct bootentries;
+struct device;
+struct cdev;
+
+struct bootscanner {
+	/** For debugging output */
+	const char *name;
+
+	/** Invoked for when scanning a file */
+	int (*scan_file)(struct bootscanner *,
+			 struct bootentries *, const char *);
+	/** Invoked for when scanning a directory */
+	int (*scan_directory)(struct bootscanner *,
+			      struct bootentries *, const char *);
+	/** Fallback: Invoked only when none of the above returned results */
+	int (*scan_device)(struct bootscanner *,
+			   struct bootentries *, struct device *);
+};
+
+int boot_scan_cdev(struct bootscanner *scanner,
+		   struct bootentries *bootentries, struct cdev *cdev);
+
+int bootentry_scan_generate(struct bootscanner *scanner,
+			    struct bootentries *bootentries,
+			    const char *name);
+
+#endif
-- 
2.39.5



