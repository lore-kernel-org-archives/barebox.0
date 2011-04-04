Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tu-7s
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:41 +0200
Message-Id: <1301928401-13571-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] nand: Make write support optional
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c              |    7 ++++++-
 drivers/mtd/nand/Kconfig     |    5 +++++
 drivers/mtd/nand/Makefile    |    3 ++-
 drivers/mtd/nand/nand.c      |    9 ++++++++-
 drivers/mtd/nand/nand.h      |    2 --
 drivers/mtd/nand/nand_base.c |   20 +++++++++++++++-----
 drivers/mtd/nand/nand_bbt.c  |    9 +++++++++
 7 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index d3921b9..70e83aa 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -86,6 +86,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 /* Must be a multiple of the largest NAND page size */
 #define BB_WRITEBUF_SIZE	4096
 
+#ifdef CONFIG_NAND_WRITE
 static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 {
 	int ret, now;
@@ -160,6 +161,7 @@ static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
 
 	return erase(bb->fd, bb->raw_size, 0);
 }
+#endif
 
 static int nand_bb_open(struct cdev *cdev, struct filep *f)
 {
@@ -180,9 +182,10 @@ static int nand_bb_close(struct cdev *cdev, struct filep *f)
 {
 	struct nand_bb *bb = cdev->priv;
 
+#ifdef CONFIG_NAND_WRITE
 	if (bb->needs_write)
 		nand_bb_write_buf(bb, bb->offset % BB_WRITEBUF_SIZE);
-
+#endif
 	bb->open = 0;
 	free(bb->writebuf);
 
@@ -211,8 +214,10 @@ static struct file_operations nand_bb_ops = {
 	.open   = nand_bb_open,
 	.close  = nand_bb_close,
 	.read  	= nand_bb_read,
+#ifdef CONFIG_NAND_WRITE
 	.write 	= nand_bb_write,
 	.erase	= nand_bb_erase,
+#endif
 };
 
 /**
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 12e1237..049f07c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -8,6 +8,11 @@ menuconfig NAND
 
 if NAND
 
+config NAND_WRITE
+	bool
+	default y
+	prompt "Support writing to Nand"
+
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 05f0485..a322e00 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,6 +1,7 @@
 
 # Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o nand_swecc.o nand_hwecc_syndrome.o nand_write.o
+obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o nand_swecc.o nand_hwecc_syndrome.o
+obj-$(CONFIG_NAND_WRITE)		+= nand_write.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
 obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
 
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 08b5cc1..2333160 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -50,6 +50,7 @@ static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offs
 
 #define NOTALIGNED(x) (x & (info->writesize - 1)) != 0
 
+#ifdef CONFIG_NAND_WRITE
 static int all_ff(const void *buf, int len)
 {
 	int i;
@@ -104,6 +105,7 @@ static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulo
 out:
 	return ret ? ret : _count;
 }
+#endif
 
 static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 {
@@ -133,6 +135,7 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 	return 0;
 }
 
+#ifdef CONFIG_NAND_WRITE
 static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
 {
 	struct mtd_info *info = cdev->priv;
@@ -162,6 +165,8 @@ static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
 
 	return 0;
 }
+#endif
+
 #if 0
 static char* mtd_get_size(struct device_d *, struct param_d *param)
 {
@@ -171,10 +176,12 @@ static char* mtd_get_size(struct device_d *, struct param_d *param)
 
 static struct file_operations nand_ops = {
 	.read   = nand_read,
+#ifdef CONFIG_NAND_WRITE
 	.write  = nand_write,
+	.erase  = nand_erase,
+#endif
 	.ioctl  = nand_ioctl,
 	.lseek  = dev_lseek_default,
-	.erase  = nand_erase,
 };
 
 static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
index 24cc5a2..15bed4e 100644
--- a/drivers/mtd/nand/nand.h
+++ b/drivers/mtd/nand/nand.h
@@ -1,8 +1,6 @@
 #ifndef __NAND_H
 #define __NAND_H
 
-#define CONFIG_NAND_WRITE
-
 int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			     int page, int sndcmd);
 int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index f2150b8..47e5ed6 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1018,10 +1018,12 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 		chip->read_word = nand_read_word;
 	if (!chip->block_bad)
 		chip->block_bad = nand_block_bad;
+#ifdef CONFIG_NAND_WRITE
 	if (!chip->block_markbad)
 		chip->block_markbad = nand_default_block_markbad;
 	if (!chip->write_buf)
 		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
+#endif
 	if (!chip->read_buf)
 		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
 	if (!chip->verify_buf)
@@ -1175,12 +1177,13 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	if (*maf_id != NAND_MFR_SAMSUNG && !type->pagesize)
 		chip->options &= ~NAND_SAMSUNG_LP_OPTIONS;
 
+#ifdef CONFIG_NAND_WRITE
 	/* Check for AND chips with 4 page planes */
 	if (chip->options & NAND_4PAGE_ARRAY)
 		chip->erase_cmd = multi_erase_cmd;
 	else
 		chip->erase_cmd = single_erase_cmd;
-
+#endif
 	/* Do not replace user supplied command function ! */
 	if (mtd->writesize > 512 && chip->cmdfunc == nand_command)
 		chip->cmdfunc = nand_command_lp;
@@ -1303,8 +1306,10 @@ int nand_scan_tail(struct mtd_info *mtd)
 		}
 	}
 
+#ifdef CONFIG_NAND_WRITE
 	if (!chip->write_page)
 		chip->write_page = nand_write_page;
+#endif
 
 	/*
 	 * check ECC mode, default to software if 3byte/512byte hardware ECC is
@@ -1312,9 +1317,10 @@ int nand_scan_tail(struct mtd_info *mtd)
 	 */
 	if (!chip->ecc.read_page_raw)
 		chip->ecc.read_page_raw = nand_read_page_raw;
+#ifdef CONFIG_NAND_WRITE
 	if (!chip->ecc.write_page_raw)
 		chip->ecc.write_page_raw = nand_write_page_raw;
-
+#endif
 	switch (chip->ecc.mode) {
 	case NAND_ECC_HW:
 		nand_check_hwecc(mtd, chip);
@@ -1334,9 +1340,11 @@ int nand_scan_tail(struct mtd_info *mtd)
 		printk(KERN_WARNING "NAND_ECC_NONE selected by board driver. "
 		       "This is not recommended !!\n");
 		chip->ecc.read_page = nand_read_page_raw;
+#ifdef CONFIG_NAND_WRITE
 		chip->ecc.write_page = nand_write_page_raw;
-		chip->ecc.read_oob = nand_read_oob_std;
 		chip->ecc.write_oob = nand_write_oob_std;
+#endif
+		chip->ecc.read_oob = nand_read_oob_std;
 		chip->ecc.size = mtd->writesize;
 		chip->ecc.bytes = 0;
 		break;
@@ -1398,11 +1406,13 @@ int nand_scan_tail(struct mtd_info *mtd)
 	/* Fill in remaining MTD driver data */
 	mtd->type = MTD_NANDFLASH;
 	mtd->flags = MTD_CAP_NANDFLASH;
+#ifdef CONFIG_NAND_WRITE
 	mtd->erase = nand_erase;
-	mtd->read = nand_read;
 	mtd->write = nand_write;
-	mtd->read_oob = nand_read_oob;
 	mtd->write_oob = nand_write_oob;
+#endif
+	mtd->read = nand_read;
+	mtd->read_oob = nand_read_oob;
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 4a6bf39..bf3a7db 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -557,6 +557,7 @@ static int search_read_bbts(struct mtd_info *mtd, uint8_t * buf, struct nand_bbt
  * (Re)write the bad block table
  *
 */
+#ifdef CONFIG_NAND_WRITE
 static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
 		     int chipsel)
@@ -745,6 +746,14 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 	       "nand_bbt: Error while writing bad block table %d\n", res);
 	return res;
 }
+#else
+static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
+		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
+		     int chipsel)
+{
+	return 0;
+}
+#endif
 
 /**
  * nand_memory_bbt - [GENERIC] create a memory based bad block table
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
