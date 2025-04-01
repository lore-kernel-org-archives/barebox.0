Delivery-date: Tue, 01 Apr 2025 13:09:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUN-006y1a-0a
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUM-0004TO-6k
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:09:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MvSMQcau72uaR9v4FgH/9TzOIlcu5bFINalNnhKluGo=; b=tMk5T1qj1BpwfdGB/C/gcWT69o
	XodV6mBeyTYx3+jQUfLmkHYqzXg2ddX7uqheaoCS4KMTOCec7flET41kE4Lmz4z9/qgy1jZOwZmIW
	brFDwMWGwrtrVzuVzmugph1SNOC69NXST1q48eFqLyihYSnheMcJokFdcSVeuz7aelYp9XTJbQ5kq
	hhjnKBg3isskSkYCYGeAUt7HM8oDPD2wd+qBlEXiiXbi+XtjRRn/zlOwYNNjv6ms/HlaXa2zbdtfJ
	K3FdbVXeh/6gfHDmIWcSZUUELfkh2ADMo9+QM5Q0ZEQcFjBMQEY86Yrzz6S5SsT2Rhcu9+zF6bUCj
	o6TExi/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZTw-00000002jxY-1wAf;
	Tue, 01 Apr 2025 11:08:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQA-00000002igI-0TxD
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:04:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-0002XR-Up; Tue, 01 Apr 2025 13:04:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-002kdN-2R;
	Tue, 01 Apr 2025 13:04:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1z;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:48:00 +0200
Message-Id: <20250401104806.3959859-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_040442_370955_874C588F 
X-CRM114-Status: GOOD (  25.29  )
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
Subject: [PATCH 10/16] block: add get_rootarg block op into block_device_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The root argument from cdev generation only succeeds for partitions of
block devices anyway, so it makes sense to move the logic to the block
device support.

Further, the code can be simplified a bit by moving the MCI-specific
logic into the MCI core.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c         | 22 +++++++++++++++++
 common/bootm.c         |  1 +
 drivers/mci/mci-core.c | 45 ++++++++++++++++++++++++++++++---
 fs/fs.c                | 56 ------------------------------------------
 include/block.h        |  6 +++++
 include/driver.h       |  6 -----
 include/fs.h           |  1 -
 7 files changed, 70 insertions(+), 67 deletions(-)

diff --git a/common/block.c b/common/block.c
index 3ee33f2bf071..7066abc5f404 100644
--- a/common/block.c
+++ b/common/block.c
@@ -589,3 +589,25 @@ const char *blk_type_str(enum blk_type type)
 		return "unknown";
 	}
 }
+
+char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+{
+	const struct cdev *cdevm;
+	struct block_device *blk;
+	char *rootarg = NULL;
+
+	if (!partcdev)
+		return NULL;
+
+	cdevm = partcdev->master ?: partcdev;
+	blk = cdev_get_block_device(cdevm);
+	if (!blk)
+		return NULL;
+
+	if (blk->ops->get_rootarg)
+		rootarg = blk->ops->get_rootarg(blk, partcdev);
+	if (!rootarg && partcdev->partuuid[0] != 0)
+		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
+
+	return rootarg;
+}
diff --git a/common/bootm.c b/common/bootm.c
index 6b63987f0900..e781b48b0e7d 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -6,6 +6,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <memory.h>
+#include <block.h>
 #include <libfile.h>
 #include <image-fit.h>
 #include <globalvar.h>
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 947fe44c088f..aae63484a09b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -676,11 +676,8 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 
 	if (area_type == MMC_BLK_DATA_AREA_RPMB)
 		mci->rpmb_part = part;
-
-	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
+	else if (area_type == MMC_BLK_DATA_AREA_MAIN)
 		cdev_set_of_node(&part->blk.cdev, mci->host->hw_dev->of_node);
-		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
-	}
 
 	mci->nr_parts++;
 }
@@ -2530,10 +2527,50 @@ static void mci_parse_cid(struct mci *mci)
 	dev_add_param_uint32_fixed(dev, "cid_month", mci->cid.month, "%0u");
 }
 
+static bool cdev_partname_equal(const struct cdev *a,
+				const struct cdev *b)
+{
+	return a->partname && b->partname &&
+		!strcmp(a->partname, b->partname);
+}
+
+static char *mci_get_linux_mmcblkdev(struct block_device *blk,
+				     const struct cdev *partcdev)
+
+{
+	struct mci_part *mci_part = container_of(blk, struct mci_part, blk);
+	struct cdev *cdevm = partcdev->master, *cdev;
+	int id, partnum;
+
+	if (mci_part->area_type != MMC_BLK_DATA_AREA_MAIN)
+		return NULL;
+
+	id = of_alias_get_id(cdev_of_node(cdevm), "mmc");
+	if (id < 0)
+		return NULL;
+
+	partnum = 1; /* linux partitions are 1 based */
+	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
+
+		/*
+		 * Partname is not guaranteed but this partition cdev is listed
+		 * in the partitions list so we need to count it instead of
+		 * skipping it.
+		 */
+		if (cdev_partname_equal(partcdev, cdev))
+			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
+		partnum++;
+	}
+
+	return NULL;
+}
+
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
 	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
 	.erase = IS_ENABLED(CONFIG_MCI_ERASE) ? mci_sd_erase : NULL,
+	.get_rootarg = IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) ?
+		mci_get_linux_mmcblkdev : NULL,
 };
 
 static int mci_set_boot(struct param_d *param, void *priv)
diff --git a/fs/fs.c b/fs/fs.c
index 48a6e960e812..98e2b9b73663 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -95,8 +95,6 @@ void cdev_print(const struct cdev *cdev)
 			printf(" table-partition");
 		if (cdev->flags & DEVFS_PARTITION_FOR_FIXUP)
 			printf(" fixup");
-		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
-			printf(" mci-main-partition");
 		if (cdev->flags & DEVFS_IS_MBR_PARTITIONED)
 			printf(" mbr-partitioned");
 		if (cdev->flags & DEVFS_IS_GPT_PARTITIONED)
@@ -3060,60 +3058,6 @@ int popd(char *oldcwd)
 	return ret;
 }
 
-static bool cdev_partname_equal(const struct cdev *a,
-				const struct cdev *b)
-{
-	return a->partname && b->partname &&
-		!strcmp(a->partname, b->partname);
-}
-
-static char *get_linux_mmcblkdev(const struct cdev *root_cdev)
-{
-	struct cdev *cdevm = root_cdev->master, *cdev;
-	int id, partnum;
-
-	if (!IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG))
-		return NULL;
-	if (!cdevm || !cdev_is_mci_main_part_dev(cdevm))
-		return NULL;
-
-	id = of_alias_get_id(cdev_of_node(cdevm), "mmc");
-	if (id < 0)
-		return NULL;
-
-	partnum = 1; /* linux partitions are 1 based */
-	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
-
-		/*
-		 * Partname is not guaranteed but this partition cdev is listed
-		 * in the partitions list so we need to count it instead of
-		 * skipping it.
-		 */
-		if (cdev_partname_equal(root_cdev, cdev))
-			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
-		partnum++;
-	}
-
-	return NULL;
-}
-
-char *cdev_get_linux_rootarg(const struct cdev *cdev)
-{
-	char *str;
-
-	if (!cdev)
-		return NULL;
-
-	str = get_linux_mmcblkdev(cdev);
-	if (str)
-		return str;
-
-	if (cdev->partuuid[0] != 0)
-		return basprintf("root=PARTUUID=%s", cdev->partuuid);
-
-	return NULL;
-}
-
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
diff --git a/include/block.h b/include/block.h
index b57d99a3fc08..a992eba43191 100644
--- a/include/block.h
+++ b/include/block.h
@@ -14,6 +14,7 @@ struct block_device_ops {
 	int (*write)(struct block_device *, const void *buf, sector_t block, blkcnt_t num_blocks);
 	int (*erase)(struct block_device *blk, sector_t block, blkcnt_t num_blocks);
 	int (*flush)(struct block_device *);
+	char *(*get_rootarg)(struct block_device *blk, const struct cdev *partcdev);
 };
 
 struct chunk;
@@ -82,6 +83,7 @@ static inline int block_flush(struct block_device *blk)
 #ifdef CONFIG_BLOCK
 struct block_device *cdev_get_block_device(const struct cdev *cdev);
 unsigned file_list_add_blockdevs(struct file_list *files);
+char *cdev_get_linux_rootarg(const struct cdev *partcdev);
 #else
 static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
 {
@@ -91,6 +93,10 @@ static inline unsigned file_list_add_blockdevs(struct file_list *files)
 {
 	return 0;
 }
+static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+{
+	return NULL;
+}
 #endif
 
 static inline bool cdev_is_block_device(const struct cdev *cdev)
diff --git a/include/driver.h b/include/driver.h
index 60bcfc5e2f7d..c055e7b47b47 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -561,7 +561,6 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
-#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
 #define DEVFS_PARTITION_FROM_OF		(1U << 5)
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
 #define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
@@ -620,11 +619,6 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
 }
 #endif
 
-static inline bool cdev_is_mci_main_part_dev(struct cdev *cdev)
-{
-	return cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV;
-}
-
 #define DEVFS_PARTITION_APPEND		0
 
 /**
diff --git a/include/fs.h b/include/fs.h
index fafd91343b5c..bf927da4207e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -175,7 +175,6 @@ void mount_all(void);
 
 void fsdev_set_linux_rootarg(struct fs_device *fsdev, const char *str);
 char *path_get_linux_rootarg(const char *path);
-char *cdev_get_linux_rootarg(const struct cdev *cdev);
 
 static inline const char *devpath_to_name(const char *devpath)
 {
-- 
2.39.5



