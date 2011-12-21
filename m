Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdNeS-0003xa-GN
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 15:00:17 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Dec 2011 16:00:08 +0100
Message-Id: <1324479608-9582-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] nand: drop some cruft
To: barebox@lists.infradead.org

No info worth keeping IMHO.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/nand/nand.c |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 038724a..faea28f 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -176,13 +176,6 @@ static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
 }
 #endif
 
-#if 0
-static char* mtd_get_size(struct device_d *, struct param_d *param)
-{
-	static char 
-}
-#endif
-
 static struct file_operations nand_ops = {
 	.read   = nand_read,
 #ifdef CONFIG_NAND_WRITE
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
