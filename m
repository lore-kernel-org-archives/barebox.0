Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCqpQ-0005ri-HW
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 11:46:29 +0000
Received: by lbbgf7 with SMTP id gf7so3259388lbb.36
 for <barebox@lists.infradead.org>; Sat, 15 Sep 2012 04:46:22 -0700 (PDT)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Sat, 15 Sep 2012 13:45:06 +0200
Message-Id: <1347709506-8669-1-git-send-email-marcus.folkesson@gmail.com>
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
Subject: [PATCH] mtd: nand: extend NAND flash detection to new MLC chips
To: barebox@lists.infradead.org
Cc: Marcus Folkesson <marcus.folkesson@gmail.com>

Some of the newer MLC devices have a 6-byte ID sequence in which
several field definitions differ from older chips in a manner that is
not backward compatible.

This method is already used in the Linux Kernel.

Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 drivers/mtd/nand/nand_base.c |   97 +++++++++++++++++++++++++++++++++--------
 drivers/mtd/nand/nand_ids.c  |   38 +++++++++++++++--
 2 files changed, 112 insertions(+), 23 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 37e57b3..fe9a6e7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1137,7 +1137,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 {
 	struct nand_flash_dev *type = NULL;
 	int i, dev_id, maf_idx;
-	int tmp_id, tmp_manf;
+	int id_data[8];
 	int ret;
 
 	/* Select the device */
@@ -1166,13 +1166,13 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 
 	/* Read manufacturer and device IDs */
 
-	tmp_manf = chip->read_byte(mtd);
-	tmp_id = chip->read_byte(mtd);
+	id_data[0] = chip->read_byte(mtd);
+	id_data[1] = chip->read_byte(mtd);
 
-	if (tmp_manf != *maf_id || tmp_id != dev_id) {
+	if (id_data[0] != *maf_id || id_data[1] != dev_id) {
 		printk(KERN_ERR "%s: second ID read did not match "
 		       "%02x,%02x against %02x,%02x\n", __func__,
-		       *maf_id, dev_id, tmp_manf, tmp_id);
+		       *maf_id, dev_id, id_data[0], id_data[1]);
 		return ERR_PTR(-ENODEV);
 	}
 
@@ -1196,29 +1196,75 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 		}
 	}
 
+	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+
+	/* Read entire ID string */
+
+	for (i = 0; i < 8; i++)
+		id_data[i] = chip->read_byte(mtd);
+
 	if (!mtd->name)
 		mtd->name = type->name;
 
 	chip->chipsize = type->chipsize << 20;
 
-	/* Newer devices have all the information in additional id bytes */
 	if (!type->pagesize) {
 		int extid;
 		/* The 3rd id byte holds MLC / multichip data */
-		chip->cellinfo = chip->read_byte(mtd);
+		chip->cellinfo = id_data[2];
 		/* The 4th id byte is the important one */
-		extid = chip->read_byte(mtd);
-		/* Calc pagesize */
-		mtd->writesize = 1024 << (extid & 0x3);
-		extid >>= 2;
-		/* Calc oobsize */
-		mtd->oobsize = (8 << (extid & 0x01)) * (mtd->writesize >> 9);
-		extid >>= 2;
-		/* Calc blocksize. Blocksize is multiples of 64KiB */
-		mtd->erasesize = (64 * 1024) << (extid & 0x03);
-		extid >>= 2;
-		/* Get buswidth information */
-		busw = (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
+		extid = id_data[3];
+
+		/*
+		 * Field definitions are in the following datasheets:
+		 * Old style (4,5 byte ID): Samsung K9GAG08U0M (p.32)
+		 * New style   (6 byte ID): Samsung K9GBG08U0M (p.40)
+		 *
+		 * Check for wraparound + Samsung ID + nonzero 6th byte
+		 * to decide what to do.
+		 */
+		if (id_data[0] == id_data[6] && id_data[1] == id_data[7] &&
+				id_data[0] == NAND_MFR_SAMSUNG &&
+				(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
+				id_data[5] != 0x00) {
+			/* Calc pagesize */
+			mtd->writesize = 2048 << (extid & 0x03);
+			extid >>= 2;
+			/* Calc oobsize */
+			switch (extid & 0x03) {
+			case 1:
+				mtd->oobsize = 128;
+				break;
+			case 2:
+				mtd->oobsize = 218;
+				break;
+			case 3:
+				mtd->oobsize = 400;
+				break;
+			default:
+				mtd->oobsize = 436;
+				break;
+			}
+			extid >>= 2;
+			/* Calc blocksize */
+			mtd->erasesize = (128 * 1024) <<
+				(((extid >> 1) & 0x04) | (extid & 0x03));
+			busw = 0;
+		} else {
+			/* Calc pagesize */
+			mtd->writesize = 1024 << (extid & 0x03);
+			extid >>= 2;
+			/* Calc oobsize */
+			mtd->oobsize = (8 << (extid & 0x01)) *
+				(mtd->writesize >> 9);
+			extid >>= 2;
+			/* Calc blocksize. Blocksize is multiples of 64KiB */
+			mtd->erasesize = (64 * 1024) << (extid & 0x03);
+			extid >>= 2;
+			/* Get buswidth information */
+			busw = (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
+		}
+
 
 	} else {
 		/*
@@ -1228,6 +1274,19 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 		mtd->writesize = type->pagesize;
 		mtd->oobsize = mtd->writesize / 32;
 		busw = type->options & NAND_BUSWIDTH_16;
+
+		/*
+		 * Check for Spansion/AMD ID + repeating 5th, 6th byte since
+		 * some Spansion chips have erasesize that conflicts with size
+		 * listed in nand_ids table
+		 * Data sheet (5 byte ID): Spansion S30ML-P ORNAND (p.39)
+		 */
+		if (*maf_id == NAND_MFR_AMD && id_data[4] != 0x00 &&
+				id_data[5] == 0x00 && id_data[6] == 0x00 &&
+				id_data[7] == 0x00 && mtd->writesize == 512) {
+			mtd->erasesize = 128 * 1024;
+			mtd->erasesize <<= ((id_data[3] & 0x03) << 1);
+		}
 	}
 
 	/* Try to identify manufacturer */
diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
index cb53fc6..73d4cc2 100644
--- a/drivers/mtd/nand/nand_ids.c
+++ b/drivers/mtd/nand/nand_ids.c
@@ -107,17 +107,47 @@ struct nand_flash_dev nand_flash_ids[] = {
 	{__NANDSTR("NAND 512MiB 3,3V 16-bit"),	0xCC, 0, 512, 0, LP_OPTIONS16},
 
 	/* 8 Gigabit */
-	{__NANDSTR("NAND 1GiB 1,8V 8-bit"),	0xA3, 0, 1024, 0, LP_OPTIONS},
-	{__NANDSTR("NAND 1GiB 3,3V 8-bit"),	0xD3, 0, 1024, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 1GiB 1,8V 8-bit"),		0xA3, 0, 1024, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 1GiB 3,3V 8-bit"),		0xD3, 0, 1024, 0, LP_OPTIONS},
 	{__NANDSTR("NAND 1GiB 1,8V 16-bit"),	0xB3, 0, 1024, 0, LP_OPTIONS16},
 	{__NANDSTR("NAND 1GiB 3,3V 16-bit"),	0xC3, 0, 1024, 0, LP_OPTIONS16},
 
 	/* 16 Gigabit */
-	{__NANDSTR("NAND 2GiB 1,8V 8-bit"),	0xA5, 0, 2048, 0, LP_OPTIONS},
-	{__NANDSTR("NAND 2GiB 3,3V 8-bit"),	0xD5, 0, 2048, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 2GiB 1,8V 8-bit"),		0xA5, 0, 2048, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 2GiB 3,3V 8-bit"),		0xD5, 0, 2048, 0, LP_OPTIONS},
 	{__NANDSTR("NAND 2GiB 1,8V 16-bit"),	0xB5, 0, 2048, 0, LP_OPTIONS16},
 	{__NANDSTR("NAND 2GiB 3,3V 16-bit"),	0xC5, 0, 2048, 0, LP_OPTIONS16},
 
+	/* 32 Gigabit */
+	{__NANDSTR("NAND 4GiB 1,8V 8-bit"),		0xA7, 0, 4096, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 4GiB 3,3V 8-bit"),		0xD7, 0, 4096, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 4GiB 1,8V 16-bit"),	0xB7, 0, 4096, 0, LP_OPTIONS16},
+	{__NANDSTR("NAND 4GiB 3,3V 16-bit"),	0xC7, 0, 4096, 0, LP_OPTIONS16},
+
+	/* 64 Gigabit */
+	{__NANDSTR("NAND 8GiB 1,8V 8-bit"),		0xAE, 0, 8192, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 8GiB 3,3V 8-bit"),		0xDE, 0, 8192, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 8GiB 1,8V 16-bit"),	0xBE, 0, 8192, 0, LP_OPTIONS16},
+	{__NANDSTR("NAND 8GiB 3,3V 16-bit"),	0xCE, 0, 8192, 0, LP_OPTIONS16},
+
+	/* 128 Gigabit */
+	{__NANDSTR("NAND 16GiB 1,8V 8-bit"),	0x1A, 0, 16384, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 16GiB 3,3V 8-bit"),	0x3A, 0, 16384, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 16GiB 1,8V 16-bit"),	0x2A, 0, 16384, 0, LP_OPTIONS16},
+	{__NANDSTR("NAND 16GiB 3,3V 16-bit"),	0x4A, 0, 16384, 0, LP_OPTIONS16},
+
+	/* 256 Gigabit */
+	{__NANDSTR("NAND 32GiB 1,8V 8-bit"),	0x1C, 0, 32768, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 32GiB 3,3V 8-bit"),	0x3C, 0, 32768, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 32GiB 1,8V 16-bit"),	0x2C, 0, 32768, 0, LP_OPTIONS16},
+	{__NANDSTR("NAND 32GiB 3,3V 16-bit"),	0x4C, 0, 32768, 0, LP_OPTIONS16},
+
+	/* 512 Gigabit */
+	{__NANDSTR("NAND 64GiB 1,8V 8-bit"),	0x1E, 0, 65536, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 64GiB 3,3V 8-bit"),	0x3E, 0, 65536, 0, LP_OPTIONS},
+	{__NANDSTR("NAND 64GiB 1,8V 16-bit"),	0x2E, 0, 65536, 0, LP_OPTIONS16},
+	{__NANDSTR("NAND 64GiB 3,3V 16-bit"),	0x4E, 0, 65536, 0, LP_OPTIONS16},
+
 	/*
 	 * Renesas AND 1 Gigabit. Those chips do not support extended id and
 	 * have a strange page/block layout !  The chosen minimum erasesize is
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
