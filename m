Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm778-0007WR-NA
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:14:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id y1so245602plp.9
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:37 -0800
Message-Id: <20190123011338.32517-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190123011338.32517-1-andrew.smirnov@gmail.com>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] fs: Add support for files larger than MAX_LFS_FILESIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 64-bit platforms /dev/mem exceeds the size supported by loff_t and
needs special treatment within the rest of FS API. Specifically
lseek() needs to be modified to make sure it does the right thing.

Prievious attempt at fixing this issue by using IS_ERR_VALUE()

e10efc5080 ("fs: fix memory access via /dev/mem for MIPS64")

doesn't really work 100% on 64-bit platforms, becuase it still leaves
out a number of perfectly valid offsets (e.g. "md 0xffffffffffffff00"
doesn't work) . Moreso it breaks lseek() on 32-bit platforms, since
IS_ERR_VALUE will retrurn true for any offset that is >= (unsigned
long) -MAX_ERRNO.

In order to fix this issue on both 32 and 64 bit platforms, introduce
DEVFS_UNBOUNDED flag that cdevs can use to denote that they span all
64-bit address space and effectively have not limits. To propagate
that info to FS layer, add "unbounded" boolean to FILE. As a last step
modify lseek() to be aware of that field and do the right checks in
that case.

Note, that since loff_t has no problem covering all of address space
on 32-bit platforms, DEVFS_UNBOUNDED is defined to expand into 0 and
not be settable there.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/misc/mem.c |  1 +
 fs/devfs.c         |  2 ++
 fs/fs.c            | 29 +++++++++++++++++++++++++----
 include/driver.h   |  1 +
 include/fs.h       |  1 +
 5 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index d829af724..b27865b9e 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -21,6 +21,7 @@ static int mem_probe(struct device_d *dev)
 	cdev = xzalloc(sizeof (*cdev));
 	dev->priv = cdev;
 
+	cdev->flags = DEVFS_UNBOUNDED;
 	cdev->name = (char*)dev->resource[0].name;
 	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
 			   S64_MAX);
diff --git a/fs/devfs.c b/fs/devfs.c
index 81ae2c25a..68a5b7f23 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -120,6 +120,8 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	struct cdev *cdev = node->cdev;
 	int ret;
 
+
+	f->unbounded = cdev->flags & DEVFS_UNBOUNDED;
 	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
 	f->priv = cdev;
diff --git a/fs/fs.c b/fs/fs.c
index 9372b9981..48ca382df 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -422,20 +422,41 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	switch (whence) {
 	case SEEK_SET:
 		pos = offset;
+		if (unlikely(f->unbounded))
+			break;
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-		if (IS_ERR_VALUE(offset))
+		if (offset < 0)
 			goto out;
 		break;
 	case SEEK_CUR:
 		pos = f->pos + offset;
+		if (unlikely(f->unbounded)) {
+			/*
+			 * Check that we won't wrap around when
+			 * seeking
+			 */
+			u64 p, o;
+
+			p = f->pos;
+			o = offset;
+
+			if (p > U64_MAX - o)
+				goto out;
+			break;
+		}
+
 		if (f->size != FILE_SIZE_STREAM && pos > f->size)
 			goto out;
 		break;
 	case SEEK_END:
-		pos = f->size + offset;
-		if (offset > 0)
-			goto out;
+		if (unlikely(f->unbounded)) {
+			pos = U64_MAX - (u64)offset;
+		} else {
+			pos = f->size + offset;
+			if (offset > 0)
+				goto out;
+		}
 		break;
 	default:
 		goto out;
diff --git a/include/driver.h b/include/driver.h
index 3d9970df5..39bce0414 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -501,6 +501,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1 << 3)
 #define DEVFS_PARTITION_FROM_TABLE	(1 << 4)
+#define DEVFS_UNBOUNDED			(IS_ENABLED(CONFIG_CPU_64) << 5)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
diff --git a/include/fs.h b/include/fs.h
index f1514afa9..5d1510838 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -31,6 +31,7 @@ typedef struct filep {
 	/* private fields. Mapping between FILE and filedescriptor number     */
 	int no;
 	char in_use;
+	bool unbounded;
 
 	struct inode *f_inode;
 	struct dentry *dentry;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
