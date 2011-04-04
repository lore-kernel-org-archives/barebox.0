Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003To-4k
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:35 +0200
Message-Id: <1301928401-13571-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
References: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] nand: remove unneeded nand_[get|release]_device
	functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |   95 ------------------------------------------
 1 files changed, 0 insertions(+), 95 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 899f19e..9946066 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -75,9 +75,6 @@ static struct nand_ecclayout nand_oob_64 = {
 		 .length = 38}}
 };
 
-static int nand_get_device(struct nand_chip *chip, struct mtd_info *mtd,
-			   int new_state);
-
 static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 			     struct mtd_oob_ops *ops);
 
@@ -94,24 +91,6 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 DEFINE_LED_TRIGGER(nand_led_trigger);
 
 /**
- * nand_release_device - [GENERIC] release chip
- * @mtd:	MTD device structure
- *
- * Deselect, release chip lock and wake up anyone waiting on the device
- */
-static void nand_release_device(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	/* De-select the NAND device */
-	chip->select_chip(mtd, -1);
-
-	/* Release the controller and the chip */
-	chip->controller->active = NULL;
-	chip->state = FL_READY;
-}
-
-/**
  * nand_read_byte - [DEFAULT] read one byte from the chip
  * @mtd:	MTD device structure
  *
@@ -304,8 +283,6 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
 	if (getchip) {
 		chipnr = (int)(ofs >> chip->chip_shift);
 
-		nand_get_device(chip, mtd, FL_READING);
-
 		/* Select the NAND device */
 		chip->select_chip(mtd, chipnr);
 	}
@@ -324,9 +301,6 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
 			res = 1;
 	}
 
-	if (getchip)
-		nand_release_device(mtd);
-
 	return res;
 }
 
@@ -356,7 +330,6 @@ static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		/* We write two bytes, so we dont have to mess with 16 bit
 		 * access
 		 */
-		nand_get_device(chip, mtd, FL_WRITING);
 		ofs += mtd->oobsize;
 		chip->ops.len = chip->ops.ooblen = 2;
 		chip->ops.datbuf = NULL;
@@ -364,7 +337,6 @@ static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		chip->ops.ooboffs = chip->badblockpos & ~0x01;
 
 		ret = nand_do_write_oob(mtd, ofs, &chip->ops);
-		nand_release_device(mtd);
 	}
 	if (!ret)
 		mtd->ecc_stats.badblocks++;
@@ -652,32 +624,6 @@ static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
 }
 
 /**
- * nand_get_device - [GENERIC] Get chip for selected access
- * @chip:	the nand chip descriptor
- * @mtd:	MTD device structure
- * @new_state:	the state which is requested
- *
- * Get the device and lock it for exclusive access
- */
-static int
-nand_get_device(struct nand_chip *chip, struct mtd_info *mtd, int new_state)
-{
- retry:
-	/* Hardware controller shared among independend devices */
-	if (!chip->controller->active)
-		chip->controller->active = chip;
-
-	if (chip->controller->active == chip && chip->state == FL_READY) {
-		chip->state = new_state;
-		return 0;
-	}
-	if (new_state == FL_PM_SUSPENDED) {
-		return (chip->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
-	}
-	goto retry;
-}
-
-/**
  * nand_wait - [DEFAULT]  wait until the command is done
  * @mtd:	MTD device structure
  * @chip:	NAND chip structure
@@ -1081,8 +1027,6 @@ static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
 	if (!len)
 		return 0;
 
-	nand_get_device(chip, mtd, FL_READING);
-
 	chip->ops.len = len;
 	chip->ops.datbuf = buf;
 	chip->ops.oobbuf = NULL;
@@ -1091,8 +1035,6 @@ static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
 
 	*retlen = chip->ops.retlen;
 
-	nand_release_device(mtd);
-
 	return ret;
 }
 
@@ -1339,7 +1281,6 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 			 struct mtd_oob_ops *ops)
 {
-	struct nand_chip *chip = mtd->priv;
 	int ret = -ENOSYS;
 
 	ops->retlen = 0;
@@ -1351,8 +1292,6 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 		return -EINVAL;
 	}
 
-	nand_get_device(chip, mtd, FL_READING);
-
 	switch(ops->mode) {
 	case MTD_OOB_PLACE:
 	case MTD_OOB_AUTO:
@@ -1369,7 +1308,6 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 		ret = nand_do_read_ops(mtd, from, ops);
 
  out:
-	nand_release_device(mtd);
 	return ret;
 }
 
@@ -1717,8 +1655,6 @@ static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (!len)
 		return 0;
 
-	nand_get_device(chip, mtd, FL_WRITING);
-
 	chip->ops.len = len;
 	chip->ops.datbuf = (uint8_t *)buf;
 	chip->ops.oobbuf = NULL;
@@ -1727,8 +1663,6 @@ static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 	*retlen = chip->ops.retlen;
 
-	nand_release_device(mtd);
-
 	return ret;
 }
 
@@ -1821,7 +1755,6 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 			  struct mtd_oob_ops *ops)
 {
-	struct nand_chip *chip = mtd->priv;
 	int ret = -ENOSYS;
 
 	ops->retlen = 0;
@@ -1833,8 +1766,6 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 		return -EINVAL;
 	}
 
-	nand_get_device(chip, mtd, FL_WRITING);
-
 	switch(ops->mode) {
 	case MTD_OOB_PLACE:
 	case MTD_OOB_AUTO:
@@ -1851,7 +1782,6 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 		ret = nand_do_write_ops(mtd, to, ops);
 
  out:
-	nand_release_device(mtd);
 	return ret;
 }
 
@@ -1943,9 +1873,6 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 	instr->fail_addr = 0xffffffff;
 
-	/* Grab the lock and see if the device is available */
-	nand_get_device(chip, mtd, FL_ERASING);
-
 	/* Shift to get first page */
 	page = (int)(instr->addr >> chip->page_shift);
 	chipnr = (int)(instr->addr >> chip->chip_shift);
@@ -2053,9 +1980,6 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 	ret = instr->state == MTD_ERASE_DONE ? 0 : -EIO;
 
-	/* Deselect and wake up anyone waiting on the device */
-	nand_release_device(mtd);
-
 	/* Do call back function */
 	if (!ret)
 		mtd_erase_callback(instr);
@@ -2082,24 +2006,6 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 }
 
 /**
- * nand_sync - [MTD Interface] sync
- * @mtd:	MTD device structure
- *
- * Sync is actually a wait for chip ready function
- */
-static void nand_sync(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_sync: called\n");
-
-	/* Grab the lock and see if the device is available */
-	nand_get_device(chip, mtd, FL_SYNCING);
-	/* Release it and go back */
-	nand_release_device(mtd);
-}
-
-/**
  * nand_block_isbad - [MTD Interface] Check if block at offset is bad
  * @mtd:	MTD device structure
  * @offs:	offset relative to mtd start
@@ -2562,7 +2468,6 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->write = nand_write;
 	mtd->read_oob = nand_read_oob;
 	mtd->write_oob = nand_write_oob;
-	mtd->sync = nand_sync;
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
