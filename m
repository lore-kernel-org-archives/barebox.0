Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj9m1-0003Zx-FG
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 13:56:18 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 25 Jun 2012 15:56:10 +0200
Message-Id: <1340632570-10034-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] drivers/nor/m25p80.c: fix erase loop for unaligned addresses
To: barebox@lists.infradead.org

In some cases with unaligned addresses the loop would not abort.
Instead, use the calculated sector numbers in a for-loop.

Based on a patch by Sascha Hauer <s.hauer@pengutronix.de>.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/nor/m25p80.c |   12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 1440227..b4dfbfa 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -200,7 +200,7 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 	u32 addr, len;
 	u32 start_sector;
 	u32 end_sector;
-	u32 progress = 0;
+	u32 cur_sector;
 	int eraseshift = ffs(flash->erasesize) - 1;
 
 	dev_dbg(&flash->spi->dev, "%s %s 0x%llx, len %lld\n",
@@ -232,17 +232,13 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 
 	/* "sector"-at-a-time erase */
 	} else {
-		while (len) {
+		for (cur_sector = start_sector; cur_sector <= end_sector; cur_sector++) {
 			if (ctrlc())
 				return -EINTR;
-			if (erase_sector(flash, addr))
+			if (erase_sector(flash, cur_sector << eraseshift))
 				return -EIO;
 
-			show_progress(++progress);
-			if (len <= flash->erasesize)
-				break;
-			addr += flash->erasesize;
-			len -= flash->erasesize;
+			show_progress(cur_sector - start_sector + 1);
 		}
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
