Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUp-0001KI-Jx
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:34 +0100
Message-Id: <1392287135-445-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] mtd: register mtd partitions as real mtd devices
To: barebox@lists.infradead.org

So far mtd partitions were mtd devices, but these were not registered.
This patch changes this. mtd partitions are now registered like real
mtd devices. This makes them part of the device hierarchy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c |  9 +++++++++
 fs/devfs-core.c         | 30 ++++++++++++++----------------
 2 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 450f281..ed3dfa0 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -125,6 +125,11 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t si
 	part->master_offset = offset;
 	part->master = mtd;
 
+	if (!strncmp(mtd->cdev.name, name, strlen(mtd->cdev.name)))
+		part->cdev.partname = xstrdup(name + strlen(mtd->cdev.name) + 1);
+
+	add_mtd_device(part, part->name, DEVICE_ID_SINGLE);
+
 	return part;
 }
 
@@ -133,6 +138,10 @@ int mtd_del_partition(struct mtd_info *part)
 	if (!part->master)
 		return -EINVAL;
 
+	del_mtd_device(part);
+
+	free(part->cdev.partname);
+	free(part->name);
 	free(part);
 
 	return 0;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 44f0169..bd6d482 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -276,6 +276,15 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset, loff_t size
 	if (offset + size > cdev->size)
 		return ERR_PTR(-EINVAL);
 
+	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD) && cdev->mtd) {
+		struct mtd_info *mtd;
+
+		mtd = mtd_add_partition(cdev->mtd, offset, size, flags, name);
+		if (IS_ERR(mtd))
+			return (void *)mtd;
+		return 0;
+	}
+
 	new = xzalloc(sizeof (*new));
 	new->name = strdup(name);
 	if (!strncmp(devname, name, strlen(devname)))
@@ -287,17 +296,6 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset, loff_t size
 	new->dev = cdev->dev;
 	new->flags = flags | DEVFS_IS_PARTITION;
 
-#ifdef CONFIG_PARTITION_NEED_MTD
-	if (cdev->mtd) {
-		new->mtd = mtd_add_partition(cdev->mtd, offset, size, flags, name);
-		if (IS_ERR(new->mtd)) {
-			int ret = PTR_ERR(new->mtd);
-			free(new);
-			return ERR_PTR(ret);
-		}
-	}
-#endif
-
 	devfs_create(new);
 
 	return new;
@@ -312,16 +310,16 @@ int devfs_del_partition(const char *name)
 	if (!cdev)
 		return -ENOENT;
 
+	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD) && cdev->mtd) {
+		ret = mtd_del_partition(cdev->mtd);
+		return ret;
+	}
+
 	if (!(cdev->flags & DEVFS_IS_PARTITION))
 		return -EINVAL;
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
 
-#ifdef CONFIG_PARTITION_NEED_MTD
-	if (cdev->mtd)
-		mtd_del_partition(cdev->mtd);
-#endif
-
 	ret = devfs_remove(cdev);
 	if (ret)
 		return ret;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
