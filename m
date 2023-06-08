Delivery-date: Thu, 08 Jun 2023 09:25:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1a-00FRsu-Vq
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 09:25:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1Y-0002Bp-A3
	for lore@pengutronix.de; Thu, 08 Jun 2023 09:25:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8z9hUEI4PFSPYwlg7VScXmEJjWVuPO/mdqdu/LHYvLU=; b=CgDKPSsGkQZJVBgi1CEjc9owbT
	+gcTfMXBfekcZfFMuWtYv1R70O4C+qshs2wg9BTobSk3X+Davb3HhUg1LlQrfr5RowRVoYZYXnnEf
	lHUV7PYguo2q2RwBnGUlGr12LiqtguUV3IJmxWEKqxm6zY1XVLvHltI8qtGFUtkmpK8Rd/LVgzedi
	3Sw1zVHdY/Cu9i5RKpggSSUQIZRqZAlMu8ooE+E8+L39vcHhyw78YIOhpqmf8akGApXDd4Hj1TPEp
	5EpUSZro5Zk+bc3npStQ4K1RhnCVFEbvWOL6/+8Te5PqQxlpNMftlOKsn9c/POM/JqyjP+1x17RyG
	m5xokVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A0R-008OAd-1I;
	Thu, 08 Jun 2023 07:24:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A0M-008O9B-2v
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 07:24:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0L-0001kW-Lj; Thu, 08 Jun 2023 09:24:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0L-005v8P-0g; Thu, 08 Jun 2023 09:24:21 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0J-00Dk9t-UN; Thu, 08 Jun 2023 09:24:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 09:24:18 +0200
Message-Id: <20230608072418.3275633-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
References: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_002423_104430_DB1A7416 
X-CRM114-Status: GOOD (  18.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] file-list: support special 'auto', 'block', 'nvmem' specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Best practice is for each board to populate $global.system.partitions
or $global.fastboot.partitions with a string exporting its flashable
devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".

This often goes into BSPs though, so upstream boards are left without
default partitions, making use a bit cumbersome. Make this easier
by providing three new magic specifiers:

  - nvmem: exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
  - block: exports all registered block devices (e.g. eMMC and SD)
  - auto:  currently equivalent to "nvmem,block". May be extended
           to raw MTD and UBI in future

This makes it easy to export devices on any board:

  usbgadget -A auto -b

or

  usbgadget -S auto,/tmp/fitimage(fitimage)c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/usb.rst     | 17 +++++++++++++++++
 common/block.c                 | 16 ++++++++++++++++
 common/file-list.c             | 29 +++++++++++++++++++++++++++--
 drivers/nvmem/core.c           | 16 ++++++++++++++++
 include/block.h                |  6 ++++++
 include/linux/nvmem-consumer.h |  8 ++++++++
 6 files changed, 90 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index f2f57ead98d4..6fed0f619b32 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -73,6 +73,23 @@ Example:
 
   /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
 
+Board code authors are encouraged to provide a default environment containing
+partitions with descriptive names. For boards where this is not specified,
+there exist a number of **partition** specifiers for automatically generating entries:
+
+* ``nvmem`` exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
+* ``block`` exports all registered block devices (e.g. eMMC and SD)
+* ``auto``  currently equivalent to ``nvmem,block``. May be extended to other flashable
+            devices, like MTD or UBI volumes in future
+
+Example usage of exporting registered block devices, barebox update
+handlers and a single file that is created on flashing:
+
+.. code-block:: sh
+
+     detect -a # optional. Detects everything, so auto can register it
+     usbgadget -A auto,/tmp/fitimage(fitimage)c -b
+
 DFU
 ^^^
 
diff --git a/common/block.c b/common/block.c
index f6eeb7f9c85f..3a4a9fb73149 100644
--- a/common/block.c
+++ b/common/block.c
@@ -11,6 +11,7 @@
 #include <linux/err.h>
 #include <linux/list.h>
 #include <dma.h>
+#include <file-list.h>
 
 #define BLOCKSIZE(blk)	(1 << blk->blockbits)
 
@@ -458,3 +459,18 @@ int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t nu
 
 	return ret < 0 ? ret : 0;
 }
+
+unsigned file_list_add_blockdevs(struct file_list *files)
+{
+	struct block_device *blk;
+	unsigned count = 0;
+	int err;
+
+	list_for_each_entry(blk, &block_device_list, list) {
+		err = file_list_add_cdev_entry(files, &blk->cdev, 0);
+		if (!err)
+			count++;
+	}
+
+	return count;
+}
diff --git a/common/file-list.c b/common/file-list.c
index 5c7020111145..80ab108753e0 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -9,6 +9,8 @@
 #include <stringlist.h>
 #include <linux/err.h>
 #include <driver.h>
+#include <block.h>
+#include <linux/nvmem-consumer.h>
 
 #define PARSE_DEVICE	0
 #define PARSE_NAME	1
@@ -59,12 +61,32 @@ int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
 				     xasprintf("/dev/%s", cdev->name), flags);
 }
 
+static bool file_list_handle_spec(struct file_list *files, const char *spec)
+{
+	unsigned count = 0;
+
+	if (!strcmp(spec, "auto")) {
+		count += file_list_add_blockdevs(files);
+		count += file_list_add_nvmemdevs(files);
+	} else if (!strcmp(spec, "block")) {
+		count += file_list_add_blockdevs(files);
+	} else if (!strcmp(spec, "nvmem")) {
+		count += file_list_add_nvmemdevs(files);
+	} else {
+		return false;
+	}
+
+	pr_debug("'%s' spcifier resulted in %u entries\n", spec, count);
+	return true;
+}
+
 static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
 {
 	int i = 0, state = PARSE_DEVICE;
 	char filename[PATH_MAX];
 	char name[PATH_MAX];
 	unsigned long flags = 0;
+	bool special = false;
 
 	memset(filename, 0, sizeof(filename));
 	memset(name, 0, sizeof(name));
@@ -115,7 +137,10 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		partstr++;
 	}
 
-	if (state != PARSE_FLAGS) {
+	if (state == PARSE_DEVICE)
+		special = file_list_handle_spec(files, filename);
+
+	if (!special && state != PARSE_FLAGS) {
 		pr_err("Missing ')'\n");
 		return -EINVAL;
 	}
@@ -124,7 +149,7 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		partstr++;
 	*endstr = partstr;
 
-	return file_list_add_entry(files, name, filename, flags);
+	return special ? 0 : file_list_add_entry(files, name, filename, flags);
 }
 
 static const char *flags_to_str(int flags)
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index e0110296f87b..6e5fb6f4f5a5 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -12,6 +12,7 @@
 #include <of.h>
 #include <linux/nvmem-consumer.h>
 #include <linux/nvmem-provider.h>
+#include <file-list.h>
 
 struct nvmem_device {
 	const char		*name;
@@ -52,6 +53,21 @@ void nvmem_devices_print(void)
 	}
 }
 
+unsigned file_list_add_nvmemdevs(struct file_list *files)
+{
+	struct nvmem_device *dev;
+	unsigned count = 0;
+	int err;
+
+	list_for_each_entry(dev, &nvmem_devs, node) {
+		err = file_list_add_cdev_entry(files, &dev->cdev, 0);
+		if (!err)
+			count++;
+	}
+
+	return count;
+}
+
 static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
 			       loff_t offset, unsigned long flags)
 {
diff --git a/include/block.h b/include/block.h
index da258f509b41..44037bd74c61 100644
--- a/include/block.h
+++ b/include/block.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 
 struct block_device;
+struct file_list;
 
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, sector_t block, blkcnt_t num_blocks);
@@ -51,11 +52,16 @@ static inline int block_flush(struct block_device *blk)
 
 #ifdef CONFIG_BLOCK
 struct block_device *cdev_get_block_device(const struct cdev *cdev);
+unsigned file_list_add_blockdevs(struct file_list *files);
 #else
 static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
 {
 	return NULL;
 }
+static inline unsigned file_list_add_blockdevs(struct file_list *files)
+{
+	return 0;
+}
 #endif
 
 static inline bool cdev_is_block_device(const struct cdev *cdev)
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 397c4c29dafd..f215851b3936 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -17,6 +17,7 @@ struct device_node;
 /* consumer cookie */
 struct nvmem_cell;
 struct nvmem_device;
+struct file_list;
 
 struct nvmem_cell_info {
 	const char		*name;
@@ -53,6 +54,8 @@ int nvmem_device_cell_write(struct nvmem_device *nvmem,
 
 void nvmem_devices_print(void);
 
+unsigned file_list_add_nvmemdevs(struct file_list *files);
+
 #else
 
 static inline struct nvmem_cell *nvmem_cell_get(struct device *dev,
@@ -128,6 +131,11 @@ static inline int nvmem_device_write(struct nvmem_device *nvmem,
 	return -EOPNOTSUPP;
 }
 
+static inline unsigned file_list_add_nvmemdevs(struct file_list *files)
+{
+	return 0;
+}
+
 #endif /* CONFIG_NVMEM */
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
-- 
2.39.2



