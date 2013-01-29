Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xr-KQ
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:46:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:47 +0100
Message-Id: <1359449147-30145-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] mtd nand: Specify pr_fmt and change messages to pr_*
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c  |   39 ++++++++++++++++++++-----------------
 drivers/mtd/nand/nand_bbt.c   |   43 ++++++++++++++++++++++-------------------
 drivers/mtd/nand/nand_write.c |    4 +++-
 include/linux/mtd/mtd.h       |    2 +-
 4 files changed, 48 insertions(+), 40 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index fe9a6e7..411aba7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -31,6 +31,9 @@
  * published by the Free Software Foundation.
  *
  */
+
+#define pr_fmt(fmt) "nand: " fmt
+
 #include <common.h>
 #include <errno.h>
 #include <clock.h>
@@ -1074,19 +1077,19 @@ static int nand_flash_detect_onfi(struct mtd_info *mtd, struct nand_chip *chip,
 		chip->read_byte(mtd) != 'F' || chip->read_byte(mtd) != 'I')
 		return 0;
 
-	printk(KERN_INFO "ONFI flash detected ... ");
+	pr_info("ONFI flash detected ... ");
 	chip->cmdfunc(mtd, NAND_CMD_PARAM, 0, -1);
 	for (i = 0; i < 3; i++) {
 		chip->read_buf(mtd, (uint8_t *)p, sizeof(*p));
 		if (onfi_crc16(ONFI_CRC_BASE, (uint8_t *)p, 254) ==
 				le16_to_cpu(p->crc)) {
-			printk(KERN_INFO "ONFI param page %d valid\n", i);
+			pr_info("ONFI param page %d valid\n", i);
 			break;
 		}
 	}
 
 	if (i == 3) {
-		printk(KERN_INFO "no valid ONFI param page found\n");
+		pr_info("no valid ONFI param page found\n");
 		return 0;
 	}
 
@@ -1106,7 +1109,7 @@ static int nand_flash_detect_onfi(struct mtd_info *mtd, struct nand_chip *chip,
 		chip->onfi_version = 0;
 
 	if (!chip->onfi_version) {
-		printk(KERN_INFO "unsupported ONFI version: %d\n", val);
+		pr_info("unsupported ONFI version: %d\n", val);
 		return 0;
 	}
 
@@ -1170,7 +1173,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	id_data[1] = chip->read_byte(mtd);
 
 	if (id_data[0] != *maf_id || id_data[1] != dev_id) {
-		printk(KERN_ERR "%s: second ID read did not match "
+		pr_err("%s: second ID read did not match "
 		       "%02x,%02x against %02x,%02x\n", __func__,
 		       *maf_id, dev_id, id_data[0], id_data[1]);
 		return ERR_PTR(-ENODEV);
@@ -1191,7 +1194,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 		if (ret)
 			goto ident_done;
 		else {
-			printk(KERN_ERR "NAND type unknown: %02x,%02x\n", *maf_id, dev_id);
+			pr_err("NAND type unknown: %02x,%02x\n", *maf_id, dev_id);
 			return ERR_PTR(-ENODEV);
 		}
 	}
@@ -1329,10 +1332,10 @@ ident_done:
 	 * chip correct !
 	 */
 	if (busw != (chip->options & NAND_BUSWIDTH_16)) {
-		printk(KERN_INFO "NAND device: Manufacturer ID:"
+		pr_info("NAND device: Manufacturer ID:"
 			" 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id,
 			dev_id, nand_manuf_ids[maf_idx].name, mtd->name);
-		printk(KERN_WARNING "NAND bus width %d instead %d bit\n",
+		pr_warning("NAND bus width %d instead %d bit\n",
 			(chip->options & NAND_BUSWIDTH_16) ? 16 : 8,
 			busw ? 16 : 8);
 		return ERR_PTR(-EINVAL);
@@ -1367,7 +1370,7 @@ ident_done:
 	if (mtd->writesize > 512 && chip->cmdfunc == nand_command)
 		chip->cmdfunc = nand_command_lp;
 
-	printk("NAND device: Manufacturer ID: 0x%02x, Chip ID: 0x%02x (%s %s),"
+	pr_notice("Manufacturer ID: 0x%02x, Chip ID: 0x%02x (%s %s),"
 		" page size: %d, OOB size: %d\n",
 		*maf_id, dev_id, nand_manuf_ids[maf_idx].name,
 		chip->onfi_version ? chip->onfi_params.model : type->name,
@@ -1393,7 +1396,7 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	struct nand_flash_dev *type;
 
 	if (chip->options & NAND_BUSWIDTH_AUTO && !chip->set_buswidth) {
-		printk(KERN_ERR "buswidth detection but no buswidth callback\n");
+		pr_err("buswidth detection but no buswidth callback\n");
 		return -EINVAL;
 	}
 
@@ -1406,7 +1409,7 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 	type = nand_get_flash_type(mtd, chip, busw, &nand_maf_id);
 
 	if (IS_ERR(type)) {
-		printk(KERN_WARNING "No NAND device found (%ld)!\n", PTR_ERR(type));
+		pr_warning("No NAND device found (%ld)!\n", PTR_ERR(type));
 		chip->select_chip(mtd, -1);
 		return PTR_ERR(type);
 	}
@@ -1422,7 +1425,7 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips)
 			break;
 	}
 	if (i > 1)
-		printk(KERN_INFO "%d NAND chips detected\n", i);
+		pr_info("%d NAND chips detected\n", i);
 
 	/* Store the number of chips and calc total size for mtd */
 	chip->numchips = i;
@@ -1436,13 +1439,13 @@ static void __maybe_unused nand_check_hwecc(struct mtd_info *mtd, struct nand_ch
 	if ((!chip->ecc.calculate || !chip->ecc.correct ||
 	     !chip->ecc.hwctl) &&
 	    (!chip->ecc.read_page || !chip->ecc.write_page)) {
-		printk(KERN_WARNING "No ECC functions supplied, "
+		pr_warning("No ECC functions supplied, "
 		       "Hardware ECC not possible\n");
 		BUG();
 	}
 
 	if (mtd->writesize < chip->ecc.size) {
-		printk(KERN_WARNING "%d byte HW ECC not possible on "
+		pr_warning("%d byte HW ECC not possible on "
 		       "%d byte page size\n",
 			chip->ecc.size, mtd->writesize);
 		BUG();
@@ -1486,7 +1489,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 			chip->ecc.layout = &nand_oob_64;
 			break;
 		default:
-			printk(KERN_WARNING "No oob scheme defined for "
+			pr_warning("No oob scheme defined for "
 			       "oobsize %d\n", mtd->oobsize);
 			BUG();
 		}
@@ -1527,7 +1530,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 #endif
 #ifdef CONFIG_NAND_ECC_NONE
 	case NAND_ECC_NONE:
-		printk(KERN_WARNING "NAND_ECC_NONE selected by board driver. "
+		pr_warning("NAND_ECC_NONE selected by board driver. "
 		       "This is not recommended !!\n");
 		chip->ecc.read_page = nand_read_page_raw;
 #ifdef CONFIG_MTD_WRITE
@@ -1540,7 +1543,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		break;
 #endif
 	default:
-		printk(KERN_WARNING "Invalid NAND_ECC_MODE %d\n",
+		pr_warning("Invalid NAND_ECC_MODE %d\n",
 		       chip->ecc.mode);
 		BUG();
 	}
@@ -1561,7 +1564,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	 */
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
 	if(chip->ecc.steps * chip->ecc.size != mtd->writesize) {
-		printk(KERN_WARNING "Invalid ecc parameters\n");
+		pr_warning("Invalid ecc parameters\n");
 		BUG();
 	}
 	chip->ecc.total = chip->ecc.steps * chip->ecc.bytes;
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 3cbf886..f7ae7cd 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -51,6 +51,9 @@
  * - the space necessary for a bbt in FLASH does not exceed a block boundary
  *
  */
+
+#define pr_fmt(fmt) "nand: " fmt
+
 #include <common.h>
 #include <linux/types.h>
 #include <linux/mtd/mtd.h>
@@ -160,10 +163,10 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 		res = mtd->read(mtd, from, len, &retlen, buf);
 		if (res < 0) {
 			if (retlen != len) {
-				printk(KERN_INFO "nand_bbt: Error reading bad block table\n");
+				pr_info("nand_bbt: Error reading bad block table\n");
 				return res;
 			}
-			printk(KERN_WARNING "nand_bbt: ECC error while reading bad block table\n");
+			pr_warning("nand_bbt: ECC error while reading bad block table\n");
 		}
 
 		/* Analyse data */
@@ -174,7 +177,7 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 				if (tmp == msk)
 					continue;
 				if (reserved_block_code && (tmp == reserved_block_code)) {
-					printk(KERN_DEBUG "nand_read_bbt: Reserved block at 0x%08x\n",
+					pr_debug("nand_read_bbt: Reserved block at 0x%08x\n",
 					       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
 					this->bbt[offs + (act >> 3)] |= 0x2 << (act & 0x06);
 					mtd->ecc_stats.bbtblocks++;
@@ -182,7 +185,7 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 				}
 				/* Leave it for now, if its matured we can move this
 				 * message to MTD_DEBUG_LEVEL0 */
-				printk(KERN_DEBUG "nand_read_bbt: Bad block at 0x%08x\n",
+				pr_debug("nand_read_bbt: Bad block at 0x%08x\n",
 				       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
 				/* Factory marked bad or worn out ? */
 				if (tmp == 0)
@@ -292,7 +295,7 @@ static int read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
 		scan_read_raw(mtd, buf, td->pages[0] << this->page_shift,
 			      mtd->writesize);
 		td->version[0] = buf[mtd->writesize + td->veroffs];
-		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
+		pr_debug("Bad block table at page %d, version 0x%02X\n",
 		       td->pages[0], td->version[0]);
 	}
 
@@ -301,7 +304,7 @@ static int read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
 		scan_read_raw(mtd, buf, md->pages[0] << this->page_shift,
 			      mtd->writesize);
 		md->version[0] = buf[mtd->writesize + md->veroffs];
-		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
+		pr_debug("Bad block table at page %d, version 0x%02X\n",
 		       md->pages[0], md->version[0]);
 	}
 	return 1;
@@ -380,7 +383,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 	loff_t from;
 	size_t readlen;
 
-	printk(KERN_INFO "Scanning device for bad blocks\n");
+	pr_info("Scanning device for bad blocks\n");
 
 	if (bd->options & NAND_BBT_SCANALLPAGES)
 		len = 1 << (this->bbt_erase_shift - this->page_shift);
@@ -409,7 +412,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 		from = 0;
 	} else {
 		if (chip >= this->numchips) {
-			printk(KERN_WARNING "create_bbt(): chipnr (%d) > available chips (%d)\n",
+			pr_warning("create_bbt(): chipnr (%d) > available chips (%d)\n",
 			       chip + 1, this->numchips);
 			return -EINVAL;
 		}
@@ -433,7 +436,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 
 		if (ret) {
 			this->bbt[i >> 3] |= 0x03 << (i & 0x6);
-			printk(KERN_WARNING "Bad eraseblock %d at 0x%08x\n",
+			pr_warning("Bad eraseblock %d at 0x%08x\n",
 			       i >> 1, (unsigned int)from);
 			mtd->ecc_stats.badblocks++;
 		}
@@ -517,9 +520,9 @@ static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr
 	/* Check, if we found a bbt for each requested chip */
 	for (i = 0; i < chips; i++) {
 		if (td->pages[i] == -1)
-			printk(KERN_WARNING "Bad block table not found for chip %d\n", i);
+			pr_warning("Bad block table not found for chip %d\n", i);
 		else
-			printk(KERN_DEBUG "Bad block table found at page %d, version 0x%02X\n", td->pages[i],
+			pr_debug("Bad block table found at page %d, version 0x%02X\n", td->pages[i],
 			       td->version[i]);
 	}
 	return 0;
@@ -634,7 +637,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 			if (!md || md->pages[chip] != page)
 				goto write;
 		}
-		printk(KERN_ERR "No space left to write bad block table\n");
+		pr_err("No space left to write bad block table\n");
 		return -ENOSPC;
 	write:
 
@@ -669,12 +672,12 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 			res = mtd->read(mtd, to, len, &retlen, buf);
 			if (res < 0) {
 				if (retlen != len) {
-					printk(KERN_INFO "nand_bbt: Error "
+					pr_info("nand_bbt: Error "
 					       "reading block for writing "
 					       "the bad block table\n");
 					return res;
 				}
-				printk(KERN_WARNING "nand_bbt: ECC error "
+				pr_warning("nand_bbt: ECC error "
 				       "while reading block for writing "
 				       "bad block table\n");
 			}
@@ -735,7 +738,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		if (res < 0)
 			goto outerr;
 
-		printk(KERN_DEBUG "Bad block table written to 0x%08x, version "
+		pr_debug("Bad block table written to 0x%08x, version "
 		       "0x%02X\n", (unsigned int)to, td->version[chip]);
 
 		/* Mark it as used */
@@ -744,7 +747,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 	return 0;
 
  outerr:
-	printk(KERN_WARNING
+	pr_warning(
 	       "nand_bbt: Error while writing bad block table %d\n", res);
 	return res;
 }
@@ -975,7 +978,7 @@ int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	/* Allocate memory (2bit per block) and clear the memory bad block table */
 	this->bbt = kzalloc(len, GFP_KERNEL);
 	if (!this->bbt) {
-		printk(KERN_ERR "nand_scan_bbt: Out of memory\n");
+		pr_err("nand_scan_bbt: Out of memory\n");
 		return -ENOMEM;
 	}
 
@@ -984,7 +987,7 @@ int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	 */
 	if (!td) {
 		if ((res = nand_memory_bbt(mtd, bd))) {
-			printk(KERN_ERR "nand_bbt: Can't scan flash and build the RAM-based BBT\n");
+			pr_err("nand_bbt: Can't scan flash and build the RAM-based BBT\n");
 			kfree(this->bbt);
 			this->bbt = NULL;
 		}
@@ -996,7 +999,7 @@ int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	len += (len >> this->page_shift) * mtd->oobsize;
 	buf = vmalloc(len);
 	if (!buf) {
-		printk(KERN_ERR "nand_bbt: Out of memory\n");
+		pr_err("nand_bbt: Out of memory\n");
 		kfree(this->bbt);
 		this->bbt = NULL;
 		return -ENOMEM;
@@ -1047,7 +1050,7 @@ int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
 	len += (len >> this->page_shift) * mtd->oobsize;
 	buf = kmalloc(len, GFP_KERNEL);
 	if (!buf) {
-		printk(KERN_ERR "nand_update_bbt: Out of memory\n");
+		pr_err("nand_update_bbt: Out of memory\n");
 		return -ENOMEM;
 	}
 
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 9997127..d68df33 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -1,3 +1,5 @@
+#define pr_fmt(fmt) "nand: " fmt
+
 #include <common.h>
 #include <errno.h>
 #include <clock.h>
@@ -624,7 +626,7 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 		 */
 		if (nand_block_checkbad(mtd, ((loff_t) page) <<
 					chip->page_shift, 0, allowbbt)) {
-			printk(KERN_WARNING "nand_erase: attempt to erase a "
+			pr_warn("nand_erase: attempt to erase a "
 			       "bad block at page 0x%08x\n", page);
 			instr->state = MTD_ERASE_FAILED;
 			goto erase_exit;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index be8ad71..cb8b3bc 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -265,7 +265,7 @@ int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
 #define MTD_DEBUG(n, args...)				\
 	do {						\
 		if (n <= CONFIG_MTD_DEBUG_VERBOSE)	\
-			printk(KERN_INFO args);		\
+			pr_info( args);		\
 	} while(0)
 #else /* CONFIG_MTD_DEBUG */
 #define MTD_DEBUG(n, args...) do { } while(0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
