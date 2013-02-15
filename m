Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001Sl-0O
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:54 +0100
Message-Id: <1360915499-1659-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] libmtd: rename functions from mtd_* to libmtd_*
To: barebox@lists.infradead.org

The kernel nowadays has mtd_read/write and other functions. In
barebox we also have these functions, but with a different prototype,
namely they correspond to the libmtd userspace functions. Rename
these functions to libmtd_* to avoid name clashes with future mtd
updates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c |    8 ++++----
 include/mtd/libmtd.h |    8 ++++----
 lib/libmtd.c         |   14 +++++++-------
 lib/libscan.c        |    2 +-
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 3bb2c9a..f47502f 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -338,7 +338,7 @@ static int flash_image(const struct mtd_dev_info *mtd,
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
-		err = mtd_erase(mtd, args.node_fd, eb);
+		err = libmtd_erase(mtd, args.node_fd, eb);
 		if (err) {
 			if (!args.quiet)
 				printf("\n");
@@ -384,7 +384,7 @@ static int flash_image(const struct mtd_dev_info *mtd,
 
 		new_len = drop_ffs(mtd, buf, mtd->eb_size);
 
-		err = mtd_write(mtd, args.node_fd, eb, 0, buf, new_len);
+		err = libmtd_write(mtd, args.node_fd, eb, 0, buf, new_len);
 		if (err) {
 			sys_errmsg("cannot write eraseblock %d", eb);
 
@@ -453,7 +453,7 @@ static int format(const struct mtd_dev_info *mtd,
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
-		err = mtd_erase(mtd, args.node_fd, eb);
+		err = libmtd_erase(mtd, args.node_fd, eb);
 		if (err) {
 			if (!args.quiet)
 				printf("\n");
@@ -484,7 +484,7 @@ static int format(const struct mtd_dev_info *mtd,
 			printf(", write EC %lld\n", ec);
 		}
 
-		err = mtd_write(mtd, args.node_fd, eb, 0, hdr, write_size);
+		err = libmtd_write(mtd, args.node_fd, eb, 0, hdr, write_size);
 		if (err) {
 			if (!args.quiet && !args.verbose)
 				printf("\n");
diff --git a/include/mtd/libmtd.h b/include/mtd/libmtd.h
index e88a9a2..65c390a 100644
--- a/include/mtd/libmtd.h
+++ b/include/mtd/libmtd.h
@@ -69,7 +69,7 @@ struct mtd_dev_info
 int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd);
 
 /**
- * mtd_erase - erase an eraseblock.
+ * libmtd_erase - erase an eraseblock.
  * @desc: MTD library descriptor
  * @mtd: MTD device description object
  * @fd: MTD device node file descriptor
@@ -78,7 +78,7 @@ int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd);
  * This function erases eraseblock @eb of MTD device described by @fd. Returns
  * %0 in case of success and %-1 in case of failure.
  */
-int mtd_erase(const struct mtd_dev_info *mtd, int fd, int eb);
+int libmtd_erase(const struct mtd_dev_info *mtd, int fd, int eb);
 
 /**
  * mtd_torture - torture an eraseblock.
@@ -127,7 +127,7 @@ int mtd_mark_bad(const struct mtd_dev_info *mtd, int fd, int eb);
  * of the MTD device defined by @mtd and stores the read data at buffer @buf.
  * Returns %0 in case of success and %-1 in case of failure.
  */
-int mtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
+int libmtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
 	     void *buf, int len);
 
 /**
@@ -143,7 +143,7 @@ int mtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
  * of the MTD device defined by @mtd. Returns %0 in case of success and %-1 in
  * case of failure.
  */
-int mtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
+int libmtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
 	      void *buf, int len);
 
 #endif /* __LIBMTD_H__ */
diff --git a/lib/libmtd.c b/lib/libmtd.c
index 8c4152e..eecc760 100644
--- a/lib/libmtd.c
+++ b/lib/libmtd.c
@@ -56,7 +56,7 @@ static int mtd_valid_erase_block(const struct mtd_dev_info *mtd, int eb)
 	return 0;
 }
 
-int mtd_erase(const struct mtd_dev_info *mtd, int fd, int eb)
+int libmtd_erase(const struct mtd_dev_info *mtd, int fd, int eb)
 {
 	int ret;
 	struct erase_info_user ei;
@@ -107,12 +107,12 @@ int mtd_torture(const struct mtd_dev_info *mtd, int fd, int eb)
 	buf = xmalloc(mtd->eb_size);
 
 	for (i = 0; i < patt_count; i++) {
-		err = mtd_erase(mtd, fd, eb);
+		err = libmtd_erase(mtd, fd, eb);
 		if (err)
 			goto out;
 
 		/* Make sure the PEB contains only 0xFF bytes */
-		err = mtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
+		err = libmtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
 		if (err)
 			goto out;
 
@@ -125,12 +125,12 @@ int mtd_torture(const struct mtd_dev_info *mtd, int fd, int eb)
 
 		/* Write a pattern and check it */
 		memset(buf, patterns[i], mtd->eb_size);
-		err = mtd_write(mtd, fd, eb, 0, buf, mtd->eb_size);
+		err = libmtd_write(mtd, fd, eb, 0, buf, mtd->eb_size);
 		if (err)
 			goto out;
 
 		memset(buf, ~patterns[i], mtd->eb_size);
-		err = mtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
+		err = libmtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
 		if (err)
 			goto out;
 
@@ -191,7 +191,7 @@ int mtd_mark_bad(const struct mtd_dev_info *mtd, int fd, int eb)
 	return 0;
 }
 
-int mtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
+int libmtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
 	     void *buf, int len)
 {
 	int ret, rd = 0;
@@ -225,7 +225,7 @@ int mtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
 	return 0;
 }
 
-int mtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
+int libmtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
 	      void *buf, int len)
 {
 	int ret;
diff --git a/lib/libscan.c b/lib/libscan.c
index af55269..c59acfa 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -90,7 +90,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 			continue;
 		}
 
-		ret = mtd_read(mtd, fd, eb, 0, &ech, sizeof(struct ubi_ec_hdr));
+		ret = libmtd_read(mtd, fd, eb, 0, &ech, sizeof(struct ubi_ec_hdr));
 		if (ret < 0)
 			goto out_ec;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
