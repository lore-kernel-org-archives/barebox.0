Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC8-0005H6-9c
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:21 +0200
Message-Id: <20170331053323.17821-13-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] of: partitions: flag partitions from a partition table
To: Barebox List <barebox@lists.infradead.org>

We are going to call the of_partition_fixup for regular block
devices like MMC/SD aswell. Add a flag to partitions indicating
they are instanciated from a on-disk partition table so that they
won't be added as device tree partitions during fixup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c    | 2 ++
 drivers/of/partition.c | 9 +++++++--
 include/driver.h       | 1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 69a2b1fefb..574b31fbbe 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -63,6 +63,8 @@ static int register_one_partition(struct block_device *blk,
 		goto out;
 	}
 
+	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
+
 	cdev->dos_partition_type = part->dos_partition_type;
 	strcpy(cdev->partuuid, part->partuuid);
 
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 2e2ba35e87..f180f33c1a 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -140,6 +140,8 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 		return -EINVAL;
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
+		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+			continue;
 		n_parts++;
 	}
 
@@ -191,11 +193,14 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
 		int na, ns, len = 0;
-		char *name = basprintf("partition@%0llx",
-					 partcdev->offset);
+		char *name;
 		void *p;
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
+		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+			continue;
+
+		name = basprintf("partition@%0llx", partcdev->offset);
 		if (!name)
 			return -ENOMEM;
 
diff --git a/include/driver.h b/include/driver.h
index 2af66fe345..52e06f7d62 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -484,6 +484,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1 << 3)
+#define DEVFS_PARTITION_FROM_TABLE	(1 << 4)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
