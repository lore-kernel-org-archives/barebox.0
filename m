Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tq-53
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:37 +0200
Message-Id: <1301928401-13571-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] nand: Factor out hw ecc support to seperate file
To: barebox@lists.infradead.org

In order make hwecc support optional later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Makefile     |    2 +-
 drivers/mtd/nand/nand.h       |   13 +++++
 drivers/mtd/nand/nand_base.c  |   89 ++----------------------------------
 drivers/mtd/nand/nand_hwecc.c |  101 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 120 insertions(+), 85 deletions(-)
 create mode 100644 drivers/mtd/nand/nand.h
 create mode 100644 drivers/mtd/nand/nand_hwecc.c

diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index bac39e7..ffd3be1 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,6 +1,6 @@
 
 # Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o
+obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
 obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
 
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
new file mode 100644
index 0000000..39cf135
--- /dev/null
+++ b/drivers/mtd/nand/nand.h
@@ -0,0 +1,13 @@
+#ifndef __NAND_H
+#define __NAND_H
+
+#define CONFIG_NAND_WRITE
+
+int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+			     int page, int sndcmd);
+int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+			      int page);
+
+void nand_init_ecc_hw(struct nand_chip *chip);
+
+#endif /* __NAND_H */
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index af77868..1923d26 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -43,6 +43,8 @@
 #include <malloc.h>
 #include <module.h>
 
+#include "nand.h"
+
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 /* Define default oob placement schemes for large and small page devices */
@@ -725,50 +727,6 @@ static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_read_page_hwecc - [REPLACABLE] hardware ecc based page read function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- *
- * Not for syndrome calculating ecc controllers which need a special oob layout
- */
-static int nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-				uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	uint8_t *ecc_code = chip->buffers->ecccode;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-	}
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
-
-	for (i = 0; i < chip->ecc.total; i++)
-		ecc_code[i] = chip->oob_poi[eccpos[i]];
-
-	eccsteps = chip->ecc.steps;
-	p = buf;
-
-	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
-		if (stat < 0)
-			mtd->ecc_stats.failed++;
-		else
-			mtd->ecc_stats.corrected += stat;
-	}
-	return 0;
-}
-
-/**
  * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
  * @mtd:	mtd info structure
  * @chip:	nand chip info structure
@@ -1045,7 +1003,7 @@ static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
  * @page:	page number to read
  * @sndcmd:	flag whether to issue read command or not
  */
-static int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			     int page, int sndcmd)
 {
 	if (sndcmd) {
@@ -1101,7 +1059,7 @@ static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
  * @chip:	nand chip info structure
  * @page:	page number to write
  */
-static int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			      int page)
 {
 	int status = 0;
@@ -1352,34 +1310,6 @@ static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_page_hwecc - [REPLACABLE] hardware ecc based page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- */
-static void nand_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-				  const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	const uint8_t *p = buf;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-	}
-
-	for (i = 0; i < chip->ecc.total; i++)
-		chip->oob_poi[eccpos[i]] = ecc_calc[i];
-
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
-}
-
-/**
  * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
  * @mtd:	mtd info structure
  * @chip:	nand chip info structure
@@ -2363,17 +2293,8 @@ int nand_scan_tail(struct mtd_info *mtd)
 
 	switch (chip->ecc.mode) {
 	case NAND_ECC_HW:
-		/* Use standard hwecc read page function ? */
-		if (!chip->ecc.read_page)
-			chip->ecc.read_page = nand_read_page_hwecc;
-		if (!chip->ecc.write_page)
-			chip->ecc.write_page = nand_write_page_hwecc;
-		if (!chip->ecc.read_oob)
-			chip->ecc.read_oob = nand_read_oob_std;
-		if (!chip->ecc.write_oob)
-			chip->ecc.write_oob = nand_write_oob_std;
-
 		nand_check_hwecc(mtd, chip);
+		nand_init_ecc_hw(chip);
 		break;
 
 	case NAND_ECC_HW_SYNDROME:
diff --git a/drivers/mtd/nand/nand_hwecc.c b/drivers/mtd/nand/nand_hwecc.c
new file mode 100644
index 0000000..e5de30a
--- /dev/null
+++ b/drivers/mtd/nand/nand_hwecc.c
@@ -0,0 +1,101 @@
+#include <common.h>
+#include <errno.h>
+#include <clock.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/err.h>
+#include <linux/mtd/nand_ecc.h>
+#include <asm/byteorder.h>
+#include <asm/io.h>
+#include <malloc.h>
+
+#include "nand.h"
+
+/**
+ * nand_read_page_hwecc - [REPLACABLE] hardware ecc based page read function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ *
+ * Not for syndrome calculating ecc controllers which need a special oob layout
+ */
+static int nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
+				uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(mtd, NAND_ECC_READ);
+		chip->read_buf(mtd, p, eccsize);
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+	}
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	eccsteps = chip->ecc.steps;
+	p = buf;
+
+	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
+		if (stat < 0)
+			mtd->ecc_stats.failed++;
+		else
+			mtd->ecc_stats.corrected += stat;
+	}
+	return 0;
+}
+
+/**
+ * nand_write_page_hwecc - [REPLACABLE] hardware ecc based page write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ */
+#ifdef CONFIG_NAND_WRITE
+static void nand_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
+				  const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	const uint8_t *p = buf;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->write_buf(mtd, p, eccsize);
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+	}
+
+	for (i = 0; i < chip->ecc.total; i++)
+		chip->oob_poi[eccpos[i]] = ecc_calc[i];
+
+	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+}
+#endif
+
+void nand_init_ecc_hw(struct nand_chip *chip)
+{
+	/* Use standard hwecc read page function ? */
+	if (!chip->ecc.read_page)
+		chip->ecc.read_page = nand_read_page_hwecc;
+	if (!chip->ecc.read_oob)
+		chip->ecc.read_oob = nand_read_oob_std;
+#ifdef CONFIG_NAND_WRITE
+	if (!chip->ecc.write_oob)
+		chip->ecc.write_oob = nand_write_oob_std;
+	if (!chip->ecc.write_page)
+		chip->ecc.write_page = nand_write_page_hwecc;
+#endif
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
