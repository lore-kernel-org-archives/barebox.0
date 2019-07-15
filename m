Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1R7-0005bQ-PP
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 13:54:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2019 15:54:33 +0200
Message-Id: <20190715135434.5666-2-s.hauer@pengutronix.de>
In-Reply-To: <20190715135434.5666-1-s.hauer@pengutronix.de>
References: <20190715135434.5666-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] mtd: peb: Do not mark as bad in mtd_peb_torture()
To: Barebox List <barebox@lists.infradead.org>

Both the Kernel and mtd-utils have peb torture functions and both
do not mark the block as bad automatically. Instead, the caller
must mark the block as bad when -EIO is returned from the torture
function. Do the same in barebox. This is necessary as the UBI code
otherwise may mark a block as bad twice: Once indirectly in
mtd_peb_torture() and then directly afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c              |  5 +++++
 common/state/backend_bucket_circular.c |  2 ++
 common/ubiformat.c                     | 18 ++++++++++++------
 drivers/mtd/peb.c                      |  9 +++------
 4 files changed, 22 insertions(+), 12 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 6d773b59df..a62e2a2975 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -531,6 +531,9 @@ again:
 
 	if (ret == -EBADMSG) {
 		ret = mtd_peb_torture(mtd, block);
+		if (ret == -EIO)
+			mtd_peb_mark_bad(mtd, block);
+
 		if (!ret && retries++ < 3)
 			goto again;
 	}
@@ -771,6 +774,8 @@ out:
 
 	if (ret == -EBADMSG) {
 		ret = mtd_peb_torture(mtd, block);
+		if (ret == -EIO)
+			mtd_peb_mark_bad(mtd, block);
 
 		if (!ret && retries++ < 3)
 			goto again;
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 4676730d05..9c106b7b63 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -95,6 +95,7 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
 	if (ret == -EBADMSG) {
 		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
 		if (ret == -EIO) {
+			mtd_peb_mark_bad(mtd, circ->eraseblock);
 			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
 				circ->eraseblock);
 			return -EIO;
@@ -132,6 +133,7 @@ static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *cir
 	if (ret == -EBADMSG) {
 		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
 		if (ret == -EIO) {
+			mtd_peb_mark_bad(mtd, circ->eraseblock);
 			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
 				circ->eraseblock);
 			return -EIO;
diff --git a/common/ubiformat.c b/common/ubiformat.c
index fe02270b78..4f0df6fd5c 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -310,10 +310,13 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 				goto out_close;
 
 			err = mtd_peb_torture(mtd, eb);
-			if (err < 0 && err != -EIO)
-				goto out_close;
-			if (err == -EIO && consecutive_bad_check(args, eb))
+			if (err == -EIO) {
+				err = mark_bad(args, mtd, si, eb);
+				if (err)
+					goto out_close;
+			} else if (err) {
 				goto out_close;
+			}
 
 			continue;
 		}
@@ -426,10 +429,13 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 			}
 
 			err = mtd_peb_torture(mtd, eb);
-			if (err < 0 && err != -EIO)
-				goto out_free;
-			if (err == -EIO && consecutive_bad_check(args, eb))
+			if (err == -EIO) {
+				err = mark_bad(args, mtd, si, eb);
+				if (err)
+					goto out_free;
+			} else if (err) {
 				goto out_free;
+			}
 
 			continue;
 
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 388db7f587..c82b3e8bba 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -493,9 +493,8 @@ static uint8_t patterns[] = {0xa5, 0x5a, 0x0};
  * is passed then this function will with the block freshly erased and
  * the positive number returned indicaties how often the block has been
  * erased during this test.
- * If the block does not pass the test the block is marked as bad and
- * -EIO is returned.
- *  Other negative errors are returned in case of other errors.
+ * If the block does not pass the test -EIO is returned.
+ * Other negative errors are returned in case of other errors.
  */
 int mtd_peb_torture(struct mtd_info *mtd, int pnum)
 {
@@ -549,11 +548,9 @@ out:
 		 * has not passed because it happened on a freshly erased
 		 * physical eraseblock which means something is wrong with it.
 		 */
-		dev_err(&mtd->class_dev, "read problems on freshly erased PEB %d, marking it bad\n",
+		dev_err(&mtd->class_dev, "read problems on freshly erased PEB %d, must be bad\n",
 			pnum);
 
-		mtd_peb_mark_bad(mtd, pnum);
-
 		err = -EIO;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
