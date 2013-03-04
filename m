Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP8-0002ZS-6D
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:54 +0100
Message-Id: <1362392034-1908-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] mtd: nand: Add command to generate a flash BBT
To: barebox@lists.infradead.org

With 2k NAND flashes the data layout in memory is not what is
written on the flash device. This leads to the result that the
factory provided bad block markers are not recognized correctly.

To preserve the factory bad block information the i.MX NAND driver
will not scan for the bad blocks itself when there is no flash based
bbt available, because the mtd layer would do so based on wrong
information. Instead, a new command is introduced which allows to
manually create a flash bbt based on the correct information.

As this command is tightly coupled to mtd and the i.MX NAND driver
the command is placed under drivers/mtd/nand/ instead of commands/
where a command normally belongs to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig        |    5 +
 drivers/mtd/nand/Makefile       |    1 +
 drivers/mtd/nand/nand_imx.c     |   19 +++-
 drivers/mtd/nand/nand_imx_bbm.c |  220 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 243 insertions(+), 2 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_imx_bbm.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 1a9b929..de8fb5e 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -62,6 +62,11 @@ config NAND_IMX
 	prompt "i.MX NAND driver"
 	depends on ARCH_IMX
 
+config NAND_IMX_BBM
+	bool
+	prompt "i.MX NAND flash bbt creation command"
+	depends on NAND_IMX
+
 config NAND_MXS
 	bool
 	select NAND_BBT
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index d52c272..0c7c8e2 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_NAND_BBT)			+= nand_bbt.o
 
 obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
+obj-$(CONFIG_NAND_IMX_BBM)		+= nand_imx_bbm.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
 obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 22bdb74..75aefd6 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1068,7 +1068,7 @@ static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
 static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
 
 static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	.options = NAND_BBT_LASTBLOCK
 		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
@@ -1078,7 +1078,7 @@ static struct nand_bbt_descr bbt_main_descr = {
 };
 
 static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	.options = NAND_BBT_LASTBLOCK
 		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
@@ -1179,6 +1179,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	mtd = &host->mtd;
 	mtd->priv = this;
 	mtd->parent = dev;
+	mtd->name = "imx_nand";
 
 	/* 50 us command delay time */
 	this->chip_delay = 5;
@@ -1235,6 +1236,10 @@ static int __init imxnd_probe(struct device_d *dev)
 	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
 
 	if (mtd->writesize >= 2048) {
+		if (!pdata->flash_bbt)
+			dev_warn(dev, "2k or 4k flash detected without flash_bbt. "
+					"You will loose factory bad block markers!\n");
+
 		if (mtd->writesize == 2048)
 			this->ecc.layout = oob_largepage;
 		else
@@ -1243,6 +1248,9 @@ static int __init imxnd_probe(struct device_d *dev)
 		if (nfc_is_v21())
 			writew(NFC_V2_SPAS_SPARESIZE(64), host->regs + NFC_V2_SPAS);
 	} else {
+		bbt_main_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+		bbt_mirror_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+
 		if (nfc_is_v21())
 			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
 	}
@@ -1253,6 +1261,13 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
+	if (pdata->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
+		dev_warn(dev, "no BBT found. create one using the imx_nand_bbm command\n");
+	} else {
+		bbt_main_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+		bbt_mirror_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+	}
+
 	add_mtd_nand_device(mtd, "nand");
 
 	dev->priv = host;
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
new file mode 100644
index 0000000..03961a0
--- /dev/null
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -0,0 +1,220 @@
+/*
+ * imx_nand_bbm.c - create a flash bad block table for i.MX NAND
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <errno.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/err.h>
+
+/*
+ * The i.MX NAND controller has the problem that it handles the
+ * data in chunks of 512 bytes. It doesn't treat 2k NAND chips as
+ * 2048 byte data + 64 OOB, but instead:
+ *
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB
+ *
+ * This means that the factory provided bad block marker ends up
+ * in the page data at offset 2000 instead of in the OOB data.
+ *
+ * To preserve the factory bad block information we take the following
+ * strategy:
+ *
+ * - If the NAND driver detects that no flasg BBT is present on 2k NAND
+ *   chips it will not create one because it would do so based on the wrong
+ *   BBM position
+ * - This command is used to create a flash BBT then.
+ *
+ * From this point on we can forget about the BBMs and rely completely
+ * on the flash BBT.
+ *
+ */
+static int checkbad(struct mtd_info *mtd, loff_t ofs, void *__buf)
+{
+	int ret, retlen;
+	uint8_t *buf = __buf;
+
+	ret = mtd->read(mtd, ofs, mtd->writesize, &retlen, buf);
+	if (ret < 0)
+		return ret;
+
+	if (buf[2000] != 0xff)
+		return 1;
+
+	return 0;
+}
+
+static void *create_bbt(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	int len, i, numblocks, ret;
+	loff_t from = 0;
+	void *buf;
+	uint8_t *bbt;
+
+	if ((chip->bbt_td && chip->bbt_td->pages[0] != -1) ||
+			(chip->bbt_md && chip->bbt_md->pages[0] != -1)) {
+		printf("Flash bbt already present\n");
+		return ERR_PTR(-EEXIST);
+	}
+
+	len = mtd->size >> (chip->bbt_erase_shift + 2);
+
+	/* Allocate memory (2bit per block) and clear the memory bad block table */
+	bbt = kzalloc(len, GFP_KERNEL);
+	if (!bbt)
+		return ERR_PTR(-ENOMEM);
+
+	buf = malloc(mtd->writesize);
+	if (!buf) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
+
+	for (i = 0; i < numblocks;) {
+		ret = checkbad(mtd, from, buf);
+		if (ret < 0)
+			goto out;
+
+		if (ret) {
+			bbt[i >> 3] |= 0x03 << (i & 0x6);
+			printf("Bad eraseblock %d at 0x%08x\n", i >> 1,
+					(unsigned int)from);
+		}
+
+		i += 2;
+		from += (1 << chip->bbt_erase_shift);
+	}
+
+	return bbt;
+out:
+	free(buf);
+
+	return ERR_PTR(ret);
+}
+
+static int attach_bbt(struct mtd_info *mtd, void *bbt)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	chip->bbt_td->options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+	chip->bbt_md->options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
+	free(chip->bbt);
+	chip->bbt = bbt;
+
+	return nand_update_bbt(mtd, 0);
+}
+
+static int do_imx_nand_bbm(int argc, char *argv[])
+{
+	int opt, ret;
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+	int yes = 0;
+	void *bbt;
+
+	while ((opt = getopt(argc, argv, "y")) > 0) {
+		switch (opt) {
+		case 'y':
+			yes = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	cdev = cdev_open("nand0", O_RDWR);
+	if (!cdev)
+		return -ENOENT;
+
+	mtd = cdev->mtd;
+	if (!mtd)
+		return -EINVAL;
+
+	if (strcmp(mtd->name, "imx_nand")) {
+		printf("This is not an i.MX nand but a %s\n", mtd->name);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	switch (mtd->writesize) {
+	case 512:
+		printf("writesize is 512. This command is not needed\n");
+		ret = 1;
+		goto out;
+	case 2048:
+		break;
+	default:
+		printf("not implemented for writesize %d\n", mtd->writesize);
+		ret = 1;
+		goto out;
+	}
+
+	bbt = create_bbt(mtd);
+	if (IS_ERR(bbt)) {
+		ret = 1;
+		goto out;
+	}
+
+	if (!yes) {
+		int c;
+
+		printf("create flash bbt (y/n)?");
+		c = getc();
+		if (c == 'y')
+			yes = 1;
+		printf("\n");
+	}
+
+	if (!yes) {
+		free(bbt);
+		ret = 1;
+
+		goto out;
+	}
+
+	ret = attach_bbt(mtd, bbt);
+	if (!ret)
+		printf("bbt successfully added\n");
+	else
+		free(bbt);
+
+out:
+	cdev_close(cdev);
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_imx_nand_bbm_help[] =
+"Usage: imx_nand_bbm\n";
+
+BAREBOX_CMD_START(imx_nand_bbm)
+	.cmd		= do_imx_nand_bbm,
+	.usage		= "create bbt for i.MX NAND",
+	BAREBOX_CMD_HELP(cmd_imx_nand_bbm_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
