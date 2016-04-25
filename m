Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auejL-0004cy-TM
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:41 +0200
Message-Id: <1461583844-32250-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
References: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] commands: ubiformat: create separate function for
 ubiformat
To: Barebox List <barebox@lists.infradead.org>

Factor out the code out of the main function to a ubiformat function
to separate the command code from the ubiformat functionality.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 83 ++++++++++++++++++++++++++++++++++------------------
 1 file changed, 54 insertions(+), 29 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index ec5e9d7..65c5ce9 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -71,7 +71,8 @@ struct ubiformat_args {
 	const char *node;
 };
 
-static int parse_opt(int argc, char *argv[], struct ubiformat_args *args)
+static int parse_opt(int argc, char *argv[], struct ubiformat_args *args,
+		     char **node)
 {
 	srand(get_time_ns());
 	memset(args, 0, sizeof(*args));
@@ -160,7 +161,8 @@ static int parse_opt(int argc, char *argv[], struct ubiformat_args *args)
 		return errmsg("-n cannot be used together with -f");
 
 
-	args->node = argv[optind];
+	*node = argv[optind];
+
 	return 0;
 }
 
@@ -555,35 +557,17 @@ out_free:
 	return -1;
 }
 
-int do_ubiformat(int argc, char *argv[])
+int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 {
-	int err, verbose, fd, eb_cnt;
-	struct mtd_info *mtd;
+	int err, verbose, eb_cnt;
 	struct ubigen_info ui;
 	struct ubi_scan_info *si;
-	struct mtd_info_user mtd_user;
 	int ubi_num;
-	struct ubiformat_args __args;
-	struct ubiformat_args *args = &__args;
-
-	err = parse_opt(argc, argv, args);
-	if (err)
-		return err;
-
-	fd = open(args->node, O_RDWR);
-	if (fd < 0)
-		return sys_errmsg("cannot open \"%s\"", args->node);
-
-	if (ioctl(fd, MEMGETINFO, &mtd_user)) {
-		sys_errmsg("MEMGETINFO ioctl request failed");
-		goto out_close;
-	}
-
-	mtd = mtd_user.mtd;
 
 	if (!is_power_of_2(mtd->writesize)) {
 		errmsg("min. I/O size is %d, but should be power of 2",
 		       mtd->writesize);
+		err = -EINVAL;
 		goto out_close;
 	}
 
@@ -598,12 +582,14 @@ int do_ubiformat(int argc, char *argv[])
 		/* Do some sanity check */
 		if (args->subpage_size > mtd->writesize) {
 			errmsg("sub-page cannot be larger than min. I/O unit");
+			err = -EINVAL;
 			goto out_close;
 		}
 
 		if (mtd->writesize % args->subpage_size) {
 			errmsg("min. I/O unit size should be multiple of "
 			       "sub-page size");
+			err = -EINVAL;
 			goto out_close;
 		}
 	}
@@ -612,20 +598,23 @@ int do_ubiformat(int argc, char *argv[])
 	if (args->vid_hdr_offs != 0) {
 		if (args->vid_hdr_offs % 8) {
 			errmsg("VID header offset has to be multiple of min. I/O unit size");
+			err = -EINVAL;
 			goto out_close;
 		}
 		if (args->vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
 			errmsg("bad VID header offset");
+			err = -EINVAL;
 			goto out_close;
 		}
 	}
 
 	if (!(mtd->flags & MTD_WRITEABLE)) {
 		errmsg("%s is a read-only device", args->node);
+		err = -EROFS;
 		goto out_close;
 	}
 
-	ubi_num = ubi_num_get_by_mtd(mtd_user.mtd);
+	ubi_num = ubi_num_get_by_mtd(mtd);
 	if (ubi_num >= 0) {
 		err = ubi_detach(ubi_num);
 		if (err) {
@@ -659,12 +648,14 @@ int do_ubiformat(int argc, char *argv[])
 
 	if (si->good_cnt == 0) {
 		errmsg("all %d eraseblocks are bad", si->bad_cnt);
+		err = -EINVAL;
 		goto out_free;
 	}
 
 	if (si->good_cnt < 2 && (!args->novtbl || args->image)) {
 		errmsg("too few non-bad eraseblocks (%d) on %s",
 		       si->good_cnt, args->node);
+		err = -EINVAL;
 		goto out_free;
 	}
 
@@ -685,8 +676,10 @@ int do_ubiformat(int argc, char *argv[])
 				si->alien_cnt, si->good_cnt);
 		if (!args->yes && !args->quiet)
 			warnmsg("use '-y' to force erasing");
-		if (!args->yes)
+		if (!args->yes) {
+			err = -EINVAL;
 			goto out_free;
+		}
 	}
 
 	if (!args->override_ec && si->empty_cnt < si->good_cnt) {
@@ -709,8 +702,10 @@ int do_ubiformat(int argc, char *argv[])
 				}
 			}
 
-			if (!args->yes)
+			if (!args->yes) {
+				err = -EINVAL;
 				goto out_free;
+			}
 
 			args->ec = 0;
 			args->override_ec = 1;
@@ -726,8 +721,10 @@ int do_ubiformat(int argc, char *argv[])
 					warnmsg("use '-y' to force erase counters");
 			}
 
-			if (!args->yes)
+			if (!args->yes) {
+				err = -EINVAL;
 				goto out_free;
+			}
 
 			args->ec = si->mean_ec;
 			args->override_ec = 1;
@@ -772,7 +769,7 @@ int do_ubiformat(int argc, char *argv[])
 
 	/* Reattach the ubi device in case it was attached in the beginning */
 	if (ubi_num >= 0) {
-		err = ubi_attach_mtd_dev(mtd_user.mtd, ubi_num, 0, 20);
+		err = ubi_attach_mtd_dev(mtd, ubi_num, 0, 20);
 		if (err) {
 			pr_err("Failed to reattach ubi device to ubi number %d, %d\n",
 			       ubi_num, err);
@@ -785,9 +782,37 @@ int do_ubiformat(int argc, char *argv[])
 out_free:
 	libscan_ubi_scan_free(si);
 out_close:
+
+	return err;
+}
+
+int do_ubiformat(int argc, char *argv[])
+{
+	int err, fd;
+	struct ubiformat_args args;
+	char *node = NULL;
+	struct mtd_info_user mtd_user;
+
+	err = parse_opt(argc, argv, &args, &node);
+	if (err)
+		return err;
+
+	fd = open(node, O_RDWR);
+	if (fd < 0)
+		return sys_errmsg("cannot open \"%s\"", node);
+
+	err = ioctl(fd, MEMGETINFO, &mtd_user);
+	if (err) {
+		sys_errmsg("MEMGETINFO ioctl request failed");
+		goto out_close;
+	}
+
+	err = ubiformat(mtd_user.mtd, &args);
+
+out_close:
 	close(fd);
 
-	return 1;
+	return err;
 }
 
 BAREBOX_CMD_HELP_START(ubiformat)
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
