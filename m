Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsZE-00068T-Rv
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:25:54 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VZlGPKSf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:25:41 +0100
Date: Sun, 28 Oct 2018 22:25:39 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212539.GL14788@lenoch>
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
Subject: [PATCH 11/16] mtd: nand_bbt: unify/fix error handling in
 nand_scan_bbt()
To: barebox@lists.infradead.org

Linux commit 83c59542d0af adapted for Barebox:

  Don't leak this->bbt, and return early if check_create() fails. It helps
  to have a single error path to avoid these problems.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index e12f65a92..bcd54d7a9 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -1070,7 +1070,7 @@ static void verify_bbt_descr(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 {
 	struct nand_chip *this = mtd->priv;
-	int len, res = 0;
+	int len, res;
 	uint8_t *buf;
 	struct nand_bbt_descr *td = this->bbt_td;
 	struct nand_bbt_descr *md = this->bbt_md;
@@ -1091,10 +1091,9 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	if (!td) {
 		if ((res = nand_memory_bbt(mtd, bd))) {
 			pr_err("nand_bbt: can't scan flash and build the RAM-based BBT\n");
-			kfree(this->bbt);
-			this->bbt = NULL;
+			goto err;
 		}
-		return res;
+		return 0;
 	}
 	verify_bbt_descr(mtd, td);
 	verify_bbt_descr(mtd, md);
@@ -1104,9 +1103,8 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	len += (len >> this->page_shift) * mtd->oobsize;
 	buf = vmalloc(len);
 	if (!buf) {
-		kfree(this->bbt);
-		this->bbt = NULL;
-		return -ENOMEM;
+		res = -ENOMEM;
+		goto err;
 	}
 
 	/* Is the bbt at a given page? */
@@ -1118,6 +1116,8 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	}
 
 	res = check_create(mtd, buf, bd);
+	if (res)
+		goto err;
 
 	/* Prevent the bbt regions from erasing / writing */
 	mark_bbt_region(mtd, td);
@@ -1125,6 +1125,11 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 		mark_bbt_region(mtd, md);
 
 	vfree(buf);
+	return 0;
+
+err:
+	kfree(this->bbt);
+	this->bbt = NULL;
 	return res;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
