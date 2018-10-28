Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsYg-0004fv-3k
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:25:19 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991063AbeJ1VZRdM0J3 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:25:17 +0100
Date: Sun, 28 Oct 2018 22:25:11 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212511.GK14788@lenoch>
References: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028211947.GA14788@lenoch>
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
Subject: [PATCH 10/16] mtd: nand_bbt: make nand_scan_bbt() static
To: barebox@lists.infradead.org

Linux commit 17799359e7b adapted for Barebox:

  This implementation detail is no longer needed outside of nand_bbt.c.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 2 +-
 include/linux/mtd/nand.h    | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 360cfcd7e..e12f65a92 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -1067,7 +1067,7 @@ static void verify_bbt_descr(struct mtd_info *mtd, struct nand_bbt_descr *bd)
  * The bad block table memory is allocated here. It must be freed by calling
  * the nand_free_bbt function.
  */
-int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 {
 	struct nand_chip *this = mtd->priv;
 	int len, res = 0;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 8caf5edec..ed70c18a1 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -634,7 +634,6 @@ struct nand_manufacturers {
 extern struct nand_flash_dev nand_flash_ids[];
 extern struct nand_manufacturers nand_manuf_ids[];
 
-extern int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd);
 extern int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_default_bbt(struct mtd_info *mtd);
 extern int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
