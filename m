Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYv3o-0001J2-8r
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 15:44:01 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 17 Dec 2018 16:43:43 +0100
Message-Id: <1545061423-3004-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH for next] mtd: nand: nand_base: Fix compile warning if
 CONFIG_MTD_WRITE is not enabled
To: barebox@lists.infradead.org

drivers/mtd/nand/nand_base.c:337:12: warning: 'nand_default_block_markbad'
defined but not used [-Wunused-function]

Add __maybe_unused again to silence warning when CONFIG_MTD_WRITE is not enabled.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/nand/nand_base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 05bfac15f822..8ae6f344686d 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -334,7 +334,7 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
  * specific driver. It provides the details for writing a bad block marker to a
  * block.
  */
-static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
+static __maybe_unused int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	struct nand_chip *chip = mtd->priv;
 	struct mtd_oob_ops ops;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
