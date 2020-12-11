Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaS-00088U-Aa
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:29 +0100
Message-Id: <20201211081533.7372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] mtd: nand: Allow non page aligned length writes
To: Barebox List <barebox@lists.infradead.org>

When copying images to nand with plain cp it can happen that the length
of the image is not page aligned. Allow misaligned image lengths as we
used to before the last NAND layer update.

Fixes: b6bcd96de5 ("mtd: nand: Update to Linux-5.9")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 2c3c0b360f..e190db7308 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -4031,7 +4031,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		return 0;
 
 	/* Reject writes, which are not page aligned */
-	if (NOTALIGNED(to) || NOTALIGNED(ops->len)) {
+	if (NOTALIGNED(to)) {
 		pr_notice("%s: attempt to write non page aligned data\n",
 			   __func__);
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
