Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw7zK-00011a-Fj
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 13:29:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1bw7yx-00048n-9D
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <mgr@pengutronix.de>) id 1bw7yx-0001VW-1n
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Oct 2016 15:29:20 +0200
Message-Id: <20161017132923.31834-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/4] partitions: add DEVFS_PARTITION_IN_PT flag
To: barebox@lists.infradead.org

This flag is used to represent the current status of the partition. When
it is set, the current partition layout is also available in the
partition table of the device. We use it after the partition table was
parsed.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 common/partitions.c | 2 +-
 include/driver.h    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/partitions.c b/common/partitions.c
index 69a2b1f..62ffaef 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -57,7 +57,7 @@ static int register_one_partition(struct block_device *blk,
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
 	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
+				start, size, DEVFS_PARTITION_IN_PT, partition_name);
 	if (IS_ERR(cdev)) {
 		ret = PTR_ERR(cdev);
 		goto out;
diff --git a/include/driver.h b/include/driver.h
index 80aa8d8..4ff2f77 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -482,6 +482,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_PARTITION		(1 << 2)
 #define DEVFS_IS_CHARACTER_DEV		(1 << 3)
+#define DEVFS_PARTITION_IN_PT		(1 << 4)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
