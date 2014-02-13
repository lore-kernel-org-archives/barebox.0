Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUV-0001IQ-UU
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:31 +0100
Message-Id: <1392287135-445-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] mtd: erase_info may be modified in mtd_erase
To: barebox@lists.infradead.org

erase_info may be modified by the mtd partition code, so
set the address each time we call mtd_erase.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6db1c6d..e4def2a 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -146,6 +146,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
+	uint32_t addr;
 	int ret;
 
 	ret = mtd_erase_align(mtd, &count, &offset);
@@ -154,7 +155,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 
 	memset(&erase, 0, sizeof(erase));
 	erase.mtd = mtd;
-	erase.addr = offset;
+	addr = offset;
 
 	if (!mtd->block_isbad) {
 		erase.len = count;
@@ -164,22 +165,24 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	erase.len = mtd->erasesize;
 
 	while (count > 0) {
-		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
+		dev_dbg(cdev->dev, "erase %d %d\n", addr, erase.len);
 
 		if (!mtd->allow_erasebad)
-			ret = mtd_block_isbad(mtd, erase.addr);
+			ret = mtd_block_isbad(mtd, addr);
 		else
 			ret = 0;
 
+		erase.addr = addr;
+
 		if (ret > 0) {
-			printf("Skipping bad block at 0x%08x\n", erase.addr);
+			printf("Skipping bad block at 0x%08x\n", addr);
 		} else {
 			ret = mtd_erase(mtd, &erase);
 			if (ret)
 				return ret;
 		}
 
-		erase.addr += mtd->erasesize;
+		addr += mtd->erasesize;
 		count -= count > mtd->erasesize ? mtd->erasesize : count;
 	}
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
