Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6jd-0002pd-FE
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:03:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Feb 2015 10:03:34 +0100
Message-Id: <1423559014-3783-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] mtd: nand-bb: Also print raw position in debug messages
To: Barebox List <barebox@lists.infradead.org>

When debugging the nand-bb devices also the raw position on the
device is interesting, print it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index c8f6988..23957c3 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -54,7 +54,8 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	size_t retlen;
 	int ret, bytes = 0, now;
 
-	debug("%s 0x%08llx %d\n", __func__, offset, count);
+	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08x\n",
+			__func__, offset, bb->offset, count);
 
 	while (count) {
 		loff_t max = bb->mtd->size - bb->offset;
@@ -131,7 +132,8 @@ static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
 	struct nand_bb *bb = cdev->priv;
 	int bytes = count, now, wroffs, ret;
 
-	debug("%s offset: 0x%08llx count: 0x%08x\n", __func__, offset, count);
+	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08x\n",
+			__func__, offset, bb->offset, count);
 
 	while (count) {
 		wroffs = bb->offset % BB_WRITEBUF_SIZE;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
