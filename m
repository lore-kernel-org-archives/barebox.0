Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJs9f-0002k9-H8
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 20:04:08 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 22:03:36 +0200
Message-Id: <1334606616-26134-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] mtd: docg3 fixes backport from Linux kernel
To: barebox@lists.infradead.org

Backport 2 fixes back from Linux kernel (title verbatim from
Linux kernel log) :
 - docg3 fix in-middle of blocks reads
 - docg3 reduce read alignment burden

These 2 enable partial reads from the MTD (ie. read only the
111 first bytes), which enable linux kernel booting or UBIFS
from barebox.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/devices/docg3.c |   36 +++++++++++++++++++++++-------------
 1 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 7a40908..d19969b 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -163,7 +163,7 @@ static void doc_read_data_area(struct docg3 *docg3, void *buf, int len,
 	u8 data8, *dst8;
 
 	doc_dbg("doc_read_data_area(buf=%p, len=%d)\n", buf, len);
-	cdr = len & 0x3;
+	cdr = len & 0x1;
 	len4 = len - cdr;
 
 	if (first)
@@ -395,9 +395,14 @@ err:
 }
 
 static int doc_read_page_getbytes(struct docg3 *docg3, int len, u_char *buf,
-				  int first)
+				  int first, int last_odd)
 {
-	doc_read_data_area(docg3, buf, len, first);
+	if (last_odd && len > 0) {
+		doc_read_data_area(docg3, buf, 1, first);
+		doc_read_data_area(docg3, buf ? buf + 1 : buf, len - 1, 0);
+	} else {
+		doc_read_data_area(docg3, buf, len, first);
+	}
 	doc_delay(docg3, 2);
 	return len;
 }
@@ -448,7 +453,7 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 			struct mtd_oob_ops *ops)
 {
 	struct docg3 *docg3 = mtd->priv;
-	int block0, block1, page, ret, ofs = 0;
+	int block0, block1, page, ret, skip, ofs = 0;
 	u8 *oobbuf = ops->oobbuf;
 	u8 *buf = ops->datbuf;
 	size_t len, ooblen, nbdata, nboob;
@@ -468,8 +473,7 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 
 	doc_dbg("doc_read_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\n",
 		from, ops->mode, buf, len, oobbuf, ooblen);
-	if ((len % DOC_LAYOUT_PAGE_SIZE) || (ooblen % DOC_LAYOUT_OOB_SIZE) ||
-	    (from % DOC_LAYOUT_PAGE_SIZE))
+	if (ooblen % DOC_LAYOUT_OOB_SIZE)
 		return -EINVAL;
 
 	ret = -EINVAL;
@@ -481,10 +485,11 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 	ops->oobretlen = 0;
 	ops->retlen = 0;
 	ret = 0;
+	skip = from % DOC_LAYOUT_PAGE_SIZE;
 	while (!ret && (len > 0 || ooblen > 0)) {
 		calc_block_sector(from, &block0, &block1, &page, &ofs,
 			docg3->reliable);
-		nbdata = min_t(size_t, len, (size_t)DOC_LAYOUT_PAGE_SIZE);
+		nbdata = min_t(size_t, len, DOC_LAYOUT_PAGE_SIZE - skip);
 		nboob = min_t(size_t, ooblen, (size_t)DOC_LAYOUT_OOB_SIZE);
 		ret = doc_read_page_prepare(docg3, block0, block1, page, ofs);
 		if (ret < 0)
@@ -492,16 +497,20 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 		ret = doc_read_page_ecc_init(docg3, DOC_ECC_BCH_TOTAL_BYTES);
 		if (ret < 0)
 			goto err_in_read;
-		ret = doc_read_page_getbytes(docg3, nbdata, buf, 1);
+		ret = doc_read_page_getbytes(docg3, skip, NULL, 1, 0);
+		if (ret < skip)
+			goto err_in_read;
+		ret = doc_read_page_getbytes(docg3, nbdata, buf, 0, skip % 2);
 		if (ret < nbdata)
 			goto err_in_read;
-		doc_read_page_getbytes(docg3, DOC_LAYOUT_PAGE_SIZE - nbdata,
-				       NULL, 0);
-		ret = doc_read_page_getbytes(docg3, nboob, oobbuf, 0);
+		doc_read_page_getbytes(docg3,
+				       DOC_LAYOUT_PAGE_SIZE - nbdata - skip,
+				       NULL, 0, (skip + nbdata) % 2);
+		ret = doc_read_page_getbytes(docg3, nboob, oobbuf, 0, 0);
 		if (ret < nboob)
 			goto err_in_read;
 		doc_read_page_getbytes(docg3, DOC_LAYOUT_OOB_SIZE - nboob,
-				       NULL, 0);
+				       NULL, 0, nboob % 2);
 
 		doc_get_bch_hw_ecc(docg3, hwecc);
 		eccconf1 = doc_register_readb(docg3, DOC_ECCCONF1);
@@ -549,6 +558,7 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 		len -= nbdata;
 		ooblen -= nboob;
 		from += DOC_LAYOUT_PAGE_SIZE;
+		skip = 0;
 	}
 
 	return ret;
@@ -589,7 +599,7 @@ static int doc_reload_bbt(struct docg3 *docg3)
 						     DOC_LAYOUT_PAGE_SIZE);
 		if (!ret)
 			doc_read_page_getbytes(docg3, DOC_LAYOUT_PAGE_SIZE,
-					       buf, 1);
+					       buf, 1, 0);
 		buf += DOC_LAYOUT_PAGE_SIZE;
 	}
 	doc_read_page_finish(docg3);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
