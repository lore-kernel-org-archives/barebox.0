Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gV9jf-0006WR-23
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 06:35:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gV9jT-0000t3-JB
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:27 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gV9jT-0002Gw-Bb
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Dec 2018 07:34:35 +0100
Message-Id: <20181207063433.7623-3-a.fatoum@pengutronix.de>
In-Reply-To: <20181207063433.7623-1-a.fatoum@pengutronix.de>
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] of: partitions: make macro name more generic
To: barebox@lists.infradead.org

DEVFS_PARTITION_FROM_TABLE's only effect at the moment is to disable
device tree fixups. Rename it accordingly, so it looks less out-of-place
when using it in the next commit to implement the no-fixup property.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c    | 2 +-
 drivers/of/partition.c | 4 ++--
 include/driver.h       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 574b31fbbe9b..cb4e0c8c133e 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -63,7 +63,7 @@ static int register_one_partition(struct block_device *blk,
 		goto out;
 	}
 
-	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
+	cdev->flags |= DEVFS_PARTITION_NO_FIXUP;
 
 	cdev->dos_partition_type = part->dos_partition_type;
 	strcpy(cdev->partuuid, part->partuuid);
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 257100112108..450dda17dfd7 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -141,7 +141,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 		return -EINVAL;
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
-		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+		if (partcdev->flags & DEVFS_PARTITION_NO_FIXUP)
 			continue;
 		n_parts++;
 	}
@@ -201,7 +201,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 		loff_t partoffset;
 
-		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
+		if (partcdev->flags & DEVFS_PARTITION_NO_FIXUP)
 			continue;
 
 		if (partcdev->mtd)
diff --git a/include/driver.h b/include/driver.h
index d509031f4980..ba2dc209c239 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -490,7 +490,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
-#define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
+#define DEVFS_PARTITION_NO_FIXUP	(1U << 4)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
