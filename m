Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKpy-0002xr-Gj
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 13:35:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  5 Feb 2020 14:35:20 +0100
Message-Id: <20200205133521.29951-2-s.hauer@pengutronix.de>
In-Reply-To: <20200205133521.29951-1-s.hauer@pengutronix.de>
References: <20200205133521.29951-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] mtd: nand-imx: Create BBT automatically when necessary
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

Due to the differences of the logical page format and the raw page
format on NAND the generic nand support can't read the bad block
marker on the NAND. For this reason we have the imx_nand_bbm command
which knows about these specialities and creates a BBT. The problem
with this command is that one has to call it and experience shows
this is often forgotten. Linux will then create a BBT based on wrong
informations and the real bad blocks may be lost.

With this patch we automatically create a BBT when none is found and
make the command unnecssary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig        |   6 -
 drivers/mtd/nand/Makefile       |   1 -
 drivers/mtd/nand/nand_imx.c     | 103 ++++++++++++++-
 drivers/mtd/nand/nand_imx_bbm.c | 219 --------------------------------
 4 files changed, 102 insertions(+), 227 deletions(-)
 delete mode 100644 drivers/mtd/nand/nand_imx_bbm.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index fadfe1f99b..3c5da4a40c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -71,12 +71,6 @@ config NAND_IMX
 	prompt "i.MX NAND driver"
 	depends on ARCH_IMX
 
-config NAND_IMX_BBM
-	bool
-	depends on NAND_BBT
-	depends on NAND_IMX
-	prompt "i.MX NAND flash bbt creation command"
-
 config NAND_MXS
 	bool
 	select NAND_BBT
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index a4066ba778..274bc29ee7 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -8,7 +8,6 @@ obj-$(CONFIG_NAND_BBT)			+= nand_bbt.o
 
 obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
-obj-$(CONFIG_NAND_IMX_BBM)		+= nand_imx_bbm.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
 obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 8e1558da6b..cb5b7ee151 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1116,6 +1116,102 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
 	return 0;
 }
 
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
+ * - If the NAND driver detects that no flash BBT is present on 2k NAND
+ *   chips it will not create one because it would do so based on the wrong
+ *   BBM position
+ * - This command is used to create a flash BBT then.
+ *
+ * From this point on we can forget about the BBMs and rely completely
+ * on the flash BBT.
+ *
+ */
+static int checkbad(struct mtd_info *mtd, loff_t ofs)
+{
+	int ret;
+	uint8_t buf[mtd->writesize + mtd->oobsize];
+	struct mtd_oob_ops ops;
+
+	ops.mode = MTD_OPS_RAW;
+	ops.ooboffs = 0;
+	ops.datbuf = buf;
+	ops.len = mtd->writesize;
+	ops.oobbuf = buf + mtd->writesize;
+	ops.ooblen = mtd->oobsize;
+
+	ret = mtd_read_oob(mtd, ofs, &ops);
+	if (ret < 0)
+		return ret;
+
+	if (buf[2000] != 0xff)
+		return 1;
+
+	return 0;
+}
+
+static int imxnd_create_bbt(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	int len, i, numblocks, ret;
+	loff_t from = 0;
+	uint8_t *bbt;
+
+	len = mtd->size >> (chip->bbt_erase_shift + 2);
+
+	/* Allocate memory (2bit per block) and clear the memory bad block table */
+	bbt = kzalloc(len, GFP_KERNEL);
+	if (!bbt)
+		return -ENOMEM;
+
+	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
+
+	for (i = 0; i < numblocks;) {
+		ret = checkbad(mtd, from);
+		if (ret < 0)
+			goto out;
+
+		if (ret) {
+			bbt[i >> 3] |= 0x03 << (i & 0x6);
+			dev_info(mtd->parent, "Bad eraseblock %d at 0x%08x\n",
+				 i >> 1, (unsigned int)from);
+		}
+
+		i += 2;
+		from += (1 << chip->bbt_erase_shift);
+	}
+
+	chip->bbt_td->options |= NAND_BBT_CREATE;
+	chip->bbt_md->options |= NAND_BBT_CREATE;
+
+	free(chip->bbt);
+	chip->bbt = bbt;
+
+	ret = nand_update_bbt(mtd, 0);
+	if (ret)
+		return ret;
+
+	ret = 0;
+out:
+	free(bbt);
+
+	return ret;
+}
+
 /*
  * This function is called during the driver binding process.
  *
@@ -1329,7 +1425,12 @@ static int __init imxnd_probe(struct device_d *dev)
 	}
 
 	if (host->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
-		dev_warn(dev, "no BBT found. create one using the imx_nand_bbm command\n");
+		dev_info(dev, "no BBT found. creating one\n");
+		err = imxnd_create_bbt(mtd);
+		if (err)
+			dev_warn(dev, "Failed to create bbt: %s\n",
+				 strerror(-err));
+		err = 0;
 	}
 
 	add_mtd_nand_device(mtd, "nand");
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
deleted file mode 100644
index 582b4c069a..0000000000
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ /dev/null
@@ -1,219 +0,0 @@
-/*
- * imx_nand_bbm.c - create a flash bad block table for i.MX NAND
- *
- * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <command.h>
-#include <fs.h>
-#include <errno.h>
-#include <getopt.h>
-#include <fcntl.h>
-#include <malloc.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/err.h>
-
-/*
- * The i.MX NAND controller has the problem that it handles the
- * data in chunks of 512 bytes. It doesn't treat 2k NAND chips as
- * 2048 byte data + 64 OOB, but instead:
- *
- * 512b data + 16b OOB +
- * 512b data + 16b OOB +
- * 512b data + 16b OOB +
- * 512b data + 16b OOB
- *
- * This means that the factory provided bad block marker ends up
- * in the page data at offset 2000 instead of in the OOB data.
- *
- * To preserve the factory bad block information we take the following
- * strategy:
- *
- * - If the NAND driver detects that no flash BBT is present on 2k NAND
- *   chips it will not create one because it would do so based on the wrong
- *   BBM position
- * - This command is used to create a flash BBT then.
- *
- * From this point on we can forget about the BBMs and rely completely
- * on the flash BBT.
- *
- */
-static int checkbad(struct mtd_info *mtd, loff_t ofs)
-{
-	int ret;
-	uint8_t buf[mtd->writesize + mtd->oobsize];
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OPS_RAW;
-	ops.ooboffs = 0;
-	ops.datbuf = buf;
-	ops.len = mtd->writesize;
-	ops.oobbuf = buf + mtd->writesize;
-	ops.ooblen = mtd->oobsize;
-
-	ret = mtd_read_oob(mtd, ofs, &ops);
-	if (ret < 0)
-		return ret;
-
-	if (buf[2000] != 0xff)
-		return 1;
-
-	return 0;
-}
-
-static void *create_bbt(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	int len, i, numblocks, ret;
-	loff_t from = 0;
-	uint8_t *bbt;
-
-	if ((chip->bbt_td && chip->bbt_td->pages[0] != -1) ||
-			(chip->bbt_md && chip->bbt_md->pages[0] != -1)) {
-		printf("Flash bbt already present\n");
-		return ERR_PTR(-EEXIST);
-	}
-
-	len = mtd->size >> (chip->bbt_erase_shift + 2);
-
-	/* Allocate memory (2bit per block) and clear the memory bad block table */
-	bbt = kzalloc(len, GFP_KERNEL);
-	if (!bbt)
-		return ERR_PTR(-ENOMEM);
-
-	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
-
-	for (i = 0; i < numblocks;) {
-		ret = checkbad(mtd, from);
-		if (ret < 0)
-			goto out;
-
-		if (ret) {
-			bbt[i >> 3] |= 0x03 << (i & 0x6);
-			printf("Bad eraseblock %d at 0x%08x\n", i >> 1,
-					(unsigned int)from);
-		}
-
-		i += 2;
-		from += (1 << chip->bbt_erase_shift);
-	}
-
-	return bbt;
-
-out:
-	free(bbt);
-
-	return ERR_PTR(ret);
-}
-
-static int attach_bbt(struct mtd_info *mtd, void *bbt)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
-	chip->bbt_td->options |= NAND_BBT_CREATE;
-	chip->bbt_md->options |= NAND_BBT_CREATE;
-	free(chip->bbt);
-	chip->bbt = bbt;
-
-	return nand_update_bbt(mtd, 0);
-}
-
-static int do_imx_nand_bbm(int argc, char *argv[])
-{
-	int opt, ret;
-	struct cdev *cdev;
-	struct mtd_info *mtd;
-	int yes = 0;
-	void *bbt;
-
-	while ((opt = getopt(argc, argv, "y")) > 0) {
-		switch (opt) {
-		case 'y':
-			yes = 1;
-			break;
-		default:
-			return COMMAND_ERROR_USAGE;
-		}
-	}
-
-	cdev = cdev_open("nand0", O_RDWR);
-	if (!cdev)
-		return -ENOENT;
-
-	mtd = cdev->mtd;
-	if (!mtd)
-		return -EINVAL;
-
-	if (strcmp(mtd->name, "imx_nand")) {
-		printf("This is not an i.MX nand but a %s\n", mtd->name);
-		ret = -EINVAL;
-		goto out;
-	}
-
-	switch (mtd->writesize) {
-	case 512:
-		printf("writesize is 512. This command is not needed\n");
-		ret = 1;
-		goto out;
-	case 2048:
-		break;
-	default:
-		printf("not implemented for writesize %d\n", mtd->writesize);
-		ret = 1;
-		goto out;
-	}
-
-	bbt = create_bbt(mtd);
-	if (IS_ERR(bbt)) {
-		ret = 1;
-		goto out;
-	}
-
-	if (!yes) {
-		int c;
-
-		printf("create flash bbt (y/n)?");
-		c = getchar();
-		if (c == 'y')
-			yes = 1;
-		printf("\n");
-	}
-
-	if (!yes) {
-		free(bbt);
-		ret = 1;
-
-		goto out;
-	}
-
-	ret = attach_bbt(mtd, bbt);
-	if (!ret)
-		printf("bbt successfully added\n");
-	else
-		free(bbt);
-
-out:
-	cdev_close(cdev);
-
-	return ret;
-}
-
-BAREBOX_CMD_START(imx_nand_bbm)
-	.cmd		= do_imx_nand_bbm,
-	BAREBOX_CMD_DESC("create BBT for i.MX NAND")
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-BAREBOX_CMD_END
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
