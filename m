Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000199-Rx
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:19 +0200
Message-Id: <1302274579-11158-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] nand: make reading oob optional
To: barebox@lists.infradead.org

The nand oob functions occupy quite some binary space. If not needed,
we can save this space by making this configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig      |    5 ++++
 drivers/mtd/nand/nand.c       |   42 +++++++++++++++++++++++++++++++++-------
 drivers/mtd/nand/nand_base.c  |    9 +++++++-
 drivers/mtd/nand/nand_hwecc.c |    2 +
 4 files changed, 49 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 331aac8..126f7cc 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -49,6 +49,11 @@ config NAND_BBT
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
+config NAND_READ_OOB
+	bool
+	default y
+	prompt "create a device for reading the OOB data"
+
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 2333160..deb9400 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -184,6 +184,7 @@ static struct file_operations nand_ops = {
 	.lseek  = dev_lseek_default,
 };
 
+#ifdef CONFIG_NAND_READ_OOB
 static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
 {
 	struct mtd_info *info = cdev->priv;
@@ -215,9 +216,39 @@ static struct file_operations nand_ops_oob = {
 	.lseek  = dev_lseek_default,
 };
 
-int add_mtd_device(struct mtd_info *mtd)
+static int nand_init_oob_cdev(struct mtd_info *mtd)
 {
 	struct nand_chip *chip = mtd->priv;
+
+	mtd->cdev_oob.ops = &nand_ops_oob;
+	mtd->cdev_oob.size = (mtd->size >> chip->page_shift) * mtd->oobsize;
+	mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
+	mtd->cdev_oob.priv = mtd;
+	mtd->cdev_oob.dev = &mtd->class_dev;
+	devfs_create(&mtd->cdev_oob);
+
+	return 0;
+}
+
+static void nand_exit_oob_cdev(struct mtd_info *mtd)
+{
+	free(mtd->cdev_oob.name);
+}
+#else
+
+static int nand_init_oob_cdev(struct mtd_info *mtd)
+{
+	return 0;
+}
+
+static void nand_exit_oob_cdev(struct mtd_info *mtd)
+{
+	return;
+}
+#endif
+
+int add_mtd_device(struct mtd_info *mtd)
+{
 	char str[16];
 
 	strcpy(mtd->class_dev.name, "nand");
@@ -235,12 +266,7 @@ int add_mtd_device(struct mtd_info *mtd)
 
 	devfs_create(&mtd->cdev);
 
-	mtd->cdev_oob.ops = &nand_ops_oob;
-	mtd->cdev_oob.size = (mtd->size >> chip->page_shift) * mtd->oobsize;
-	mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
-	mtd->cdev_oob.priv = mtd;
-	mtd->cdev_oob.dev = &mtd->class_dev;
-	devfs_create(&mtd->cdev_oob);
+	nand_init_oob_cdev(mtd);
 
 	return 0;
 }
@@ -248,7 +274,7 @@ int add_mtd_device(struct mtd_info *mtd)
 int del_mtd_device (struct mtd_info *mtd)
 {
 	unregister_device(&mtd->class_dev);
-	free(mtd->cdev_oob.name);
+	nand_exit_oob_cdev(mtd);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
 	return 0;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index f641f8d..d627f16 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -601,6 +601,7 @@ static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
  * @ops:	oob ops structure
  * @len:	size of oob to transfer
  */
+#ifdef CONFIG_NAND_READ_OOB
 static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
 				  struct mtd_oob_ops *ops, size_t len)
 {
@@ -641,6 +642,7 @@ static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
 	}
 	return NULL;
 }
+#endif
 
 /**
  * nand_do_read_ops - [Internal] Read data with ECC
@@ -706,6 +708,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 
 			buf += bytes;
 
+#ifdef CONFIG_NAND_READ_OOB
 			if (unlikely(oob)) {
 				/* Raw mode does data:oob:data:oob */
 				if (ops->mode != MTD_OOB_RAW) {
@@ -720,7 +723,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 					buf = nand_transfer_oob(chip,
 						buf, ops, mtd->oobsize);
 			}
-
+#endif
 			if (!(chip->options & NAND_NO_READRDY)) {
 				/*
 				 * Apply delay or wait for ready/busy pin. Do
@@ -836,6 +839,7 @@ int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
  *
  * NAND read out-of-band data from the spare area
  */
+#ifdef CONFIG_NAND_READ_OOB
 static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 			    struct mtd_oob_ops *ops)
 {
@@ -961,6 +965,7 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
  out:
 	return ret;
 }
+#endif
 
 /**
  * nand_block_isbad - [MTD Interface] Check if block at offset is bad
@@ -1420,7 +1425,9 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->write_oob = nand_write_oob;
 #endif
 	mtd->read = nand_read;
+#ifdef CONFIG_NAND_READ_OOB
 	mtd->read_oob = nand_read_oob;
+#endif
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
diff --git a/drivers/mtd/nand/nand_hwecc.c b/drivers/mtd/nand/nand_hwecc.c
index e5de30a..95b08d3 100644
--- a/drivers/mtd/nand/nand_hwecc.c
+++ b/drivers/mtd/nand/nand_hwecc.c
@@ -90,8 +90,10 @@ void nand_init_ecc_hw(struct nand_chip *chip)
 	/* Use standard hwecc read page function ? */
 	if (!chip->ecc.read_page)
 		chip->ecc.read_page = nand_read_page_hwecc;
+#ifdef CONFIG_NAND_READ_OOB
 	if (!chip->ecc.read_oob)
 		chip->ecc.read_oob = nand_read_oob_std;
+#endif
 #ifdef CONFIG_NAND_WRITE
 	if (!chip->ecc.write_oob)
 		chip->ecc.write_oob = nand_write_oob_std;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
