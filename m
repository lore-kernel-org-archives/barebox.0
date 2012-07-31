Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGj4-0005li-Qf
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:12 +0200
Message-Id: <1343757556-11897-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] nor m25p80: remove unused variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |    6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 594e9d2..13ce130 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -197,9 +197,6 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct m25p *flash = cdev->priv;
 	u32 addr, len;
-	u32 start_sector;
-	u32 end_sector;
-	int eraseshift = ffs(flash->erasesize) - 1;
 
 	dev_dbg(&flash->spi->dev, "%s %s 0x%llx, len %lld\n",
 		__func__, "at", (long long)offset, (long long)count);
@@ -211,9 +208,6 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 	addr = offset;
 	len = count;
 
-	start_sector = offset >> eraseshift;
-	end_sector = (offset + count - 1) >> eraseshift;
-
 	/* whole-chip erase? */
 	if (len == flash->size) {
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
