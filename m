Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJt-0005CI-GO
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id w4so8966754plz.1
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:43 -0800
Message-Id: <20190129065549.29161-14-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/19] fs: Share code between mem_write()/mem_read()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Rename memcpy_sz() to mem_copy() and move all of the identical code
from mem_write()/mem_read() there.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs-core.c | 46 ++++++++++++++++++++++++----------------------
 1 file changed, 24 insertions(+), 22 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 5dbb67b43..37c4bd0ad 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -528,12 +528,22 @@ void cdev_remove_loop(struct cdev *cdev)
 	free(cdev);
 }
 
-static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
+static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
+			resource_size_t count, resource_size_t offset,
+			unsigned long flags)
 {
+	ssize_t size;
+	int rwsize = flags & O_RWSIZE_MASK;
+
+	if (!dev || dev->num_resources < 1)
+		return -1;
+
+	count = size = min(count, resource_size(&dev->resource[0]) - offset);
+
 	/* no rwsize specification given. Do whatever memcpy likes best */
 	if (!rwsize) {
 		memcpy(dst, src, count);
-		return;
+		goto out;
 	}
 
 	rwsize = rwsize >> O_RWSIZE_SHIFT;
@@ -558,40 +568,32 @@ static void memcpy_sz(void *dst, const void *src, size_t count, int rwsize)
 		dst += rwsize;
 		src += rwsize;
 	}
+out:
+	return size;
 }
 
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 		 unsigned long flags)
 {
-	unsigned long size;
-	struct device_d *dev;
+	struct device_d *dev = cdev->dev;
 
-	if (!cdev->dev || cdev->dev->num_resources < 1)
+	if (!dev)
 		return -1;
-	dev = cdev->dev;
 
-	size = min((resource_size_t)count,
-			resource_size(&dev->resource[0]) -
-			(resource_size_t)offset);
-	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
-	return size;
+	return mem_copy(dev, buf, dev_get_mem_region(dev, 0) + offset,
+			count, offset, flags);
 }
 EXPORT_SYMBOL(mem_read);
 
-ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset,
-		  unsigned long flags)
+ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count,
+		  loff_t offset, unsigned long flags)
 {
-	unsigned long size;
-	struct device_d *dev;
+	struct device_d *dev = cdev->dev;
 
-	if (!cdev->dev || cdev->dev->num_resources < 1)
+	if (!dev)
 		return -1;
-	dev = cdev->dev;
 
-	size = min((resource_size_t)count,
-			resource_size(&dev->resource[0]) -
-			(resource_size_t)offset);
-	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
-	return size;
+	return mem_copy(dev, dev_get_mem_region(dev, 0) + offset, buf,
+			count, offset, flags);
 }
 EXPORT_SYMBOL(mem_write);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
