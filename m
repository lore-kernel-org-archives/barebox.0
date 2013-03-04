Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSPG-0002dC-6e
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:51 +0100
Message-Id: <1362392034-1908-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] mtd: nand: replace NAND_USE_FLASH_BBT with
 NAND_BBT_USE_FLASH
To: barebox@lists.infradead.org

To sync with the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c   |    2 +-
 drivers/mtd/nand/nand_bbt.c     |    4 ++--
 drivers/mtd/nand/nand_imx.c     |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c |    2 +-
 drivers/mtd/nand/nand_write.c   |    2 +-
 include/linux/mtd/bbm.h         |    6 ++++++
 include/linux/mtd/nand.h        |    7 ++++---
 7 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 81ccad9..3eb78b7 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1196,7 +1196,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	if (host->board->on_flash_bbt) {
 		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
-		nand_chip->options |= NAND_USE_FLASH_BBT;
+		nand_chip->bbt_options |= NAND_BBT_USE_FLASH;
 	}
 
 
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 56396bf..ba51e0b 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -1176,12 +1176,12 @@ int nand_default_bbt(struct mtd_info *mtd)
 			this->bbt_td = &bbt_main_descr;
 			this->bbt_md = &bbt_mirror_descr;
 		}
-		this->options |= NAND_USE_FLASH_BBT;
+		this->bbt_options |= NAND_BBT_USE_FLASH;
 		return nand_scan_bbt(mtd, &agand_flashbased);
 	}
 
 	/* Is a flash based bad block table requested ? */
-	if (this->options & NAND_USE_FLASH_BBT) {
+	if (this->bbt_options & NAND_BBT_USE_FLASH) {
 		/* Use the default pattern descriptors */
 		if (!this->bbt_td) {
 			this->bbt_td = &bbt_main_descr;
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 842c1de..d056c7c 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1227,7 +1227,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		this->bbt_td = &bbt_main_descr;
 		this->bbt_md = &bbt_mirror_descr;
 		/* update flash based bbt */
-		this->options |= NAND_USE_FLASH_BBT;
+		this->bbt_options |= NAND_BBT_USE_FLASH;
 	}
 
 	/* first scan to find the device and get the page size */
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c68c9fb..a3f80cb 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -469,7 +469,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 
 	if (pdata->flash_bbt) {
 		/* use a flash based bbt */
-		chip->options |= NAND_USE_FLASH_BBT;
+		chip->bbt_options |= NAND_BBT_USE_FLASH;
 	}
 
 	ret = s3c24x0_nand_inithw(host);
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 11005f3..c2699ab 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -74,7 +74,7 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
 
 	/* Do we have a flash based bad block table ? */
-	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->options & NAND_USE_FLASH_BBT)
+	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt_options & NAND_BBT_USE_FLASH)
 		ret = nand_update_bbt(mtd, ofs);
 	else {
 		/* We write two bytes, so we dont have to mess with 16 bit
diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
index 503ec6d..d546f40 100644
--- a/include/linux/mtd/bbm.h
+++ b/include/linux/mtd/bbm.h
@@ -80,6 +80,12 @@ struct nand_bbt_descr {
 /* Search good / bad pattern on the first and the second page */
 #define NAND_BBT_SCAN2NDPAGE	0x00004000
 
+/*
+ * Use a flash based bad block table. By default, OOB identifier is saved in
+ * OOB area. This option is passed to the default bad block table function.
+ */
+#define NAND_BBT_USE_FLASH      0x00020000
+
 /* The maximum number of blocks to scan for a bbt */
 #define NAND_BBT_SCAN_MAXBLOCKS	4
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index d8331f4..dc141a5 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -189,9 +189,6 @@ typedef enum {
 #define NAND_CHIPOPTIONS_MSK	(0x0000ffff & ~NAND_NO_AUTOINCR)
 
 /* Non chip related options */
-/* Use a flash based bad block table. This option is passed to the
- * default bad block table function. */
-#define NAND_USE_FLASH_BBT	0x00010000
 /* This option skips the bbt scan during initialization. */
 #define NAND_SKIP_BBTSCAN	0x00020000
 /* This option is defined if the board driver allocates its own buffers
@@ -409,6 +406,9 @@ struct nand_buffers {
  * @data_poi:		[INTERN] pointer to a data buffer
  * @options:		[BOARDSPECIFIC] various chip options. They can partly be set to inform nand_scan about
  *			special functionality. See the defines for further explanation
+ * @bbt_options:	[INTERN] bad block specific options. All options used
+ *			here must come from bbm.h. By default, these options
+ *			will be copied to the appropriate nand_bbt_descr's.
  * @badblockpos:	[INTERN] position of the bad block marker in the oob area
  * @cellinfo:		[INTERN] MLC/multichip data from chip ident
  * @numchips:		[INTERN] number of physical chips
@@ -459,6 +459,7 @@ struct nand_chip {
 
 	int		chip_delay;
 	unsigned int	options;
+	unsigned int	bbt_options;
 
 	int		page_shift;
 	int		phys_erase_shift;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
