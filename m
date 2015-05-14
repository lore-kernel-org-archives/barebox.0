Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsqH1-0002Hx-Ez
 for barebox@lists.infradead.org; Thu, 14 May 2015 10:21:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 May 2015 12:21:23 +0200
Message-Id: <1431598883-25668-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
References: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mtd: nand: Fix format specifier
To: Barebox List <barebox@lists.infradead.org>

'count' is of type size_t, so use %zx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 539c685..8e4600a 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -54,7 +54,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	size_t retlen;
 	int ret, bytes = 0, now;
 
-	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08x\n",
+	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08zx\n",
 			__func__, offset, bb->offset, count);
 
 	while (count) {
@@ -132,7 +132,7 @@ static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
 	struct nand_bb *bb = cdev->priv;
 	int bytes = count, now, wroffs, ret;
 
-	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08x\n",
+	debug("%s offset: 0x%08llx (raw: 0x%08llx) count: 0x%08zx\n",
 			__func__, offset, bb->offset, count);
 
 	while (count) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
