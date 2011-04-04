Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Ts-6o
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:47:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:39 +0200
Message-Id: <1301928401-13571-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] nand: factor out syndrome support to seperate file
To: barebox@lists.infradead.org

In order to make it optional later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Makefile              |    2 +-
 drivers/mtd/nand/nand.h                |    1 +
 drivers/mtd/nand/nand_base.c           |  207 +-----------------------------
 drivers/mtd/nand/nand_hwecc_syndrome.c |  225 ++++++++++++++++++++++++++++++++
 4 files changed, 228 insertions(+), 207 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_hwecc_syndrome.c

diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index c99633c..89e18d9 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,6 +1,6 @@
 
 # Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o nand_swecc.o
+obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o nand_swecc.o nand_hwecc_syndrome.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
 obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
 
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
index 70d0ba9..db1a2a5 100644
--- a/drivers/mtd/nand/nand.h
+++ b/drivers/mtd/nand/nand.h
@@ -10,5 +10,6 @@ int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 
 void nand_init_ecc_hw(struct nand_chip *chip);
 void nand_init_ecc_soft(struct nand_chip *chip);
+void nand_init_ecc_hw_syndrome(struct nand_chip *chip);
 
 #endif /* __NAND_H */
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ea34da9..7ffafe1 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -687,60 +687,6 @@ static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- *
- * The hw generator calculates the error syndrome automatically. Therefor
- * we need a special oob layout and handling.
- */
-static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
-				   uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *oob = chip->oob_poi;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-
-		if (chip->ecc.prepad) {
-			chip->read_buf(mtd, oob, chip->ecc.prepad);
-			oob += chip->ecc.prepad;
-		}
-
-		chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
-		chip->read_buf(mtd, oob, eccbytes);
-		stat = chip->ecc.correct(mtd, p, oob, NULL);
-
-		if (stat < 0)
-			mtd->ecc_stats.failed++;
-		else
-			mtd->ecc_stats.corrected += stat;
-
-		oob += eccbytes;
-
-		if (chip->ecc.postpad) {
-			chip->read_buf(mtd, oob, chip->ecc.postpad);
-			oob += chip->ecc.postpad;
-		}
-	}
-
-	/* Calculate remaining oob bytes */
-	i = mtd->oobsize - (oob - chip->oob_poi);
-	if (i)
-		chip->read_buf(mtd, oob, i);
-
-	return 0;
-}
-
-/**
  * nand_transfer_oob - [Internal] Transfer oob to client buffer
  * @chip:	nand chip structure
  * @oob:	oob destination address
@@ -975,45 +921,6 @@ int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
- *			    with syndromes
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to read
- * @sndcmd:	flag whether to issue read command or not
- */
-static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
-				  int page, int sndcmd)
-{
-	uint8_t *buf = chip->oob_poi;
-	int length = mtd->oobsize;
-	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
-	int eccsize = chip->ecc.size;
-	uint8_t *bufpoi = buf;
-	int i, toread, sndrnd = 0, pos;
-
-	chip->cmdfunc(mtd, NAND_CMD_READ0, chip->ecc.size, page);
-	for (i = 0; i < chip->ecc.steps; i++) {
-		if (sndrnd) {
-			pos = eccsize + i * (eccsize + chunk);
-			if (mtd->writesize > 512)
-				chip->cmdfunc(mtd, NAND_CMD_RNDOUT, pos, -1);
-			else
-				chip->cmdfunc(mtd, NAND_CMD_READ0, pos, page);
-		} else
-			sndrnd = 1;
-		toread = min_t(int, length, chunk);
-		chip->read_buf(mtd, bufpoi, toread);
-		bufpoi += toread;
-		length -= toread;
-	}
-	if (length > 0)
-		chip->read_buf(mtd, bufpoi, length);
-
-	return 1;
-}
-
-/**
  * nand_write_oob_std - [REPLACABLE] the most common OOB data write function
  * @mtd:	mtd info structure
  * @chip:	nand chip info structure
@@ -1037,65 +944,6 @@ int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
- *			     with syndrome - only for large page flash !
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to write
- */
-static int nand_write_oob_syndrome(struct mtd_info *mtd,
-				   struct nand_chip *chip, int page)
-{
-	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
-	int eccsize = chip->ecc.size, length = mtd->oobsize;
-	int i, len, pos, status = 0, sndcmd = 0, steps = chip->ecc.steps;
-	const uint8_t *bufpoi = chip->oob_poi;
-
-	/*
-	 * data-ecc-data-ecc ... ecc-oob
-	 * or
-	 * data-pad-ecc-pad-data-pad .... ecc-pad-oob
-	 */
-	if (!chip->ecc.prepad && !chip->ecc.postpad) {
-		pos = steps * (eccsize + chunk);
-		steps = 0;
-	} else
-		pos = eccsize;
-
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, pos, page);
-	for (i = 0; i < steps; i++) {
-		if (sndcmd) {
-			if (mtd->writesize <= 512) {
-				uint32_t fill = 0xFFFFFFFF;
-
-				len = eccsize;
-				while (len > 0) {
-					int num = min_t(int, len, 4);
-					chip->write_buf(mtd, (uint8_t *)&fill,
-							num);
-					len -= num;
-				}
-			} else {
-				pos = eccsize + i * (eccsize + chunk);
-				chip->cmdfunc(mtd, NAND_CMD_RNDIN, pos, -1);
-			}
-		} else
-			sndcmd = 1;
-		len = min_t(int, length, chunk);
-		chip->write_buf(mtd, bufpoi, len);
-		bufpoi += len;
-		length -= len;
-	}
-	if (length > 0)
-		chip->write_buf(mtd, bufpoi, length);
-
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(mtd, chip);
-
-	return status & NAND_STATUS_FAIL ? -EIO : 0;
-}
-
-/**
  * nand_do_read_oob - [Intern] NAND read out-of-band
  * @mtd:	MTD device structure
  * @from:	offset to read from
@@ -1244,50 +1092,6 @@ static void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- *
- * The hw generator calculates the error syndrome automatically. Therefor
- * we need a special oob layout and handling.
- */
-static void nand_write_page_syndrome(struct mtd_info *mtd,
-				    struct nand_chip *chip, const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	const uint8_t *p = buf;
-	uint8_t *oob = chip->oob_poi;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
-
-		if (chip->ecc.prepad) {
-			chip->write_buf(mtd, oob, chip->ecc.prepad);
-			oob += chip->ecc.prepad;
-		}
-
-		chip->ecc.calculate(mtd, p, oob);
-		chip->write_buf(mtd, oob, eccbytes);
-		oob += eccbytes;
-
-		if (chip->ecc.postpad) {
-			chip->write_buf(mtd, oob, chip->ecc.postpad);
-			oob += chip->ecc.postpad;
-		}
-	}
-
-	/* Calculate remaining oob bytes */
-	i = mtd->oobsize - (oob - chip->oob_poi);
-	if (i)
-		chip->write_buf(mtd, oob, i);
-}
-
-/**
  * nand_write_page - [REPLACEABLE] write one page
  * @mtd:	MTD device structure
  * @chip:	NAND chip descriptor
@@ -2232,17 +2036,8 @@ int nand_scan_tail(struct mtd_info *mtd)
 		break;
 
 	case NAND_ECC_HW_SYNDROME:
-		/* Use standard syndrome read/write page function ? */
-		if (!chip->ecc.read_page)
-			chip->ecc.read_page = nand_read_page_syndrome;
-		if (!chip->ecc.write_page)
-			chip->ecc.write_page = nand_write_page_syndrome;
-		if (!chip->ecc.read_oob)
-			chip->ecc.read_oob = nand_read_oob_syndrome;
-		if (!chip->ecc.write_oob)
-			chip->ecc.write_oob = nand_write_oob_syndrome;
-
 		nand_check_hwecc(mtd, chip);
+		nand_init_ecc_hw_syndrome(chip);
 		break;
 
 	case NAND_ECC_SOFT:
diff --git a/drivers/mtd/nand/nand_hwecc_syndrome.c b/drivers/mtd/nand/nand_hwecc_syndrome.c
new file mode 100644
index 0000000..9a66180
--- /dev/null
+++ b/drivers/mtd/nand/nand_hwecc_syndrome.c
@@ -0,0 +1,225 @@
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
+#include <module.h>
+
+/**
+ * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ *
+ * The hw generator calculates the error syndrome automatically. Therefor
+ * we need a special oob layout and handling.
+ */
+static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
+				   uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *oob = chip->oob_poi;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		chip->ecc.hwctl(mtd, NAND_ECC_READ);
+		chip->read_buf(mtd, p, eccsize);
+
+		if (chip->ecc.prepad) {
+			chip->read_buf(mtd, oob, chip->ecc.prepad);
+			oob += chip->ecc.prepad;
+		}
+
+		chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
+		chip->read_buf(mtd, oob, eccbytes);
+		stat = chip->ecc.correct(mtd, p, oob, NULL);
+
+		if (stat < 0)
+			mtd->ecc_stats.failed++;
+		else
+			mtd->ecc_stats.corrected += stat;
+
+		oob += eccbytes;
+
+		if (chip->ecc.postpad) {
+			chip->read_buf(mtd, oob, chip->ecc.postpad);
+			oob += chip->ecc.postpad;
+		}
+	}
+
+	/* Calculate remaining oob bytes */
+	i = mtd->oobsize - (oob - chip->oob_poi);
+	if (i)
+		chip->read_buf(mtd, oob, i);
+
+	return 0;
+}
+/**
+ * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ *
+ * The hw generator calculates the error syndrome automatically. Therefor
+ * we need a special oob layout and handling.
+ */
+#ifdef CONFIG_NAND_WRITE
+static void nand_write_page_syndrome(struct mtd_info *mtd,
+				    struct nand_chip *chip, const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	const uint8_t *p = buf;
+	uint8_t *oob = chip->oob_poi;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+
+		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->write_buf(mtd, p, eccsize);
+
+		if (chip->ecc.prepad) {
+			chip->write_buf(mtd, oob, chip->ecc.prepad);
+			oob += chip->ecc.prepad;
+		}
+
+		chip->ecc.calculate(mtd, p, oob);
+		chip->write_buf(mtd, oob, eccbytes);
+		oob += eccbytes;
+
+		if (chip->ecc.postpad) {
+			chip->write_buf(mtd, oob, chip->ecc.postpad);
+			oob += chip->ecc.postpad;
+		}
+	}
+
+	/* Calculate remaining oob bytes */
+	i = mtd->oobsize - (oob - chip->oob_poi);
+	if (i)
+		chip->write_buf(mtd, oob, i);
+}
+#endif
+
+/**
+ * nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
+ *			    with syndromes
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to read
+ * @sndcmd:	flag whether to issue read command or not
+ */
+static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
+				  int page, int sndcmd)
+{
+	uint8_t *buf = chip->oob_poi;
+	int length = mtd->oobsize;
+	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
+	int eccsize = chip->ecc.size;
+	uint8_t *bufpoi = buf;
+	int i, toread, sndrnd = 0, pos;
+
+	chip->cmdfunc(mtd, NAND_CMD_READ0, chip->ecc.size, page);
+	for (i = 0; i < chip->ecc.steps; i++) {
+		if (sndrnd) {
+			pos = eccsize + i * (eccsize + chunk);
+			if (mtd->writesize > 512)
+				chip->cmdfunc(mtd, NAND_CMD_RNDOUT, pos, -1);
+			else
+				chip->cmdfunc(mtd, NAND_CMD_READ0, pos, page);
+		} else
+			sndrnd = 1;
+		toread = min_t(int, length, chunk);
+		chip->read_buf(mtd, bufpoi, toread);
+		bufpoi += toread;
+		length -= toread;
+	}
+	if (length > 0)
+		chip->read_buf(mtd, bufpoi, length);
+
+	return 1;
+}
+
+/**
+ * nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
+ *			     with syndrome - only for large page flash !
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to write
+ */
+#ifdef CONFIG_NAND_WRITE
+static int nand_write_oob_syndrome(struct mtd_info *mtd,
+				   struct nand_chip *chip, int page)
+{
+	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
+	int eccsize = chip->ecc.size, length = mtd->oobsize;
+	int i, len, pos, status = 0, sndcmd = 0, steps = chip->ecc.steps;
+	const uint8_t *bufpoi = chip->oob_poi;
+
+	/*
+	 * data-ecc-data-ecc ... ecc-oob
+	 * or
+	 * data-pad-ecc-pad-data-pad .... ecc-pad-oob
+	 */
+	if (!chip->ecc.prepad && !chip->ecc.postpad) {
+		pos = steps * (eccsize + chunk);
+		steps = 0;
+	} else
+		pos = eccsize;
+
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, pos, page);
+	for (i = 0; i < steps; i++) {
+		if (sndcmd) {
+			if (mtd->writesize <= 512) {
+				uint32_t fill = 0xFFFFFFFF;
+
+				len = eccsize;
+				while (len > 0) {
+					int num = min_t(int, len, 4);
+					chip->write_buf(mtd, (uint8_t *)&fill,
+							num);
+					len -= num;
+				}
+			} else {
+				pos = eccsize + i * (eccsize + chunk);
+				chip->cmdfunc(mtd, NAND_CMD_RNDIN, pos, -1);
+			}
+		} else
+			sndcmd = 1;
+		len = min_t(int, length, chunk);
+		chip->write_buf(mtd, bufpoi, len);
+		bufpoi += len;
+		length -= len;
+	}
+	if (length > 0)
+		chip->write_buf(mtd, bufpoi, length);
+
+	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->waitfunc(mtd, chip);
+
+	return status & NAND_STATUS_FAIL ? -EIO : 0;
+}
+#endif
+
+void nand_init_ecc_hw_syndrome(struct nand_chip *chip)
+{
+		/* Use standard syndrome read/write page function ? */
+	if (!chip->ecc.read_page)
+		chip->ecc.read_page = nand_read_page_syndrome;
+	if (!chip->ecc.read_oob)
+		chip->ecc.read_oob = nand_read_oob_syndrome;
+#ifdef CONFIG_NAND_WRITE
+	if (!chip->ecc.write_page)
+		chip->ecc.write_page = nand_write_page_syndrome;
+	if (!chip->ecc.write_oob)
+		chip->ecc.write_oob = nand_write_oob_syndrome;
+#endif
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
