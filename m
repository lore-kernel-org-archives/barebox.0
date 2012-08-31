Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Te6-0001df-4u
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 16:00:35 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 31 Aug 2012 18:00:27 +0200
Message-Id: <1346428827-20293-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] arm: mxs: bcb: fix usage of second bootstream
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

If a second bootstream was used, there was a sanity check which was not
only wrong (using erasesize instead of writesize) but also superfluous
(we got the block from an existing cdev, so it must be in the flash
range). Simply remove it to make bcb work as expected.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/bcb.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index d0a3ddc..af51d24 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -236,7 +236,7 @@ static struct mx28_fcb *create_fcb(struct mtd_info *mtd, void *buf, unsigned fw1
 	fcb->fw1_start_page = fw1_start_block / mtd->writesize;
 	fcb->fw1_sectors = DIV_ROUND_UP(fw_size, mtd->writesize);
 
-	if (fw2_start_block != 0 && fw2_start_block < mtd->size / mtd->erasesize) {
+	if (fw2_start_block) {
 		fcb->fw2_start_page = fw2_start_block / mtd->writesize;
 		fcb->fw2_sectors = fcb->fw1_sectors;
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
