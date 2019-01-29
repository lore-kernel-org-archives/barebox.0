Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJy-0005GY-Bt
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id u6so8945859plm.8
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:46 -0800
Message-Id: <20190129065549.29161-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/19] fs: Introduce mem_read_nofail()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce mem_read_nofail() to allow memory reads of
unused/not-implmented memory addresses.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs-core.c  | 64 ++++++++++++++++++++++++++++++++++++++++++------
 include/driver.h |  2 ++
 2 files changed, 58 insertions(+), 8 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index b2f66578d..84234fd38 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -29,6 +29,7 @@
 #include <linux/mtd/mtd.h>
 #include <unistd.h>
 #include <fs.h>
+#include <abort.h>
 
 LIST_HEAD(cdev_list);
 
@@ -528,9 +529,39 @@ void cdev_remove_loop(struct cdev *cdev)
 	free(cdev);
 }
 
+static u64 mem_read_ptr(const void *ptr, int rwsize)
+{
+	switch (rwsize) {
+	case 1:
+		return *((u8 *)ptr);
+	case 2:
+		return *((u16 *)ptr);
+	case 4:
+		return *((u32 *)ptr);
+	case 8:
+		return *((u64 *)ptr);
+	}
+
+	BUG();
+	return 0;
+}
+
+static u64 mem_read_ptr_nofail(const void *ptr, int rwsize)
+{
+	u64 data;
+
+	data_abort_mask();
+	data = mem_read_ptr(ptr, rwsize);
+
+	if (data_abort_unmask())
+		return U64_MAX;
+
+	return data;
+}
+
 static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 			resource_size_t count, resource_size_t offset,
-			unsigned long flags)
+			unsigned long flags, bool nofail)
 {
 	ssize_t size;
 	int rwsize = flags & O_RWSIZE_MASK;
@@ -541,7 +572,7 @@ static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 	count = size = min(count, resource_size(&dev->resource[0]) - offset);
 
 	/* no rwsize specification given. Do whatever memcpy likes best */
-	if (!rwsize) {
+	if (!nofail && !rwsize) {
 		memcpy(dst, src, count);
 		goto out;
 	}
@@ -551,18 +582,22 @@ static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 	count = size = ALIGN_DOWN(count, rwsize);
 
 	while (count) {
+		const u64 data = nofail ?
+			mem_read_ptr_nofail(src, rwsize) :
+			mem_read_ptr(src, rwsize);
+
 		switch (rwsize) {
 		case 1:
-			*((u8 *)dst) = *((u8 *)src);
+			*((u8 *)dst) = data;
 			break;
 		case 2:
-			*((u16 *)dst) = *((u16 *)src);
+			*((u16 *)dst) = data;
 			break;
 		case 4:
-			*((u32  *)dst) = *((u32  *)src);
+			*((u32  *)dst) = data;
 			break;
 		case 8:
-			*((u64  *)dst) = *((u64  *)src);
+			*((u64  *)dst) = data;
 			break;
 		}
 		dst += rwsize;
@@ -573,6 +608,19 @@ out:
 	return size;
 }
 
+ssize_t mem_read_nofail(struct cdev *cdev, void *buf, size_t count,
+			loff_t offset, unsigned long flags)
+{
+	struct device_d *dev = cdev->dev;
+
+	if (!dev)
+		return -1;
+
+	return mem_copy(dev, buf, dev_get_mem_region(dev, 0) + offset,
+			count, offset, flags, true);
+}
+EXPORT_SYMBOL(mem_read_nofail);
+
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 		 unsigned long flags)
 {
@@ -582,7 +630,7 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 		return -1;
 
 	return mem_copy(dev, buf, dev_get_mem_region(dev, 0) + offset,
-			count, offset, flags);
+			count, offset, flags, false);
 }
 EXPORT_SYMBOL(mem_read);
 
@@ -595,6 +643,6 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count,
 		return -1;
 
 	return mem_copy(dev, dev_get_mem_region(dev, 0) + offset, buf,
-			count, offset, flags);
+			count, offset, flags, false);
 }
 EXPORT_SYMBOL(mem_write);
diff --git a/include/driver.h b/include/driver.h
index 2db1cf1a8..270b3805d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -350,6 +350,8 @@ struct driver_d *get_driver_by_name(const char *name);
 struct cdev;
 
 /* These are used by drivers which work with direct memory accesses */
+ssize_t mem_read_nofail(struct cdev *cdev, void *buf, size_t count,
+			loff_t offset, unsigned long flags);
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int mem_memmap(struct cdev *cdev, void **map, int flags);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
