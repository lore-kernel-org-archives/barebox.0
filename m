Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbT-0008Fz-U7
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:17 +0200
Message-Id: <20170331070346.26878-14-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/42] state: simplify direct backend
To: Barebox List <barebox@lists.infradead.org>

- drop support for regular files. This, if at all, is only useful for
  debugging. For the debugging case still a file of sufficient size
  can be created manually.
- make stridesize mandatory. Makes the code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 145 ++++-------------------------------------
 1 file changed, 14 insertions(+), 131 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 04d9d8f0a7..52f4aedee7 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -156,60 +156,6 @@ static int mtd_get_meminfo(const char *path, struct mtd_info_user *meminfo)
 	return ret;
 }
 
-#ifdef __BAREBOX__
-#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode) || S_ISCHR(s.st_mode))
-#define BLKGET_GIVES_SIZE(s) 0
-#else
-#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode))
-#define BLKGET_GIVES_SIZE(s) (S_ISBLK(s.st_mode))
-#endif
-#ifndef BLKGETSIZE64
-#define BLKGETSIZE64 -1
-#endif
-
-static int state_backend_storage_get_size(const char *path, size_t * out_size)
-{
-	struct mtd_info_user meminfo;
-	struct stat s;
-	int ret;
-
-	ret = stat(path, &s);
-	if (ret)
-		return -errno;
-
-	/*
-	 * under Linux, stat() gives the size only on regular files
-	 * under barebox, it works on char dev, too
-	 */
-	if (STAT_GIVES_SIZE(s)) {
-		*out_size = s.st_size;
-		return 0;
-	}
-
-	/* this works under Linux on block devs */
-	if (BLKGET_GIVES_SIZE(s)) {
-		int fd;
-
-		fd = open(path, O_RDONLY);
-		if (fd < 0)
-			return -errno;
-
-		ret = ioctl(fd, BLKGETSIZE64, out_size);
-		close(fd);
-		if (!ret)
-			return 0;
-	}
-
-	/* try mtd next */
-	ret = mtd_get_meminfo(path, &meminfo);
-	if (!ret) {
-		*out_size = meminfo.size;
-		return 0;
-	}
-
-	return ret;
-}
-
 /* Number of copies that should be allocated */
 const int desired_copies = 3;
 
@@ -292,41 +238,6 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	return 0;
 }
 
-static int state_storage_file_create(struct device_d *dev, const char *path,
-				     size_t fd_size)
-{
-	int fd;
-	uint8_t *buf;
-	int ret;
-
-	fd = open(path, O_RDWR | O_CREAT, 0600);
-	if (fd < 0) {
-		dev_err(dev, "Failed to open/create file '%s', %d\n", path,
-			-errno);
-		return -errno;
-	}
-
-	buf = xzalloc(fd_size);
-	if (!buf) {
-		ret = -ENOMEM;
-		goto out_close;
-	}
-
-	ret = write_full(fd, buf, fd_size);
-	if (ret < 0) {
-		dev_err(dev, "Failed to initialize empty file '%s', %d\n", path,
-			ret);
-		goto out_free;
-	}
-	ret = 0;
-
-out_free:
-	free(buf);
-out_close:
-	close(fd);
-	return ret;
-}
-
 /**
  * state_storage_file_buckets_init - Create buckets for a conventional file descriptor
  * @param storage Storage object
@@ -345,53 +256,25 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 					   size_t max_size, uint32_t stridesize)
 {
 	struct state_backend_storage_bucket *bucket;
-	size_t fd_size = 0;
-	int ret;
+	int ret, n;
 	off_t offset;
 	int nr_copies = 0;
 
-	ret = state_backend_storage_get_size(path, &fd_size);
-	if (ret) {
-		if (ret != -ENOENT) {
-			dev_err(storage->dev, "Failed to get the filesize of '%s', %d\n",
-				path, ret);
-			return ret;
-		}
-		if (!stridesize) {
-			dev_err(storage->dev, "File '%s' does not exist and no information about the needed size. Please specify stridesize\n",
-				path);
-			return ret;
-		}
-
-		if (max_size)
-			fd_size = min(dev_offset + stridesize * desired_copies,
-				      dev_offset + max_size);
-		else
-			fd_size = dev_offset + stridesize * desired_copies;
-		dev_info(storage->dev, "File '%s' does not exist, creating file of size %zd\n",
-			 path, fd_size);
-		ret = state_storage_file_create(storage->dev, path, fd_size);
-		if (ret) {
-			dev_info(storage->dev, "Failed to create file '%s', %d\n",
-				 path, ret);
-			return ret;
-		}
-	} else if (max_size) {
-		fd_size = min(fd_size, (size_t)dev_offset + max_size);
-	}
-
 	if (!stridesize) {
-		dev_warn(storage->dev, "WARNING, no stridesize given although we use a direct file write. Starting in degraded mode\n");
-		stridesize = fd_size;
+		dev_err(storage->dev, "stridesize unspecified\n");
+		return -EINVAL;
 	}
 
-	for (offset = dev_offset; offset < fd_size; offset += stridesize) {
-		size_t maxsize = min((size_t)stridesize,
-				     (size_t)(fd_size - offset));
+	if (max_size && max_size < desired_copies * stridesize) {
+		dev_err(storage->dev, "device is too small to hold %d copies\n", desired_copies);
+		return -EINVAL;
+	}
 
+	for (n = 0; n < desired_copies; n++) {
+		offset = dev_offset + n * stridesize;
 		ret = state_backend_bucket_direct_create(storage->dev, path,
 							 &bucket, offset,
-							 maxsize);
+							 stridesize);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to create direct bucket at '%s' offset %ld\n",
 				 path, offset);
@@ -407,16 +290,16 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++nr_copies;
-		if (nr_copies >= desired_copies)
-			return 0;
 	}
 
 	if (!nr_copies) {
 		dev_err(storage->dev, "Failed to initialize any state direct storage bucket\n");
 		return -EIO;
 	}
-	dev_warn(storage->dev, "Failed to initialize desired amount of direct buckets, only %d of %d succeeded\n",
-		 nr_copies, desired_copies);
+
+	if (nr_copies < desired_copies)
+		dev_warn(storage->dev, "Failed to initialize desired amount of direct buckets, only %d of %d succeeded\n",
+			nr_copies, desired_copies);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
