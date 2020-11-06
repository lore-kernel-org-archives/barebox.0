Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xN-0003Xg-Ie
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:59 +0100
Message-Id: <20201106133900.2656-26-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/26] nand command: Print OOB information
To: Barebox List <barebox@lists.infradead.org>

NAND mtd devices carry information how the OOB area is used. So far
there is no way to visualize it, so print it along with other NAND
informations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c         |  5 +++
 drivers/mtd/core.c      | 81 +++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/mtd.h |  2 +
 3 files changed, 88 insertions(+)

diff --git a/commands/nand.c b/commands/nand.c
index ed2864fb7b..67e43eba30 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -13,6 +13,7 @@
 #include <ioctl.h>
 #include <nand.h>
 #include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/mtd.h>
 #include <fcntl.h>
 #include <libgen.h>
 
@@ -130,6 +131,8 @@ static int do_nand(int argc, char *argv[])
 		loff_t ofs;
 		int bad = 0;
 
+		printf("---- bad blocks ----\n");
+
 		for (ofs = 0; ofs < mtdinfo.size; ofs += mtdinfo.erasesize) {
 			if (ioctl(fd, MEMGETBADBLOCK, &ofs)) {
 				printf("Block at 0x%08llx is bad\n", ofs);
@@ -139,6 +142,8 @@ static int do_nand(int argc, char *argv[])
 
 		if (!bad)
 			printf("No bad blocks\n");
+
+		mtd_print_oob_info(mtdinfo.mtd);
 	}
 
 out:
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 22ed8d2d54..268c394ff7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -1249,3 +1249,84 @@ void mtd_set_ecclayout(struct mtd_info *mtd, struct nand_ecclayout *ecclayout)
 	mtd_set_ooblayout(mtd, &mtd_ecclayout_wrapper_ops);
 }
 EXPORT_SYMBOL_GPL(mtd_set_ecclayout);
+
+void mtd_print_oob_info(struct mtd_info *mtd)
+{
+	struct mtd_oob_region region;
+	int ret, i = 0, j, rowsize;
+	unsigned char *oob;
+
+	if (!mtd->ooblayout)
+		return;
+
+	oob = malloc(mtd->oobsize);
+	if (!oob)
+		return;
+
+	memset(oob, ' ', mtd->oobsize);
+
+	printf("---- ECC regions ----\n");
+	while (1) {
+		ret = mtd->ooblayout->ecc(mtd, i, &region);
+		if (ret)
+			break;
+		printf("ecc:  offset: %4d length: %4d\n",
+		       region.offset, region.length);
+		i++;
+
+		for (j = 0; j < region.length; j++) {
+			unsigned char *p = oob + region.offset + j;
+
+			if (*p != ' ')
+				printf("oob offset %d already set to '%c'\n",
+				       region.offset + j, *p);
+			*p = 'e';
+		}
+	}
+
+	i = 0;
+
+	printf("---- free regions ----\n");
+	while (1) {
+		ret = mtd->ooblayout->free(mtd, i, &region);
+		if (ret)
+			break;
+
+		printf("free: offset: %4d length: %4d\n",
+		       region.offset, region.length);
+		i++;
+
+		for (j = 0; j < region.length; j++) {
+			unsigned char *p = oob + region.offset + j;
+
+			if (*p != ' ')
+				printf("oob offset %d already set to '%c'\n",
+				       region.offset + j, *p);
+			*p = 'f';
+		}
+	}
+
+	j = 0;
+	rowsize = 16;
+
+	printf("---- OOB area ----\n");
+	while (1) {
+		printf("%-4d", j);
+
+		for (i = 0; i < rowsize; i++) {
+			if (i + j >= mtd->oobsize)
+				break;
+			if (i == rowsize / 2)
+				printf(" ");
+			printf(" %c", oob[j + i]);
+		}
+
+		printf("\n");
+		j += rowsize;
+
+		if (j >= mtd->oobsize)
+			break;
+	}
+
+	free(oob);
+}
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 00a6a4f9c8..ee37dfd5cb 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -376,4 +376,6 @@ static inline int mtd_is_bitflip_or_eccerr(int err) {
 
 void mtd_set_ecclayout(struct mtd_info *mtd, struct nand_ecclayout *ecclayout);
 
+void mtd_print_oob_info(struct mtd_info *mtd);
+
 #endif /* __MTD_MTD_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
