Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aueje-0004gN-Lm
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:42 +0200
Message-Id: <1461583844-32250-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] commands: ubiformat: move code to common/
To: Barebox List <barebox@lists.infradead.org>

This is the final step to separate the ubiformat code from the
command. With this the ubiformat code gains a C API.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig     |   4 +-
 commands/ubiformat.c | 640 +-----------------------------------------------
 common/Kconfig       |   7 +
 common/Makefile      |   1 +
 common/ubiformat.c   | 675 +++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 686 insertions(+), 641 deletions(-)
 create mode 100644 common/ubiformat.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 875c5f4..003adf0 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -693,9 +693,7 @@ config CMD_UBI
 
 config CMD_UBIFORMAT
 	tristate
-	depends on MTD_UBI
-	select LIBSCAN
-	select LIBUBIGEN
+	depends on UBIFORMAT
 	prompt "ubiformat"
 
 config CMD_UMOUNT
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 65c5ce9..f4982c8 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -41,6 +41,7 @@
 #include <ioctl.h>
 #include <libbb.h>
 #include <libfile.h>
+#include <ubiformat.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/ubi.h>
 #include <linux/kernel.h>
@@ -54,23 +55,6 @@
 #include <mtd/ubi-media.h>
 #include <mtd/mtd-peb.h>
 
-/* The variables below are set by command line arguments */
-struct ubiformat_args {
-	unsigned int yes:1;
-	unsigned int quiet:1;
-	unsigned int verbose:1;
-	unsigned int override_ec:1;
-	unsigned int novtbl:1;
-	unsigned int manual_subpage;
-	int subpage_size;
-	int vid_hdr_offs;
-	int ubi_ver;
-	uint32_t image_seq;
-	long long ec;
-	const char *image;
-	const char *node;
-};
-
 static int parse_opt(int argc, char *argv[], struct ubiformat_args *args,
 		     char **node)
 {
@@ -166,627 +150,7 @@ static int parse_opt(int argc, char *argv[], struct ubiformat_args *args,
 	return 0;
 }
 
-static void print_bad_eraseblocks(struct mtd_info *mtd,
-				  const struct ubi_scan_info *si)
-{
-	int first = 1, eb, eb_cnt;
-
-	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
-
-	if (si->bad_cnt == 0)
-		return;
-
-	normsg_cont("%d bad eraseblocks found, numbers: ", si->bad_cnt);
-	for (eb = 0; eb < eb_cnt; eb++) {
-		if (si->ec[eb] != EB_BAD)
-			continue;
-		if (first) {
-			printf("%d", eb);
-			first = 0;
-		} else
-			printf(", %d", eb);
-	}
-	printf("\n");
-}
-
-static int change_ech(struct ubi_ec_hdr *hdr, uint32_t image_seq,
-		      long long ec)
-{
-	uint32_t crc;
-
-	/* Check the EC header */
-	if (be32_to_cpu(hdr->magic) != UBI_EC_HDR_MAGIC)
-		return errmsg("bad UBI magic %#08x, should be %#08x",
-			      be32_to_cpu(hdr->magic), UBI_EC_HDR_MAGIC);
-
-	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_EC_HDR_SIZE_CRC);
-	if (be32_to_cpu(hdr->hdr_crc) != crc)
-		return errmsg("bad CRC %#08x, should be %#08x\n",
-			      crc, be32_to_cpu(hdr->hdr_crc));
-
-	hdr->image_seq = cpu_to_be32(image_seq);
-	hdr->ec = cpu_to_be64(ec);
-	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_EC_HDR_SIZE_CRC);
-	hdr->hdr_crc = cpu_to_be32(crc);
-
-	return 0;
-}
-
-static int drop_ffs(struct mtd_info *mtd, const void *buf, int len)
-{
-	int i;
-
-        for (i = len - 1; i >= 0; i--)
-		if (((const uint8_t *)buf)[i] != 0xFF)
-		      break;
-
-        /* The resulting length must be aligned to the minimum flash I/O size */
-	len = i + 1;
-	len = (len + mtd->writesize - 1) / mtd->writesize;
-	len *=  mtd->writesize;
-	return len;
-}
-
-static int open_file(const char *file, off_t *sz)
-{
-	int fd;
-	struct stat st;
-
-	if (stat(file, &st))
-		return sys_errmsg("cannot open \"%s\"", file);
-
-	*sz = st.st_size;
-	fd  = open(file, O_RDONLY);
-	if (fd < 0)
-		return sys_errmsg("cannot open \"%s\"", file);
-
-	return fd;
-}
-
-/*
- * Returns %-1 if consecutive bad blocks exceeds the
- * MAX_CONSECUTIVE_BAD_BLOCKS and returns %0 otherwise.
- */
-static int consecutive_bad_check(struct ubiformat_args *args, int eb)
-{
-	static int consecutive_bad_blocks = 1;
-	static int prev_bb = -1;
-
-	if (prev_bb == -1)
-		prev_bb = eb;
-
-	if (eb == prev_bb + 1)
-		consecutive_bad_blocks += 1;
-	else
-		consecutive_bad_blocks = 1;
-
-	prev_bb = eb;
-
-	if (consecutive_bad_blocks >= MAX_CONSECUTIVE_BAD_BLOCKS) {
-		if (!args->quiet)
-			printf("\n");
-		return errmsg("consecutive bad blocks exceed limit: %d, bad flash?",
-		              MAX_CONSECUTIVE_BAD_BLOCKS);
-	}
-
-	return 0;
-}
-
-/* TODO: we should actually torture the PEB before marking it as bad */
-static int mark_bad(struct ubiformat_args *args, struct mtd_info *mtd,
-		    struct ubi_scan_info *si, int eb)
-{
-	int err;
-
-	if (!args->quiet)
-		normsg_cont("marking block %d bad\n", eb);
-
-	if (!mtd_can_have_bb(mtd)) {
-		if (!args->quiet)
-			printf("\n");
-		return errmsg("bad blocks not supported by this flash");
-	}
-
-	err = mtd_peb_mark_bad(mtd, eb);
-	if (err)
-		return err;
-
-	si->bad_cnt += 1;
-	si->ec[eb] = EB_BAD;
-
-	return consecutive_bad_check(args, eb);
-}
-
-static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
-		       const struct ubigen_info *ui, struct ubi_scan_info *si)
-{
-	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
-	off_t st_size;
-	char *buf = NULL;
-
-	eb_cnt = mtd_num_pebs(mtd);
-
-	fd = open_file(args->image, &st_size);
-	if (fd < 0)
-		return fd;
-
-	buf = malloc(mtd->erasesize);
-	if (!buf) {
-		sys_errmsg("cannot allocate %d bytes of memory", mtd->erasesize);
-		goto out_close;
-	}
-
-	img_ebs = st_size / mtd->erasesize;
-
-	if (img_ebs > si->good_cnt) {
-		sys_errmsg("file \"%s\" is too large (%lld bytes)",
-			   args->image, (long long)st_size);
-		goto out_close;
-	}
-
-	if (st_size % mtd->erasesize) {
-		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
-			   "eraseblock size (%d bytes)",
-			   args->image, (long long)st_size, mtd->erasesize);
-		goto out_close;
-	}
-
-	if (st_size == 0) {
-		sys_errmsg("file \"%s\" has size 0 bytes", args->image);
-		goto out_close;
-	}
-
-	verbose(args->verbose, "will write %d eraseblocks", img_ebs);
-	for (eb = 0; eb < eb_cnt; eb++) {
-		int err, new_len;
-		long long ec;
-
-		if (!args->quiet && !args->verbose) {
-			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1) * 100 / eb_cnt);
-		}
-
-		if (si->ec[eb] == EB_BAD)
-			continue;
-
-		if (args->verbose) {
-			normsg_cont("eraseblock %d: erase", eb);
-		}
-
-		err = mtd_peb_erase(mtd, eb);
-		if (err) {
-			if (!args->quiet)
-				printf("\n");
-			sys_errmsg("failed to erase eraseblock %d", eb);
-
-			if (err != EIO)
-				goto out_close;
-
-			if (mark_bad(args, mtd, si, eb))
-				goto out_close;
-
-			continue;
-		}
-
-		err = read_full(fd, buf, mtd->erasesize);
-		if (err < 0) {
-			sys_errmsg("failed to read eraseblock %d from \"%s\"",
-				   written_ebs, args->image);
-			goto out_close;
-		}
-
-		if (args->override_ec)
-			ec = args->ec;
-		else if (si->ec[eb] <= EC_MAX)
-			ec = si->ec[eb] + 1;
-		else
-			ec = si->mean_ec;
-
-		if (args->verbose) {
-			printf(", change EC to %lld", ec);
-		}
-
-		err = change_ech((struct ubi_ec_hdr *)buf, ui->image_seq, ec);
-		if (err) {
-			errmsg("bad EC header at eraseblock %d of \"%s\"",
-			       written_ebs, args->image);
-			goto out_close;
-		}
-
-		if (args->verbose) {
-			printf(", write data\n");
-		}
-
-		new_len = drop_ffs(mtd, buf, mtd->erasesize);
-
-		err = mtd_peb_write(mtd, buf, eb, 0, new_len);
-		if (err) {
-			sys_errmsg("cannot write eraseblock %d", eb);
-
-			if (err != EIO)
-				goto out_close;
-
-			err = mtd_peb_torture(mtd, eb);
-			if (err < 0 && err != -EIO)
-				goto out_close;
-			if (err == -EIO && consecutive_bad_check(args, eb))
-				goto out_close;
-
-			continue;
-		}
-		if (++written_ebs >= img_ebs)
-			break;
-	}
-
-	if (!args->quiet && !args->verbose)
-		printf("\n");
-
-	ret = eb + 1;
-
-out_close:
-	free(buf);
-	close(fd);
-	return ret;
-}
-
-static int format(struct ubiformat_args *args, struct mtd_info *mtd,
-		  const struct ubigen_info *ui, struct ubi_scan_info *si,
-		  int start_eb, int novtbl)
-{
-	int eb, err, write_size, eb_cnt;
-	struct ubi_ec_hdr *hdr;
-	struct ubi_vtbl_record *vtbl;
-	int eb1 = -1, eb2 = -1;
-	long long ec1 = -1, ec2 = -1;
-
-	eb_cnt = mtd_num_pebs(mtd);
-
-	write_size = UBI_EC_HDR_SIZE + args->subpage_size - 1;
-	write_size /= args->subpage_size;
-	write_size *= args->subpage_size;
-	hdr = malloc(write_size);
-	if (!hdr)
-		return sys_errmsg("cannot allocate %d bytes of memory", write_size);
-	memset(hdr, 0xFF, write_size);
-
-	for (eb = start_eb; eb < eb_cnt; eb++) {
-		long long ec;
-
-		if (!args->quiet && !args->verbose) {
-			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
-		}
-
-		if (si->ec[eb] == EB_BAD)
-			continue;
-
-		if (args->override_ec)
-			ec = args->ec;
-		else if (si->ec[eb] <= EC_MAX)
-			ec = si->ec[eb] + 1;
-		else
-			ec = si->mean_ec;
-		ubigen_init_ec_hdr(ui, hdr, ec);
-
-		if (args->verbose) {
-			normsg_cont("eraseblock %d: erase", eb);
-		}
-
-		err = mtd_peb_erase(mtd, eb);
-		if (err) {
-			if (!args->quiet)
-				printf("\n");
-
-			sys_errmsg("failed to erase eraseblock %d", eb);
-			if (err != EIO)
-				goto out_free;
-
-			if (mark_bad(args, mtd, si, eb))
-				goto out_free;
-			continue;
-		}
-
-		if ((eb1 == -1 || eb2 == -1) && !novtbl) {
-			if (eb1 == -1) {
-				eb1 = eb;
-				ec1 = ec;
-			} else if (eb2 == -1) {
-				eb2 = eb;
-				ec2 = ec;
-			}
-			if (args->verbose)
-				printf(", do not write EC, leave for vtbl\n");
-			continue;
-		}
-
-		if (args->verbose) {
-			printf(", write EC %lld\n", ec);
-		}
-
-		err = mtd_peb_write(mtd, hdr, eb, 0, write_size);
-		if (err) {
-			if (!args->quiet && !args->verbose)
-				printf("\n");
-			sys_errmsg("cannot write EC header (%d bytes buffer) to eraseblock %d",
-				   write_size, eb);
-
-			if (errno != EIO) {
-				if (args->subpage_size != mtd->writesize)
-					normsg("may be sub-page size is incorrect?");
-				goto out_free;
-			}
-
-			err = mtd_peb_torture(mtd, eb);
-			if (err < 0 && err != -EIO)
-				goto out_free;
-			if (err == -EIO && consecutive_bad_check(args, eb))
-				goto out_free;
-
-			continue;
-
-		}
-	}
-
-	if (!args->quiet && !args->verbose)
-		printf("\n");
-
-	if (!novtbl) {
-		if (eb1 == -1 || eb2 == -1) {
-			errmsg("no eraseblocks for volume table");
-			goto out_free;
-		}
-
-		verbose(args->verbose, "write volume table to eraseblocks %d and %d", eb1, eb2);
-		vtbl = ubigen_create_empty_vtbl(ui);
-		if (!vtbl)
-			goto out_free;
-
-		err = ubigen_write_layout_vol(ui, eb1, eb2, ec1,  ec2, vtbl, mtd);
-		free(vtbl);
-		if (err) {
-			errmsg("cannot write layout volume");
-			goto out_free;
-		}
-	}
-
-	free(hdr);
-	return 0;
-
-out_free:
-	free(hdr);
-	return -1;
-}
-
-int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
-{
-	int err, verbose, eb_cnt;
-	struct ubigen_info ui;
-	struct ubi_scan_info *si;
-	int ubi_num;
-
-	if (!is_power_of_2(mtd->writesize)) {
-		errmsg("min. I/O size is %d, but should be power of 2",
-		       mtd->writesize);
-		err = -EINVAL;
-		goto out_close;
-	}
-
-	if (args->subpage_size) {
-		if (args->subpage_size != mtd->writesize >> mtd->subpage_sft)
-			args->manual_subpage = 1;
-	} else {
-		args->subpage_size = mtd->writesize >> mtd->subpage_sft;
-	}
-
-	if (args->manual_subpage) {
-		/* Do some sanity check */
-		if (args->subpage_size > mtd->writesize) {
-			errmsg("sub-page cannot be larger than min. I/O unit");
-			err = -EINVAL;
-			goto out_close;
-		}
-
-		if (mtd->writesize % args->subpage_size) {
-			errmsg("min. I/O unit size should be multiple of "
-			       "sub-page size");
-			err = -EINVAL;
-			goto out_close;
-		}
-	}
-
-	/* Validate VID header offset if it was specified */
-	if (args->vid_hdr_offs != 0) {
-		if (args->vid_hdr_offs % 8) {
-			errmsg("VID header offset has to be multiple of min. I/O unit size");
-			err = -EINVAL;
-			goto out_close;
-		}
-		if (args->vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
-			errmsg("bad VID header offset");
-			err = -EINVAL;
-			goto out_close;
-		}
-	}
-
-	if (!(mtd->flags & MTD_WRITEABLE)) {
-		errmsg("%s is a read-only device", args->node);
-		err = -EROFS;
-		goto out_close;
-	}
-
-	ubi_num = ubi_num_get_by_mtd(mtd);
-	if (ubi_num >= 0) {
-		err = ubi_detach(ubi_num);
-		if (err) {
-			sys_errmsg("Cannot detach %d\n", err);
-			goto out_close;
-		}
-	}
-
-
-	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
-
-	if (!args->quiet) {
-		normsg_cont("%s (%s), size %lld bytes (%s)", args->node, mtd_type_str(mtd),
-			mtd->size, size_human_readable(mtd->size));
-		printf(", %d eraseblocks of %d bytes (%s)", eb_cnt,
-			mtd->erasesize, size_human_readable(mtd->erasesize));
-		printf(", min. I/O size %d bytes\n", mtd->writesize);
-	}
-
-	if (args->quiet)
-		verbose = 0;
-	else if (args->verbose)
-		verbose = 2;
-	else
-		verbose = 1;
-	err = libscan_ubi_scan(mtd, &si, verbose);
-	if (err) {
-		errmsg("failed to scan %s", args->node);
-		goto out_close;
-	}
-
-	if (si->good_cnt == 0) {
-		errmsg("all %d eraseblocks are bad", si->bad_cnt);
-		err = -EINVAL;
-		goto out_free;
-	}
-
-	if (si->good_cnt < 2 && (!args->novtbl || args->image)) {
-		errmsg("too few non-bad eraseblocks (%d) on %s",
-		       si->good_cnt, args->node);
-		err = -EINVAL;
-		goto out_free;
-	}
-
-	if (!args->quiet) {
-		if (si->ok_cnt)
-			normsg("%d eraseblocks have valid erase counter, mean value is %lld",
-			       si->ok_cnt, si->mean_ec);
-		if (si->empty_cnt)
-			normsg("%d eraseblocks are supposedly empty", si->empty_cnt);
-		if (si->corrupted_cnt)
-			normsg("%d corrupted erase counters", si->corrupted_cnt);
-		print_bad_eraseblocks(mtd, si);
-	}
-
-	if (si->alien_cnt) {
-		if (!args->quiet)
-			warnmsg("%d of %d eraseblocks contain non-ubifs data",
-				si->alien_cnt, si->good_cnt);
-		if (!args->yes && !args->quiet)
-			warnmsg("use '-y' to force erasing");
-		if (!args->yes) {
-			err = -EINVAL;
-			goto out_free;
-		}
-	}
-
-	if (!args->override_ec && si->empty_cnt < si->good_cnt) {
-		int percent = (si->ok_cnt * 100) / si->good_cnt;
-
-		/*
-		 * Make sure the majority of eraseblocks have valid
-		 * erase counters.
-		 */
-		if (percent < 50) {
-			if (!args->quiet) {
-				warnmsg("only %d of %d eraseblocks have valid erase counter",
-					si->ok_cnt, si->good_cnt);
-				if (args->yes) {
-					normsg("erase counter 0 will be used for all eraseblocks");
-					normsg("note, arbitrary erase counter value may be specified using -e option");
-
-				} else {
-					warnmsg("use '-y' to force erase counters");
-				}
-			}
-
-			if (!args->yes) {
-				err = -EINVAL;
-				goto out_free;
-			}
-
-			args->ec = 0;
-			args->override_ec = 1;
-
-		} else if (percent < 95) {
-			if (!args->quiet) {
-				warnmsg("only %d of %d eraseblocks have valid erase counter",
-					si->ok_cnt, si->good_cnt);
-				if (args->yes)
-					normsg("mean erase counter %lld will be used for the rest of eraseblock",
-					       si->mean_ec);
-				else
-					warnmsg("use '-y' to force erase counters");
-			}
-
-			if (!args->yes) {
-				err = -EINVAL;
-				goto out_free;
-			}
-
-			args->ec = si->mean_ec;
-			args->override_ec = 1;
-		}
-	}
-
-	if (!args->quiet && args->override_ec)
-		normsg("use erase counter %lld for all eraseblocks", args->ec);
-
-	ubigen_info_init(&ui, mtd->erasesize, mtd->writesize, args->subpage_size,
-			 args->vid_hdr_offs, args->ubi_ver, args->image_seq);
-
-	if (si->vid_hdr_offs != -1 && ui.vid_hdr_offs != si->vid_hdr_offs) {
-		/*
-		 * Hmm, what we read from flash and what we calculated using
-		 * min. I/O unit size and sub-page size differs.
-		 */
-		if (!args->quiet) {
-			warnmsg("VID header and data offsets on flash are %d and %d, "
-				"which is different to requested offsets %d and %d",
-				si->vid_hdr_offs, si->data_offs, ui.vid_hdr_offs,
-				ui.data_offs);
-			normsg("using offsets %d and %d",  ui.vid_hdr_offs, ui.data_offs);
-		}
-	}
-
-	if (args->image) {
-		err = flash_image(args, mtd, &ui, si);
-		if (err < 0)
-			goto out_free;
-
-		err = format(args, mtd, &ui, si, err, 1);
-		if (err)
-			goto out_free;
-	} else {
-		err = format(args, mtd, &ui, si, 0, args->novtbl);
-		if (err)
-			goto out_free;
-	}
-
-	libscan_ubi_scan_free(si);
-
-	/* Reattach the ubi device in case it was attached in the beginning */
-	if (ubi_num >= 0) {
-		err = ubi_attach_mtd_dev(mtd, ubi_num, 0, 20);
-		if (err) {
-			pr_err("Failed to reattach ubi device to ubi number %d, %d\n",
-			       ubi_num, err);
-			return err;
-		}
-	}
-
-	return 0;
-
-out_free:
-	libscan_ubi_scan_free(si);
-out_close:
-
-	return err;
-}
-
-int do_ubiformat(int argc, char *argv[])
+static int do_ubiformat(int argc, char *argv[])
 {
 	int err, fd;
 	struct ubiformat_args args;
diff --git a/common/Kconfig b/common/Kconfig
index 7c09e8c..7fa7d8a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -114,6 +114,13 @@ config BAREBOX_UPDATE_IMX_NAND_FCB
 	depends on NAND_MXS
 	default y
 
+config UBIFORMAT
+	bool
+	select LIBSCAN
+	select LIBUBIGEN
+	depends on MTD_UBI
+	default y
+
 menu "General Settings"
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index d99ca7b..99681e2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -55,6 +55,7 @@ lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
 obj-$(CONFIG_FILE_LIST)		+= file-list.o
 obj-$(CONFIG_FIRMWARE)		+= firmware.o
+obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 
diff --git a/common/ubiformat.c b/common/ubiformat.c
new file mode 100644
index 0000000..e4f569b
--- /dev/null
+++ b/common/ubiformat.c
@@ -0,0 +1,675 @@
+/*
+ * Copyright (C) 2008 Nokia Corporation
+ * Copyright (C) 2012 Wolfram Sang, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ */
+
+/*
+ * An utility to format MTD devices into UBI and flash UBI images.
+ *
+ * Author: Artem Bityutskiy
+ */
+
+/*
+ * Maximum amount of consequtive eraseblocks which are considered as normal by
+ * this utility. Otherwise it is assume that something is wrong with the flash
+ * or the driver, and eraseblocks are stopped being marked as bad.
+ */
+#define MAX_CONSECUTIVE_BAD_BLOCKS 4
+
+#define PROGRAM_NAME	"ubiformat"
+
+#include <common.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <crc.h>
+#include <stdlib.h>
+#include <clock.h>
+#include <malloc.h>
+#include <ioctl.h>
+#include <libbb.h>
+#include <libfile.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
+#include <linux/kernel.h>
+#include <linux/stat.h>
+#include <linux/log2.h>
+#include <linux/mtd/mtd-abi.h>
+#include <mtd/libscan.h>
+#include <mtd/libubigen.h>
+#include <mtd/ubi-user.h>
+#include <mtd/utils.h>
+#include <mtd/ubi-media.h>
+#include <mtd/mtd-peb.h>
+#include <ubiformat.h>
+
+static void print_bad_eraseblocks(struct mtd_info *mtd,
+				  const struct ubi_scan_info *si)
+{
+	int first = 1, eb, eb_cnt;
+
+	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
+
+	if (si->bad_cnt == 0)
+		return;
+
+	normsg_cont("%d bad eraseblocks found, numbers: ", si->bad_cnt);
+	for (eb = 0; eb < eb_cnt; eb++) {
+		if (si->ec[eb] != EB_BAD)
+			continue;
+		if (first) {
+			printf("%d", eb);
+			first = 0;
+		} else
+			printf(", %d", eb);
+	}
+	printf("\n");
+}
+
+static int change_ech(struct ubi_ec_hdr *hdr, uint32_t image_seq,
+		      long long ec)
+{
+	uint32_t crc;
+
+	/* Check the EC header */
+	if (be32_to_cpu(hdr->magic) != UBI_EC_HDR_MAGIC)
+		return errmsg("bad UBI magic %#08x, should be %#08x",
+			      be32_to_cpu(hdr->magic), UBI_EC_HDR_MAGIC);
+
+	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_EC_HDR_SIZE_CRC);
+	if (be32_to_cpu(hdr->hdr_crc) != crc)
+		return errmsg("bad CRC %#08x, should be %#08x\n",
+			      crc, be32_to_cpu(hdr->hdr_crc));
+
+	hdr->image_seq = cpu_to_be32(image_seq);
+	hdr->ec = cpu_to_be64(ec);
+	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_EC_HDR_SIZE_CRC);
+	hdr->hdr_crc = cpu_to_be32(crc);
+
+	return 0;
+}
+
+static int drop_ffs(struct mtd_info *mtd, const void *buf, int len)
+{
+	int i;
+
+        for (i = len - 1; i >= 0; i--)
+		if (((const uint8_t *)buf)[i] != 0xFF)
+		      break;
+
+        /* The resulting length must be aligned to the minimum flash I/O size */
+	len = i + 1;
+	len = (len + mtd->writesize - 1) / mtd->writesize;
+	len *=  mtd->writesize;
+	return len;
+}
+
+static int open_file(const char *file, off_t *sz)
+{
+	int fd;
+	struct stat st;
+
+	if (stat(file, &st))
+		return sys_errmsg("cannot open \"%s\"", file);
+
+	*sz = st.st_size;
+	fd  = open(file, O_RDONLY);
+	if (fd < 0)
+		return sys_errmsg("cannot open \"%s\"", file);
+
+	return fd;
+}
+
+/*
+ * Returns %-1 if consecutive bad blocks exceeds the
+ * MAX_CONSECUTIVE_BAD_BLOCKS and returns %0 otherwise.
+ */
+static int consecutive_bad_check(struct ubiformat_args *args, int eb)
+{
+	static int consecutive_bad_blocks = 1;
+	static int prev_bb = -1;
+
+	if (prev_bb == -1)
+		prev_bb = eb;
+
+	if (eb == prev_bb + 1)
+		consecutive_bad_blocks += 1;
+	else
+		consecutive_bad_blocks = 1;
+
+	prev_bb = eb;
+
+	if (consecutive_bad_blocks >= MAX_CONSECUTIVE_BAD_BLOCKS) {
+		if (!args->quiet)
+			printf("\n");
+		return errmsg("consecutive bad blocks exceed limit: %d, bad flash?",
+		              MAX_CONSECUTIVE_BAD_BLOCKS);
+	}
+
+	return 0;
+}
+
+/* TODO: we should actually torture the PEB before marking it as bad */
+static int mark_bad(struct ubiformat_args *args, struct mtd_info *mtd,
+		    struct ubi_scan_info *si, int eb)
+{
+	int err;
+
+	if (!args->quiet)
+		normsg_cont("marking block %d bad\n", eb);
+
+	if (!mtd_can_have_bb(mtd)) {
+		if (!args->quiet)
+			printf("\n");
+		return errmsg("bad blocks not supported by this flash");
+	}
+
+	err = mtd_peb_mark_bad(mtd, eb);
+	if (err)
+		return err;
+
+	si->bad_cnt += 1;
+	si->ec[eb] = EB_BAD;
+
+	return consecutive_bad_check(args, eb);
+}
+
+static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
+		       const struct ubigen_info *ui, struct ubi_scan_info *si)
+{
+	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
+	off_t st_size;
+	char *buf = NULL;
+
+	eb_cnt = mtd_num_pebs(mtd);
+
+	fd = open_file(args->image, &st_size);
+	if (fd < 0)
+		return fd;
+
+	buf = malloc(mtd->erasesize);
+	if (!buf) {
+		sys_errmsg("cannot allocate %d bytes of memory", mtd->erasesize);
+		goto out_close;
+	}
+
+	img_ebs = st_size / mtd->erasesize;
+
+	if (img_ebs > si->good_cnt) {
+		sys_errmsg("file \"%s\" is too large (%lld bytes)",
+			   args->image, (long long)st_size);
+		goto out_close;
+	}
+
+	if (st_size % mtd->erasesize) {
+		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of "
+			   "eraseblock size (%d bytes)",
+			   args->image, (long long)st_size, mtd->erasesize);
+		goto out_close;
+	}
+
+	if (st_size == 0) {
+		sys_errmsg("file \"%s\" has size 0 bytes", args->image);
+		goto out_close;
+	}
+
+	verbose(args->verbose, "will write %d eraseblocks", img_ebs);
+	for (eb = 0; eb < eb_cnt; eb++) {
+		int err, new_len;
+		long long ec;
+
+		if (!args->quiet && !args->verbose) {
+			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
+			       eb, (eb + 1) * 100 / eb_cnt);
+		}
+
+		if (si->ec[eb] == EB_BAD)
+			continue;
+
+		if (args->verbose) {
+			normsg_cont("eraseblock %d: erase", eb);
+		}
+
+		err = mtd_peb_erase(mtd, eb);
+		if (err) {
+			if (!args->quiet)
+				printf("\n");
+			sys_errmsg("failed to erase eraseblock %d", eb);
+
+			if (err != EIO)
+				goto out_close;
+
+			if (mark_bad(args, mtd, si, eb))
+				goto out_close;
+
+			continue;
+		}
+
+		err = read_full(fd, buf, mtd->erasesize);
+		if (err < 0) {
+			sys_errmsg("failed to read eraseblock %d from \"%s\"",
+				   written_ebs, args->image);
+			goto out_close;
+		}
+
+		if (args->override_ec)
+			ec = args->ec;
+		else if (si->ec[eb] <= EC_MAX)
+			ec = si->ec[eb] + 1;
+		else
+			ec = si->mean_ec;
+
+		if (args->verbose) {
+			printf(", change EC to %lld", ec);
+		}
+
+		err = change_ech((struct ubi_ec_hdr *)buf, ui->image_seq, ec);
+		if (err) {
+			errmsg("bad EC header at eraseblock %d of \"%s\"",
+			       written_ebs, args->image);
+			goto out_close;
+		}
+
+		if (args->verbose) {
+			printf(", write data\n");
+		}
+
+		new_len = drop_ffs(mtd, buf, mtd->erasesize);
+
+		err = mtd_peb_write(mtd, buf, eb, 0, new_len);
+		if (err) {
+			sys_errmsg("cannot write eraseblock %d", eb);
+
+			if (err != EIO)
+				goto out_close;
+
+			err = mtd_peb_torture(mtd, eb);
+			if (err < 0 && err != -EIO)
+				goto out_close;
+			if (err == -EIO && consecutive_bad_check(args, eb))
+				goto out_close;
+
+			continue;
+		}
+		if (++written_ebs >= img_ebs)
+			break;
+	}
+
+	if (!args->quiet && !args->verbose)
+		printf("\n");
+
+	ret = eb + 1;
+
+out_close:
+	free(buf);
+	close(fd);
+	return ret;
+}
+
+static int format(struct ubiformat_args *args, struct mtd_info *mtd,
+		  const struct ubigen_info *ui, struct ubi_scan_info *si,
+		  int start_eb, int novtbl)
+{
+	int eb, err, write_size, eb_cnt;
+	struct ubi_ec_hdr *hdr;
+	struct ubi_vtbl_record *vtbl;
+	int eb1 = -1, eb2 = -1;
+	long long ec1 = -1, ec2 = -1;
+
+	eb_cnt = mtd_num_pebs(mtd);
+
+	write_size = UBI_EC_HDR_SIZE + args->subpage_size - 1;
+	write_size /= args->subpage_size;
+	write_size *= args->subpage_size;
+	hdr = malloc(write_size);
+	if (!hdr)
+		return sys_errmsg("cannot allocate %d bytes of memory", write_size);
+	memset(hdr, 0xFF, write_size);
+
+	for (eb = start_eb; eb < eb_cnt; eb++) {
+		long long ec;
+
+		if (!args->quiet && !args->verbose) {
+			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
+			       eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
+		}
+
+		if (si->ec[eb] == EB_BAD)
+			continue;
+
+		if (args->override_ec)
+			ec = args->ec;
+		else if (si->ec[eb] <= EC_MAX)
+			ec = si->ec[eb] + 1;
+		else
+			ec = si->mean_ec;
+		ubigen_init_ec_hdr(ui, hdr, ec);
+
+		if (args->verbose) {
+			normsg_cont("eraseblock %d: erase", eb);
+		}
+
+		err = mtd_peb_erase(mtd, eb);
+		if (err) {
+			if (!args->quiet)
+				printf("\n");
+
+			sys_errmsg("failed to erase eraseblock %d", eb);
+			if (err != EIO)
+				goto out_free;
+
+			if (mark_bad(args, mtd, si, eb))
+				goto out_free;
+			continue;
+		}
+
+		if ((eb1 == -1 || eb2 == -1) && !novtbl) {
+			if (eb1 == -1) {
+				eb1 = eb;
+				ec1 = ec;
+			} else if (eb2 == -1) {
+				eb2 = eb;
+				ec2 = ec;
+			}
+			if (args->verbose)
+				printf(", do not write EC, leave for vtbl\n");
+			continue;
+		}
+
+		if (args->verbose) {
+			printf(", write EC %lld\n", ec);
+		}
+
+		err = mtd_peb_write(mtd, hdr, eb, 0, write_size);
+		if (err) {
+			if (!args->quiet && !args->verbose)
+				printf("\n");
+			sys_errmsg("cannot write EC header (%d bytes buffer) to eraseblock %d",
+				   write_size, eb);
+
+			if (errno != EIO) {
+				if (args->subpage_size != mtd->writesize)
+					normsg("may be sub-page size is incorrect?");
+				goto out_free;
+			}
+
+			err = mtd_peb_torture(mtd, eb);
+			if (err < 0 && err != -EIO)
+				goto out_free;
+			if (err == -EIO && consecutive_bad_check(args, eb))
+				goto out_free;
+
+			continue;
+
+		}
+	}
+
+	if (!args->quiet && !args->verbose)
+		printf("\n");
+
+	if (!novtbl) {
+		if (eb1 == -1 || eb2 == -1) {
+			errmsg("no eraseblocks for volume table");
+			goto out_free;
+		}
+
+		verbose(args->verbose, "write volume table to eraseblocks %d and %d", eb1, eb2);
+		vtbl = ubigen_create_empty_vtbl(ui);
+		if (!vtbl)
+			goto out_free;
+
+		err = ubigen_write_layout_vol(ui, eb1, eb2, ec1,  ec2, vtbl, mtd);
+		free(vtbl);
+		if (err) {
+			errmsg("cannot write layout volume");
+			goto out_free;
+		}
+	}
+
+	free(hdr);
+	return 0;
+
+out_free:
+	free(hdr);
+	return -1;
+}
+
+int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
+{
+	int err, verbose, eb_cnt;
+	struct ubigen_info ui;
+	struct ubi_scan_info *si;
+	int ubi_num;
+
+	if (!is_power_of_2(mtd->writesize)) {
+		errmsg("min. I/O size is %d, but should be power of 2",
+		       mtd->writesize);
+		err = -EINVAL;
+		goto out_close;
+	}
+
+	if (args->subpage_size) {
+		if (args->subpage_size != mtd->writesize >> mtd->subpage_sft)
+			args->manual_subpage = 1;
+	} else {
+		args->subpage_size = mtd->writesize >> mtd->subpage_sft;
+	}
+
+	if (args->manual_subpage) {
+		/* Do some sanity check */
+		if (args->subpage_size > mtd->writesize) {
+			errmsg("sub-page cannot be larger than min. I/O unit");
+			err = -EINVAL;
+			goto out_close;
+		}
+
+		if (mtd->writesize % args->subpage_size) {
+			errmsg("min. I/O unit size should be multiple of "
+			       "sub-page size");
+			err = -EINVAL;
+			goto out_close;
+		}
+	}
+
+	/* Validate VID header offset if it was specified */
+	if (args->vid_hdr_offs != 0) {
+		if (args->vid_hdr_offs % 8) {
+			errmsg("VID header offset has to be multiple of min. I/O unit size");
+			err = -EINVAL;
+			goto out_close;
+		}
+		if (args->vid_hdr_offs + (int)UBI_VID_HDR_SIZE > mtd->erasesize) {
+			errmsg("bad VID header offset");
+			err = -EINVAL;
+			goto out_close;
+		}
+	}
+
+	if (!(mtd->flags & MTD_WRITEABLE)) {
+		errmsg("%s is a read-only device", mtd->name);
+		err = -EROFS;
+		goto out_close;
+	}
+
+	ubi_num = ubi_num_get_by_mtd(mtd);
+	if (ubi_num >= 0) {
+		err = ubi_detach(ubi_num);
+		if (err) {
+			sys_errmsg("Cannot detach %d\n", err);
+			goto out_close;
+		}
+	}
+
+
+	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
+
+	if (!args->quiet) {
+		normsg_cont("%s (%s), size %lld bytes (%s)", mtd->name, mtd_type_str(mtd),
+			mtd->size, size_human_readable(mtd->size));
+		printf(", %d eraseblocks of %d bytes (%s)", eb_cnt,
+			mtd->erasesize, size_human_readable(mtd->erasesize));
+		printf(", min. I/O size %d bytes\n", mtd->writesize);
+	}
+
+	if (args->quiet)
+		verbose = 0;
+	else if (args->verbose)
+		verbose = 2;
+	else
+		verbose = 1;
+	err = libscan_ubi_scan(mtd, &si, verbose);
+	if (err) {
+		errmsg("failed to scan %s", mtd->name);
+		goto out_close;
+	}
+
+	if (si->good_cnt == 0) {
+		errmsg("all %d eraseblocks are bad", si->bad_cnt);
+		err = -EINVAL;
+		goto out_free;
+	}
+
+	if (si->good_cnt < 2 && (!args->novtbl || args->image)) {
+		errmsg("too few non-bad eraseblocks (%d) on %s",
+		       si->good_cnt, mtd->name);
+		err = -EINVAL;
+		goto out_free;
+	}
+
+	if (!args->quiet) {
+		if (si->ok_cnt)
+			normsg("%d eraseblocks have valid erase counter, mean value is %lld",
+			       si->ok_cnt, si->mean_ec);
+		if (si->empty_cnt)
+			normsg("%d eraseblocks are supposedly empty", si->empty_cnt);
+		if (si->corrupted_cnt)
+			normsg("%d corrupted erase counters", si->corrupted_cnt);
+		print_bad_eraseblocks(mtd, si);
+	}
+
+	if (si->alien_cnt) {
+		if (!args->quiet)
+			warnmsg("%d of %d eraseblocks contain non-ubifs data",
+				si->alien_cnt, si->good_cnt);
+		if (!args->yes && !args->quiet)
+			warnmsg("use '-y' to force erasing");
+		if (!args->yes) {
+			err = -EINVAL;
+			goto out_free;
+		}
+	}
+
+	if (!args->override_ec && si->empty_cnt < si->good_cnt) {
+		int percent = (si->ok_cnt * 100) / si->good_cnt;
+
+		/*
+		 * Make sure the majority of eraseblocks have valid
+		 * erase counters.
+		 */
+		if (percent < 50) {
+			if (!args->quiet) {
+				warnmsg("only %d of %d eraseblocks have valid erase counter",
+					si->ok_cnt, si->good_cnt);
+				if (args->yes) {
+					normsg("erase counter 0 will be used for all eraseblocks");
+					normsg("note, arbitrary erase counter value may be specified using -e option");
+
+				} else {
+					warnmsg("use '-y' to force erase counters");
+				}
+			}
+
+			if (!args->yes) {
+				err = -EINVAL;
+				goto out_free;
+			}
+
+			args->ec = 0;
+			args->override_ec = 1;
+
+		} else if (percent < 95) {
+			if (!args->quiet) {
+				warnmsg("only %d of %d eraseblocks have valid erase counter",
+					si->ok_cnt, si->good_cnt);
+				if (args->yes)
+					normsg("mean erase counter %lld will be used for the rest of eraseblock",
+					       si->mean_ec);
+				else
+					warnmsg("use '-y' to force erase counters");
+			}
+
+			if (!args->yes) {
+				err = -EINVAL;
+				goto out_free;
+			}
+
+			args->ec = si->mean_ec;
+			args->override_ec = 1;
+		}
+	}
+
+	if (!args->quiet && args->override_ec)
+		normsg("use erase counter %lld for all eraseblocks", args->ec);
+
+	ubigen_info_init(&ui, mtd->erasesize, mtd->writesize, args->subpage_size,
+			 args->vid_hdr_offs, args->ubi_ver, args->image_seq);
+
+	if (si->vid_hdr_offs != -1 && ui.vid_hdr_offs != si->vid_hdr_offs) {
+		/*
+		 * Hmm, what we read from flash and what we calculated using
+		 * min. I/O unit size and sub-page size differs.
+		 */
+		if (!args->quiet) {
+			warnmsg("VID header and data offsets on flash are %d and %d, "
+				"which is different to requested offsets %d and %d",
+				si->vid_hdr_offs, si->data_offs, ui.vid_hdr_offs,
+				ui.data_offs);
+			normsg("using offsets %d and %d",  ui.vid_hdr_offs, ui.data_offs);
+		}
+	}
+
+	if (args->image) {
+		err = flash_image(args, mtd, &ui, si);
+		if (err < 0)
+			goto out_free;
+
+		err = format(args, mtd, &ui, si, err, 1);
+		if (err)
+			goto out_free;
+	} else {
+		err = format(args, mtd, &ui, si, 0, args->novtbl);
+		if (err)
+			goto out_free;
+	}
+
+	libscan_ubi_scan_free(si);
+
+	/* Reattach the ubi device in case it was attached in the beginning */
+	if (ubi_num >= 0) {
+		err = ubi_attach_mtd_dev(mtd, ubi_num, 0, 20);
+		if (err) {
+			pr_err("Failed to reattach ubi device to ubi number %d, %d\n",
+			       ubi_num, err);
+			return err;
+		}
+	}
+
+	return 0;
+
+out_free:
+	libscan_ubi_scan_free(si);
+out_close:
+
+	return err;
+}
+
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
