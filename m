Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021U-Qt
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:38 +0200
Message-Id: <20180403074851.5411-7-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/19] fs: Move mem_write/mem_read to devfs-core
To: Barebox List <barebox@lists.infradead.org>

fs.c is already heavily filled with code. Move mem_write/mem_read
to devfs-core where it fits better.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 68 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/fs.c         | 66 -------------------------------------------------------
 2 files changed, 68 insertions(+), 66 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index d06a534b57..6b5e6da6a8 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -513,3 +513,71 @@ void cdev_remove_loop(struct cdev *cdev)
 	free(cdev->name);
 	free(cdev);
 }
+
+static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
+{
+	/* no rwsize specification given. Do whatever memcpy likes best */
+	if (!rwsize) {
+		memcpy(dst, src, count);
+		return;
+	}
+
+	rwsize = rwsize >> O_RWSIZE_SHIFT;
+
+	count /= rwsize;
+
+	while (count-- > 0) {
+		switch (rwsize) {
+		case 1:
+			*((u8 *)dst) = *((u8 *)src);
+			break;
+		case 2:
+			*((u16 *)dst) = *((u16 *)src);
+			break;
+		case 4:
+			*((u32  *)dst) = *((u32  *)src);
+			break;
+		case 8:
+			*((u64  *)dst) = *((u64  *)src);
+			break;
+		}
+		dst += rwsize;
+		src += rwsize;
+	}
+}
+
+ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
+		 unsigned long flags)
+{
+	unsigned long size;
+	struct device_d *dev;
+
+	if (!cdev->dev || cdev->dev->num_resources < 1)
+		return -1;
+	dev = cdev->dev;
+
+	size = min((resource_size_t)count,
+			resource_size(&dev->resource[0]) -
+			(resource_size_t)offset);
+	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
+	return size;
+}
+EXPORT_SYMBOL(mem_read);
+
+ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset,
+		  unsigned long flags)
+{
+	unsigned long size;
+	struct device_d *dev;
+
+	if (!cdev->dev || cdev->dev->num_resources < 1)
+		return -1;
+	dev = cdev->dev;
+
+	size = min((resource_size_t)count,
+			resource_size(&dev->resource[0]) -
+			(resource_size_t)offset);
+	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
+	return size;
+}
+EXPORT_SYMBOL(mem_write);
diff --git a/fs/fs.c b/fs/fs.c
index 5135112c8b..ca4fe70e15 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1739,72 +1739,6 @@ out:
 }
 EXPORT_SYMBOL(rmdir);
 
-static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
-{
-	/* no rwsize specification given. Do whatever memcpy likes best */
-	if (!rwsize) {
-		memcpy(dst, src, count);
-		return;
-	}
-
-	rwsize = rwsize >> O_RWSIZE_SHIFT;
-
-	count /= rwsize;
-
-	while (count-- > 0) {
-		switch (rwsize) {
-		case 1:
-			*((u8 *)dst) = *((u8 *)src);
-			break;
-		case 2:
-			*((u16 *)dst) = *((u16 *)src);
-			break;
-		case 4:
-			*((u32  *)dst) = *((u32  *)src);
-			break;
-		case 8:
-			*((u64  *)dst) = *((u64  *)src);
-			break;
-		}
-		dst += rwsize;
-		src += rwsize;
-	}
-}
-
-ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
-{
-	ulong size;
-	struct device_d *dev;
-
-	if (!cdev->dev || cdev->dev->num_resources < 1)
-		return -1;
-	dev = cdev->dev;
-
-	size = min((resource_size_t)count,
-			resource_size(&dev->resource[0]) -
-			(resource_size_t)offset);
-	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
-	return size;
-}
-EXPORT_SYMBOL(mem_read);
-
-ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
-{
-	ulong size;
-	struct device_d *dev;
-
-	if (!cdev->dev || cdev->dev->num_resources < 1)
-		return -1;
-	dev = cdev->dev;
-
-	size = min((resource_size_t)count,
-			resource_size(&dev->resource[0]) -
-			(resource_size_t)offset);
-	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
-	return size;
-}
-EXPORT_SYMBOL(mem_write);
-
 /*
  * cdev_get_mount_path - return the path a cdev is mounted on
  *
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
