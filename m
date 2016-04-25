Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auejL-0004cx-TO
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:40 +0200
Message-Id: <1461583844-32250-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] commands: ubiformat: Pass around context data
To: Barebox List <barebox@lists.infradead.org>

Instead of using a static global context data struct, pass the
data around. This is a first step to create a C API for ubiformat.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 241 ++++++++++++++++++++++++++-------------------------
 1 file changed, 121 insertions(+), 120 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 2ffdd0c..ec5e9d7 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -55,7 +55,7 @@
 #include <mtd/mtd-peb.h>
 
 /* The variables below are set by command line arguments */
-struct args {
+struct ubiformat_args {
 	unsigned int yes:1;
 	unsigned int quiet:1;
 	unsigned int verbose:1;
@@ -71,14 +71,12 @@ struct args {
 	const char *node;
 };
 
-static struct args args;
-
-static int parse_opt(int argc, char *argv[])
+static int parse_opt(int argc, char *argv[], struct ubiformat_args *args)
 {
 	srand(get_time_ns());
-	memset(&args, 0, sizeof(args));
-	args.ubi_ver = 1;
-	args.image_seq = rand();
+	memset(args, 0, sizeof(*args));
+	args->ubi_ver = 1;
+	args->image_seq = rand();
 
 	while (1) {
 		int key;
@@ -90,47 +88,47 @@ static int parse_opt(int argc, char *argv[])
 
 		switch (key) {
 		case 's':
-			args.subpage_size = strtoull_suffix(optarg, NULL, 0);
-			if (args.subpage_size <= 0)
+			args->subpage_size = strtoull_suffix(optarg, NULL, 0);
+			if (args->subpage_size <= 0)
 				return errmsg("bad sub-page size: \"%s\"", optarg);
-			if (!is_power_of_2(args.subpage_size))
+			if (!is_power_of_2(args->subpage_size))
 				return errmsg("sub-page size should be power of 2");
 			break;
 
 		case 'O':
-			args.vid_hdr_offs = simple_strtoul(optarg, NULL, 0);
-			if (args.vid_hdr_offs <= 0)
+			args->vid_hdr_offs = simple_strtoul(optarg, NULL, 0);
+			if (args->vid_hdr_offs <= 0)
 				return errmsg("bad VID header offset: \"%s\"", optarg);
 			break;
 
 		case 'e':
-			args.ec = simple_strtoull(optarg, NULL, 0);
-			if (args.ec < 0)
+			args->ec = simple_strtoull(optarg, NULL, 0);
+			if (args->ec < 0)
 				return errmsg("bad erase counter value: \"%s\"", optarg);
-			if (args.ec >= EC_MAX)
-				return errmsg("too high erase %llu, counter, max is %u", args.ec, EC_MAX);
-			args.override_ec = 1;
+			if (args->ec >= EC_MAX)
+				return errmsg("too high erase %llu, counter, max is %u", args->ec, EC_MAX);
+			args->override_ec = 1;
 			break;
 
 		case 'f':
-			args.image = optarg;
+			args->image = optarg;
 			break;
 
 		case 'n':
-			args.novtbl = 1;
+			args->novtbl = 1;
 			break;
 
 		case 'y':
-			args.yes = 1;
+			args->yes = 1;
 			break;
 
 		case 'q':
-			args.quiet = 1;
+			args->quiet = 1;
 			break;
 
 		case 'x':
-			args.ubi_ver = simple_strtoul(optarg, NULL, 0);
-			if (args.ubi_ver < 0)
+			args->ubi_ver = simple_strtoul(optarg, NULL, 0);
+			if (args->ubi_ver < 0)
 				return errmsg("bad UBI version: \"%s\"", optarg);
 			break;
 
@@ -138,11 +136,11 @@ static int parse_opt(int argc, char *argv[])
 			image_seq = simple_strtoul(optarg, NULL, 0);
 			if (image_seq > 0xFFFFFFFF)
 				return errmsg("bad UBI image sequence number: \"%s\"", optarg);
-			args.image_seq = image_seq;
+			args->image_seq = image_seq;
 			break;
 
 		case 'v':
-			args.verbose = 1;
+			args->verbose = 1;
 			break;
 
 		default:
@@ -150,7 +148,7 @@ static int parse_opt(int argc, char *argv[])
 		}
 	}
 
-	if (args.quiet && args.verbose)
+	if (args->quiet && args->verbose)
 		return errmsg("using \"-q\" and \"-v\" at the same time does not make sense");
 
 	if (optind == argc)
@@ -158,11 +156,11 @@ static int parse_opt(int argc, char *argv[])
 	else if (optind != argc - 1)
 		return errmsg("more then one MTD device specified");
 
-	if (args.image && args.novtbl)
+	if (args->image && args->novtbl)
 		return errmsg("-n cannot be used together with -f");
 
 
-	args.node = argv[optind];
+	args->node = argv[optind];
 	return 0;
 }
 
@@ -227,18 +225,18 @@ static int drop_ffs(struct mtd_info *mtd, const void *buf, int len)
 	return len;
 }
 
-static int open_file(off_t *sz)
+static int open_file(const char *file, off_t *sz)
 {
 	int fd;
 	struct stat st;
 
-	if (stat(args.image, &st))
-		return sys_errmsg("cannot open \"%s\"", args.image);
+	if (stat(file, &st))
+		return sys_errmsg("cannot open \"%s\"", file);
 
 	*sz = st.st_size;
-	fd  = open(args.image, O_RDONLY);
+	fd  = open(file, O_RDONLY);
 	if (fd < 0)
-		return sys_errmsg("cannot open \"%s\"", args.image);
+		return sys_errmsg("cannot open \"%s\"", file);
 
 	return fd;
 }
@@ -247,7 +245,7 @@ static int open_file(off_t *sz)
  * Returns %-1 if consecutive bad blocks exceeds the
  * MAX_CONSECUTIVE_BAD_BLOCKS and returns %0 otherwise.
  */
-static int consecutive_bad_check(int eb)
+static int consecutive_bad_check(struct ubiformat_args *args, int eb)
 {
 	static int consecutive_bad_blocks = 1;
 	static int prev_bb = -1;
@@ -263,7 +261,7 @@ static int consecutive_bad_check(int eb)
 	prev_bb = eb;
 
 	if (consecutive_bad_blocks >= MAX_CONSECUTIVE_BAD_BLOCKS) {
-		if (!args.quiet)
+		if (!args->quiet)
 			printf("\n");
 		return errmsg("consecutive bad blocks exceed limit: %d, bad flash?",
 		              MAX_CONSECUTIVE_BAD_BLOCKS);
@@ -273,15 +271,16 @@ static int consecutive_bad_check(int eb)
 }
 
 /* TODO: we should actually torture the PEB before marking it as bad */
-static int mark_bad(struct mtd_info *mtd, struct ubi_scan_info *si, int eb)
+static int mark_bad(struct ubiformat_args *args, struct mtd_info *mtd,
+		    struct ubi_scan_info *si, int eb)
 {
 	int err;
 
-	if (!args.quiet)
+	if (!args->quiet)
 		normsg_cont("marking block %d bad\n", eb);
 
 	if (!mtd_can_have_bb(mtd)) {
-		if (!args.quiet)
+		if (!args->quiet)
 			printf("\n");
 		return errmsg("bad blocks not supported by this flash");
 	}
@@ -293,10 +292,10 @@ static int mark_bad(struct mtd_info *mtd, struct ubi_scan_info *si, int eb)
 	si->bad_cnt += 1;
 	si->ec[eb] = EB_BAD;
 
-	return consecutive_bad_check(eb);
+	return consecutive_bad_check(args, eb);
 }
 
-static int flash_image(struct mtd_info *mtd,
+static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
 	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
@@ -305,7 +304,7 @@ static int flash_image(struct mtd_info *mtd,
 
 	eb_cnt = mtd_num_pebs(mtd);
 
-	fd = open_file(&st_size);
+	fd = open_file(args->image, &st_size);
 	if (fd < 0)
 		return fd;
 
@@ -319,28 +318,28 @@ static int flash_image(struct mtd_info *mtd,
 
 	if (img_ebs > si->good_cnt) {
 		sys_errmsg("file \"%s\" is too large (%lld bytes)",
-			   args.image, (long long)st_size);
+			   args->image, (long long)st_size);
 		goto out_close;
 	}
 
 	if (st_size % mtd->erasesize) {
 		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
 			   "eraseblock size (%d bytes)",
-			   args.image, (long long)st_size, mtd->erasesize);
+			   args->image, (long long)st_size, mtd->erasesize);
 		goto out_close;
 	}
 
 	if (st_size == 0) {
-		sys_errmsg("file \"%s\" has size 0 bytes", args.image);
+		sys_errmsg("file \"%s\" has size 0 bytes", args->image);
 		goto out_close;
 	}
 
-	verbose(args.verbose, "will write %d eraseblocks", img_ebs);
+	verbose(args->verbose, "will write %d eraseblocks", img_ebs);
 	for (eb = 0; eb < eb_cnt; eb++) {
 		int err, new_len;
 		long long ec;
 
-		if (!args.quiet && !args.verbose) {
+		if (!args->quiet && !args->verbose) {
 			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
 			       eb, (eb + 1) * 100 / eb_cnt);
 		}
@@ -348,20 +347,20 @@ static int flash_image(struct mtd_info *mtd,
 		if (si->ec[eb] == EB_BAD)
 			continue;
 
-		if (args.verbose) {
+		if (args->verbose) {
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
 		err = mtd_peb_erase(mtd, eb);
 		if (err) {
-			if (!args.quiet)
+			if (!args->quiet)
 				printf("\n");
 			sys_errmsg("failed to erase eraseblock %d", eb);
 
 			if (err != EIO)
 				goto out_close;
 
-			if (mark_bad(mtd, si, eb))
+			if (mark_bad(args, mtd, si, eb))
 				goto out_close;
 
 			continue;
@@ -370,29 +369,29 @@ static int flash_image(struct mtd_info *mtd,
 		err = read_full(fd, buf, mtd->erasesize);
 		if (err < 0) {
 			sys_errmsg("failed to read eraseblock %d from \"%s\"",
-				   written_ebs, args.image);
+				   written_ebs, args->image);
 			goto out_close;
 		}
 
-		if (args.override_ec)
-			ec = args.ec;
+		if (args->override_ec)
+			ec = args->ec;
 		else if (si->ec[eb] <= EC_MAX)
 			ec = si->ec[eb] + 1;
 		else
 			ec = si->mean_ec;
 
-		if (args.verbose) {
+		if (args->verbose) {
 			printf(", change EC to %lld", ec);
 		}
 
 		err = change_ech((struct ubi_ec_hdr *)buf, ui->image_seq, ec);
 		if (err) {
 			errmsg("bad EC header at eraseblock %d of \"%s\"",
-			       written_ebs, args.image);
+			       written_ebs, args->image);
 			goto out_close;
 		}
 
-		if (args.verbose) {
+		if (args->verbose) {
 			printf(", write data\n");
 		}
 
@@ -408,7 +407,7 @@ static int flash_image(struct mtd_info *mtd,
 			err = mtd_peb_torture(mtd, eb);
 			if (err < 0 && err != -EIO)
 				goto out_close;
-			if (err == -EIO && consecutive_bad_check(eb))
+			if (err == -EIO && consecutive_bad_check(args, eb))
 				goto out_close;
 
 			continue;
@@ -417,7 +416,7 @@ static int flash_image(struct mtd_info *mtd,
 			break;
 	}
 
-	if (!args.quiet && !args.verbose)
+	if (!args->quiet && !args->verbose)
 		printf("\n");
 
 	ret = eb + 1;
@@ -428,9 +427,9 @@ out_close:
 	return ret;
 }
 
-static int format(struct mtd_info *mtd,
+static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 		  const struct ubigen_info *ui, struct ubi_scan_info *si,
-		  int start_eb, int novtbl, int subpage_size)
+		  int start_eb, int novtbl)
 {
 	int eb, err, write_size, eb_cnt;
 	struct ubi_ec_hdr *hdr;
@@ -440,9 +439,9 @@ static int format(struct mtd_info *mtd,
 
 	eb_cnt = mtd_num_pebs(mtd);
 
-	write_size = UBI_EC_HDR_SIZE + subpage_size - 1;
-	write_size /= subpage_size;
-	write_size *= subpage_size;
+	write_size = UBI_EC_HDR_SIZE + args->subpage_size - 1;
+	write_size /= args->subpage_size;
+	write_size *= args->subpage_size;
 	hdr = malloc(write_size);
 	if (!hdr)
 		return sys_errmsg("cannot allocate %d bytes of memory", write_size);
@@ -451,7 +450,7 @@ static int format(struct mtd_info *mtd,
 	for (eb = start_eb; eb < eb_cnt; eb++) {
 		long long ec;
 
-		if (!args.quiet && !args.verbose) {
+		if (!args->quiet && !args->verbose) {
 			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
 			       eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
 		}
@@ -459,28 +458,28 @@ static int format(struct mtd_info *mtd,
 		if (si->ec[eb] == EB_BAD)
 			continue;
 
-		if (args.override_ec)
-			ec = args.ec;
+		if (args->override_ec)
+			ec = args->ec;
 		else if (si->ec[eb] <= EC_MAX)
 			ec = si->ec[eb] + 1;
 		else
 			ec = si->mean_ec;
 		ubigen_init_ec_hdr(ui, hdr, ec);
 
-		if (args.verbose) {
+		if (args->verbose) {
 			normsg_cont("eraseblock %d: erase", eb);
 		}
 
 		err = mtd_peb_erase(mtd, eb);
 		if (err) {
-			if (!args.quiet)
+			if (!args->quiet)
 				printf("\n");
 
 			sys_errmsg("failed to erase eraseblock %d", eb);
 			if (err != EIO)
 				goto out_free;
 
-			if (mark_bad(mtd, si, eb))
+			if (mark_bad(args, mtd, si, eb))
 				goto out_free;
 			continue;
 		}
@@ -493,24 +492,24 @@ static int format(struct mtd_info *mtd,
 				eb2 = eb;
 				ec2 = ec;
 			}
-			if (args.verbose)
+			if (args->verbose)
 				printf(", do not write EC, leave for vtbl\n");
 			continue;
 		}
 
-		if (args.verbose) {
+		if (args->verbose) {
 			printf(", write EC %lld\n", ec);
 		}
 
 		err = mtd_peb_write(mtd, hdr, eb, 0, write_size);
 		if (err) {
-			if (!args.quiet && !args.verbose)
+			if (!args->quiet && !args->verbose)
 				printf("\n");
 			sys_errmsg("cannot write EC header (%d bytes buffer) to eraseblock %d",
 				   write_size, eb);
 
 			if (errno != EIO) {
-				if (args.subpage_size != mtd->writesize)
+				if (args->subpage_size != mtd->writesize)
 					normsg("may be sub-page size is incorrect?");
 				goto out_free;
 			}
@@ -518,7 +517,7 @@ static int format(struct mtd_info *mtd,
 			err = mtd_peb_torture(mtd, eb);
 			if (err < 0 && err != -EIO)
 				goto out_free;
-			if (err == -EIO && consecutive_bad_check(eb))
+			if (err == -EIO && consecutive_bad_check(args, eb))
 				goto out_free;
 
 			continue;
@@ -526,7 +525,7 @@ static int format(struct mtd_info *mtd,
 		}
 	}
 
-	if (!args.quiet && !args.verbose)
+	if (!args->quiet && !args->verbose)
 		printf("\n");
 
 	if (!novtbl) {
@@ -535,7 +534,7 @@ static int format(struct mtd_info *mtd,
 			goto out_free;
 		}
 
-		verbose(args.verbose, "write volume table to eraseblocks %d and %d", eb1, eb2);
+		verbose(args->verbose, "write volume table to eraseblocks %d and %d", eb1, eb2);
 		vtbl = ubigen_create_empty_vtbl(ui);
 		if (!vtbl)
 			goto out_free;
@@ -564,14 +563,16 @@ int do_ubiformat(int argc, char *argv[])
 	struct ubi_scan_info *si;
 	struct mtd_info_user mtd_user;
 	int ubi_num;
+	struct ubiformat_args __args;
+	struct ubiformat_args *args = &__args;
 
-	err = parse_opt(argc, argv);
+	err = parse_opt(argc, argv, args);
 	if (err)
 		return err;
 
-	fd = open(args.node, O_RDWR);
+	fd = open(args->node, O_RDWR);
 	if (fd < 0)
-		return sys_errmsg("cannot open \"%s\"", args.node);
+		return sys_errmsg("cannot open \"%s\"", args->node);
 
 	if (ioctl(fd, MEMGETINFO, &mtd_user)) {
 		sys_errmsg("MEMGETINFO ioctl request failed");
@@ -586,21 +587,21 @@ int do_ubiformat(int argc, char *argv[])
 		goto out_close;
 	}
 
-	if (args.subpage_size) {
-		if (args.subpage_size != mtd->writesize >> mtd->subpage_sft)
-			args.manual_subpage = 1;
+	if (args->subpage_size) {
+		if (args->subpage_size != mtd->writesize >> mtd->subpage_sft)
+			args->manual_subpage = 1;
 	} else {
-		args.subpage_size = mtd->writesize >> mtd->subpage_sft;
+		args->subpage_size = mtd->writesize >> mtd->subpage_sft;
 	}
 
-	if (args.manual_subpage) {
+	if (args->manual_subpage) {
 		/* Do some sanity check */
-		if (args.subpage_size > mtd->writesize) {
+		if (args->subpage_size > mtd->writesize) {
 			errmsg("sub-page cannot be larger than min. I/O unit");
 			goto out_close;
 		}
 
-		if (mtd->writesize % args.subpage_size) {
+		if (mtd->writesize % args->subpage_size) {
 			errmsg("min. I/O unit size should be multiple of "
 			       "sub-page size");
 			goto out_close;
@@ -608,19 +609,19 @@ int do_ubiformat(int argc, char *argv[])
 	}
 
 	/* Validate VID header offset if it was specified */
-	if (args.vid_hdr_offs != 0) {
-		if (args.vid_hdr_offs % 8) {
+	if (args->vid_hdr_offs != 0) {
+		if (args->vid_hdr_offs % 8) {
 			errmsg("VID header offset has to be multiple of min. I/O unit size");
 			goto out_close;
 		}
-		if (args.vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
+		if (args->vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
 			errmsg("bad VID header offset");
 			goto out_close;
 		}
 	}
 
 	if (!(mtd->flags & MTD_WRITEABLE)) {
-		errmsg("%s is a read-only device", args.node);
+		errmsg("%s is a read-only device", args->node);
 		goto out_close;
 	}
 
@@ -636,23 +637,23 @@ int do_ubiformat(int argc, char *argv[])
 
 	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
 
-	if (!args.quiet) {
-		normsg_cont("%s (%s), size %lld bytes (%s)", args.node, mtd_type_str(mtd),
+	if (!args->quiet) {
+		normsg_cont("%s (%s), size %lld bytes (%s)", args->node, mtd_type_str(mtd),
 			mtd->size, size_human_readable(mtd->size));
 		printf(", %d eraseblocks of %d bytes (%s)", eb_cnt,
 			mtd->erasesize, size_human_readable(mtd->erasesize));
 		printf(", min. I/O size %d bytes\n", mtd->writesize);
 	}
 
-	if (args.quiet)
+	if (args->quiet)
 		verbose = 0;
-	else if (args.verbose)
+	else if (args->verbose)
 		verbose = 2;
 	else
 		verbose = 1;
 	err = libscan_ubi_scan(mtd, &si, verbose);
 	if (err) {
-		errmsg("failed to scan %s", args.node);
+		errmsg("failed to scan %s", args->node);
 		goto out_close;
 	}
 
@@ -661,13 +662,13 @@ int do_ubiformat(int argc, char *argv[])
 		goto out_free;
 	}
 
-	if (si->good_cnt < 2 && (!args.novtbl || args.image)) {
+	if (si->good_cnt < 2 && (!args->novtbl || args->image)) {
 		errmsg("too few non-bad eraseblocks (%d) on %s",
-		       si->good_cnt, args.node);
+		       si->good_cnt, args->node);
 		goto out_free;
 	}
 
-	if (!args.quiet) {
+	if (!args->quiet) {
 		if (si->ok_cnt)
 			normsg("%d eraseblocks have valid erase counter, mean value is %lld",
 			       si->ok_cnt, si->mean_ec);
@@ -679,16 +680,16 @@ int do_ubiformat(int argc, char *argv[])
 	}
 
 	if (si->alien_cnt) {
-		if (!args.quiet)
+		if (!args->quiet)
 			warnmsg("%d of %d eraseblocks contain non-ubifs data",
 				si->alien_cnt, si->good_cnt);
-		if (!args.yes && !args.quiet)
+		if (!args->yes && !args->quiet)
 			warnmsg("use '-y' to force erasing");
-		if (!args.yes)
+		if (!args->yes)
 			goto out_free;
 	}
 
-	if (!args.override_ec && si->empty_cnt < si->good_cnt) {
+	if (!args->override_ec && si->empty_cnt < si->good_cnt) {
 		int percent = (si->ok_cnt * 100) / si->good_cnt;
 
 		/*
@@ -696,10 +697,10 @@ int do_ubiformat(int argc, char *argv[])
 		 * erase counters.
 		 */
 		if (percent < 50) {
-			if (!args.quiet) {
+			if (!args->quiet) {
 				warnmsg("only %d of %d eraseblocks have valid erase counter",
 					si->ok_cnt, si->good_cnt);
-				if (args.yes) {
+				if (args->yes) {
 					normsg("erase counter 0 will be used for all eraseblocks");
 					normsg("note, arbitrary erase counter value may be specified using -e option");
 
@@ -708,43 +709,43 @@ int do_ubiformat(int argc, char *argv[])
 				}
 			}
 
-			if (!args.yes)
+			if (!args->yes)
 				goto out_free;
 
-			args.ec = 0;
-			args.override_ec = 1;
+			args->ec = 0;
+			args->override_ec = 1;
 
 		} else if (percent < 95) {
-			if (!args.quiet) {
+			if (!args->quiet) {
 				warnmsg("only %d of %d eraseblocks have valid erase counter",
 					si->ok_cnt, si->good_cnt);
-				if (args.yes)
+				if (args->yes)
 					normsg("mean erase counter %lld will be used for the rest of eraseblock",
 					       si->mean_ec);
 				else
 					warnmsg("use '-y' to force erase counters");
 			}
 
-			if (!args.yes)
+			if (!args->yes)
 				goto out_free;
 
-			args.ec = si->mean_ec;
-			args.override_ec = 1;
+			args->ec = si->mean_ec;
+			args->override_ec = 1;
 		}
 	}
 
-	if (!args.quiet && args.override_ec)
-		normsg("use erase counter %lld for all eraseblocks", args.ec);
+	if (!args->quiet && args->override_ec)
+		normsg("use erase counter %lld for all eraseblocks", args->ec);
 
-	ubigen_info_init(&ui, mtd->erasesize, mtd->writesize, args.subpage_size,
-			 args.vid_hdr_offs, args.ubi_ver, args.image_seq);
+	ubigen_info_init(&ui, mtd->erasesize, mtd->writesize, args->subpage_size,
+			 args->vid_hdr_offs, args->ubi_ver, args->image_seq);
 
 	if (si->vid_hdr_offs != -1 && ui.vid_hdr_offs != si->vid_hdr_offs) {
 		/*
 		 * Hmm, what we read from flash and what we calculated using
 		 * min. I/O unit size and sub-page size differs.
 		 */
-		if (!args.quiet) {
+		if (!args->quiet) {
 			warnmsg("VID header and data offsets on flash are %d and %d, "
 				"which is different to requested offsets %d and %d",
 				si->vid_hdr_offs, si->data_offs, ui.vid_hdr_offs,
@@ -753,16 +754,16 @@ int do_ubiformat(int argc, char *argv[])
 		}
 	}
 
-	if (args.image) {
-		err = flash_image(mtd, &ui, si);
+	if (args->image) {
+		err = flash_image(args, mtd, &ui, si);
 		if (err < 0)
 			goto out_free;
 
-		err = format(mtd, &ui, si, err, 1, args.subpage_size);
+		err = format(args, mtd, &ui, si, err, 1);
 		if (err)
 			goto out_free;
 	} else {
-		err = format(mtd, &ui, si, 0, args.novtbl, args.subpage_size);
+		err = format(args, mtd, &ui, si, 0, args->novtbl);
 		if (err)
 			goto out_free;
 	}
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
