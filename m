Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjbrA-0006QW-4I
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:55:03 +0200
Message-Id: <1340740503-7003-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] partitions: Make 64bit capable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c |   29 -----------------------------
 fs/devfs-core.c     |    2 +-
 include/driver.h    |    2 +-
 include/partition.h |    2 +-
 4 files changed, 3 insertions(+), 32 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 74b4f12..a8c9625 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -43,23 +43,6 @@ struct partition_desc {
 };
 
 /**
- * Reject values which cannot be used in Barebox
- * @param val Value to be check
- * @return 0 if value can be used in Barebox, -EINVAL if not
- *
- * @note this routine can be removed when Barebox uses file offsets larger
- * than 32 bit
- */
-static int check_offset_value(uint64_t val)
-{
-#if 1	/* until Barebox can handle 64 bit offsets */
-	if (val > (__INT_MAX__ / SECTOR_SIZE))
-		return -EINVAL;
-#endif
-	return 0;
-}
-
-/**
  * Guess the size of the disk, based on the partition table entries
  * @param dev device to create partitions for
  * @param table partition table
@@ -76,12 +59,6 @@ static int disk_guess_size(struct device_d *dev, struct partition_entry *table)
 			size += get_unaligned(&table[i].partition_size);
 		}
 	}
-	/* limit disk sector counts we can't handle due to 32 bit limits */
-	if (check_offset_value(size) != 0) {
-		dev_warn(dev, "Warning: Sector count limited due to 31 bit"
-				"contraints\n");
-		size = __INT_MAX__ / SECTOR_SIZE;
-	}
 
 	return (int)size;
 }
@@ -126,12 +103,6 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
 		pentry.first_sec = get_unaligned(&table[i].partition_start);
 		pentry.size = get_unaligned(&table[i].partition_size);
 
-		/* do we have to ignore this partition due to limitations? */
-		if (check_offset_value(pentry.first_sec) != 0)
-			continue;
-		if (check_offset_value(pentry.size) != 0)
-			continue;
-
 		if (pentry.first_sec != 0) {
 			pd->parts[pd->used_entries].first_sec = pentry.first_sec;
 			pd->parts[pd->used_entries].size = pentry.size;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index b66965e..cdb8f79 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -227,7 +227,7 @@ int devfs_remove(struct cdev *cdev)
 	return 0;
 }
 
-int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
+int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name)
 {
 	struct cdev *cdev, *new;
diff --git a/include/driver.h b/include/driver.h
index 0b6d1b3..eacd8e6 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -418,7 +418,7 @@ int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
 #define DEVFS_PARTITION_READONLY	(1 << 1)
 #define DEVFS_IS_PARTITION		(1 << 2)
 
-int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
+int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
diff --git a/include/partition.h b/include/partition.h
index 0827bb4..8ad7490 100644
--- a/include/partition.h
+++ b/include/partition.h
@@ -8,7 +8,7 @@ struct partition {
 
 	int flags;
 
-        unsigned long offset;
+        loff_t offset;
 
         struct device_d *physdev;
         struct device_d device;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
