Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSPF-0002d8-TR
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:46 +0100
Message-Id: <1362392034-1908-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] mtd: Add parameter to allow erasing bad blocks
To: barebox@lists.infradead.org

While erasing bad blocks is a potentially dangerous operation
it is sometimes needed during development or when some foreign
code has touched the flash.

This patch adds a device parameter 'erasebad' to allow erasing
bad blocks. Since this is not wanted during production this is
behind a Kconfig option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c            |    6 +++++-
 drivers/mtd/mtdraw.c          |    6 +++++-
 drivers/mtd/nand/Kconfig      |    9 +++++++++
 drivers/mtd/nand/nand_base.c  |   20 ++++++++++++++++++++
 drivers/mtd/nand/nand_write.c |    3 ++-
 include/linux/mtd/mtd.h       |    3 +++
 6 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index b6c1d01..e28d925 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -112,7 +112,11 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	while (count > 0) {
 		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
 
-		ret = mtd_block_isbad(mtd, erase.addr);
+		if (!mtd->allow_erasebad)
+			ret = mtd_block_isbad(mtd, erase.addr);
+		else
+			ret = 0;
+
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 5aaa017..384104e 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -241,7 +241,11 @@ static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 	while (count > 0) {
 		debug("erase %d %d\n", erase.addr, erase.len);
 
-		ret = mtd_block_isbad(mtd, erase.addr);
+		if (!mtd->allow_erasebad)
+			ret = mtd_block_isbad(mtd, erase.addr);
+		else
+			ret = 0;
+
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 49daabf..1a9b929 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -48,6 +48,15 @@ config NAND_BBT
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
+config NAND_ALLOW_ERASE_BAD
+	bool
+	depends on MTD_WRITE
+	prompt "Add device parameter to allow erasing bad blocks"
+	help
+	  This adds a 'erasebad' device parameter to nand devices. When set
+	  to '1' it will be allowed to erase bad blocks. This is a potientially
+	  dangerous operation, so if unsure say no to this option.
+
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index c0345c7..ac223ca 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1672,6 +1672,22 @@ EXPORT_SYMBOL(nand_scan_ident);
 EXPORT_SYMBOL(nand_scan_tail);
 EXPORT_SYMBOL(nand_release);
 
+static int mtd_set_erasebad(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	int erasebad;
+
+	erasebad = simple_strtoul(val, NULL, 0);
+
+	if (erasebad && !mtd->allow_erasebad)
+		dev_warn(dev, "Allowing to erase bad blocks. This may be dangerous!\n");
+
+	mtd->allow_erasebad = erasebad ? true : false;
+
+	return 0;
+}
+
 int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 {
 	int ret;
@@ -1680,6 +1696,10 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 	if (ret)
 		return ret;
 
+	if (IS_ENABLED(CONFIG_NAND_ALLOW_ERASE_BAD))
+		dev_add_param(&mtd->class_dev, "erasebad", mtd_set_erasebad,
+				NULL, 0);
+
 	return ret;
 }
 
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index eea5113..11005f3 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -626,7 +626,8 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 		/*
 		 * heck if we have a bad block, we do not erase bad blocks !
 		 */
-		if (nand_block_checkbad(mtd, ((loff_t) page) <<
+		if (!mtd->allow_erasebad &&
+				nand_block_checkbad(mtd, ((loff_t) page) <<
 					chip->page_shift, 0, allowbbt)) {
 			pr_warn("nand_erase: attempt to erase a "
 			       "bad block at page 0x%08x\n", page);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index e556837..390f4b0 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -205,6 +205,9 @@ struct mtd_info {
 
 	struct param_d param_size;
 	char *size_str;
+
+	/* If true erasing bad blocks is allowed, this is set via a device parameter */
+	bool allow_erasebad;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
