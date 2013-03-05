Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCtUK-0005it-9C
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 15:09:09 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  5 Mar 2013 19:09:01 +0400
Message-Id: <1362496142-23729-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] mtd: nand: Fix compiler warning
To: barebox@lists.infradead.org

This patch fixes following warning:
drivers/mtd/nand/nand_write.c: In function 'nand_do_write_ops':
drivers/mtd/nand/nand_write.c:272: warning: 'ret' may be used uninitialized in this function

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mtd/nand/nand_write.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index eea5113..0e2f98f 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -269,7 +269,7 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 	uint32_t writelen = ops->len;
 	uint8_t *oob = ops->oobbuf;
 	uint8_t *buf = ops->datbuf;
-	int ret, subpage;
+	int ret = 0, subpage;
 
 	ops->retlen = 0;
 	if (!writelen)
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
