Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xK-000544-Oy
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:35 +0100
Message-Id: <20201106133900.2656-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/26] mtd: Drop asynchronous erase support
To: Barebox List <barebox@lists.infradead.org>

asynchronous erase support is unused and also dropped from the Kernel,
so remove it from barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c                  |  6 ++----
 drivers/mtd/devices/docg3.c         |  4 ----
 drivers/mtd/devices/mtd_dataflash.c |  4 ----
 drivers/mtd/devices/mtdram.c        |  2 --
 drivers/mtd/mtdconcat.c             |  4 +---
 drivers/mtd/nand/nand_base.c        | 19 +++++--------------
 drivers/mtd/nor/cfi_flash.c         |  7 +------
 drivers/mtd/spi-nor/spi-nor.c       |  4 ----
 drivers/net/e1000/eeprom.c          |  4 ----
 include/linux/mtd/mtd.h             | 25 -------------------------
 10 files changed, 9 insertions(+), 70 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 1625d938ea..13f3d61f00 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -422,11 +422,9 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
-	if (!instr->len) {
-		instr->state = MTD_ERASE_DONE;
-		mtd_erase_callback(instr);
+	if (!instr->len)
 		return 0;
-	}
+
 	return mtd->erase(mtd, instr);
 }
 
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index a40ba25632..8921086a63 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -852,7 +852,6 @@ static int doc_erase(struct mtd_info *mtd, struct erase_info *info)
 	doc_dbg("doc_erase(from=%lld, len=%lld\n", info->addr, info->len);
 	doc_set_device_id(docg3, docg3->device_id);
 
-	info->state = MTD_ERASE_PENDING;
 	calc_block_sector(info->addr + info->len, &block0, &block1, &page,
 			  &ofs, docg3->reliable);
 	ret = -EINVAL;
@@ -864,7 +863,6 @@ static int doc_erase(struct mtd_info *mtd, struct erase_info *info)
 			  docg3->reliable);
 	doc_set_reliable_mode(docg3);
 	for (len = info->len; !ret && len > 0; len -= mtd->erasesize) {
-		info->state = MTD_ERASING;
 		ret = doc_erase_block(docg3, block0, block1);
 		block0 += 2;
 		block1 += 2;
@@ -873,11 +871,9 @@ static int doc_erase(struct mtd_info *mtd, struct erase_info *info)
 	if (ret)
 		goto reset_err;
 
-	info->state = MTD_ERASE_DONE;
 	return 0;
 
 reset_err:
-	info->state = MTD_ERASE_FAILED;
 	return ret;
 }
 
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 7980a91e19..cd5ab6c972 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -213,10 +213,6 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 		}
 	}
 
-	/* Inform MTD subsystem that erase is complete */
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
-
 	return 0;
 }
 
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index acaf002258..783e1448d6 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -28,8 +28,6 @@ struct mtdram_priv_data {
 static int ram_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
 	memset((char *)mtd->priv + instr->addr, 0xff, instr->len);
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
 	return 0;
 }
 
diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index fa430712d0..d53c4b22e1 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -383,13 +383,11 @@ static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
 		erase->addr = 0;
 		offset += subdev->size;
 	}
-	instr->state = erase->state;
+
 	kfree(erase);
 	if (err)
 		return err;
 
-	if (instr->callback)
-		instr->callback(instr);
 	return 0;
 }
 
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 3f4c787f49..2b37679d2a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -952,7 +952,6 @@ int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (nand_check_wp(mtd)) {
 		pr_debug("%s: device is write protected!\n",
 					__func__);
-		status = MTD_ERASE_FAILED;
 		ret = -EIO;
 		goto out;
 	}
@@ -2721,15 +2720,13 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 	if (nand_check_wp(mtd)) {
 		pr_debug("%s: device is write protected!\n",
 				__func__);
-		instr->state = MTD_ERASE_FAILED;
+		ret = -EIO;
 		goto erase_exit;
 	}
 
 	/* Loop through the pages */
 	len = instr->len;
 
-	instr->state = MTD_ERASING;
-
 	while (len) {
 		/* Check if we have a bad block, we do not erase bad blocks! */
 		if (!mtd->allow_erasebad &&
@@ -2737,7 +2734,7 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 					chip->page_shift, 0, allowbbt)) {
 			pr_warn("%s: attempt to erase a bad block at page 0x%08x\n",
 				    __func__, page);
-			instr->state = MTD_ERASE_FAILED;
+			ret = -EIO;
 			goto erase_exit;
 		}
 
@@ -2765,7 +2762,7 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 		if (status & NAND_STATUS_FAIL) {
 			pr_debug("%s: failed erase, page 0x%08x\n",
 					__func__, page);
-			instr->state = MTD_ERASE_FAILED;
+			ret = -EIO;
 			instr->fail_addr =
 				((loff_t)page << chip->page_shift);
 			goto erase_exit;
@@ -2782,20 +2779,14 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 			chip->select_chip(mtd, chipnr);
 		}
 	}
-	instr->state = MTD_ERASE_DONE;
-
-erase_exit:
 
-	ret = instr->state == MTD_ERASE_DONE ? 0 : -EIO;
+	ret = 0;
 
+erase_exit:
 	/* Deselect and wake up anyone waiting on the device */
 	chip->select_chip(mtd, -1);
 	nand_release_device(mtd);
 
-	/* Do call back function */
-	if (!ret)
-		mtd_erase_callback(instr);
-
 	/* Return more or less happy */
 	return ret;
 }
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 430f926e8c..0988e67347 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -920,13 +920,8 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	int ret;
 
 	ret = cfi_erase(info, instr->len, instr->addr);
-	if (ret) {
-		instr->state = MTD_ERASE_FAILED;
+	if (ret)
 		return -EIO;
-	}
-
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
 
 	return 0;
 }
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5cc4573178..528cd9c399 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -540,14 +540,10 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
 
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
-
 	return ret;
 
 erase_err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
-	instr->state = MTD_ERASE_FAILED;
 	return ret;
 }
 
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 5b34e9b8d1..900be2f09b 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1426,13 +1426,9 @@ static int e1000_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (ret < 0)
 		goto fail;
 
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
-
 	return 0;
 
 fail:
-	instr->state = MTD_ERASE_FAILED;
 	return ret;
 }
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 16725ac4bc..8257403335 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -20,12 +20,6 @@
 #define MTD_BLOCK_MAJOR 31
 #define MAX_MTD_DEVICES 32
 
-#define MTD_ERASE_PENDING      	0x01
-#define MTD_ERASING		0x02
-#define MTD_ERASE_SUSPEND	0x04
-#define MTD_ERASE_DONE          0x08
-#define MTD_ERASE_FAILED        0x10
-
 #define MTD_FAIL_ADDR_UNKNOWN -1LL
 
 /* If the erase fails, fail_addr might indicate exactly which block failed.  If
@@ -40,9 +34,7 @@ struct erase_info {
 	u_long retries;
 	u_int dev;
 	u_int cell;
-	void (*callback) (struct erase_info *self);
 	u_long priv;
-	u_char state;
 	struct erase_info *next;
 };
 
@@ -141,13 +133,6 @@ struct mtd_info {
 	int numeraseregions;
 	struct mtd_erase_region_info *eraseregions;
 
-	/*
-	 * Erase is an asynchronous operation.  Device drivers are supposed
-	 * to call instr->callback() whenever the operation completes, even
-	 * if it completes with a failure.
-	 * Callers are supposed to pass a callback function and wait for it
-	 * to be called before writing to the block.
-	 */
 	int (*erase) (struct mtd_info *mtd, struct erase_info *instr);
 
 	int (*read) (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf);
@@ -298,16 +283,6 @@ int mtd_del_partition(struct mtd_info *mtd);
 extern void register_mtd_user (struct mtd_notifier *new);
 extern int unregister_mtd_user (struct mtd_notifier *old);
 
-#ifdef CONFIG_MTD_PARTITIONS
-void mtd_erase_callback(struct erase_info *instr);
-#else
-static inline void mtd_erase_callback(struct erase_info *instr)
-{
-	if (instr->callback)
-		instr->callback(instr);
-}
-#endif
-
 int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
 int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
