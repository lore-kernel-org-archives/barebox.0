Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxG-0005Gj-0V
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:19 +0100
Message-Id: <1458040534-6171-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] mtd: Add support for marking blocks as good
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c              | 34 +++++++++++++++++++++----
 drivers/mtd/core.c           | 16 ++++++++++++
 drivers/mtd/mtdconcat.c      | 24 ++++++++++++++++++
 drivers/mtd/nand/nand_base.c | 59 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/partition.c      | 16 ++++++++++++
 fs/devfs-core.c              |  1 +
 include/linux/mtd/mtd-abi.h  |  1 +
 include/linux/mtd/mtd.h      |  2 ++
 include/linux/mtd/nand.h     |  2 ++
 9 files changed, 150 insertions(+), 5 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index c330ad1..1807c92 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -32,6 +32,7 @@
 #define NAND_ADD	1
 #define NAND_DEL	2
 #define NAND_MARKBAD	3
+#define NAND_MARKGOOD	4
 
 static int do_nand(int argc, char *argv[])
 {
@@ -39,7 +40,7 @@ static int do_nand(int argc, char *argv[])
 	int command = 0;
 	loff_t badblock = 0;
 
-	while((opt = getopt(argc, argv, "adb:")) > 0) {
+	while((opt = getopt(argc, argv, "adb:g:")) > 0) {
 		if (command) {
 			printf("only one command may be given\n");
 			return 1;
@@ -55,12 +56,24 @@ static int do_nand(int argc, char *argv[])
 		case 'b':
 			command = NAND_MARKBAD;
 			badblock = strtoull_suffix(optarg, NULL, 0);
+			break;
+		case 'g':
+			command = NAND_MARKGOOD;
+			badblock = strtoull_suffix(optarg, NULL, 0);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
 	if (optind >= argc)
 		return COMMAND_ERROR_USAGE;
 
+	if (!command) {
+		printf("No action given\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
 	if (command == NAND_ADD) {
 		while (optind < argc) {
 			if (dev_add_bb_dev(basename(argv[optind]), NULL))
@@ -77,11 +90,21 @@ static int do_nand(int argc, char *argv[])
 		}
 	}
 
-	if (command == NAND_MARKBAD) {
+	if (command == NAND_MARKBAD || command == NAND_MARKGOOD) {
 		int ret = 0, fd;
+		const char *str;
+		int ctl;
+
+		if (command == NAND_MARKBAD) {
+			str = "bad";
+			ctl = MEMSETBADBLOCK;
+		} else {
+			str = "good";
+			ctl = MEMSETGOODBLOCK;
+		}
 
-		printf("marking block at 0x%08llx on %s as bad\n",
-				badblock, argv[optind]);
+		printf("marking block at 0x%08llx on %s as %s\n",
+				badblock, argv[optind], str);
 
 		fd = open(argv[optind], O_RDWR);
 		if (fd < 0) {
@@ -89,7 +112,7 @@ static int do_nand(int argc, char *argv[])
 			return 1;
 		}
 
-		ret = ioctl(fd, MEMSETBADBLOCK, &badblock);
+		ret = ioctl(fd, ctl, &badblock);
 		if (ret) {
 			if (ret == -EINVAL)
 				printf("Maybe offset %lld is out of range.\n",
@@ -110,6 +133,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "register a bad block aware device ontop of a normal NAND device")
 BAREBOX_CMD_HELP_OPT ("-d",  "deregister a bad block aware device")
 BAREBOX_CMD_HELP_OPT ("-b OFFS",  "mark block at OFFSet as bad")
+BAREBOX_CMD_HELP_OPT ("-g OFFS",  "mark block at OFFSet as good")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nand)
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 161c6ad..3143b07 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -231,6 +231,10 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08llx\n", *offset);
 		ret = mtd_block_markbad(mtd, *offset);
 		break;
+	case MEMSETGOODBLOCK:
+		dev_dbg(cdev->dev, "MEMSETGOODBLOCK: 0x%08llx\n", *offset);
+		ret = mtd_block_markgood(mtd, *offset);
+		break;
 	case MEMERASE:
 		ret = mtd_op_erase(cdev, ei->length, ei->start + cdev->offset);
 		break;
@@ -320,6 +324,18 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return ret;
 }
 
+int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	int ret;
+
+	if (mtd->block_markgood)
+		ret = mtd->block_markgood(mtd, ofs);
+	else
+		ret = -ENOSYS;
+
+	return ret;
+}
+
 int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 		u_char *buf)
 {
diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index 6395b2f..fa43071 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -506,6 +506,28 @@ static int concat_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return err;
 }
 
+static int concat_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	struct mtd_concat *concat = CONCAT(mtd);
+	int i, err = -EINVAL;
+
+	for (i = 0; i < concat->num_subdev; i++) {
+		struct mtd_info *subdev = concat->subdev[i];
+
+		if (ofs >= subdev->size) {
+			ofs -= subdev->size;
+			continue;
+		}
+
+		err = mtd_block_markgood(subdev, ofs);
+		if (!err)
+			mtd->ecc_stats.badblocks--;
+		break;
+	}
+
+	return err;
+}
+
 /*
  * This function constructs a virtual MTD device by concatenating
  * num_devs MTD devices. A pointer to the new device object is
@@ -565,6 +587,8 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 		concat->mtd.block_isbad = concat_block_isbad;
 	if (subdev[0]->block_markbad)
 		concat->mtd.block_markbad = concat_block_markbad;
+	if (subdev[0]->block_markgood)
+		concat->mtd.block_markgood = concat_block_markgood;
 
 	concat->mtd.ecc_stats.badblocks = subdev[0]->ecc_stats.badblocks;
 
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ec5a8b7..ffbf829 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -456,6 +456,38 @@ static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
 	return chip->block_bad(mtd, ofs, getchip);
 }
 
+/**
+ * nand_default_block_markgood - [DEFAULT] mark a block good
+ * @mtd:	MTD device structure
+ * @ofs:	offset from device start
+ *
+ * This is the default implementation, which can be overridden by
+ * a hardware specific driver.
+*/
+static __maybe_unused  int nand_default_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	int block, res, ret = 0;
+
+	/* Get block number */
+	block = (int)(ofs >> chip->bbt_erase_shift);
+	/* Mark block good in memory-based BBT */
+	if (chip->bbt)
+		chip->bbt[block >> 2] &= ~(0x01 << ((block & 0x03) << 1));
+
+	/* Update flash-based bad block table */
+	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt_options & NAND_BBT_USE_FLASH) {
+		res = nand_update_bbt(mtd, ofs);
+		if (!ret)
+			ret = res;
+	}
+
+	if (!ret)
+		mtd->ecc_stats.badblocks++;
+
+	return ret;
+}
+
 /* Wait for the ready pin, after a command. The timeout is caught later. */
 void nand_wait_ready(struct mtd_info *mtd)
 {
@@ -2775,6 +2807,30 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 }
 
 /**
+ * nand_block_markgood - [MTD Interface] Mark block at the given offset as bad
+ * @mtd: MTD device structure
+ * @ofs: offset relative to mtd start
+ */
+static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
+	ret = nand_block_isbad(mtd, ofs);
+	if (ret < 0)
+		return ret;
+
+	/* If it was good already, return success and do nothing */
+	if (!ret)
+		return 0;
+
+	return chip->block_markgood(mtd, ofs);
+}
+
+/**
  * nand_onfi_set_features- [REPLACEABLE] set features for ONFI nand
  * @mtd: MTD device structure
  * @chip: nand chip info structure
@@ -2844,6 +2900,8 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 #ifdef CONFIG_MTD_WRITE
 	if (!chip->block_markbad)
 		chip->block_markbad = nand_default_block_markbad;
+	if (!chip->block_markgood)
+		chip->block_markgood = nand_default_block_markgood;
 	if (!chip->write_buf)
 		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
 #endif
@@ -3707,6 +3765,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
 	mtd->block_markbad = nand_block_markbad;
+	mtd->block_markgood = nand_block_markgood;
 	mtd->writebufsize = mtd->writesize;
 
 	/* propagate ecc info to mtd_info */
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index c11a3db..261e35c 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -114,6 +114,21 @@ static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return res;
 }
 
+static int mtd_part_block_markgood(struct mtd_info *mtd, loff_t ofs)
+{
+	int res;
+
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	if (ofs >= mtd->size)
+		return -EINVAL;
+	ofs += mtd->master_offset;
+	res = mtd->master->block_markgood(mtd->master, ofs);
+	if (!res)
+		mtd->ecc_stats.badblocks--;
+	return res;
+}
+
 struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		uint64_t size, unsigned long flags, const char *name)
 {
@@ -168,6 +183,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 		part->lock = mtd_part_lock;
 		part->unlock = mtd_part_unlock;
 		part->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
+		part->block_markgood = mtd->block_markgood ? mtd_part_block_markgood : NULL;
 	}
 
 	if (mtd->write_oob)
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index deacaaa..75ed3b0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -192,6 +192,7 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 
 	switch (request) {
 	case MEMSETBADBLOCK:
+	case MEMSETGOODBLOCK:
 	case MEMGETBADBLOCK:
 		offset = *_buf;
 		offset += cdev->offset;
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 8e778df..9bca9b5 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -118,6 +118,7 @@ struct otp_info {
 #define ECCGETLAYOUT		_IOR('M', 17, struct nand_ecclayout)
 #define ECCGETSTATS		_IOR('M', 18, struct mtd_ecc_stats)
 #define MTDFILEMODE		_IO('M', 19)
+#define MEMSETGOODBLOCK		_IOW('M', 20, loff_t)
 
 /*
  * Obsolete legacy interface. Keep it in order not to break userspace
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 421a941..efb08b1 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -189,6 +189,7 @@ struct mtd_info {
 	/* Bad block management functions */
 	int (*block_isbad) (struct mtd_info *mtd, loff_t ofs);
 	int (*block_markbad) (struct mtd_info *mtd, loff_t ofs);
+	int (*block_markgood) (struct mtd_info *mtd, loff_t ofs);
 
 	/* ECC status information */
 	struct mtd_ecc_stats ecc_stats;
@@ -308,6 +309,7 @@ int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
 int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
 int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
+int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs);
 
 int mtd_all_ff(const void *buf, unsigned int len);
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 83d664e..b787842 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -394,6 +394,7 @@ struct nand_buffers {
  * @select_chip:	[REPLACEABLE] select chip nr
  * @block_bad:		[REPLACEABLE] check, if the block is bad
  * @block_markbad:	[REPLACEABLE] mark the block bad
+ * @block_markgood:	[REPLACEABLE] mark the block good
  * @cmd_ctrl:		[BOARDSPECIFIC] hardwarespecific function for controlling
  *			ALE/CLE/nCE. Also used to write command and address
  * @init_size:		[BOARDSPECIFIC] hardwarespecific function for setting
@@ -479,6 +480,7 @@ struct nand_chip {
 	void (*select_chip)(struct mtd_info *mtd, int chip);
 	int (*block_bad)(struct mtd_info *mtd, loff_t ofs, int getchip);
 	int (*block_markbad)(struct mtd_info *mtd, loff_t ofs);
+	int (*block_markgood)(struct mtd_info *mtd, loff_t ofs);
 	void (*cmd_ctrl)(struct mtd_info *mtd, int dat, unsigned int ctrl);
 	int (*init_size)(struct mtd_info *mtd, struct nand_chip *this,
 			u8 *id_data);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
