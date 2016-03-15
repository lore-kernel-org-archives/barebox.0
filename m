Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxL-0005IQ-7v
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:26 +0100
Message-Id: <1458040534-6171-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] ubiformat: Use mtd-peb API
To: Barebox List <barebox@lists.infradead.org>

This changes ubiformat from the libmtd API to the mtd-peb API. This
makes the libmtd API unnecessary and it can be removed in the next
step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c    | 191 +++++++++++++++++++++++++-----------------------
 include/mtd/libscan.h   |   3 +-
 include/mtd/libubigen.h |   4 +-
 lib/libscan.c           |  28 +++----
 lib/libubigen.c         |  23 ++----
 5 files changed, 124 insertions(+), 125 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index f9c50b7..0172654 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -46,12 +46,12 @@
 #include <linux/stat.h>
 #include <linux/log2.h>
 #include <linux/mtd/mtd-abi.h>
-#include <mtd/libmtd.h>
 #include <mtd/libscan.h>
 #include <mtd/libubigen.h>
 #include <mtd/ubi-user.h>
 #include <mtd/utils.h>
 #include <mtd/ubi-media.h>
+#include <mtd/mtd-peb.h>
 
 /* The variables below are set by command line arguments */
 struct args {
@@ -68,7 +68,6 @@ struct args {
 	long long ec;
 	const char *image;
 	const char *node;
-	int node_fd;
 };
 
 static struct args args;
@@ -166,16 +165,18 @@ static int parse_opt(int argc, char *argv[])
 	return 0;
 }
 
-static void print_bad_eraseblocks(const struct mtd_dev_info *mtd,
+static void print_bad_eraseblocks(struct mtd_info *mtd,
 				  const struct ubi_scan_info *si)
 {
-	int first = 1, eb;
+	int first = 1, eb, eb_cnt;
+
+	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
 
 	if (si->bad_cnt == 0)
 		return;
 
 	normsg_cont("%d bad eraseblocks found, numbers: ", si->bad_cnt);
-	for (eb = 0; eb < mtd->eb_cnt; eb++) {
+	for (eb = 0; eb < eb_cnt; eb++) {
 		if (si->ec[eb] != EB_BAD)
 			continue;
 		if (first) {
@@ -210,7 +211,7 @@ static int change_ech(struct ubi_ec_hdr *hdr, uint32_t image_seq,
 	return 0;
 }
 
-static int drop_ffs(const struct mtd_dev_info *mtd, const void *buf, int len)
+static int drop_ffs(struct mtd_info *mtd, const void *buf, int len)
 {
 	int i;
 
@@ -220,8 +221,8 @@ static int drop_ffs(const struct mtd_dev_info *mtd, const void *buf, int len)
 
         /* The resulting length must be aligned to the minimum flash I/O size */
 	len = i + 1;
-	len = (len + mtd->min_io_size - 1) / mtd->min_io_size;
-	len *=  mtd->min_io_size;
+	len = (len + mtd->writesize - 1) / mtd->writesize;
+	len *=  mtd->writesize;
 	return len;
 }
 
@@ -271,20 +272,20 @@ static int consecutive_bad_check(int eb)
 }
 
 /* TODO: we should actually torture the PEB before marking it as bad */
-static int mark_bad(const struct mtd_dev_info *mtd, struct ubi_scan_info *si, int eb)
+static int mark_bad(struct mtd_info *mtd, struct ubi_scan_info *si, int eb)
 {
 	int err;
 
 	if (!args.quiet)
 		normsg_cont("marking block %d bad\n", eb);
 
-	if (!mtd->bb_allowed) {
+	if (!mtd_can_have_bb(mtd)) {
 		if (!args.quiet)
 			printf("\n");
 		return errmsg("bad blocks not supported by this flash");
 	}
 
-	err = mtd_mark_bad(mtd, args.node_fd, eb);
+	err = mtd_peb_mark_bad(mtd, eb);
 	if (err)
 		return err;
 
@@ -294,24 +295,26 @@ static int mark_bad(const struct mtd_dev_info *mtd, struct ubi_scan_info *si, in
 	return consecutive_bad_check(eb);
 }
 
-static int flash_image(const struct mtd_dev_info *mtd,
+static int flash_image(struct mtd_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
-	int fd, img_ebs, eb, written_ebs = 0, ret = -1;
+	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
 	off_t st_size;
 	char *buf = NULL;
 
+	eb_cnt = mtd_num_pebs(mtd);
+
 	fd = open_file(&st_size);
 	if (fd < 0)
 		return fd;
 
-	buf = malloc(mtd->eb_size);
+	buf = malloc(mtd->erasesize);
 	if (!buf) {
-		sys_errmsg("cannot allocate %d bytes of memory", mtd->eb_size);
+		sys_errmsg("cannot allocate %d bytes of memory", mtd->erasesize);
 		goto out_close;
 	}
 
-	img_ebs = st_size / mtd->eb_size;
+	img_ebs = st_size / mtd->erasesize;
 
 	if (img_ebs > si->good_cnt) {
 		sys_errmsg("file \"%s\" is too large (%lld bytes)",
@@ -319,10 +322,10 @@ static int flash_image(const struct mtd_dev_info *mtd,
 		goto out_close;
 	}
 
-	if (st_size % mtd->eb_size) {
+	if (st_size % mtd->erasesize) {
 		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
 			   "eraseblock size (%d bytes)",
-			   args.image, (long long)st_size, mtd->eb_size);
+			   args.image, (long long)st_size, mtd->erasesize);
 		goto out_close;
 	}
 
@@ -332,13 +335,13 @@ static int flash_image(const struct mtd_dev_info *mtd,
 	}
 
 	verbose(args.verbose, "will write %d eraseblocks", img_ebs);
-	for (eb = 0; eb < mtd->eb_cnt; eb++) {
+	for (eb = 0; eb < eb_cnt; eb++) {
 		int err, new_len;
 		long long ec;
 
 		if (!args.quiet && !args.verbose) {
 			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1) * 100 / mtd->eb_cnt);
+			       eb, (eb + 1) * 100 / eb_cnt);
 		}
 
 		if (si->ec[eb] == EB_BAD)
@@ -348,13 +351,13 @@ static int flash_image(const struct mtd_dev_info *mtd,
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
-		err = libmtd_erase(mtd, args.node_fd, eb);
+		err = mtd_peb_erase(mtd, eb);
 		if (err) {
 			if (!args.quiet)
 				printf("\n");
 			sys_errmsg("failed to erase eraseblock %d", eb);
 
-			if (errno != EIO)
+			if (err != EIO)
 				goto out_close;
 
 			if (mark_bad(mtd, si, eb))
@@ -363,7 +366,7 @@ static int flash_image(const struct mtd_dev_info *mtd,
 			continue;
 		}
 
-		err = read_full(fd, buf, mtd->eb_size);
+		err = read_full(fd, buf, mtd->erasesize);
 		if (err < 0) {
 			sys_errmsg("failed to read eraseblock %d from \"%s\"",
 				   written_ebs, args.image);
@@ -392,20 +395,21 @@ static int flash_image(const struct mtd_dev_info *mtd,
 			printf(", write data\n");
 		}
 
-		new_len = drop_ffs(mtd, buf, mtd->eb_size);
+		new_len = drop_ffs(mtd, buf, mtd->erasesize);
 
-		err = libmtd_write(mtd, args.node_fd, eb, 0, buf, new_len);
+		err = mtd_peb_write(mtd, buf, eb, 0, new_len);
 		if (err) {
 			sys_errmsg("cannot write eraseblock %d", eb);
 
-			if (errno != EIO)
+			if (err != EIO)
+				goto out_close;
+
+			err = mtd_peb_torture(mtd, eb);
+			if (err < 0 && err != -EIO)
+				goto out_close;
+			if (err == -EIO && consecutive_bad_check(eb))
 				goto out_close;
 
-			err = mtd_torture(mtd, args.node_fd, eb);
-			if (err) {
-				if (mark_bad(mtd, si, eb))
-					goto out_close;
-			}
 			continue;
 		}
 		if (++written_ebs >= img_ebs)
@@ -423,30 +427,32 @@ out_close:
 	return ret;
 }
 
-static int format(const struct mtd_dev_info *mtd,
+static int format(struct mtd_info *mtd,
 		  const struct ubigen_info *ui, struct ubi_scan_info *si,
-		  int start_eb, int novtbl)
+		  int start_eb, int novtbl, int subpage_size)
 {
-	int eb, err, write_size;
+	int eb, err, write_size, eb_cnt;
 	struct ubi_ec_hdr *hdr;
 	struct ubi_vtbl_record *vtbl;
 	int eb1 = -1, eb2 = -1;
 	long long ec1 = -1, ec2 = -1;
 
-	write_size = UBI_EC_HDR_SIZE + mtd->subpage_size - 1;
-	write_size /= mtd->subpage_size;
-	write_size *= mtd->subpage_size;
+	eb_cnt = mtd_num_pebs(mtd);
+
+	write_size = UBI_EC_HDR_SIZE + subpage_size - 1;
+	write_size /= subpage_size;
+	write_size *= subpage_size;
 	hdr = malloc(write_size);
 	if (!hdr)
 		return sys_errmsg("cannot allocate %d bytes of memory", write_size);
 	memset(hdr, 0xFF, write_size);
 
-	for (eb = start_eb; eb < mtd->eb_cnt; eb++) {
+	for (eb = start_eb; eb < eb_cnt; eb++) {
 		long long ec;
 
 		if (!args.quiet && !args.verbose) {
 			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1 - start_eb) * 100 / (mtd->eb_cnt - start_eb));
+			       eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
 		}
 
 		if (si->ec[eb] == EB_BAD)
@@ -464,13 +470,13 @@ static int format(const struct mtd_dev_info *mtd,
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
-		err = libmtd_erase(mtd, args.node_fd, eb);
+		err = mtd_peb_erase(mtd, eb);
 		if (err) {
 			if (!args.quiet)
 				printf("\n");
 
 			sys_errmsg("failed to erase eraseblock %d", eb);
-			if (errno != EIO)
+			if (err != EIO)
 				goto out_free;
 
 			if (mark_bad(mtd, si, eb))
@@ -495,7 +501,7 @@ static int format(const struct mtd_dev_info *mtd,
 			printf(", write EC %lld\n", ec);
 		}
 
-		err = libmtd_write(mtd, args.node_fd, eb, 0, hdr, write_size);
+		err = mtd_peb_write(mtd, hdr, eb, 0, write_size);
 		if (err) {
 			if (!args.quiet && !args.verbose)
 				printf("\n");
@@ -503,16 +509,17 @@ static int format(const struct mtd_dev_info *mtd,
 				   write_size, eb);
 
 			if (errno != EIO) {
-				if (args.subpage_size != mtd->min_io_size)
+				if (args.subpage_size != mtd->writesize)
 					normsg("may be sub-page size is incorrect?");
 				goto out_free;
 			}
 
-			err = mtd_torture(mtd, args.node_fd, eb);
-			if (err) {
-				if (mark_bad(mtd, si, eb))
-					goto out_free;
-			}
+			err = mtd_peb_torture(mtd, eb);
+			if (err < 0 && err != -EIO)
+				goto out_free;
+			if (err == -EIO && consecutive_bad_check(eb))
+				goto out_free;
+
 			continue;
 
 		}
@@ -532,8 +539,7 @@ static int format(const struct mtd_dev_info *mtd,
 		if (!vtbl)
 			goto out_free;
 
-		err = ubigen_write_layout_vol(ui, eb1, eb2, ec1,  ec2, vtbl,
-					      args.node_fd);
+		err = ubigen_write_layout_vol(ui, eb1, eb2, ec1,  ec2, vtbl, mtd);
 		free(vtbl);
 		if (err) {
 			errmsg("cannot write layout volume");
@@ -551,78 +557,82 @@ out_free:
 
 int do_ubiformat(int argc, char *argv[])
 {
-	int err, verbose;
-	struct mtd_dev_info mtd;
+	int err, verbose, fd, eb_cnt;
+	struct mtd_info *mtd;
 	struct ubigen_info ui;
 	struct ubi_scan_info *si;
+	struct mtd_info_user mtd_user;
 
 	err = parse_opt(argc, argv);
 	if (err)
 		return err;
 
-	err = mtd_get_dev_info(args.node, &mtd);
-	if (err) {
-		sys_errmsg("cannot get information about \"%s\"", args.node);
-		goto out_close_mtd;
+	fd = open(args.node, O_RDWR);
+	if (fd < 0)
+		return sys_errmsg("cannot open \"%s\"", args.node);
+
+	if (ioctl(fd, MEMGETINFO, &mtd_user)) {
+		sys_errmsg("MEMGETINFO ioctl request failed");
+		goto out_close;
 	}
 
-	if (!is_power_of_2(mtd.min_io_size)) {
+	mtd = mtd_user.mtd;
+
+	if (!is_power_of_2(mtd->writesize)) {
 		errmsg("min. I/O size is %d, but should be power of 2",
-		       mtd.min_io_size);
-		goto out_close_mtd;
+		       mtd->writesize);
+		goto out_close;
 	}
 
-	if (args.subpage_size && args.subpage_size != mtd.subpage_size) {
-		mtd.subpage_size = args.subpage_size;
-		args.manual_subpage = 1;
+	if (args.subpage_size) {
+		if (args.subpage_size != mtd->writesize >> mtd->subpage_sft)
+			args.manual_subpage = 1;
+	} else {
+		args.subpage_size = mtd->writesize >> mtd->subpage_sft;
 	}
 
 	if (args.manual_subpage) {
 		/* Do some sanity check */
-		if (args.subpage_size > mtd.min_io_size) {
+		if (args.subpage_size > mtd->writesize) {
 			errmsg("sub-page cannot be larger than min. I/O unit");
-			goto out_close_mtd;
+			goto out_close;
 		}
 
-		if (mtd.min_io_size % args.subpage_size) {
+		if (mtd->writesize % args.subpage_size) {
 			errmsg("min. I/O unit size should be multiple of "
 			       "sub-page size");
-			goto out_close_mtd;
+			goto out_close;
 		}
 	}
 
-	args.node_fd = open(args.node, O_RDWR);
-	if (args.node_fd < 0) {
-		sys_errmsg("cannot open \"%s\"", args.node);
-		goto out_close_mtd;
-	}
-
 	/* Validate VID header offset if it was specified */
 	if (args.vid_hdr_offs != 0) {
 		if (args.vid_hdr_offs % 8) {
 			errmsg("VID header offset has to be multiple of min. I/O unit size");
 			goto out_close;
 		}
-		if (args.vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd.eb_size) {
+		if (args.vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
 			errmsg("bad VID header offset");
 			goto out_close;
 		}
 	}
 
-	if (!mtd.writable) {
-		errmsg("%s (%s) is a read-only device", mtd.node, args.node);
+	if (!(mtd->flags & MTD_WRITEABLE)) {
+		errmsg("%s is a read-only device", args.node);
 		goto out_close;
 	}
 
 	/* Make sure this MTD device is not attached to UBI */
 	/* FIXME! Find a proper way to do this in barebox! */
 
+	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
+
 	if (!args.quiet) {
-		normsg_cont("%s (%s), size %lld bytes (%s)", mtd.node, mtd.type_str,
-			mtd.size, size_human_readable(mtd.size));
-		printf(", %d eraseblocks of %d bytes (%s)", mtd.eb_cnt,
-			mtd.eb_size, size_human_readable(mtd.eb_size));
-		printf(", min. I/O size %d bytes\n", mtd.min_io_size);
+		normsg_cont("%s (%s), size %lld bytes (%s)", args.node, mtd_type_str(mtd),
+			mtd->size, size_human_readable(mtd->size));
+		printf(", %d eraseblocks of %d bytes (%s)", eb_cnt,
+			mtd->erasesize, size_human_readable(mtd->erasesize));
+		printf(", min. I/O size %d bytes\n", mtd->writesize);
 	}
 
 	if (args.quiet)
@@ -631,9 +641,9 @@ int do_ubiformat(int argc, char *argv[])
 		verbose = 2;
 	else
 		verbose = 1;
-	err = libscan_ubi_scan(&mtd, args.node_fd, &si, verbose);
+	err = libscan_ubi_scan(mtd, &si, verbose);
 	if (err) {
-		errmsg("failed to scan %s (%s)", mtd.node, args.node);
+		errmsg("failed to scan %s", args.node);
 		goto out_close;
 	}
 
@@ -644,7 +654,7 @@ int do_ubiformat(int argc, char *argv[])
 
 	if (si->good_cnt < 2 && (!args.novtbl || args.image)) {
 		errmsg("too few non-bad eraseblocks (%d) on %s",
-		       si->good_cnt, mtd.node);
+		       si->good_cnt, args.node);
 		goto out_free;
 	}
 
@@ -656,7 +666,7 @@ int do_ubiformat(int argc, char *argv[])
 			normsg("%d eraseblocks are supposedly empty", si->empty_cnt);
 		if (si->corrupted_cnt)
 			normsg("%d corrupted erase counters", si->corrupted_cnt);
-		print_bad_eraseblocks(&mtd, si);
+		print_bad_eraseblocks(mtd, si);
 	}
 
 	if (si->alien_cnt) {
@@ -717,7 +727,7 @@ int do_ubiformat(int argc, char *argv[])
 	if (!args.quiet && args.override_ec)
 		normsg("use erase counter %lld for all eraseblocks", args.ec);
 
-	ubigen_info_init(&ui, mtd.eb_size, mtd.min_io_size, mtd.subpage_size,
+	ubigen_info_init(&ui, mtd->erasesize, mtd->writesize, args.subpage_size,
 			 args.vid_hdr_offs, args.ubi_ver, args.image_seq);
 
 	if (si->vid_hdr_offs != -1 && ui.vid_hdr_offs != si->vid_hdr_offs) {
@@ -735,28 +745,27 @@ int do_ubiformat(int argc, char *argv[])
 	}
 
 	if (args.image) {
-		err = flash_image(&mtd, &ui, si);
+		err = flash_image(mtd, &ui, si);
 		if (err < 0)
 			goto out_free;
 
-		err = format(&mtd, &ui, si, err, 1);
+		err = format(mtd, &ui, si, err, 1, args.subpage_size);
 		if (err)
 			goto out_free;
 	} else {
-		err = format(&mtd, &ui, si, 0, args.novtbl);
+		err = format(mtd, &ui, si, 0, args.novtbl, args.subpage_size);
 		if (err)
 			goto out_free;
 	}
 
 	libscan_ubi_scan_free(si);
-	close(args.node_fd);
 	return 0;
 
 out_free:
 	libscan_ubi_scan_free(si);
 out_close:
-	close(args.node_fd);
-out_close_mtd:
+	close(fd);
+
 	return 1;
 }
 
diff --git a/include/mtd/libscan.h b/include/mtd/libscan.h
index bb01482..e925a26 100644
--- a/include/mtd/libscan.h
+++ b/include/mtd/libscan.h
@@ -84,12 +84,11 @@ struct mtd_dev_info;
 /**
  * ubi_scan - scan an MTD device.
  * @mtd: information about the MTD device to scan
- * @fd: MTD device node file descriptor
  * @info: the result of the scanning is returned here
  * @verbose: verbose mode: %0 - be silent, %1 - output progress information,
  *           2 - debugging output mode
  */
-int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **info,
+int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
 	     int verbose);
 
 /**
diff --git a/include/mtd/libubigen.h b/include/mtd/libubigen.h
index f05978b..266f393 100644
--- a/include/mtd/libubigen.h
+++ b/include/mtd/libubigen.h
@@ -170,13 +170,13 @@ int ubigen_write_volume(const struct ubigen_info *ui,
  * @ec1: erase counter value for @peb1
  * @ec2: erase counter value for @peb1
  * @vtbl: volume table
- * @fd: output file descriptor seeked to the proper position
+ * @mtd: The mtd device
  *
  * This function creates the UBI layout volume which contains 2 copies of the
  * volume table. Returns zero in case of success and %-1 in case of failure.
  */
 int ubigen_write_layout_vol(const struct ubigen_info *ui, int peb1, int peb2,
 			    long long ec1, long long ec2,
-			    struct ubi_vtbl_record *vtbl, int fd);
+			    struct ubi_vtbl_record *vtbl, struct mtd_info *mtd);
 
 #endif /* !__LIBUBIGEN_H__ */
diff --git a/lib/libscan.c b/lib/libscan.c
index 29d1cdb..bf298a7 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -26,26 +26,28 @@
 #include <linux/mtd/mtd.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
-#include <mtd/libmtd.h>
+#include <mtd/mtd-peb.h>
 #include <mtd/libscan.h>
 #include <mtd/ubi-user.h>
 #include <mtd/utils.h>
 #include <mtd/ubi-media.h>
 #include <asm-generic/div64.h>
 
-int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **info,
+int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
 	     int verbose)
 {
-	int eb, v = (verbose == 2), pr = (verbose == 1);
+	int eb, v = (verbose == 2), pr = (verbose == 1), eb_cnt;
 	struct ubi_scan_info *si;
 	unsigned long long sum = 0;
 
+	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
+
 	si = calloc(1, sizeof(struct ubi_scan_info));
 	if (!si)
 		return sys_errmsg("cannot allocate %zd bytes of memory",
 				  sizeof(struct ubi_scan_info));
 
-	si->ec = calloc(mtd->eb_cnt, sizeof(uint32_t));
+	si->ec = calloc(eb_cnt, sizeof(uint32_t));
 	if (!si->ec) {
 		sys_errmsg("cannot allocate %zd bytes of memory",
 			   sizeof(struct ubi_scan_info));
@@ -54,8 +56,8 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 
 	si->vid_hdr_offs = si->data_offs = -1;
 
-	verbose(v, "start scanning eraseblocks 0-%d", mtd->eb_cnt);
-	for (eb = 0; eb < mtd->eb_cnt; eb++) {
+	verbose(v, "start scanning eraseblocks 0-%d", eb_cnt);
+	for (eb = 0; eb < eb_cnt; eb++) {
 		int ret;
 		uint32_t crc;
 		struct ubi_ec_hdr ech;
@@ -65,10 +67,10 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 			normsg_cont("scanning eraseblock %d", eb);
 		if (pr) {
 			printf("\r" PROGRAM_NAME ": scanning eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1) * 100 / mtd->eb_cnt);
+			       eb, (eb + 1) * 100 / eb_cnt);
 		}
 
-		ret = mtd_is_bad(mtd, fd, eb);
+		ret = mtd_peb_is_bad(mtd, eb);
 		if (ret == -1)
 			goto out_ec;
 		if (ret) {
@@ -79,7 +81,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 			continue;
 		}
 
-		ret = libmtd_read(mtd, fd, eb, 0, &ech, sizeof(struct ubi_ec_hdr));
+		ret = mtd_peb_read(mtd, &ech, eb, 0, sizeof(struct ubi_ec_hdr));
 		if (ret < 0)
 			goto out_ec;
 
@@ -121,14 +123,14 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 		if (si->vid_hdr_offs == -1) {
 			si->vid_hdr_offs = be32_to_cpu(ech.vid_hdr_offset);
 			si->data_offs = be32_to_cpu(ech.data_offset);
-			if (si->data_offs % mtd->min_io_size) {
+			if (si->data_offs % mtd->writesize) {
 				if (pr)
 					printf("\n");
 				if (v)
 					printf(": corrupted because of the below\n");
 				warnmsg("bad data offset %d at eraseblock %d (n"
 					"of multiple of min. I/O unit size %d)",
-					si->data_offs, eb, mtd->min_io_size);
+					si->data_offs, eb, mtd->writesize);
 				warnmsg("treat eraseblock %d as corrupted", eb);
 				si->corrupted_cnt += 1;
 				si->ec[eb] = EB_CORRUPTED;
@@ -174,7 +176,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 
 	if (si->ok_cnt != 0) {
 		/* Calculate mean erase counter */
-		for (eb = 0; eb < mtd->eb_cnt; eb++) {
+		for (eb = 0; eb < eb_cnt; eb++) {
 			if (si->ec[eb] > EC_MAX)
 				continue;
 			sum += si->ec[eb];
@@ -183,7 +185,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 		si->mean_ec = sum;
 	}
 
-	si->good_cnt = mtd->eb_cnt - si->bad_cnt;
+	si->good_cnt = eb_cnt - si->bad_cnt;
 	verbose(v, "finished, mean EC %lld, %d OK, %d corrupted, %d empty, %d "
 		"alien, bad %d", si->mean_ec, si->ok_cnt, si->corrupted_cnt,
 		si->empty_cnt, si->alien_cnt, si->bad_cnt);
diff --git a/lib/libubigen.c b/lib/libubigen.c
index 9006329..77ebb05 100644
--- a/lib/libubigen.c
+++ b/lib/libubigen.c
@@ -34,6 +34,7 @@
 #include <mtd/utils.h>
 #include <mtd/ubi-media.h>
 #include <mtd/libubigen.h>
+#include <mtd/mtd-peb.h>
 
 void ubigen_info_init(struct ubigen_info *ui, int peb_size, int min_io_size,
 		      int subpage_size, int vid_hdr_offs, int ubi_ver,
@@ -247,13 +248,12 @@ out_free:
 
 int ubigen_write_layout_vol(const struct ubigen_info *ui, int peb1, int peb2,
 			    long long ec1, long long ec2,
-			    struct ubi_vtbl_record *vtbl, int fd)
+			    struct ubi_vtbl_record *vtbl, struct mtd_info *mtd)
 {
 	int ret;
 	struct ubigen_vol_info vi;
 	char *outbuf;
 	struct ubi_vid_hdr *vid_hdr;
-	off_t seek;
 
 	vi.bytes = ui->leb_size * UBI_LAYOUT_VOLUME_EBS;
 	vi.id = UBI_LAYOUT_VOLUME_ID;
@@ -277,29 +277,18 @@ int ubigen_write_layout_vol(const struct ubigen_info *ui, int peb1, int peb2,
 	memset(outbuf + ui->data_offs + ui->vtbl_size, 0xFF,
 	       ui->peb_size - ui->data_offs - ui->vtbl_size);
 
-	seek = (off_t) peb1 * ui->peb_size;
-	if (lseek(fd, seek, SEEK_SET) != seek) {
-		sys_errmsg("cannot seek output file");
-		goto out_free;
-	}
-
 	ubigen_init_ec_hdr(ui, (struct ubi_ec_hdr *)outbuf, ec1);
 	ubigen_init_vid_hdr(ui, &vi, vid_hdr, 0, NULL, 0);
-	ret = write(fd, outbuf, ui->peb_size);
-	if (ret != ui->peb_size) {
+	ret = mtd_peb_write(mtd, outbuf, peb1, 0, ui->peb_size);
+	if (ret < 0) {
 		sys_errmsg("cannot write %d bytes", ui->peb_size);
 		goto out_free;
 	}
 
-	seek = (off_t) peb2 * ui->peb_size;
-	if (lseek(fd, seek, SEEK_SET) != seek) {
-		sys_errmsg("cannot seek output file");
-		goto out_free;
-	}
 	ubigen_init_ec_hdr(ui, (struct ubi_ec_hdr *)outbuf, ec2);
 	ubigen_init_vid_hdr(ui, &vi, vid_hdr, 1, NULL, 0);
-	ret = write(fd, outbuf, ui->peb_size);
-	if (ret != ui->peb_size) {
+	ret = mtd_peb_write(mtd, outbuf, peb2, 0, ui->peb_size);
+	if (ret < 0) {
 		sys_errmsg("cannot write %d bytes", ui->peb_size);
 		goto out_free;
 	}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
