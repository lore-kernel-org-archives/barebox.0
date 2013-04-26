Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVli9-0008TE-IN
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 16:41:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 20:41:12 +0400
Message-Id: <1366994474-21325-7-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 7/9] NAND: imx: Fix memory leak
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mtd/nand/nand_imx_bbm.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index 03961a0..135d74e 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -91,7 +91,7 @@ static void *create_bbt(struct mtd_info *mtd)
 	buf = malloc(mtd->writesize);
 	if (!buf) {
 		ret = -ENOMEM;
-		goto out;
+		goto out2;
 	}
 
 	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
@@ -99,7 +99,7 @@ static void *create_bbt(struct mtd_info *mtd)
 	for (i = 0; i < numblocks;) {
 		ret = checkbad(mtd, from, buf);
 		if (ret < 0)
-			goto out;
+			goto out1;
 
 		if (ret) {
 			bbt[i >> 3] |= 0x03 << (i & 0x6);
@@ -112,8 +112,11 @@ static void *create_bbt(struct mtd_info *mtd)
 	}
 
 	return bbt;
-out:
+
+out1:
 	free(buf);
+out2:
+	free(bbt);
 
 	return ERR_PTR(ret);
 }
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
