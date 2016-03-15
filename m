Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxF-0005Gp-VX
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:23 +0100
Message-Id: <1458040534-6171-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/16] mtd: rename mtd_all_ff -> mtd_buf_all_ff
To: Barebox List <barebox@lists.infradead.org>

To make clear this function checks a given buffer and not data on a mtd
device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c           | 10 +++++++++-
 drivers/mtd/nand/nand_base.c |  2 +-
 include/linux/mtd/mtd.h      |  2 +-
 lib/libscan.c                |  2 +-
 4 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 0a3f7ed..ff53a4a 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -34,7 +34,15 @@
 
 static LIST_HEAD(mtd_register_hooks);
 
-int mtd_all_ff(const void *buf, unsigned int len)
+/**
+ * mtd_buf_all_ff - check if buffer contains only 0xff
+ * @buf: buffer to check
+ * @size: buffer size in bytes
+ *
+ * This function returns %1 if there are only 0xff bytes in @buf, and %0 if
+ * something else was also found.
+ */
+int mtd_buf_all_ff(const void *buf, unsigned int len)
 {
 	while ((unsigned long)buf & 0x3) {
 		if (*(const uint8_t *)buf != 0xff)
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ffbf829..7eef287 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2403,7 +2403,7 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 			memset(chip->oob_poi, 0xff, mtd->oobsize);
 		}
 
-		if (oob || !mtd_all_ff(wbuf, mtd->writesize)) {
+		if (oob || !mtd_buf_all_ff(wbuf, mtd->writesize)) {
 			ret = chip->write_page(mtd, chip, column, bytes, wbuf,
 					oob_required, page, cached,
 					(ops->mode == MTD_OPS_RAW));
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 98dd82c..4374882 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -312,7 +312,7 @@ int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
 int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
 int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs);
 
-int mtd_all_ff(const void *buf, unsigned int len);
+int mtd_buf_all_ff(const void *buf, unsigned int len);
 
 /*
  * Debugging macro and defines
diff --git a/lib/libscan.c b/lib/libscan.c
index 0c850ae..29d1cdb 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -84,7 +84,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 			goto out_ec;
 
 		if (be32_to_cpu(ech.magic) != UBI_EC_HDR_MAGIC) {
-			if (mtd_all_ff(&ech, sizeof(struct ubi_ec_hdr))) {
+			if (mtd_buf_all_ff(&ech, sizeof(struct ubi_ec_hdr))) {
 				si->empty_cnt += 1;
 				si->ec[eb] = EB_EMPTY;
 				if (v)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
