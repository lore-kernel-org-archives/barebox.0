Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifksb-0003qU-Mz
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 13:21:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Dec 2019 14:20:53 +0100
Message-Id: <20191213132055.7461-3-s.hauer@pengutronix.de>
In-Reply-To: <20191213132055.7461-1-s.hauer@pengutronix.de>
References: <20191213132055.7461-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] cdev: Add discard_range hook
To: Barebox List <barebox@lists.infradead.org>

To pass though discard_range() to the underlying drivers add a
discard_range hook to struct cdev_operations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c       | 21 +++++++++++++++++++++
 include/driver.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index d088c1a66c..e1893d1bd0 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -94,6 +94,26 @@ static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t of
 	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
 }
 
+static int devfs_discard_range(struct device_d *dev, FILE *f, loff_t count,
+			       loff_t offset)
+{
+	struct cdev *cdev = f->priv;
+
+	if (!cdev->ops->discard_range)
+		return -ENOSYS;
+
+	if (cdev->flags & DEVFS_PARTITION_READONLY)
+		return -EPERM;
+
+	if (offset >= cdev->size)
+		return 0;
+
+	if (count + offset > cdev->size)
+		count = cdev->size - offset;
+
+	return cdev->ops->discard_range(cdev, count, offset + cdev->offset);
+}
+
 static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 {
 	struct cdev *cdev = f->priv;
@@ -329,6 +349,7 @@ static struct fs_driver_d devfs_driver = {
 	.truncate  = devfs_truncate,
 	.erase     = devfs_erase,
 	.protect   = devfs_protect,
+	.discard_range = devfs_discard_range,
 	.memmap    = devfs_memmap,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
diff --git a/include/driver.h b/include/driver.h
index ad59ce90c3..f379b0cc73 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -439,6 +439,7 @@ struct cdev_operations {
 	int (*flush)(struct cdev*);
 	int (*erase)(struct cdev*, loff_t count, loff_t offset);
 	int (*protect)(struct cdev*, size_t count, loff_t offset, int prot);
+	int (*discard_range)(struct cdev*, loff_t count, loff_t offset);
 	int (*memmap)(struct cdev*, void **map, int flags);
 	int (*truncate)(struct cdev*, size_t size);
 };
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
