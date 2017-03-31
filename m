Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpCG-0005Hq-1m
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:19 +0200
Message-Id: <20170331053323.17821-11-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] fs: devfs-core: replace DEVFS_PARTITION_FIXED flag with
 pointer to the master cdev
To: Barebox List <barebox@lists.infradead.org>

Instead of having a flag indicating a cdev is a partition on
some master cdev, just add a master pointer to the cdev, so
that we can also find out who the master is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c   | 2 +-
 drivers/mtd/partition.c | 1 +
 fs/devfs-core.c         | 6 +++---
 include/driver.h        | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 5867fe45d0..83260990af 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -221,7 +221,7 @@ int unregister_device(struct device_d *old_dev)
 	}
 
 	list_for_each_entry_safe(cdev, ct, &old_dev->cdevs, devices_list) {
-		if (cdev->flags & DEVFS_IS_PARTITION) {
+		if (cdev->master) {
 			dev_dbg(old_dev, "unregister part %s\n", cdev->name);
 			devfs_del_partition(cdev->name);
 		}
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 745834384f..2bdbef9227 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -226,6 +226,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		goto err;
 
 	part->cdev.offset = offset;
+	part->cdev.master = &part->master->cdev;
 
 	return part;
 err:
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 7b3754ed8e..382606f1cf 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -37,7 +37,7 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 	len = strlen(instr);
 
 	list_for_each_entry(cdev, &cdev_list, list) {
-		if (cdev->flags & DEVFS_IS_PARTITION &&
+		if (cdev->master &&
 		    !strncmp(instr, cdev->name, len)) {
 			string_list_add_asprintf(sl, "%s ", cdev->name);
 		}
@@ -326,7 +326,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	new->offset = cdev->offset + offset;
 
 	new->dev = cdev->dev;
-	new->flags = partinfo->flags | DEVFS_IS_PARTITION;
+	new->master = cdev;
 
 	list_add_tail(&new->partition_entry, &cdev->partitions);
 
@@ -368,7 +368,7 @@ int devfs_del_partition(const char *name)
 		return ret;
 	}
 
-	if (!(cdev->flags & DEVFS_IS_PARTITION))
+	if (!cdev->master)
 		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
diff --git a/include/driver.h b/include/driver.h
index b7eaf290c4..2af66fe345 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -460,6 +460,7 @@ struct cdev {
 	struct cdev *link;
 	struct list_head link_entry, links;
 	struct list_head partition_entry, partitions;
+	struct cdev *master;
 };
 
 int devfs_create(struct cdev *);
@@ -482,7 +483,6 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
-#define DEVFS_IS_PARTITION		(1 << 2)
 #define DEVFS_IS_CHARACTER_DEV		(1 << 3)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
