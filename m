Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT51n-0004aO-Q3
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:42 +0100
Message-Id: <1455011748-5538-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
References: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] mtd: nand-bb: Fix 8k page size nands
To: Barebox List <barebox@lists.infradead.org>

As the comment states BB_WRITEBUF_SIZE must be a multiple of the largest
NAND page size. Since this is 8192 and not 4096, change it accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 8e4600a..5a2fd10 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -88,7 +88,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 }
 
 /* Must be a multiple of the largest NAND page size */
-#define BB_WRITEBUF_SIZE	4096
+#define BB_WRITEBUF_SIZE	8192
 
 #ifdef CONFIG_MTD_WRITE
 static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
