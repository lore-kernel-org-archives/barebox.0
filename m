Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x0-UZ
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:08 +0100
Message-Id: <20180209094316.8523-2-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] ubiformat: Allow to ubiformat with a buffer given
To: Barebox List <barebox@lists.infradead.org>

So far ubiformat can only handle files. Make it possible to pass
a buffer into ubiformat.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c  | 55 +++++++++++++++++++++++++++++++++++------------------
 include/ubiformat.h |  7 +++++++
 2 files changed, 43 insertions(+), 19 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index f728119b9a..9fe1c7c501 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -187,16 +187,22 @@ static int mark_bad(struct ubiformat_args *args, struct mtd_info *mtd,
 static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
-	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
+	int fd = 0, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
 	off_t st_size;
 	char *buf = NULL;
 	uint64_t lastprint = 0;
+	const void *inbuf = NULL;
 
 	eb_cnt = mtd_num_pebs(mtd);
 
-	fd = open_file(args->image, &st_size);
-	if (fd < 0)
-		return fd;
+	if (args->image) {
+		fd = open_file(args->image, &st_size);
+		if (fd < 0)
+			return fd;
+	} else {
+		inbuf = args->image_buf;
+		st_size = args->image_size;
+	}
 
 	buf = malloc(mtd->erasesize);
 	if (!buf) {
@@ -207,20 +213,20 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 	img_ebs = st_size / mtd->erasesize;
 
 	if (img_ebs > si->good_cnt) {
-		sys_errmsg("file \"%s\" is too large (%lld bytes)",
-			   args->image, (long long)st_size);
+		sys_errmsg("image is too large (%lld bytes)",
+			   (long long)st_size);
 		goto out_close;
 	}
 
 	if (st_size % mtd->erasesize) {
-		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
+		sys_errmsg("image (size %lld bytes) is not multiple of "
 			   "eraseblock size (%d bytes)",
-			   args->image, (long long)st_size, mtd->erasesize);
+			   (long long)st_size, mtd->erasesize);
 		goto out_close;
 	}
 
 	if (st_size == 0) {
-		sys_errmsg("file \"%s\" has size 0 bytes", args->image);
+		sys_errmsg("image has size 0 bytes");
 		goto out_close;
 	}
 
@@ -260,11 +266,16 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 			continue;
 		}
 
-		err = read_full(fd, buf, mtd->erasesize);
-		if (err < 0) {
-			sys_errmsg("failed to read eraseblock %d from \"%s\"",
-				   written_ebs, args->image);
-			goto out_close;
+		if (args->image) {
+			err = read_full(fd, buf, mtd->erasesize);
+			if (err < 0) {
+				sys_errmsg("failed to read eraseblock %d from image",
+					   written_ebs);
+				goto out_close;
+			}
+		} else {
+			memcpy(buf, inbuf, mtd->erasesize);
+			inbuf += mtd->erasesize;
 		}
 
 		if (args->override_ec)
@@ -280,8 +291,8 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 
 		err = change_ech((struct ubi_ec_hdr *)buf, ui->image_seq, ec);
 		if (err) {
-			errmsg("bad EC header at eraseblock %d of \"%s\"",
-			       written_ebs, args->image);
+			errmsg("bad EC header at eraseblock %d of image",
+			       written_ebs);
 			goto out_close;
 		}
 
@@ -317,7 +328,8 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 
 out_close:
 	free(buf);
-	close(fd);
+	if (args->image)
+		close(fd);
 	return ret;
 }
 
@@ -454,6 +466,11 @@ out_free:
 	return -1;
 }
 
+static bool ubiformat_has_image(struct ubiformat_args *args)
+{
+	return args->image || args->image_buf;
+}
+
 int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 {
 	int err, verbose, eb_cnt;
@@ -555,7 +572,7 @@ int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 		goto out_free;
 	}
 
-	if (si->good_cnt < 2 && (!args->novtbl || args->image)) {
+	if (si->good_cnt < 2 && (!args->novtbl || ubiformat_has_image(args))) {
 		errmsg("too few non-bad eraseblocks (%d) on %s",
 		       si->good_cnt, mtd->name);
 		err = -EINVAL;
@@ -654,7 +671,7 @@ int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 		}
 	}
 
-	if (args->image) {
+	if (ubiformat_has_image(args)) {
 		err = flash_image(args, mtd, &ui, si);
 		if (err < 0)
 			goto out_free;
diff --git a/include/ubiformat.h b/include/ubiformat.h
index 8305a853c7..8a7a16ac18 100644
--- a/include/ubiformat.h
+++ b/include/ubiformat.h
@@ -15,7 +15,14 @@ struct ubiformat_args {
 	int ubi_ver;
 	uint32_t image_seq;
 	long long ec;
+
+	/*
+	 * Either set image if you have a file or set image_buf / image_size
+	 * if you have a buffer.
+	 */
 	const char *image;
+	const void *image_buf;
+	loff_t image_size;
 };
 
 int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
