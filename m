Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6jd-0002pc-FK
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:03:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Feb 2015 10:03:33 +0100
Message-Id: <1423559014-3783-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423559014-3783-1-git-send-email-s.hauer@pengutronix.de>
References: <1423559014-3783-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd: nand-bb: Fix test for bad block when reading
To: Barebox List <barebox@lists.infradead.org>

in nand_bb_read() 'offset' contains the virtual position on the device,
but we have to test for a bad block on the raw physical position, so
use bb->offset instead of offset

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index f134635..c8f6988 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -62,7 +62,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 		if (max <= 0)
 			break;
 
-		if (mtd_block_isbad(bb->mtd, offset)) {
+		if (mtd_block_isbad(bb->mtd, bb->offset)) {
 			printf("skipping bad block at 0x%08llx\n", bb->offset);
 			bb->offset += bb->mtd->erasesize;
 			continue;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
