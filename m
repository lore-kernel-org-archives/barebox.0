Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP7-0002ZM-W1
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:47 +0100
Message-Id: <1362392034-1908-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] mtd nand: introduce bbm.h
To: barebox@lists.infradead.org

This file is present in current kernels. In order to get closer
to current mtd support introduce it for barebox aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/bbm.h  |   86 ++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/nand.h |   77 +++--------------------------------------
 2 files changed, 91 insertions(+), 72 deletions(-)
 create mode 100644 include/linux/mtd/bbm.h

diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
new file mode 100644
index 0000000..503ec6d
--- /dev/null
+++ b/include/linux/mtd/bbm.h
@@ -0,0 +1,86 @@
+/*
+ *  linux/include/linux/mtd/bbm.h
+ *
+ *  NAND family Bad Block Management (BBM) header file
+ *    - Bad Block Table (BBT) implementation
+ *
+ *  Copyright (c) 2005 Samsung Electronics
+ *  Kyungmin Park <kyungmin.park@samsung.com>
+ *
+ *  Copyright (c) 2000-2005
+ *  Thomas Gleixner <tglx@linuxtronix.de>
+ *
+ */
+#ifndef __LINUX_MTD_BBM_H
+#define __LINUX_MTD_BBM_H
+
+/**
+ * struct nand_bbt_descr - bad block table descriptor
+ * @options:	options for this descriptor
+ * @pages:	the page(s) where we find the bbt, used with option BBT_ABSPAGE
+ *		when bbt is searched, then we store the found bbts pages here.
+ *		Its an array and supports up to 8 chips now
+ * @offs:	offset of the pattern in the oob area of the page
+ * @veroffs:	offset of the bbt version counter in the oob are of the page
+ * @version:	version read from the bbt page during scan
+ * @len:	length of the pattern, if 0 no pattern check is performed
+ * @maxblocks:	maximum number of blocks to search for a bbt. This number of
+ *		blocks is reserved at the end of the device where the tables are
+ *		written.
+ * @reserved_block_code: if non-0, this pattern denotes a reserved (rather than
+ *              bad) block in the stored bbt
+ * @pattern:	pattern to identify bad block table or factory marked good /
+ *		bad blocks, can be NULL, if len = 0
+ *
+ * Descriptor for the bad block table marker and the descriptor for the
+ * pattern which identifies good and bad blocks. The assumption is made
+ * that the pattern and the version count are always located in the oob area
+ * of the first block.
+ */
+struct nand_bbt_descr {
+	int	options;
+	int	pages[NAND_MAX_CHIPS];
+	int	offs;
+	int	veroffs;
+	uint8_t	version[NAND_MAX_CHIPS];
+	int	len;
+	int	maxblocks;
+	int	reserved_block_code;
+	uint8_t	*pattern;
+};
+
+/* Options for the bad block table descriptors */
+
+/* The number of bits used per block in the bbt on the device */
+#define NAND_BBT_NRBITS_MSK	0x0000000F
+#define NAND_BBT_1BIT		0x00000001
+#define NAND_BBT_2BIT		0x00000002
+#define NAND_BBT_4BIT		0x00000004
+#define NAND_BBT_8BIT		0x00000008
+/* The bad block table is in the last good block of the device */
+#define	NAND_BBT_LASTBLOCK	0x00000010
+/* The bbt is at the given page, else we must scan for the bbt */
+#define NAND_BBT_ABSPAGE	0x00000020
+/* The bbt is at the given page, else we must scan for the bbt */
+#define NAND_BBT_SEARCH		0x00000040
+/* bbt is stored per chip on multichip devices */
+#define NAND_BBT_PERCHIP	0x00000080
+/* bbt has a version counter at offset veroffs */
+#define NAND_BBT_VERSION	0x00000100
+/* Create a bbt if none axists */
+#define NAND_BBT_CREATE		0x00000200
+/* Search good / bad pattern through all pages of a block */
+#define NAND_BBT_SCANALLPAGES	0x00000400
+/* Scan block empty during good / bad block scan */
+#define NAND_BBT_SCANEMPTY	0x00000800
+/* Write bbt if neccecary */
+#define NAND_BBT_WRITE		0x00001000
+/* Read and write back block contents when writing bbt */
+#define NAND_BBT_SAVECONTENT	0x00002000
+/* Search good / bad pattern on the first and the second page */
+#define NAND_BBT_SCAN2NDPAGE	0x00004000
+
+/* The maximum number of blocks to scan for a bbt */
+#define NAND_BBT_SCAN_MAXBLOCKS	4
+
+#endif /* __LINUX_MTD_BBM_H */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index b111b66..d8331f4 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -24,6 +24,11 @@
 
 #include <linux/mtd/mtd.h>
 
+/* The maximum number of NAND chips in an array */
+#define NAND_MAX_CHIPS		8
+
+#include <linux/mtd/bbm.h>
+
 struct mtd_info;
 /* Scan and identify a NAND device */
 extern int nand_scan (struct mtd_info *mtd, int max_chips);
@@ -38,9 +43,6 @@ extern void nand_release (struct mtd_info *mtd);
 /* Internal helper for board drivers which need to override command function */
 extern void nand_wait_ready(struct mtd_info *mtd);
 
-/* The maximum number of NAND chips in an array */
-#define NAND_MAX_CHIPS		8
-
 /* This constant declares the max. oobsize / page, which
  * is supported now. If you add a chip with bigger oobsize/page
  * adjust this accordingly.
@@ -541,75 +543,6 @@ struct nand_manufacturers {
 extern struct nand_flash_dev nand_flash_ids[];
 extern struct nand_manufacturers nand_manuf_ids[];
 
-/**
- * struct nand_bbt_descr - bad block table descriptor
- * @options:	options for this descriptor
- * @pages:	the page(s) where we find the bbt, used with option BBT_ABSPAGE
- *		when bbt is searched, then we store the found bbts pages here.
- *		Its an array and supports up to 8 chips now
- * @offs:	offset of the pattern in the oob area of the page
- * @veroffs:	offset of the bbt version counter in the oob are of the page
- * @version:	version read from the bbt page during scan
- * @len:	length of the pattern, if 0 no pattern check is performed
- * @maxblocks:	maximum number of blocks to search for a bbt. This number of
- *		blocks is reserved at the end of the device where the tables are
- *		written.
- * @reserved_block_code: if non-0, this pattern denotes a reserved (rather than
- *              bad) block in the stored bbt
- * @pattern:	pattern to identify bad block table or factory marked good /
- *		bad blocks, can be NULL, if len = 0
- *
- * Descriptor for the bad block table marker and the descriptor for the
- * pattern which identifies good and bad blocks. The assumption is made
- * that the pattern and the version count are always located in the oob area
- * of the first block.
- */
-struct nand_bbt_descr {
-	int	options;
-	int	pages[NAND_MAX_CHIPS];
-	int	offs;
-	int	veroffs;
-	uint8_t	version[NAND_MAX_CHIPS];
-	int	len;
-	int	maxblocks;
-	int	reserved_block_code;
-	uint8_t	*pattern;
-};
-
-/* Options for the bad block table descriptors */
-
-/* The number of bits used per block in the bbt on the device */
-#define NAND_BBT_NRBITS_MSK	0x0000000F
-#define NAND_BBT_1BIT		0x00000001
-#define NAND_BBT_2BIT		0x00000002
-#define NAND_BBT_4BIT		0x00000004
-#define NAND_BBT_8BIT		0x00000008
-/* The bad block table is in the last good block of the device */
-#define	NAND_BBT_LASTBLOCK	0x00000010
-/* The bbt is at the given page, else we must scan for the bbt */
-#define NAND_BBT_ABSPAGE	0x00000020
-/* The bbt is at the given page, else we must scan for the bbt */
-#define NAND_BBT_SEARCH		0x00000040
-/* bbt is stored per chip on multichip devices */
-#define NAND_BBT_PERCHIP	0x00000080
-/* bbt has a version counter at offset veroffs */
-#define NAND_BBT_VERSION	0x00000100
-/* Create a bbt if none axists */
-#define NAND_BBT_CREATE		0x00000200
-/* Search good / bad pattern through all pages of a block */
-#define NAND_BBT_SCANALLPAGES	0x00000400
-/* Scan block empty during good / bad block scan */
-#define NAND_BBT_SCANEMPTY	0x00000800
-/* Write bbt if neccecary */
-#define NAND_BBT_WRITE		0x00001000
-/* Read and write back block contents when writing bbt */
-#define NAND_BBT_SAVECONTENT	0x00002000
-/* Search good / bad pattern on the first and the second page */
-#define NAND_BBT_SCAN2NDPAGE	0x00004000
-
-/* The maximum number of blocks to scan for a bbt */
-#define NAND_BBT_SCAN_MAXBLOCKS	4
-
 extern int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd);
 extern int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_default_bbt(struct mtd_info *mtd);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
