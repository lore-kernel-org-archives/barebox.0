Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agW6O-0003Sk-NK
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:28:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:28:05 +0100
Message-Id: <1458214085-14522-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: Create nand_bitflip command
To: Barebox List <barebox@lists.infradead.org>

This adds a command to flip bits in a Nand flash. This is useful for
testing purposes to check if flipped bits are corrected and if the
driver returns the correct number of bitflips.

The command writes a configurable number of bitflips to a single Nand
page. If the -r option is not given the results are reproducible, so
calling the same command twice will revert the bitflips.

The command uses the raw read/write Nand operations which are probably
less tested than the regular read/write operations, so the command may
produce surprising results.

As of writing the command has been tested with the GPMI Nand driver and
the imx-nand driver with fixes posted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig        |  17 +++++++
 commands/Makefile       |   1 +
 commands/nand-bitflip.c | 117 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/peb.c       | 121 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/mtd/mtd-peb.h   |   3 ++
 5 files changed, 259 insertions(+)
 create mode 100644 commands/nand-bitflip.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1724391..875c5f4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1908,6 +1908,23 @@ config CMD_NANDTEST
 		  -o OFFS	start offset on flash
 		  -l LEN	length of flash to test
 
+config CMD_NAND_BITFLIP
+	tristate
+	depends on NAND
+	prompt "nand_bitflip"
+	help
+	  nand_bitflip - Create bitflips on Nand pages. This command is useful for testing
+	  purposes.
+
+	  Usage: nand_bitflip NANDDEV
+
+	  This command creates bitflips on Nand pages.
+	  Options:
+	          -b <block>      block to work on
+	          -o <offset>     offset in Nand
+	          -r      flip random bits
+	          -n <numbitflips>        Specify maximum number of bitflips to generate
+
 config CMD_POWEROFF
 	tristate
 	depends on HAS_POWEROFF
diff --git a/commands/Makefile b/commands/Makefile
index 8975d4b..f1b482f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -116,3 +116,4 @@ obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
 obj-$(CONFIG_CMD_DHRYSTONE)	+= dhrystone.o
 obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
+obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
new file mode 100644
index 0000000..fe56f22
--- /dev/null
+++ b/commands/nand-bitflip.c
@@ -0,0 +1,117 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <ioctl.h>
+#include <linux/mtd/mtd.h>
+#include <mtd/mtd-peb.h>
+
+static int do_nand_bitflip(int argc, char *argv[])
+{
+	int opt, ret, fd;
+	static struct mtd_info_user meminfo;
+	int block = 0;
+	int random = 0;
+	int num_bitflips = 1;
+	loff_t offset = 0, roffset;
+	int check = 0;
+	size_t r;
+	void *buf;
+
+	while ((opt = getopt(argc, argv, "b:rn:o:c")) > 0) {
+		switch (opt) {
+		case 'r':
+			random = 1;
+			break;
+		case 'n':
+			num_bitflips = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'b':
+			block = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'o':
+			offset = simple_strtoull(optarg, NULL, 0);
+			break;
+		case 'c':
+			check = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind >= argc)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[optind], O_RDWR);
+	if (fd < 0)
+		return fd;
+
+	ret = ioctl(fd, MEMGETINFO, &meminfo);
+
+	close(fd);
+
+	if (ret)
+		return ret;
+
+	block += mtd_div_by_eb(offset, meminfo.mtd);
+	offset = mtd_mod_by_eb(offset, meminfo.mtd);
+
+	if (!check) {
+		ret = mtd_peb_create_bitflips(meminfo.mtd, block, offset, meminfo.writesize,
+					      num_bitflips, random, 1);
+		if (ret) {
+			printf("Creating bitflips failed with: %s\n", strerror(-ret));
+			return ret;
+		}
+	}
+
+	buf = xzalloc(meminfo.writesize);
+
+	roffset = (loff_t)block * meminfo.mtd->erasesize + offset;
+	ret = meminfo.mtd->read(meminfo.mtd, roffset, meminfo.writesize, &r, buf);
+	if (ret > 0) {
+		printf("page at block %d, offset 0x%08llx has %d bitflips%s\n",
+		       block, offset, ret,
+		       ret >= meminfo.mtd->bitflip_threshold ? ", needs cleanup" : "");
+	} else if (!ret) {
+		printf("No bitflips found on block %d, offset 0x%08llx\n", block, offset);
+	} else {
+		printf("Reading block %d, offset 0x%08llx failed with: %s\n", block, offset,
+		       strerror(-ret));
+	}
+
+	free(buf);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(nand_bitflip)
+BAREBOX_CMD_HELP_TEXT("This command creates bitflips on Nand pages.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b <block>",  "block to work on")
+BAREBOX_CMD_HELP_OPT ("-o <offset>",  "offset in Nand")
+BAREBOX_CMD_HELP_OPT ("-r\t",  "flip random bits")
+BAREBOX_CMD_HELP_OPT ("-n <numbitflips>",  "Specify maximum number of bitflips to generate")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(nand_bitflip)
+	.cmd		= do_nand_bitflip,
+	BAREBOX_CMD_DESC("Create bitflips on Nand pages")
+	BAREBOX_CMD_OPTS("NANDDEV")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_nand_bitflip_help)
+BAREBOX_CMD_END
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 15420a8..46696ce 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -535,3 +535,124 @@ out:
 
 	return err;
 }
+
+/**
+ * mtd_peb_create_bitflips - create bitflips on Nand pages
+ * @mtd: mtd device
+ * @pnum: Physical erase block number
+ * @offset: offset within erase block
+ * @len: The length of the area to create bitflips in
+ * @num_bitflips: The number of bitflips to create
+ * @random: If true, create bitflips at random offsets
+ * @info: If true, print information where bitflips are created
+ *
+ * This uses the mtd raw ops to create bitflips on a Nand page for
+ * testing purposes. If %random is false then the positions to flip are
+ * reproducible (thus, a second call with the same arguments reverts the
+ * bitflips).
+ *
+ * Return: 0 for success, otherwise a negative error code is returned
+ */
+int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
+				   int len, int num_bitflips, int random,
+				   int info)
+{
+	struct mtd_oob_ops ops;
+	int pages_per_block = mtd->erasesize / mtd->writesize;
+	int i;
+	int ret;
+	void *buf = NULL, *oobbuf = NULL;
+	int step;
+
+	if (offset < 0 || offset + len > mtd->erasesize)
+		return -EINVAL;
+	if (len <= 0)
+		return -EINVAL;
+	if (num_bitflips <= 0)
+		return -EINVAL;
+	if (mtd_peb_is_bad(mtd, pnum))
+		return -EINVAL;
+
+	buf = malloc(mtd->writesize * pages_per_block);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	oobbuf = malloc(mtd->oobsize * pages_per_block);
+	if (!oobbuf) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ops.mode = MTD_OPS_RAW;
+	ops.ooboffs = 0;
+	ops.len = mtd->writesize;
+	ops.ooblen = mtd->oobsize;
+
+	for (i = 0; i < pages_per_block; i++) {
+		loff_t offs = (loff_t)pnum * mtd->erasesize + i * mtd->writesize;
+
+		ops.datbuf = buf + i * mtd->writesize;
+		ops.oobbuf = oobbuf + i * mtd->oobsize;
+
+		ret = mtd_read_oob(mtd, offs, &ops);
+		if (ret) {
+			dev_err(&mtd->class_dev, "Cannot read raw data at 0x%08llx\n", offs);
+			goto err;
+		}
+	}
+
+	if (random)
+		step = random32() % num_bitflips;
+	else
+		step = len / num_bitflips;
+
+	for (i = 0; i < num_bitflips; i++) {
+		int offs;
+		int bit;
+		u8 *pos = buf;
+
+		if (random) {
+			offs = random32() % len;
+			bit = random32() % 8;
+		} else {
+			offs = i * len / num_bitflips;
+			bit = i % 8;
+		}
+
+		pos[offs] ^= 1 << bit;
+
+		if (info)
+			dev_info(&mtd->class_dev, "Flipping bit %d @ %d\n", bit, offs);
+	}
+
+	ret = mtd_peb_erase(mtd, pnum);
+	if (ret < 0) {
+		dev_err(&mtd->class_dev, "Cannot erase PEB %d\n", pnum);
+		goto err;
+	}
+
+	for (i = 0; i < pages_per_block; i++) {
+		loff_t offs = (loff_t)pnum * mtd->erasesize + i * mtd->writesize;
+
+		ops.datbuf = buf + i * mtd->writesize;
+		ops.oobbuf = oobbuf + i * mtd->oobsize;
+
+		ret = mtd_write_oob(mtd, offs, &ops);
+		if (ret) {
+			dev_err(&mtd->class_dev, "Cannot write page at 0x%08llx\n", offs);
+			goto err;
+		}
+	}
+
+	ret = 0;
+err:
+	if (ret)
+		dev_err(&mtd->class_dev, "Failed to create bitflips: %s\n", strerror(-ret));
+
+	free(buf);
+	free(oobbuf);
+
+	return ret;
+}
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index 50ac9a5..e4fd01d 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -17,5 +17,8 @@ int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 int mtd_peb_verify(struct mtd_info *mtd, const void *buf, int pnum,
 				int offset, int len);
 int mtd_num_pebs(struct mtd_info *mtd);
+int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
+				   int len, int num_bitflips, int random,
+				   int info);
 
 #endif /* __LINUX_MTD_MTDPEB_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
