Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yxo-00070u-Gd
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 11:16:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2020 12:16:38 +0100
Message-Id: <20200214111641.6350-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] fs: Introduce discard_range()
To: Barebox List <barebox@lists.infradead.org>

discard_range() is a way to tell the lower layers that we are no longer
interested in a data range of a file, so that the lower layers can
discard the underlying data if desired.

This is mainly designed to bypass the deficiencies of our block layer.
We cache the block data in chunks of multiple KiB (16 currently) if
we fall into the block layer with write requests smaller than that
we have to read/modify/write a chunk. With the help of discard_range()
code writing files to a raw block device can now discard the range the
file will be written to. The block layer then no longer has to read
the chunks first that are inside the discard range.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 25 +++++++++++++++++++++++++
 include/fs.h |  3 +++
 2 files changed, 28 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 12faaebc27..e00bbcd223 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -497,6 +497,31 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 }
 EXPORT_SYMBOL(protect);
 
+int discard_range(int fd, loff_t count, loff_t offset)
+{
+	struct fs_driver_d *fsdrv;
+	FILE *f = fd_to_file(fd);
+	int ret;
+
+	if (IS_ERR(f))
+		return -errno;
+	if (offset >= f->size)
+		return 0;
+	if (count > f->size - offset)
+		count = f->size - offset;
+
+	fsdrv = f->fsdev->driver;
+	if (fsdrv->discard_range)
+		ret = fsdrv->discard_range(&f->fsdev->dev, f, count, offset);
+	else
+		ret = -ENOSYS;
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
+}
+
 int protect_file(const char *file, int prot)
 {
 	int fd, ret;
diff --git a/include/fs.h b/include/fs.h
index 38debfc41b..d9684c82b1 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -60,6 +60,8 @@ struct fs_driver_d {
 			loff_t offset);
 	int (*protect)(struct device_d *dev, FILE *f, size_t count,
 			loff_t offset, int prot);
+	int (*discard_range)(struct device_d *dev, FILE *f, loff_t count,
+			loff_t offset);
 
 	int (*memmap)(struct device_d *dev, FILE *f, void **map, int flags);
 
@@ -127,6 +129,7 @@ int umount_by_cdev(struct cdev *cdev);
 #define ERASE_SIZE_ALL	((loff_t) - 1)
 int erase(int fd, loff_t count, loff_t offset);
 int protect(int fd, size_t count, loff_t offset, int prot);
+int discard_range(int fd, loff_t count, loff_t offset);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
