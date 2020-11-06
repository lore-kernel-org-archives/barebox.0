Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xR-0003Yb-Nq
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:45 +0100
Message-Id: <20201106133900.2656-12-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/26] mtd: nand: move function hooks to struct nand_legacy
To: Barebox List <barebox@lists.infradead.org>

Linux had moved the traditional nand function hooks to an
extra struct nand_legacy. Do the same in barebox for compatibility.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c     |  44 +--
 drivers/mtd/nand/nand_base.c      | 426 +++++++++++++++---------------
 drivers/mtd/nand/nand_bbt.c       |   2 +-
 drivers/mtd/nand/nand_denali.c    |  10 +-
 drivers/mtd/nand/nand_imx.c       |  22 +-
 drivers/mtd/nand/nand_mrvl_nfc.c  |  32 +--
 drivers/mtd/nand/nand_mxs.c       |  40 +--
 drivers/mtd/nand/nand_omap_gpmc.c |  40 +--
 drivers/mtd/nand/nand_orion.c     |  12 +-
 drivers/mtd/nand/nand_s3c24xx.c   |  14 +-
 drivers/mtd/nand/nomadik_nand.c   |   9 +-
 include/linux/mtd/nand.h          |  96 ++++---
 12 files changed, 379 insertions(+), 368 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 90656bcb5d..d86498c86e 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -161,22 +161,22 @@ static int atmel_nand_device_ready(struct nand_chip *nand_chip)
  */
 static void atmel_read_buf(struct nand_chip *nand_chip, u8 *buf, int len)
 {
-	readsb(nand_chip->IO_ADDR_R, buf, len);
+	readsb(nand_chip->legacy.IO_ADDR_R, buf, len);
 }
 
 static void atmel_read_buf16(struct nand_chip *nand_chip, u8 *buf, int len)
 {
-	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
+	readsw(nand_chip->legacy.IO_ADDR_R, buf, len / 2);
 }
 
 static void atmel_write_buf(struct nand_chip *nand_chip, const u8 *buf, int len)
 {
-	writesb(nand_chip->IO_ADDR_W, buf, len);
+	writesb(nand_chip->legacy.IO_ADDR_W, buf, len);
 }
 
 static void atmel_write_buf16(struct nand_chip *nand_chip, const u8 *buf, int len)
 {
-	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
+	writesw(nand_chip->legacy.IO_ADDR_W, buf, len / 2);
 }
 
 /*
@@ -636,8 +636,8 @@ static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
 
-	chip->read_buf(chip, buf, eccsize);
-	chip->read_buf(chip, oob, mtd->oobsize);
+	chip->legacy.read_buf(chip, buf, eccsize);
+	chip->legacy.read_buf(chip, oob, mtd->oobsize);
 
 	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
 		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
@@ -671,7 +671,7 @@ static int atmel_nand_pmecc_write_page(struct nand_chip *chip, const uint8_t *bu
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
 
-	chip->write_buf(chip, (u8 *)buf, mtd->writesize);
+	chip->legacy.write_buf(chip, (u8 *)buf, mtd->writesize);
 
 	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
 		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
@@ -689,7 +689,7 @@ static int atmel_nand_pmecc_write_page(struct nand_chip *chip, const uint8_t *bu
 				pmecc_readb_ecc_relaxed(host->ecc, i, j);
 		}
 	}
-	chip->write_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	return 0;
 }
@@ -1026,7 +1026,7 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 #endif
 
 	/* read the page */
-	chip->read_buf(chip, p, eccsize);
+	chip->legacy.read_buf(chip, p, eccsize);
 
 	/* move to ECC position if needed */
 	if (eccpos[0] != 0) {
@@ -1036,13 +1036,13 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 		 * NAND_CMD_RNDOUT.
 		 * anyway, for small pages, the eccpos[0] == 0
 		 */
-		chip->cmdfunc(chip, NAND_CMD_RNDOUT,
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT,
 				mtd->writesize + eccpos[0], -1);
 	}
 
 	/* the ECC controller needs to read the ECC just after the data */
 	ecc_pos = oob + eccpos[0];
-	chip->read_buf(chip, ecc_pos, eccbytes);
+	chip->legacy.read_buf(chip, ecc_pos, eccbytes);
 
 	/* check if there's an error */
 	stat = chip->ecc.correct(chip, p, oob, NULL);
@@ -1053,10 +1053,10 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 		mtd->ecc_stats.corrected += stat;
 
 	/* get back to oob start (end of page) */
-	chip->cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
 
 	/* read the oob */
-	chip->read_buf(chip, oob, mtd->oobsize);
+	chip->legacy.read_buf(chip, oob, mtd->oobsize);
 
 	return 0;
 }
@@ -1334,9 +1334,9 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	mtd->dev.parent = dev;
 
 	/* Set address of NAND IO lines */
-	nand_chip->IO_ADDR_R = host->io_base;
-	nand_chip->IO_ADDR_W = host->io_base;
-	nand_chip->cmd_ctrl = atmel_nand_cmd_ctrl;
+	nand_chip->legacy.IO_ADDR_R = host->io_base;
+	nand_chip->legacy.IO_ADDR_W = host->io_base;
+	nand_chip->legacy.cmd_ctrl = atmel_nand_cmd_ctrl;
 
 	if (gpio_is_valid(host->board->rdy_pin)) {
 		res = gpio_request(host->board->rdy_pin, "nand_rdy");
@@ -1354,7 +1354,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 			goto err_no_card;
 		}
 
-		nand_chip->dev_ready = atmel_nand_device_ready;
+		nand_chip->legacy.dev_ready = atmel_nand_device_ready;
 	}
 
 	if (gpio_is_valid(host->board->enable_pin)) {
@@ -1384,7 +1384,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		nand_chip->ecc.mode = NAND_ECC_HW;
 	}
 
-	nand_chip->chip_delay = 40;		/* 40us command delay time */
+	nand_chip->legacy.chip_delay = 40;		/* 40us command delay time */
 
 	if (IS_ENABLED(CONFIG_NAND_ECC_BCH) &&
 			pdata->ecc_mode == NAND_ECC_SOFT_BCH) {
@@ -1393,11 +1393,11 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	if (host->board->bus_width_16) {	/* 16-bit bus width */
 		nand_chip->options |= NAND_BUSWIDTH_16;
-		nand_chip->read_buf = atmel_read_buf16;
-		nand_chip->write_buf = atmel_write_buf16;
+		nand_chip->legacy.read_buf = atmel_read_buf16;
+		nand_chip->legacy.write_buf = atmel_write_buf16;
 	} else {
-		nand_chip->read_buf = atmel_read_buf;
-		nand_chip->write_buf = atmel_write_buf;
+		nand_chip->legacy.read_buf = atmel_read_buf;
+		nand_chip->legacy.write_buf = atmel_write_buf;
 	}
 
 	atmel_nand_enable(host);
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index f869c21705..1816822e78 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -135,7 +135,7 @@ static void nand_release_device(struct nand_chip *chip)
  */
 static uint8_t nand_read_byte(struct nand_chip *chip)
 {
-	return readb(chip->IO_ADDR_R);
+	return readb(chip->legacy.IO_ADDR_R);
 }
 
 /**
@@ -148,7 +148,7 @@ static uint8_t nand_read_byte(struct nand_chip *chip)
  */
 static uint8_t nand_read_byte16(struct nand_chip *chip)
 {
-	return (uint8_t) cpu_to_le16(readw(chip->IO_ADDR_R));
+	return (uint8_t) cpu_to_le16(readw(chip->legacy.IO_ADDR_R));
 }
 
 /**
@@ -159,7 +159,7 @@ static uint8_t nand_read_byte16(struct nand_chip *chip)
  */
 static u16 nand_read_word(struct nand_chip *chip)
 {
-	return readw(chip->IO_ADDR_R);
+	return readw(chip->legacy.IO_ADDR_R);
 }
 
 /**
@@ -173,7 +173,7 @@ static void nand_select_chip(struct nand_chip *chip, int chipnr)
 {
 	switch (chipnr) {
 	case -1:
-		chip->cmd_ctrl(chip, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
 		break;
 	case 0:
 		break;
@@ -197,7 +197,7 @@ static __maybe_unused void nand_write_buf(struct nand_chip *chip,
 	int i;
 
 	for (i = 0; i < len; i++)
-		writeb(buf[i], chip->IO_ADDR_W);
+		writeb(buf[i], chip->legacy.IO_ADDR_W);
 }
 
 /**
@@ -213,7 +213,7 @@ static void nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 	int i;
 
 	for (i = 0; i < len; i++)
-		buf[i] = readb(chip->IO_ADDR_R);
+		buf[i] = readb(chip->legacy.IO_ADDR_R);
 }
 
 /**
@@ -232,7 +232,7 @@ static __maybe_unused void nand_write_buf16(struct nand_chip *chip,
 	len >>= 1;
 
 	for (i = 0; i < len; i++)
-		writew(p[i], chip->IO_ADDR_W);
+		writew(p[i], chip->legacy.IO_ADDR_W);
 
 }
 
@@ -251,7 +251,7 @@ static void nand_read_buf16(struct nand_chip *chip, uint8_t *buf, int len)
 	len >>= 1;
 
 	for (i = 0; i < len; i++)
-		p[i] = readw(chip->IO_ADDR_R);
+		p[i] = readw(chip->legacy.IO_ADDR_R);
 }
 
 /**
@@ -278,22 +278,22 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs, int getchip)
 		nand_get_device(chip, FL_READING);
 
 		/* Select the NAND device */
-		chip->select_chip(chip, chipnr);
+		chip->legacy.select_chip(chip, chipnr);
 	}
 
 	do {
 		if (chip->options & NAND_BUSWIDTH_16) {
-			chip->cmdfunc(chip, NAND_CMD_READOOB,
+			chip->legacy.cmdfunc(chip, NAND_CMD_READOOB,
 					chip->badblockpos & 0xFE, page);
-			bad = cpu_to_le16(chip->read_word(chip));
+			bad = cpu_to_le16(chip->legacy.read_word(chip));
 			if (chip->badblockpos & 0x1)
 				bad >>= 8;
 			else
 				bad &= 0xFF;
 		} else {
-			chip->cmdfunc(chip, NAND_CMD_READOOB, chip->badblockpos,
+			chip->legacy.cmdfunc(chip, NAND_CMD_READOOB, chip->badblockpos,
 					page);
-			bad = chip->read_byte(chip);
+			bad = chip->legacy.read_byte(chip);
 		}
 
 		if (likely(chip->badblockbits == 8))
@@ -306,7 +306,7 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs, int getchip)
 	} while (!res && i < 2 && (chip->bbt_options & NAND_BBT_SCAN2NDPAGE));
 
 	if (getchip) {
-		chip->select_chip(chip, -1);
+		chip->legacy.select_chip(chip, -1);
 		nand_release_device(chip);
 	}
 
@@ -361,7 +361,7 @@ static __maybe_unused int nand_default_block_markbad(struct nand_chip *chip, lof
  *
  * This function performs the generic NAND bad block marking steps (i.e., bad
  * block table(s) and/or marker(s)). We only allow the hardware driver to
- * specify how to write bad block markers to OOB (chip->block_markbad).
+ * specify how to write bad block markers to OOB (chip->legacy.block_markbad).
  *
  * We try operations in the following order:
  *  (1) erase the affected block, to allow OOB marker to be written cleanly
@@ -387,7 +387,7 @@ static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
 
 		/* Write bad block marker to OOB */
 		nand_get_device(chip, FL_WRITING);
-		ret = chip->block_markbad(chip, ofs);
+		ret = chip->legacy.block_markbad(chip, ofs);
 		nand_release_device(chip);
 	}
 
@@ -436,7 +436,7 @@ static int nand_block_markgood_lowlevel(struct nand_chip *chip, loff_t ofs)
 		 * Verify erase succeded. We need to select chip again,
 		 * as nand_erase_nand deselected it.
 		 */
-		ret = chip->block_bad(chip, ofs, 1);
+		ret = chip->legacy.block_bad(chip, ofs, 1);
 		if (ret)
 			return ret;
 	}
@@ -468,8 +468,8 @@ static int nand_check_wp(struct nand_chip *chip)
 		return 0;
 
 	/* Check the WP bit */
-	chip->cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
-	return (chip->read_byte(chip) & NAND_STATUS_WP) ? 0 : 1;
+	chip->legacy.cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
+	return (chip->legacy.read_byte(chip) & NAND_STATUS_WP) ? 0 : 1;
 }
 
 /**
@@ -490,7 +490,7 @@ static int nand_block_checkbad(struct nand_chip *chip, loff_t ofs, int getchip,
 		return nand_isbad_bbt(chip, ofs, allowbbt);
 	}
 
-	return chip->block_bad(chip, ofs, getchip);
+	return chip->legacy.block_bad(chip, ofs, getchip);
 }
 
 /* Wait for the ready pin, after a command. The timeout is caught later. */
@@ -500,7 +500,7 @@ void nand_wait_ready(struct nand_chip *chip)
 
 	/* wait until command is processed or timeout occures */
 	do {
-		if (chip->dev_ready(chip))
+		if (chip->legacy.dev_ready(chip))
 			break;
 	} while (!is_timeout(start, SECOND * 2));
 }
@@ -535,10 +535,10 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 			column -= 256;
 			readcmd = NAND_CMD_READ1;
 		}
-		chip->cmd_ctrl(chip, readcmd, ctrl);
+		chip->legacy.cmd_ctrl(chip, readcmd, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
 	}
-	chip->cmd_ctrl(chip, command, ctrl);
+	chip->legacy.cmd_ctrl(chip, command, ctrl);
 
 	/* Address cycle, when necessary */
 	ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;
@@ -547,18 +547,18 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 		/* Adjust columns for 16 bit buswidth */
 		if (chip->options & NAND_BUSWIDTH_16)
 			column >>= 1;
-		chip->cmd_ctrl(chip, column, ctrl);
+		chip->legacy.cmd_ctrl(chip, column, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
 	}
 	if (page_addr != -1) {
-		chip->cmd_ctrl(chip, page_addr, ctrl);
+		chip->legacy.cmd_ctrl(chip, page_addr, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
-		chip->cmd_ctrl(chip, page_addr >> 8, ctrl);
+		chip->legacy.cmd_ctrl(chip, page_addr >> 8, ctrl);
 		/* One more address cycle for devices > 32MiB */
 		if (chip->chipsize > (32 << 20))
-			chip->cmd_ctrl(chip, page_addr >> 16, ctrl);
+			chip->legacy.cmd_ctrl(chip, page_addr >> 16, ctrl);
 	}
-	chip->cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+	chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
 
 	/*
 	 * Program and erase have their own busy handlers status and sequential
@@ -574,14 +574,14 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 		return;
 
 	case NAND_CMD_RESET:
-		if (chip->dev_ready)
+		if (chip->legacy.dev_ready)
 			break;
-		udelay(chip->chip_delay);
-		chip->cmd_ctrl(chip, NAND_CMD_STATUS,
+		udelay(chip->legacy.chip_delay);
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_STATUS,
 			       NAND_CTRL_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(chip,
+		chip->legacy.cmd_ctrl(chip,
 			       NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(chip) & NAND_STATUS_READY))
+		while (!(chip->legacy.read_byte(chip) & NAND_STATUS_READY))
 				;
 		return;
 
@@ -591,8 +591,8 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 		 * If we don't have access to the busy pin, we apply the given
 		 * command delay
 		 */
-		if (!chip->dev_ready) {
-			udelay(chip->chip_delay);
+		if (!chip->legacy.dev_ready) {
+			udelay(chip->legacy.chip_delay);
 			return;
 		}
 	}
@@ -626,7 +626,7 @@ static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 	}
 
 	/* Command latch cycle */
-	chip->cmd_ctrl(chip, command, NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+	chip->legacy.cmd_ctrl(chip, command, NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
 
 	if (column != -1 || page_addr != -1) {
 		int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;
@@ -636,21 +636,21 @@ static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 			/* Adjust columns for 16 bit buswidth */
 			if (chip->options & NAND_BUSWIDTH_16)
 				column >>= 1;
-			chip->cmd_ctrl(chip, column, ctrl);
+			chip->legacy.cmd_ctrl(chip, column, ctrl);
 			ctrl &= ~NAND_CTRL_CHANGE;
-			chip->cmd_ctrl(chip, column >> 8, ctrl);
+			chip->legacy.cmd_ctrl(chip, column >> 8, ctrl);
 		}
 		if (page_addr != -1) {
-			chip->cmd_ctrl(chip, page_addr, ctrl);
-			chip->cmd_ctrl(chip, page_addr >> 8,
+			chip->legacy.cmd_ctrl(chip, page_addr, ctrl);
+			chip->legacy.cmd_ctrl(chip, page_addr >> 8,
 				       NAND_NCE | NAND_ALE);
 			/* One more address cycle for devices > 128MiB */
 			if (chip->chipsize > (128 << 20))
-				chip->cmd_ctrl(chip, page_addr >> 16,
+				chip->legacy.cmd_ctrl(chip, page_addr >> 16,
 					       NAND_NCE | NAND_ALE);
 		}
 	}
-	chip->cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+	chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
 
 	/*
 	 * Program and erase have their own busy handlers status, sequential
@@ -668,29 +668,29 @@ static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 		return;
 
 	case NAND_CMD_RESET:
-		if (chip->dev_ready)
+		if (chip->legacy.dev_ready)
 			break;
-		udelay(chip->chip_delay);
-		chip->cmd_ctrl(chip, NAND_CMD_STATUS,
+		udelay(chip->legacy.chip_delay);
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_STATUS,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(chip, NAND_CMD_NONE,
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(chip) & NAND_STATUS_READY))
+		while (!(chip->legacy.read_byte(chip) & NAND_STATUS_READY))
 				;
 		return;
 
 	case NAND_CMD_RNDOUT:
 		/* No ready / busy check necessary */
-		chip->cmd_ctrl(chip, NAND_CMD_RNDOUTSTART,
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_RNDOUTSTART,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(chip, NAND_CMD_NONE,
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
 		return;
 
 	case NAND_CMD_READ0:
-		chip->cmd_ctrl(chip, NAND_CMD_READSTART,
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_READSTART,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(chip, NAND_CMD_NONE,
+		chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
 
 		/* This applies to read commands */
@@ -699,8 +699,8 @@ static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 		 * If we don't have access to the busy pin, we apply the given
 		 * command delay.
 		 */
-		if (!chip->dev_ready) {
-			udelay(chip->chip_delay);
+		if (!chip->legacy.dev_ready) {
+			udelay(chip->legacy.chip_delay);
 			return;
 		}
 	}
@@ -768,19 +768,19 @@ static int nand_wait(struct nand_chip *chip)
 	 * any case on any machine. */
 	ndelay(100);
 
-	chip->cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
 
 	while (!is_timeout(start, timeo)) {
-		if (chip->dev_ready) {
-			if (chip->dev_ready(chip))
+		if (chip->legacy.dev_ready) {
+			if (chip->legacy.dev_ready(chip))
 				break;
 		} else {
-			if (chip->read_byte(chip) & NAND_STATUS_READY)
+			if (chip->legacy.read_byte(chip) & NAND_STATUS_READY)
 				break;
 		}
 	}
 
-	status = (int)chip->read_byte(chip);
+	status = (int)chip->legacy.read_byte(chip);
 	return status;
 }
 
@@ -804,15 +804,15 @@ static int __nand_unlock(struct nand_chip *chip, loff_t ofs,
 
 	/* Submit address of first page to unlock */
 	page = ofs >> chip->page_shift;
-	chip->cmdfunc(chip, NAND_CMD_UNLOCK1, -1, page & chip->pagemask);
+	chip->legacy.cmdfunc(chip, NAND_CMD_UNLOCK1, -1, page & chip->pagemask);
 
 	/* Submit address of last page to unlock */
 	page = (ofs + len) >> chip->page_shift;
-	chip->cmdfunc(chip, NAND_CMD_UNLOCK2, -1,
+	chip->legacy.cmdfunc(chip, NAND_CMD_UNLOCK2, -1,
 				(page | invert) & chip->pagemask);
 
 	/* Call wait ready function */
-	status = chip->waitfunc(chip);
+	status = chip->legacy.waitfunc(chip);
 	/* See if device thinks it succeeded */
 	if (status & NAND_STATUS_FAIL) {
 		pr_debug("%s: error status = 0x%08x\n",
@@ -852,7 +852,7 @@ int nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	/* Shift to get chip number */
 	chipnr = ofs >> chip->chip_shift;
 
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/*
 	 * Reset the chip.
@@ -861,7 +861,7 @@ int nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	 * some operation can also clear the bit 7 of status register
 	 * eg. erase/program a locked block
 	 */
-	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
 	if (nand_check_wp(chip)) {
@@ -874,7 +874,7 @@ int nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	ret = __nand_unlock(chip, ofs, len, 0);
 
 out:
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 	nand_release_device(chip);
 
 	return ret;
@@ -910,7 +910,7 @@ int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	/* Shift to get chip number */
 	chipnr = ofs >> chip->chip_shift;
 
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/*
 	 * Reset the chip.
@@ -919,7 +919,7 @@ int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	 * some operation can also clear the bit 7 of status register
 	 * eg. erase/program a locked block
 	 */
-	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
 	if (nand_check_wp(chip)) {
@@ -931,10 +931,10 @@ int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 
 	/* Submit address of first page to lock */
 	page = ofs >> chip->page_shift;
-	chip->cmdfunc(chip, NAND_CMD_LOCK, -1, page & chip->pagemask);
+	chip->legacy.cmdfunc(chip, NAND_CMD_LOCK, -1, page & chip->pagemask);
 
 	/* Call wait ready function */
-	status = chip->waitfunc(chip);
+	status = chip->legacy.waitfunc(chip);
 	/* See if device thinks it succeeded */
 	if (status & NAND_STATUS_FAIL) {
 		pr_debug("%s: error status = 0x%08x\n",
@@ -946,7 +946,7 @@ int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	ret = __nand_unlock(chip, ofs, len, 0x1);
 
 out:
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 	nand_release_device(chip);
 
 	return ret;
@@ -1095,9 +1095,9 @@ static __maybe_unused int nand_read_page_raw(struct nand_chip *chip,
 					     uint8_t *buf, int oob_required,
 					     int page)
 {
-	chip->read_buf(chip, buf, chip->mtd.writesize);
+	chip->legacy.read_buf(chip, buf, chip->mtd.writesize);
 	if (oob_required)
-		chip->read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
+		chip->legacy.read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 	return 0;
 }
 
@@ -1120,26 +1120,26 @@ static __maybe_unused int nand_read_page_raw_syndrome(struct nand_chip *chip,
 	int steps, size;
 
 	for (steps = chip->ecc.steps; steps > 0; steps--) {
-		chip->read_buf(chip, buf, eccsize);
+		chip->legacy.read_buf(chip, buf, eccsize);
 		buf += eccsize;
 
 		if (chip->ecc.prepad) {
-			chip->read_buf(chip, oob, chip->ecc.prepad);
+			chip->legacy.read_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->read_buf(chip, oob, eccbytes);
+		chip->legacy.read_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->read_buf(chip, oob, chip->ecc.postpad);
+			chip->legacy.read_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
 
 	size = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (size)
-		chip->read_buf(chip, oob, size);
+		chip->legacy.read_buf(chip, oob, size);
 
 	return 0;
 }
@@ -1229,10 +1229,10 @@ static __maybe_unused int nand_read_subpage(struct nand_chip *chip,
 	data_col_addr = start_step * chip->ecc.size;
 	/* If we read not a page aligned data */
 	if (data_col_addr != 0)
-		chip->cmdfunc(chip, NAND_CMD_RNDOUT, data_col_addr, -1);
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, data_col_addr, -1);
 
 	p = bufpoi + data_col_addr;
-	chip->read_buf(chip, p, datafrag_len);
+	chip->legacy.read_buf(chip, p, datafrag_len);
 
 	/* Calculate ECC */
 	for (i = 0; i < eccfrag_len ; i += chip->ecc.bytes, p += chip->ecc.size)
@@ -1250,8 +1250,8 @@ static __maybe_unused int nand_read_subpage(struct nand_chip *chip,
 		}
 	}
 	if (gaps) {
-		chip->cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
-		chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
+		chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 	} else {
 		/*
 		 * Send the command to read the particular ECC bytes take care
@@ -1266,9 +1266,9 @@ static __maybe_unused int nand_read_subpage(struct nand_chip *chip,
 		if (eccpos[index + (num_steps * chip->ecc.bytes)] & (busw - 1))
 			aligned_len++;
 
-		chip->cmdfunc(chip, NAND_CMD_RNDOUT,
+		chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT,
 					mtd->writesize + aligned_pos, -1);
-		chip->read_buf(chip, &chip->oob_poi[aligned_pos], aligned_len);
+		chip->legacy.read_buf(chip, &chip->oob_poi[aligned_pos], aligned_len);
 	}
 
 	for (i = 0; i < eccfrag_len; i++)
@@ -1315,10 +1315,10 @@ static __maybe_unused int nand_read_page_hwecc(struct nand_chip *chip,
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
-		chip->read_buf(chip, p, eccsize);
+		chip->legacy.read_buf(chip, p, eccsize);
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 	}
-	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1368,9 +1368,9 @@ static __maybe_unused int nand_read_page_hwecc_oob_first(struct nand_chip *chip,
 	unsigned int max_bitflips = 0;
 
 	/* Read the OOB area first */
-	chip->cmdfunc(chip, NAND_CMD_READOOB, 0, page);
-	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
-	chip->cmdfunc(chip, NAND_CMD_READ0, 0, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READOOB, 0, page);
+	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READ0, 0, page);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1379,7 +1379,7 @@ static __maybe_unused int nand_read_page_hwecc_oob_first(struct nand_chip *chip,
 		int stat;
 
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
-		chip->read_buf(chip, p, eccsize);
+		chip->legacy.read_buf(chip, p, eccsize);
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 
 		stat = chip->ecc.correct(chip, p, &ecc_code[i], NULL);
@@ -1419,15 +1419,15 @@ static __maybe_unused  int nand_read_page_syndrome(struct nand_chip *chip,
 		int stat;
 
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
-		chip->read_buf(chip, p, eccsize);
+		chip->legacy.read_buf(chip, p, eccsize);
 
 		if (chip->ecc.prepad) {
-			chip->read_buf(chip, oob, chip->ecc.prepad);
+			chip->legacy.read_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
 		chip->ecc.hwctl(chip, NAND_ECC_READSYN);
-		chip->read_buf(chip, oob, eccbytes);
+		chip->legacy.read_buf(chip, oob, eccbytes);
 		stat = chip->ecc.correct(chip, p, oob, NULL);
 
 		if (stat < 0) {
@@ -1440,7 +1440,7 @@ static __maybe_unused  int nand_read_page_syndrome(struct nand_chip *chip,
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->read_buf(chip, oob, chip->ecc.postpad);
+			chip->legacy.read_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
@@ -1448,7 +1448,7 @@ static __maybe_unused  int nand_read_page_syndrome(struct nand_chip *chip,
 	/* Calculate remaining oob bytes */
 	i = mtd->oobsize - (oob - chip->oob_poi);
 	if (i)
-		chip->read_buf(chip, oob, i);
+		chip->legacy.read_buf(chip, oob, i);
 
 	return max_bitflips;
 }
@@ -1527,7 +1527,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 	stats = mtd->ecc_stats;
 
 	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	realpage = (int)(from >> chip->page_shift);
 	page = realpage & chip->pagemask;
@@ -1546,7 +1546,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 		if (realpage != chip->pagebuf || oob) {
 			bufpoi = aligned ? buf : chip->buffers->databuf;
 
-			chip->cmdfunc(chip, NAND_CMD_READ0, 0x00, page);
+			chip->legacy.cmdfunc(chip, NAND_CMD_READ0, 0x00, page);
 
 			/*
 			 * Now read the page into the buffer.  Absent an error,
@@ -1600,8 +1600,8 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 
 			if (chip->options & NAND_NEED_READRDY) {
 				/* Apply delay or wait for ready/busy pin */
-				if (!chip->dev_ready)
-					udelay(chip->chip_delay);
+				if (!chip->legacy.dev_ready)
+					udelay(chip->legacy.chip_delay);
 				else
 					nand_wait_ready(chip);
 			}
@@ -1626,11 +1626,11 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(chip, -1);
-			chip->select_chip(chip, chipnr);
+			chip->legacy.select_chip(chip, -1);
+			chip->legacy.select_chip(chip, chipnr);
 		}
 	}
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	ops->retlen = ops->len - (size_t) readlen;
 	if (oob)
@@ -1685,8 +1685,8 @@ static __maybe_unused int nand_read_oob_std(struct nand_chip *chip, int page)
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(chip, NAND_CMD_READOOB, 0, page);
-	chip->read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READOOB, 0, page);
+	chip->legacy.read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 	return 0;
 }
 
@@ -1710,23 +1710,23 @@ static __maybe_unused  int nand_read_oob_syndrome(struct nand_chip *chip,
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(chip, NAND_CMD_READ0, chip->ecc.size, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READ0, chip->ecc.size, page);
 	for (i = 0; i < chip->ecc.steps; i++) {
 		if (sndrnd) {
 			pos = eccsize + i * (eccsize + chunk);
 			if (chip->mtd.writesize > 512)
-				chip->cmdfunc(chip, NAND_CMD_RNDOUT, pos, -1);
+				chip->legacy.cmdfunc(chip, NAND_CMD_RNDOUT, pos, -1);
 			else
-				chip->cmdfunc(chip, NAND_CMD_READ0, pos, page);
+				chip->legacy.cmdfunc(chip, NAND_CMD_READ0, pos, page);
 		} else
 			sndrnd = 1;
 		toread = min_t(int, length, chunk);
-		chip->read_buf(chip, bufpoi, toread);
+		chip->legacy.read_buf(chip, bufpoi, toread);
 		bufpoi += toread;
 		length -= toread;
 	}
 	if (length > 0)
-		chip->read_buf(chip, bufpoi, length);
+		chip->legacy.read_buf(chip, bufpoi, length);
 
 	return 0;
 }
@@ -1746,12 +1746,12 @@ static __maybe_unused int nand_write_oob_std(struct nand_chip *chip, int page)
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB) || !IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(chip, NAND_CMD_SEQIN, chip->mtd.writesize, page);
-	chip->write_buf(chip, buf, length);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, chip->mtd.writesize, page);
+	chip->legacy.write_buf(chip, buf, length);
 	/* Send command to program the OOB data */
-	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
 
-	status = chip->waitfunc(chip);
+	status = chip->legacy.waitfunc(chip);
 
 	return status & NAND_STATUS_FAIL ? -EIO : 0;
 }
@@ -1784,7 +1784,7 @@ static __maybe_unused  int nand_write_oob_syndrome(struct nand_chip *chip, int p
 	} else
 		pos = eccsize;
 
-	chip->cmdfunc(chip, NAND_CMD_SEQIN, pos, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, pos, page);
 	for (i = 0; i < steps; i++) {
 		if (sndcmd) {
 			if (chip->mtd.writesize <= 512) {
@@ -1793,26 +1793,26 @@ static __maybe_unused  int nand_write_oob_syndrome(struct nand_chip *chip, int p
 				len = eccsize;
 				while (len > 0) {
 					int num = min_t(int, len, 4);
-					chip->write_buf(chip, (uint8_t *)&fill,
+					chip->legacy.write_buf(chip, (uint8_t *)&fill,
 							num);
 					len -= num;
 				}
 			} else {
 				pos = eccsize + i * (eccsize + chunk);
-				chip->cmdfunc(chip, NAND_CMD_RNDIN, pos, -1);
+				chip->legacy.cmdfunc(chip, NAND_CMD_RNDIN, pos, -1);
 			}
 		} else
 			sndcmd = 1;
 		len = min_t(int, length, chunk);
-		chip->write_buf(chip, bufpoi, len);
+		chip->legacy.write_buf(chip, bufpoi, len);
 		bufpoi += len;
 		length -= len;
 	}
 	if (length > 0)
-		chip->write_buf(chip, bufpoi, length);
+		chip->legacy.write_buf(chip, bufpoi, length);
 
-	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(chip);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->legacy.waitfunc(chip);
 
 	return status & NAND_STATUS_FAIL ? -EIO : 0;
 }
@@ -1865,7 +1865,7 @@ static int nand_do_read_oob(struct nand_chip *chip, loff_t from,
 	}
 
 	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/* Shift to get page */
 	realpage = (int)(from >> chip->page_shift);
@@ -1885,8 +1885,8 @@ static int nand_do_read_oob(struct nand_chip *chip, loff_t from,
 
 		if (chip->options & NAND_NEED_READRDY) {
 			/* Apply delay or wait for ready/busy pin */
-			if (!chip->dev_ready)
-				udelay(chip->chip_delay);
+			if (!chip->legacy.dev_ready)
+				udelay(chip->legacy.chip_delay);
 			else
 				nand_wait_ready(chip);
 		}
@@ -1902,11 +1902,11 @@ static int nand_do_read_oob(struct nand_chip *chip, loff_t from,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(chip, -1);
-			chip->select_chip(chip, chipnr);
+			chip->legacy.select_chip(chip, -1);
+			chip->legacy.select_chip(chip, chipnr);
 		}
 	}
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	ops->oobretlen = ops->ooblen - readlen;
 
@@ -1983,9 +1983,9 @@ static __maybe_unused int nand_write_page_raw(struct nand_chip *chip,
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	chip->write_buf(chip, buf, chip->mtd.writesize);
+	chip->legacy.write_buf(chip, buf, chip->mtd.writesize);
 	if (oob_required)
-		chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
+		chip->legacy.write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2011,26 +2011,26 @@ static __maybe_unused  int nand_write_page_raw_syndrome(struct nand_chip *chip,
 		return -ENOTSUPP;
 
 	for (steps = chip->ecc.steps; steps > 0; steps--) {
-		chip->write_buf(chip, buf, eccsize);
+		chip->legacy.write_buf(chip, buf, eccsize);
 		buf += eccsize;
 
 		if (chip->ecc.prepad) {
-			chip->write_buf(chip, oob, chip->ecc.prepad);
+			chip->legacy.write_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->read_buf(chip, oob, eccbytes);
+		chip->legacy.read_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->write_buf(chip, oob, chip->ecc.postpad);
+			chip->legacy.write_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
 
 	size = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (size)
-		chip->write_buf(chip, oob, size);
+		chip->legacy.write_buf(chip, oob, size);
 
 	return 0;
 }
@@ -2086,14 +2086,14 @@ static __maybe_unused int nand_write_page_hwecc(struct nand_chip *chip,
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
-		chip->write_buf(chip, p, eccsize);
+		chip->legacy.write_buf(chip, p, eccsize);
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 	}
 
 	for (i = 0; i < chip->ecc.total; i++)
 		chip->oob_poi[eccpos[i]] = ecc_calc[i];
 
-	chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
+	chip->legacy.write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2131,7 +2131,7 @@ static __maybe_unused int nand_write_subpage_hwecc(struct nand_chip *chip,
 		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
 
 		/* write data (untouched subpages already masked by 0xFF) */
-		chip->write_buf(chip, data_buf, ecc_size);
+		chip->legacy.write_buf(chip, data_buf, ecc_size);
 
 		/* mask ECC of un-touched subpages by padding 0xFF */
 		if ((step < start_step) || (step > end_step))
@@ -2156,7 +2156,7 @@ static __maybe_unused int nand_write_subpage_hwecc(struct nand_chip *chip,
 		chip->oob_poi[eccpos[i]] = ecc_calc[i];
 
 	/* write OOB buffer to NAND device */
-	chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
+	chip->legacy.write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2187,19 +2187,19 @@ static __maybe_unused int nand_write_page_syndrome(struct nand_chip *chip,
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 
 		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
-		chip->write_buf(chip, p, eccsize);
+		chip->legacy.write_buf(chip, p, eccsize);
 
 		if (chip->ecc.prepad) {
-			chip->write_buf(chip, oob, chip->ecc.prepad);
+			chip->legacy.write_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
 		chip->ecc.calculate(chip, p, oob);
-		chip->write_buf(chip, oob, eccbytes);
+		chip->legacy.write_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->write_buf(chip, oob, chip->ecc.postpad);
+			chip->legacy.write_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
@@ -2207,7 +2207,7 @@ static __maybe_unused int nand_write_page_syndrome(struct nand_chip *chip,
 	/* Calculate remaining oob bytes */
 	i = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (i)
-		chip->write_buf(chip, oob, i);
+		chip->legacy.write_buf(chip, oob, i);
 
 	return 0;
 }
@@ -2239,7 +2239,7 @@ static int nand_write_page(struct nand_chip *chip,
 	else
 		subpage = 0;
 
-	chip->cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
 
 	if (unlikely(raw))
 		status = chip->ecc.write_page_raw(chip, buf,
@@ -2261,14 +2261,14 @@ static int nand_write_page(struct nand_chip *chip,
 
 	if (!cached || !NAND_HAS_CACHEPROG(chip)) {
 
-		chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-		status = chip->waitfunc(chip);
+		chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+		status = chip->legacy.waitfunc(chip);
 
 		if (status & NAND_STATUS_FAIL)
 			return -EIO;
 	} else {
-		chip->cmdfunc(chip, NAND_CMD_CACHEDPROG, -1, -1);
-		status = chip->waitfunc(chip);
+		chip->legacy.cmdfunc(chip, NAND_CMD_CACHEDPROG, -1, -1);
+		status = chip->legacy.waitfunc(chip);
 	}
 
 	return 0;
@@ -2364,7 +2364,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 	column = to & (mtd->writesize - 1);
 
 	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/* Check, if it is write protected */
 	if (nand_check_wp(chip)) {
@@ -2431,8 +2431,8 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(chip, -1);
-			chip->select_chip(chip, chipnr);
+			chip->legacy.select_chip(chip, -1);
+			chip->legacy.select_chip(chip, chipnr);
 		}
 	}
 
@@ -2441,7 +2441,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		ops->oobretlen = ops->ooblen;
 
 err_out:
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 	return ret;
 }
 
@@ -2525,7 +2525,7 @@ static int nand_do_write_oob(struct nand_chip *chip, loff_t to,
 	}
 
 	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/* Shift to get page */
 	page = (int)(to >> chip->page_shift);
@@ -2536,11 +2536,11 @@ static int nand_do_write_oob(struct nand_chip *chip, loff_t to,
 	 * if we don't do this. I have no clue why, but I seem to have 'fixed'
 	 * it in the doc2000 driver in August 1999.  dwmw2.
 	 */
-	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
 	if (nand_check_wp(chip)) {
-		chip->select_chip(chip, -1);
+		chip->legacy.select_chip(chip, -1);
 		return -EROFS;
 	}
 
@@ -2555,7 +2555,7 @@ static int nand_do_write_oob(struct nand_chip *chip, loff_t to,
 	else
 		status = chip->ecc.write_oob(chip, page & chip->pagemask);
 
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	if (status)
 		return status;
@@ -2624,8 +2624,8 @@ static void single_erase_cmd(struct nand_chip *chip, int page)
 		return;
 
 	/* Send commands to erase a block */
-	chip->cmdfunc(chip, NAND_CMD_ERASE1, -1, page);
-	chip->cmdfunc(chip, NAND_CMD_ERASE2, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_ERASE1, -1, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_ERASE2, -1, -1);
 }
 
 /**
@@ -2680,7 +2680,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 	pages_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
 
 	/* Select the NAND device */
-	chip->select_chip(chip, chipnr);
+	chip->legacy.select_chip(chip, chipnr);
 
 	/* Check, if it is write protected */
 	if (nand_check_wp(chip)) {
@@ -2714,7 +2714,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 
 		single_erase_cmd(chip, page & chip->pagemask);
 
-		status = chip->waitfunc(chip);
+		status = chip->legacy.waitfunc(chip);
 
 		/* See if block erase succeeded */
 		if (status & NAND_STATUS_FAIL) {
@@ -2733,8 +2733,8 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		/* Check, if we cross a chip boundary */
 		if (len && !(page & chip->pagemask)) {
 			chipnr++;
-			chip->select_chip(chip, -1);
-			chip->select_chip(chip, chipnr);
+			chip->legacy.select_chip(chip, -1);
+			chip->legacy.select_chip(chip, chipnr);
 		}
 	}
 
@@ -2742,7 +2742,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 
 erase_exit:
 	/* Deselect and wake up anyone waiting on the device */
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 	nand_release_device(chip);
 
 	/* Return more or less happy */
@@ -2844,9 +2844,9 @@ static int nand_onfi_set_features(struct nand_chip *chip,
 	      & ONFI_OPT_CMD_SET_GET_FEATURES))
 		return -EINVAL;
 
-	chip->cmdfunc(chip, NAND_CMD_SET_FEATURES, addr, -1);
-	chip->write_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
-	status = chip->waitfunc(chip);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SET_FEATURES, addr, -1);
+	chip->legacy.write_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
+	status = chip->legacy.waitfunc(chip);
 	if (status & NAND_STATUS_FAIL)
 		return -EIO;
 	return 0;
@@ -2870,8 +2870,8 @@ static int nand_onfi_get_features(struct nand_chip *chip,
 	/* clear the sub feature parameters */
 	memset(subfeature_param, 0, ONFI_SUBFEATURE_PARAM_LEN);
 
-	chip->cmdfunc(chip, NAND_CMD_GET_FEATURES, addr, -1);
-	chip->read_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
+	chip->legacy.cmdfunc(chip, NAND_CMD_GET_FEATURES, addr, -1);
+	chip->legacy.read_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
 	return 0;
 }
 
@@ -2879,40 +2879,40 @@ static int nand_onfi_get_features(struct nand_chip *chip,
 static void nand_set_defaults(struct nand_chip *chip, int busw)
 {
 	/* check for proper chip_delay setup, set 20us if not */
-	if (!chip->chip_delay)
-		chip->chip_delay = 20;
+	if (!chip->legacy.chip_delay)
+		chip->legacy.chip_delay = 20;
 
 	/* check, if a user supplied command function given */
-	if (chip->cmdfunc == NULL)
-		chip->cmdfunc = nand_command;
+	if (chip->legacy.cmdfunc == NULL)
+		chip->legacy.cmdfunc = nand_command;
 
 	/* check, if a user supplied wait function given */
-	if (chip->waitfunc == NULL)
-		chip->waitfunc = nand_wait;
+	if (chip->legacy.waitfunc == NULL)
+		chip->legacy.waitfunc = nand_wait;
 
-	if (!chip->select_chip)
-		chip->select_chip = nand_select_chip;
+	if (!chip->legacy.select_chip)
+		chip->legacy.select_chip = nand_select_chip;
 
 	/* set for ONFI nand */
-	if (!chip->onfi_set_features)
-		chip->onfi_set_features = nand_onfi_set_features;
-	if (!chip->onfi_get_features)
-		chip->onfi_get_features = nand_onfi_get_features;
-
-	if (!chip->read_byte)
-		chip->read_byte = busw ? nand_read_byte16 : nand_read_byte;
-	if (!chip->read_word)
-		chip->read_word = nand_read_word;
-	if (!chip->block_bad)
-		chip->block_bad = nand_block_bad;
+	if (!chip->legacy.set_features)
+		chip->legacy.set_features = nand_onfi_set_features;
+	if (!chip->legacy.get_features)
+		chip->legacy.get_features = nand_onfi_get_features;
+
+	if (!chip->legacy.read_byte)
+		chip->legacy.read_byte = busw ? nand_read_byte16 : nand_read_byte;
+	if (!chip->legacy.read_word)
+		chip->legacy.read_word = nand_read_word;
+	if (!chip->legacy.block_bad)
+		chip->legacy.block_bad = nand_block_bad;
 #ifdef CONFIG_MTD_WRITE
-	if (!chip->block_markbad)
-		chip->block_markbad = nand_default_block_markbad;
-	if (!chip->write_buf)
-		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
+	if (!chip->legacy.block_markbad)
+		chip->legacy.block_markbad = nand_default_block_markbad;
+	if (!chip->legacy.write_buf)
+		chip->legacy.write_buf = busw ? nand_write_buf16 : nand_write_buf;
 #endif
-	if (!chip->read_buf)
-		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
+	if (!chip->legacy.read_buf)
+		chip->legacy.read_buf = busw ? nand_read_buf16 : nand_read_buf;
 #ifdef CONFIG_NAND_BBT
 	if (!chip->scan_bbt)
 		chip->scan_bbt = nand_default_bbt;
@@ -2964,15 +2964,15 @@ static int nand_flash_detect_onfi(struct nand_chip *chip, int *busw)
 	int val;
 
 	/* Try ONFI for unknown chip or LP */
-	chip->cmdfunc(chip, NAND_CMD_READID, 0x20, -1);
-	if (chip->read_byte(chip) != 'O' || chip->read_byte(chip) != 'N' ||
-		chip->read_byte(chip) != 'F' || chip->read_byte(chip) != 'I')
+	chip->legacy.cmdfunc(chip, NAND_CMD_READID, 0x20, -1);
+	if (chip->legacy.read_byte(chip) != 'O' || chip->legacy.read_byte(chip) != 'N' ||
+		chip->legacy.read_byte(chip) != 'F' || chip->legacy.read_byte(chip) != 'I')
 		return 0;
 
-	chip->cmdfunc(chip, NAND_CMD_PARAM, 0, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PARAM, 0, -1);
 	for (i = 0; i < 3; i++) {
 		for (j = 0; j < sizeof(*p); j++)
-			((uint8_t *)p)[j] = chip->read_byte(chip);
+			((uint8_t *)p)[j] = chip->legacy.read_byte(chip);
 		if (onfi_crc16(ONFI_CRC_BASE, (uint8_t *)p, 254) ==
 				le16_to_cpu(p->crc)) {
 			break;
@@ -3327,20 +3327,20 @@ static struct nand_flash_dev *nand_get_flash_type(struct nand_chip *chip,
 	u8 id_data[8];
 
 	/* Select the device */
-	chip->select_chip(chip, 0);
+	chip->legacy.select_chip(chip, 0);
 
 	/*
 	 * Reset the chip, required by some chips (e.g. Micron MT29FxGxxxxx)
 	 * after power-up.
 	 */
-	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Send the command for reading device ID */
-	chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 
 	/* Read manufacturer and device IDs */
-	*maf_id = chip->read_byte(chip);
-	*dev_id = chip->read_byte(chip);
+	*maf_id = chip->legacy.read_byte(chip);
+	*dev_id = chip->legacy.read_byte(chip);
 
 	/*
 	 * Try again to make sure, as some systems the bus-hold or other
@@ -3349,11 +3349,11 @@ static struct nand_flash_dev *nand_get_flash_type(struct nand_chip *chip,
 	 * not match, ignore the device completely.
 	 */
 
-	chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 
 	/* Read entire ID string */
 	for (i = 0; i < 8; i++)
-		id_data[i] = chip->read_byte(chip);
+		id_data[i] = chip->legacy.read_byte(chip);
 
 	if (id_data[0] != *maf_id || id_data[1] != *dev_id) {
 		pr_info("%s: second ID read did not match "
@@ -3449,8 +3449,8 @@ ident_done:
 	chip->badblockbits = 8;
 
 	/* Do not replace user supplied command function! */
-	if (mtd->writesize > 512 && chip->cmdfunc == nand_command)
-		chip->cmdfunc = nand_command_lp;
+	if (mtd->writesize > 512 && chip->legacy.cmdfunc == nand_command)
+		chip->legacy.cmdfunc = nand_command_lp;
 
 	pr_info("NAND device: Manufacturer ID: 0x%02x, Chip ID: 0x%02x (%s %s),"
 		" %dMiB, page size: %d, OOB size: %d\n",
@@ -3517,26 +3517,26 @@ int nand_scan_ident(struct nand_chip *chip, int maxchips,
 	if (IS_ERR(type)) {
 		if (!(chip->options & NAND_SCAN_SILENT_NODEV))
 			pr_warn("No NAND device found\n");
-		chip->select_chip(chip, -1);
+		chip->legacy.select_chip(chip, -1);
 		return PTR_ERR(type);
 	}
 
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	/* Check for a chip array */
 	for (i = 1; i < maxchips; i++) {
-		chip->select_chip(chip, i);
+		chip->legacy.select_chip(chip, i);
 		/* See comment in nand_get_flash_type for reset */
-		chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
+		chip->legacy.cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 		/* Send the command for reading device ID */
-		chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
+		chip->legacy.cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 		/* Read manufacturer and device IDs */
-		if (nand_maf_id != chip->read_byte(chip) ||
-		    nand_dev_id != chip->read_byte(chip)) {
-			chip->select_chip(chip, -1);
+		if (nand_maf_id != chip->legacy.read_byte(chip) ||
+		    nand_dev_id != chip->legacy.read_byte(chip)) {
+			chip->legacy.select_chip(chip, -1);
 			break;
 		}
-		chip->select_chip(chip, -1);
+		chip->legacy.select_chip(chip, -1);
 	}
 	if (i > 1)
 		pr_info("%d NAND chips detected\n", i);
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 16e77d924e..7d04c89d76 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -696,7 +696,7 @@ static void mark_bbt_block_bad(struct nand_chip *this,
 	bbt_mark_entry(this, block, BBT_BLOCK_WORN);
 
 	to = (loff_t)block << this->bbt_erase_shift;
-	res = this->block_markbad(this, to);
+	res = this->legacy.block_markbad(this, to);
 	if (res)
 		pr_warn("nand_bbt: error %d while marking block %d bad\n",
 			res, block);
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 629281061b..1bacbd3be2 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1404,11 +1404,11 @@ int denali_init(struct denali_nand_info *denali)
 	mtd->name = "denali-nand";
 
 	/* register the driver with the NAND core subsystem */
-	nand->read_buf = denali_read_buf;
-	nand->select_chip = denali_select_chip;
-	nand->cmdfunc = denali_cmdfunc;
-	nand->read_byte = denali_read_byte;
-	nand->waitfunc = denali_waitfunc;
+	nand->legacy.read_buf = denali_read_buf;
+	nand->legacy.select_chip = denali_select_chip;
+	nand->legacy.cmdfunc = denali_cmdfunc;
+	nand->legacy.read_byte = denali_read_byte;
+	nand->legacy.waitfunc = denali_waitfunc;
 
 	/*
 	 * scan for NAND devices attached to the controller
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index d566c941e7..993fb2e249 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -894,15 +894,15 @@ static int imx_nand_write_page(struct nand_chip *chip,
 
 	host->enable_hwecc(chip, !raw);
 
-	chip->cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
 
 	memcpy32(host->main_area0, buf, mtd->writesize);
 	if (oob_required)
 		copy_spare(chip, 0, chip->oob_poi);
 
 	host->send_page(host, NFC_INPUT);
-	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(chip);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->legacy.waitfunc(chip);
 
 	if (status & NAND_STATUS_FAIL)
 		return -EIO;
@@ -1341,16 +1341,16 @@ static int __init imxnd_probe(struct device_d *dev)
 	mtd->name = "imx_nand";
 
 	/* 50 us command delay time */
-	this->chip_delay = 5;
+	this->legacy.chip_delay = 5;
 
 	this->priv = host;
-	this->dev_ready = imx_nand_dev_ready;
-	this->cmdfunc = imx_nand_command;
-	this->select_chip = imx_nand_select_chip;
-	this->read_byte = imx_nand_read_byte;
-	this->read_word = imx_nand_read_word;
-	this->write_buf = imx_nand_write_buf;
-	this->read_buf = imx_nand_read_buf;
+	this->legacy.dev_ready = imx_nand_dev_ready;
+	this->legacy.cmdfunc = imx_nand_command;
+	this->legacy.select_chip = imx_nand_select_chip;
+	this->legacy.read_byte = imx_nand_read_byte;
+	this->legacy.read_word = imx_nand_read_word;
+	this->legacy.write_buf = imx_nand_write_buf;
+	this->legacy.read_buf = imx_nand_read_buf;
 	this->write_page = imx_nand_write_page;
 
 	if (host->hw_ecc) {
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 3f5e04b716..76b487c3f8 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -352,8 +352,8 @@ static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 	if (use_default) {
 		id = 0;
 	} else {
-		chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
-		chip->read_buf(chip, (unsigned char *)&id, sizeof(id));
+		chip->legacy.cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
+		chip->legacy.read_buf(chip, (unsigned char *)&id, sizeof(id));
 	}
 	for (t = &timings[0]; t->id; t++)
 		if (t->id == id)
@@ -472,7 +472,7 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
 	nand_writel(host, NDSR, NDSR_MASK);
 	nand_writel(host, NDCR, ndcr | NDCR_ND_RUN);
 
-	if (wait_on_timeout(host->chip.chip_delay * USECOND,
+	if (wait_on_timeout(host->chip.legacy.chip_delay * USECOND,
 			    nand_readl(host, NDSR) & NDSR_WRCMDREQ)) {
 		dev_err(host->dev, "Waiting for command request failed\n");
 	} else {
@@ -719,7 +719,7 @@ static void mrvl_data_stage(struct mrvl_nand_host *host)
 	if (!host->data_size)
 		return;
 
-	wait_on_timeout(host->chip.chip_delay * USECOND,
+	wait_on_timeout(host->chip.legacy.chip_delay * USECOND,
 			nand_readl(host, NDSR) & mask);
 	if (!(nand_readl(host, NDSR) & mask)) {
 		dev_err(host->dev, "Timeout waiting for data ndsr=0x%08x\n",
@@ -752,7 +752,7 @@ static void mrvl_nand_wait_cmd_done(struct mrvl_nand_host *host,
 		mask = NDSR_CS0_CMDD;
 	else
 		mask = NDSR_CS1_CMDD;
-	wait_on_timeout(host->chip.chip_delay * USECOND,
+	wait_on_timeout(host->chip.legacy.chip_delay * USECOND,
 			(nand_readl(host, NDSR) & mask) == mask);
 	if ((nand_readl(host, NDSR) & mask) != mask) {
 		dev_err(host->dev, "Waiting end of command %dth %d timeout, ndsr=0x%08x ndcr=0x%08x\n",
@@ -817,8 +817,8 @@ static int mrvl_nand_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 	u32 ndsr;
 	int ret = 0;
 
-	chip->read_buf(chip, buf, mtd->writesize);
-	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.read_buf(chip, buf, mtd->writesize);
+	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 	ndsr = nand_readl(host, NDSR);
 
 	if (ndsr & NDSR_UNCORERR) {
@@ -1122,19 +1122,19 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	mtd->name = "mrvl_nand";
 
 	chip = &host->chip;
-	chip->read_byte		= mrvl_nand_read_byte;
-	chip->read_word		= mrvl_nand_read_word;
+	chip->legacy.read_byte = mrvl_nand_read_byte;
+	chip->legacy.read_word = mrvl_nand_read_word;
 	chip->ecc.read_page	= mrvl_nand_read_page_hwecc;
 	chip->ecc.write_page	= mrvl_nand_write_page_hwecc;
-	chip->dev_ready		= mrvl_nand_ready;
-	chip->select_chip	= mrvl_nand_select_chip;
-	chip->block_bad		= mrvl_nand_block_bad;
-	chip->read_buf		= mrvl_nand_read_buf;
-	chip->write_buf		= mrvl_nand_write_buf;
+	chip->legacy.dev_ready = mrvl_nand_ready;
+	chip->legacy.select_chip = mrvl_nand_select_chip;
+	chip->legacy.block_bad = mrvl_nand_block_bad;
+	chip->legacy.read_buf = mrvl_nand_read_buf;
+	chip->legacy.write_buf = mrvl_nand_write_buf;
 	chip->options		|= NAND_NO_SUBPAGE_WRITE;
-	chip->cmdfunc		= mrvl_nand_cmdfunc;
+	chip->legacy.cmdfunc = mrvl_nand_cmdfunc;
 	chip->priv		= host;
-	chip->chip_delay	= CHIP_DELAY_TIMEOUT_US;
+	chip->legacy.chip_delay = CHIP_DELAY_TIMEOUT_US;
 
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8075f6a854..2cf72178bf 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1148,8 +1148,8 @@ static int mxs_nand_ecc_read_oob(struct nand_chip *chip, int page)
 		 * If control arrives here, we're doing a "raw" read. Send the
 		 * command to read the conventional OOB and read it.
 		 */
-		chip->cmdfunc(chip, NAND_CMD_READ0, mtd->writesize, page);
-		chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+		chip->legacy.cmdfunc(chip, NAND_CMD_READ0, mtd->writesize, page);
+		chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 	} else {
 		/*
 		 * If control arrives here, we're not doing a "raw" read. Fill
@@ -1158,7 +1158,7 @@ static int mxs_nand_ecc_read_oob(struct nand_chip *chip, int page)
 		memset(chip->oob_poi, 0xff, mtd->oobsize);
 
 		column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
-		chip->cmdfunc(chip, NAND_CMD_READ0, column, page);
+		chip->legacy.cmdfunc(chip, NAND_CMD_READ0, column, page);
 		mxs_nand_read_buf(chip, chip->oob_poi, 1);
 	}
 
@@ -1192,12 +1192,12 @@ static int mxs_nand_ecc_write_oob(struct nand_chip *chip, int page)
 
 	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
 	/* Write the block mark. */
-	chip->cmdfunc(chip, NAND_CMD_SEQIN, column, page);
-	chip->write_buf(chip, &block_mark, 1);
-	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, column, page);
+	chip->legacy.write_buf(chip, &block_mark, 1);
+	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
 
 	/* Check if it worked. */
-	if (chip->waitfunc(chip) & NAND_STATUS_FAIL)
+	if (chip->legacy.waitfunc(chip) & NAND_STATUS_FAIL)
 		return -EIO;
 
 	return 0;
@@ -2044,7 +2044,7 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	else
 		return -EINVAL;
 
-	chip->select_chip(chip, 0);
+	chip->legacy.select_chip(chip, 0);
 
 	if (le16_to_cpu(chip->onfi_params.opt_cmd)
 	      & ONFI_OPT_CMD_SET_GET_FEATURES) {
@@ -2052,19 +2052,19 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 		/* [1] send SET FEATURE commond to NAND */
 		feature[0] = mode;
 
-		ret = chip->onfi_set_features(chip,
+		ret = chip->legacy.set_features(chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret)
 			goto err_out;
 
 		/* [2] send GET FEATURE command to double-check the timing mode */
-		ret = chip->onfi_get_features(chip,
+		ret = chip->legacy.get_features(chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret || feature[0] != mode)
 			goto err_out;
 	}
 
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
 	clk_disable(info->clk);
@@ -2076,7 +2076,7 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	return mode;
 
 err_out:
-	chip->select_chip(chip, -1);
+	chip->legacy.select_chip(chip, -1);
 
 	return -EINVAL;
 }
@@ -2195,17 +2195,17 @@ static int mxs_nand_probe(struct device_d *dev)
 
 	chip->priv = nand_info;
 
-	chip->cmd_ctrl		= mxs_nand_cmd_ctrl;
+	chip->legacy.cmd_ctrl		= mxs_nand_cmd_ctrl;
 
-	chip->dev_ready		= mxs_nand_device_ready;
-	chip->select_chip	= mxs_nand_select_chip;
-	chip->block_bad		= mxs_nand_block_bad;
-	chip->scan_bbt		= mxs_nand_scan_bbt;
+	chip->legacy.dev_ready		= mxs_nand_device_ready;
+	chip->legacy.select_chip	= mxs_nand_select_chip;
+	chip->legacy.block_bad		= mxs_nand_block_bad;
+	chip->scan_bbt			= mxs_nand_scan_bbt;
 
-	chip->read_byte		= mxs_nand_read_byte;
+	chip->legacy.read_byte		= mxs_nand_read_byte;
 
-	chip->read_buf		= mxs_nand_read_buf;
-	chip->write_buf		= mxs_nand_write_buf;
+	chip->legacy.read_buf		= mxs_nand_read_buf;
+	chip->legacy.write_buf		= mxs_nand_write_buf;
 
 	chip->ecc.read_page	= mxs_nand_ecc_read_page;
 	chip->ecc.write_page	= mxs_nand_ecc_write_page;
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 6ad06288eb..3799406769 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -192,23 +192,23 @@ static void omap_hwcontrol(struct nand_chip *nand, int cmd, unsigned int ctrl)
 
 	switch (ctrl) {
 	case NAND_CTRL_CHANGE | NAND_CTRL_CLE:
-		nand->IO_ADDR_W = oinfo->gpmc_command;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
+		nand->legacy.IO_ADDR_W = oinfo->gpmc_command;
+		nand->legacy.IO_ADDR_R = oinfo->gpmc_data;
 		break;
 
 	case NAND_CTRL_CHANGE | NAND_CTRL_ALE:
-		nand->IO_ADDR_W = oinfo->gpmc_address;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
+		nand->legacy.IO_ADDR_W = oinfo->gpmc_address;
+		nand->legacy.IO_ADDR_R = oinfo->gpmc_data;
 		break;
 
 	case NAND_CTRL_CHANGE | NAND_NCE:
-		nand->IO_ADDR_W = oinfo->gpmc_data;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
+		nand->legacy.IO_ADDR_W = oinfo->gpmc_data;
+		nand->legacy.IO_ADDR_R = oinfo->gpmc_data;
 		break;
 	}
 
 	if (cmd != NAND_CMD_NONE)
-		writeb(cmd, nand->IO_ADDR_W);
+		writeb(cmd, nand->legacy.IO_ADDR_W);
 	return;
 }
 
@@ -561,7 +561,7 @@ static int omap_gpmc_read_buf_manual(struct nand_chip *chip,
 	writel(GPMC_ECC_CONTROL_ECCPOINTER(result_reg),
 			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 
-	chip->read_buf(chip, buf, bytes);
+	chip->legacy.read_buf(chip, buf, bytes);
 
 	return bytes;
 }
@@ -623,7 +623,7 @@ static void omap_write_buf_pref(struct nand_chip *nand_chip,
 
 	/* take care of subpage writes */
 	while (len % 4 != 0) {
-		writeb(*buf, info->nand.IO_ADDR_W);
+		writeb(*buf, info->nand.legacy.IO_ADDR_W);
 		buf1++;
 		p32 = (u32 *)buf1;
 		len--;
@@ -958,8 +958,8 @@ static int gpmc_read_page_hwecc_elm(struct nand_chip *chip, uint8_t *buf,
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 
 	chip->ecc.hwctl(chip, NAND_ECC_READ);
-	chip->read_buf(chip, buf, mtd->writesize);
-	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.read_buf(chip, buf, mtd->writesize);
+	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -986,8 +986,8 @@ static int gpmc_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 	unsigned int max_bitflips = 0;
 
 	chip->ecc.hwctl(chip, NAND_ECC_READ);
-	chip->read_buf(chip, p, mtd->writesize);
-	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->legacy.read_buf(chip, p, mtd->writesize);
+	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1230,7 +1230,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	}
 
 	/* Same data register for in and out */
-	nand->IO_ADDR_W = nand->IO_ADDR_R = (void *)oinfo->gpmc_data;
+	nand->legacy.IO_ADDR_W = nand->legacy.IO_ADDR_R = (void *)oinfo->gpmc_data;
 	/*
 	 * If RDY/BSY line is connected to OMAP then use the omap ready
 	 * function and the generic nand_wait function which reads the
@@ -1249,16 +1249,16 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		/* Set up the wait monitoring mask
 		 * This is GPMC_STATUS reg relevant */
 		oinfo->wait_mon_mask = (0x1 << (pdata->wait_mon_pin - 1)) << 8;
-		nand->dev_ready = omap_dev_ready;
-		nand->chip_delay = 0;
+		nand->legacy.dev_ready = omap_dev_ready;
+		nand->legacy.chip_delay = 0;
 	} else {
 		/* use the default nand_wait function */
-		nand->chip_delay = 50;
+		nand->legacy.chip_delay = 50;
 	}
 
 	/* Use default cmdfunc */
 	/* nand cmd control */
-	nand->cmd_ctrl = omap_hwcontrol;
+	nand->legacy.cmd_ctrl = omap_hwcontrol;
 
 	/* Dont do a bbt scan at the start */
 	nand->options |= NAND_SKIP_BBTSCAN;
@@ -1295,9 +1295,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	gpmc_set_buswidth(nand, nand->options & NAND_BUSWIDTH_16);
 
-	nand->read_buf   = omap_read_buf_pref;
+	nand->legacy.read_buf   = omap_read_buf_pref;
 	if (IS_ENABLED(CONFIG_MTD_WRITE))
-		nand->write_buf  = omap_write_buf_pref;
+		nand->legacy.write_buf  = omap_write_buf_pref;
 
 	nand->options |= NAND_SKIP_BBTSCAN;
 
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index 796c53e4c4..c6f8dc68b4 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -45,12 +45,12 @@ static void orion_nand_cmd_ctrl(struct nand_chip *chip, int cmd, unsigned int ct
 	if (chip->options & NAND_BUSWIDTH_16)
 		offs <<= 1;
 
-	writeb(cmd, chip->IO_ADDR_W + offs);
+	writeb(cmd, chip->legacy.IO_ADDR_W + offs);
 }
 
 static void orion_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
-	void __iomem *io_base = chip->IO_ADDR_R;
+	void __iomem *io_base = chip->legacy.IO_ADDR_R;
 	uint64_t *buf64;
 	int i = 0;
 
@@ -112,13 +112,13 @@ static int orion_nand_probe(struct device_d *dev)
 		width = 8;
 
 	if (!of_property_read_u32(dev_node, "chip-delay", &val))
-		chip->chip_delay = (u8)val;
+		chip->legacy.chip_delay = (u8)val;
 
 	mtd->dev.parent = dev;
 	chip->priv = priv;
-	chip->IO_ADDR_R = chip->IO_ADDR_W = io_base;
-	chip->cmd_ctrl = orion_nand_cmd_ctrl;
-	chip->read_buf = orion_nand_read_buf;
+	chip->legacy.IO_ADDR_R = chip->legacy.IO_ADDR_W = io_base;
+	chip->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
+	chip->legacy.read_buf = orion_nand_read_buf;
 	chip->ecc.mode = NAND_ECC_SOFT;
 
 	WARN(width > 16, "%d bit bus width out of range", width);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index ac95973194..e20517ab4a 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -426,18 +426,18 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	/* init the default settings */
 
 	/* 50 us command delay time */
-	chip->chip_delay = 50;
+	chip->legacy.chip_delay = 50;
 	chip->priv = host;
 
-	chip->IO_ADDR_R = chip->IO_ADDR_W = host->base + NFDATA;
+	chip->legacy.IO_ADDR_R = chip->legacy.IO_ADDR_W = host->base + NFDATA;
 
 #ifdef CONFIG_CPU_S3C2440
-	chip->read_buf = s3c2440_nand_read_buf;
-	chip->write_buf = s3c2440_nand_write_buf;
+	chip->legacy.read_buf = s3c2440_nand_read_buf;
+	chip->legacy.write_buf = s3c2440_nand_write_buf;
 #endif
-	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
-	chip->dev_ready = s3c24x0_nand_devready;
-	chip->select_chip = s3c24x0_nand_select_chip;
+	chip->legacy.cmd_ctrl = s3c24x0_nand_hwcontrol;
+	chip->legacy.dev_ready = s3c24x0_nand_devready;
+	chip->legacy.select_chip = s3c24x0_nand_select_chip;
 
 	/* we are using the hardware ECC feature of this device */
 	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 55aa756826..2767259f7a 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -200,10 +200,11 @@ static int nomadik_nand_probe(struct device_d *dev)
 	nand->priv = host;
 	mtd->dev.parent = dev;
 
-	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region_by_name(dev, "nand_data");
-	if (IS_ERR(nand->IO_ADDR_W))
-		return PTR_ERR(nand->IO_ADDR_W);
-	nand->cmd_ctrl = nomadik_cmd_ctrl;
+	nand->legacy.IO_ADDR_W = nand->legacy.IO_ADDR_R =
+		dev_request_mem_region_by_name(dev, "nand_data");
+	if (IS_ERR(nand->legacy.IO_ADDR_W))
+		return PTR_ERR(nand->legacy.IO_ADDR_W);
+	nand->legacy.cmd_ctrl = nomadik_cmd_ctrl;
 
 	nand->ecc.mode = NAND_ECC_HW;
 	nand->ecc.layout = &nomadik_ecc_layout;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index e23b3446a7..f0d3455fd3 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -386,39 +386,67 @@ struct nand_buffers {
 	uint8_t databuf[NAND_MAX_PAGESIZE + NAND_MAX_OOBSIZE];
 };
 
+/**
+ * struct nand_legacy - NAND chip legacy fields/hooks
+ * @IO_ADDR_R: address to read the 8 I/O lines of the flash device
+ * @IO_ADDR_W: address to write the 8 I/O lines of the flash device
+ * @select_chip: select/deselect a specific target/die
+ * @read_byte: read one byte from the chip
+ * @write_byte: write a single byte to the chip on the low 8 I/O lines
+ * @write_buf: write data from the buffer to the chip
+ * @read_buf: read data from the chip into the buffer
+ * @cmd_ctrl: hardware specific function for controlling ALE/CLE/nCE. Also used
+ *	      to write command and address
+ * @cmdfunc: hardware specific function for writing commands to the chip.
+ * @dev_ready: hardware specific function for accessing device ready/busy line.
+ *	       If set to NULL no access to ready/busy is available and the
+ *	       ready/busy information is read from the chip status register.
+ * @waitfunc: hardware specific function for wait on ready.
+ * @block_bad: check if a block is bad, using OOB markers
+ * @block_markbad: mark a block bad
+ * @set_features: set the NAND chip features
+ * @get_features: get the NAND chip features
+ * @chip_delay: chip dependent delay for transferring data from array to read
+ *		regs (tR).
+ * @dummy_controller: dummy controller implementation for drivers that can
+ *		      only control a single chip
+ *
+ * If you look at this structure you're already wrong. These fields/hooks are
+ * all deprecated.
+ */
+struct nand_legacy {
+	void __iomem *IO_ADDR_R;
+	void __iomem *IO_ADDR_W;
+	void (*select_chip)(struct nand_chip *chip, int cs);
+	u8 (*read_byte)(struct nand_chip *chip);
+	u16 (*read_word)(struct nand_chip *chip);
+	void (*write_byte)(struct nand_chip *chip, u8 byte);
+	void (*write_buf)(struct nand_chip *chip, const u8 *buf, int len);
+	void (*read_buf)(struct nand_chip *chip, u8 *buf, int len);
+	void (*cmd_ctrl)(struct nand_chip *chip, int dat, unsigned int ctrl);
+	void (*cmdfunc)(struct nand_chip *chip, unsigned command, int column,
+			int page_addr);
+	int (*dev_ready)(struct nand_chip *chip);
+	int (*waitfunc)(struct nand_chip *chip);
+	int (*block_bad)(struct nand_chip *chip, loff_t ofs, int getchip);
+	int (*block_markbad)(struct nand_chip *chip, loff_t ofs);
+	int (*set_features)(struct nand_chip *chip, int feature_addr,
+			    u8 *subfeature_para);
+	int (*get_features)(struct nand_chip *chip, int feature_addr,
+			    u8 *subfeature_para);
+	int chip_delay;
+};
+
 /**
  * struct nand_chip - NAND Private Flash Chip Data
- * @IO_ADDR_R:		[BOARDSPECIFIC] address to read the 8 I/O lines of the
- *			flash device
- * @IO_ADDR_W:		[BOARDSPECIFIC] address to write the 8 I/O lines of the
- *			flash device.
- * @read_byte:		[REPLACEABLE] read one byte from the chip
- * @read_word:		[REPLACEABLE] read one word from the chip
- * @write_buf:		[REPLACEABLE] write data from the buffer to the chip
- * @read_buf:		[REPLACEABLE] read data from the chip into the buffer
- * @select_chip:	[REPLACEABLE] select chip nr
- * @block_bad:		[REPLACEABLE] check, if the block is bad
- * @block_markbad:	[REPLACEABLE] mark the block bad
- * @cmd_ctrl:		[BOARDSPECIFIC] hardwarespecific function for controlling
- *			ALE/CLE/nCE. Also used to write command and address
  * @init_size:		[BOARDSPECIFIC] hardwarespecific function for setting
  *			mtd->oobsize, mtd->writesize and so on.
  *			@id_data contains the 8 bytes values of NAND_CMD_READID.
  *			Return with the bus width.
- * @dev_ready:		[BOARDSPECIFIC] hardwarespecific function for accessing
- *			device ready/busy line. If set to NULL no access to
- *			ready/busy is available and the ready/busy information
- *			is read from the chip status register.
- * @cmdfunc:		[REPLACEABLE] hardwarespecific function for writing
- *			commands to the chip.
- * @waitfunc:		[REPLACEABLE] hardwarespecific function for wait on
- *			ready.
  * @ecc:		[BOARDSPECIFIC] ECC control structure
  * @buffers:		buffer structure for read/write
  * @hwcontrol:		platform-specific hardware control structure
  * @scan_bbt:		[REPLACEABLE] function to scan bad block table
- * @chip_delay:		[BOARDSPECIFIC] chip dependent delay for transferring
- *			data from array to read regs (tR).
  * @state:		[INTERN] the current state of the NAND device
  * @oob_poi:		"poison value buffer," used for laying out OOB data
  *			before writing
@@ -468,31 +496,13 @@ struct nand_buffers {
  */
 
 struct nand_chip {
-	void __iomem *IO_ADDR_R;
-	void __iomem *IO_ADDR_W;
-
-	uint8_t (*read_byte)(struct nand_chip *chip);
-	u16 (*read_word)(struct nand_chip *chip);
-	void (*write_buf)(struct nand_chip *chip, const uint8_t *buf, int len);
-	void (*read_buf)(struct nand_chip *chip, uint8_t *buf, int len);
-	void (*select_chip)(struct nand_chip *_chip, int chip);
-	int (*block_bad)(struct nand_chip *chip, loff_t ofs, int getchip);
-	int (*block_markbad)(struct nand_chip *chip, loff_t ofs);
-	void (*cmd_ctrl)(struct nand_chip *chip, int dat, unsigned int ctrl);
-	int (*dev_ready)(struct nand_chip *chip);
-	void (*cmdfunc)(struct nand_chip *chip, unsigned command, int column,
-			int page_addr);
-	int(*waitfunc)(struct nand_chip *chip);
 	int (*scan_bbt)(struct nand_chip *chip);
 	int (*write_page)(struct nand_chip *chip,
 			uint32_t offset, int data_len, const uint8_t *buf,
 			int oob_required, int page, int cached, int raw);
-	int (*onfi_set_features)(struct nand_chip *chip,
-			int feature_addr, uint8_t *subfeature_para);
-	int (*onfi_get_features)(struct nand_chip *chip,
-			int feature_addr, uint8_t *subfeature_para);
 
-	int chip_delay;
+	struct nand_legacy legacy;
+
 	unsigned int options;
 	unsigned int bbt_options;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
