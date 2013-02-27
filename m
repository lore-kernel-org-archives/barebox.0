Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAdXE-0006KP-ED
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 09:42:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2013 10:42:45 +0100
Message-Id: <1361958165-24315-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: always write page when oob is given
To: barebox@lists.infradead.org

Since recently we check for the page being written for not being
empty and do not actually write it when it is. This fails for a
freshly created flash bad block table when all blocks are good.
In this case the bbt code will try to write an empty page, but
with the BBT marker in OOB. This page never gets written, so the
BBT code will not find a bad block table during next start up and
writes it again. Fix this by checking if we want to write OOB data,
if we do, then write the page, even if the data is empty.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_write.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index cd8ee06..eea5113 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -320,7 +320,7 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 			memset(chip->oob_poi, 0xff, mtd->oobsize);
 		}
 
-		if (!mtd_all_ff(wbuf, mtd->writesize)) {
+		if (oob || !mtd_all_ff(wbuf, mtd->writesize)) {
 			ret = chip->write_page(mtd, chip, wbuf, page, cached,
 					       (ops->mode == MTD_OOB_RAW));
 			if (ret)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
