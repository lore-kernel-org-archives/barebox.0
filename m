Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT52H-0004qu-GD
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:46 +0100
Message-Id: <1455011748-5538-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] mtd: Fix mtd_op_erase for devices >4GiB
To: Barebox List <barebox@lists.infradead.org>

The mtd erase file operation has a unnecessary conversion to unsigned
long in the offset. Remove it to make it work with chips >4GiB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 3251bbc..0bc9fed 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -148,7 +148,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
-	uint32_t addr;
+	loff_t addr;
 	int ret;
 
 	ret = mtd_erase_align(mtd, &count, &offset);
@@ -178,7 +178,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 		erase.addr = addr;
 
 		if (ret > 0) {
-			printf("Skipping bad block at 0x%08x\n", addr);
+			printf("Skipping bad block at 0x%08llx\n", addr);
 		} else {
 			ret = mtd_erase(mtd, &erase);
 			if (ret)
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
