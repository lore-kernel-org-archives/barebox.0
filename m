Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGj5-0001g3-Ou
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:11 +0200
Message-Id: <1343757556-11897-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] nor m25p80: remove progression bar
To: barebox@lists.infradead.org

Drivers should not print a progression bar.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 1440227..594e9d2 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -28,7 +28,6 @@
 #include <linux/err.h>
 #include <clock.h>
 #include <linux/mtd/mtd.h>
-#include <progress.h>
 #include "m25p80.h"
 
 /****************************************************************************/
@@ -200,7 +199,6 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 	u32 addr, len;
 	u32 start_sector;
 	u32 end_sector;
-	u32 progress = 0;
 	int eraseshift = ffs(flash->erasesize) - 1;
 
 	dev_dbg(&flash->spi->dev, "%s %s 0x%llx, len %lld\n",
@@ -215,15 +213,12 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 
 	start_sector = offset >> eraseshift;
 	end_sector = (offset + count - 1) >> eraseshift;
-	init_progression_bar(end_sector - start_sector + 1);
 
 	/* whole-chip erase? */
 	if (len == flash->size) {
 
-		show_progress(start_sector);
 		if (erase_chip(flash))
 			return -EIO;
-		show_progress(end_sector);
 
 	/* REVISIT in some cases we could speed up erasing large regions
 	 * by using OPCODE_SE instead of OPCODE_BE_4K.  We may have set up
@@ -238,7 +233,6 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 			if (erase_sector(flash, addr))
 				return -EIO;
 
-			show_progress(++progress);
 			if (len <= flash->erasesize)
 				break;
 			addr += flash->erasesize;
@@ -246,8 +240,6 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 		}
 	}
 
-	printf("\n");
-
 	return 0;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
