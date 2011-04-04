Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tr-6w
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:38 +0200
Message-Id: <1301928401-13571-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] nand: factor out software ecc support to seperate file
To: barebox@lists.infradead.org

in order to make it optional later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Makefile     |    2 +-
 drivers/mtd/nand/nand.h       |    1 +
 drivers/mtd/nand/nand_base.c  |   75 +--------------------------------
 drivers/mtd/nand/nand_swecc.c |   94 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 97 insertions(+), 75 deletions(-)
 create mode 100644 drivers/mtd/nand/nand_swecc.c

diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index ffd3be1..c99633c 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,6 +1,6 @@
 
 # Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o
+obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o nand_hwecc.o nand_swecc.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
 obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
 
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
index 39cf135..70d0ba9 100644
--- a/drivers/mtd/nand/nand.h
+++ b/drivers/mtd/nand/nand.h
@@ -9,5 +9,6 @@ int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			      int page);
 
 void nand_init_ecc_hw(struct nand_chip *chip);
+void nand_init_ecc_soft(struct nand_chip *chip);
 
 #endif /* __NAND_H */
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 1923d26..ea34da9 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -687,46 +687,6 @@ static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_read_page_swecc - [REPLACABLE] software ecc based page read function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- */
-static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
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
-	chip->ecc.read_page_raw(mtd, chip, buf);
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
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
@@ -1284,32 +1244,6 @@ static void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_page_swecc - [REPLACABLE] software ecc based page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- */
-static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
-				  const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	const uint8_t *p = buf;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	/* Software ecc calculation */
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-
-	for (i = 0; i < chip->ecc.total; i++)
-		chip->oob_poi[eccpos[i]] = ecc_calc[i];
-
-	chip->ecc.write_page_raw(mtd, chip, buf);
-}
-
-/**
  * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
  * @mtd:	mtd info structure
  * @chip:	nand chip info structure
@@ -2312,14 +2246,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		break;
 
 	case NAND_ECC_SOFT:
-		chip->ecc.calculate = nand_calculate_ecc;
-		chip->ecc.correct = nand_correct_data;
-		chip->ecc.read_page = nand_read_page_swecc;
-		chip->ecc.write_page = nand_write_page_swecc;
-		chip->ecc.read_oob = nand_read_oob_std;
-		chip->ecc.write_oob = nand_write_oob_std;
-		chip->ecc.size = 256;
-		chip->ecc.bytes = 3;
+		nand_init_ecc_soft(chip);
 		break;
 
 	case NAND_ECC_NONE:
diff --git a/drivers/mtd/nand/nand_swecc.c b/drivers/mtd/nand/nand_swecc.c
new file mode 100644
index 0000000..93511cb
--- /dev/null
+++ b/drivers/mtd/nand/nand_swecc.c
@@ -0,0 +1,94 @@
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
+ * nand_read_page_swecc - [REPLACABLE] software ecc based page read function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ */
+static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
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
+	chip->ecc.read_page_raw(mtd, chip, buf);
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
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
+ * nand_write_page_swecc - [REPLACABLE] software ecc based page write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ */
+#ifdef CONFIG_NAND_WRITE
+static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
+				  const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	const uint8_t *p = buf;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	/* Software ecc calculation */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		chip->oob_poi[eccpos[i]] = ecc_calc[i];
+
+	chip->ecc.write_page_raw(mtd, chip, buf);
+}
+#endif
+
+void nand_init_ecc_soft(struct nand_chip *chip)
+{
+	chip->ecc.calculate = nand_calculate_ecc;
+	chip->ecc.correct = nand_correct_data;
+	chip->ecc.read_page = nand_read_page_swecc;
+	chip->ecc.read_oob = nand_read_oob_std;
+#ifdef CONFIG_NAND_WRITE
+	chip->ecc.write_page = nand_write_page_swecc;
+	chip->ecc.write_oob = nand_write_oob_std;
+#endif
+	chip->ecc.size = 256;
+	chip->ecc.bytes = 3;
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
