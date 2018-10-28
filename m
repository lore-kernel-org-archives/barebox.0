Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsYN-0004fv-H9
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:25:00 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VYrwzOGe (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:24:47 +0100
Date: Sun, 28 Oct 2018 22:24:44 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212444.GJ14788@lenoch>
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
Subject: [PATCH 09/16] mtd: nand_bbt: handle error case for
 nand_create_badblock_pattern()
To: barebox@lists.infradead.org

Linux commit abb9cf78e80a adapted for Barebox.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index e296fe204..360cfcd7e 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -1272,6 +1272,7 @@ static int nand_create_badblock_pattern(struct nand_chip *this)
 int nand_default_bbt(struct mtd_info *mtd)
 {
 	struct nand_chip *this = mtd->priv;
+	int ret;
 
 	/* Is a flash based bad block table requested? */
 	if (this->bbt_options & NAND_BBT_USE_FLASH) {
@@ -1290,8 +1291,11 @@ int nand_default_bbt(struct mtd_info *mtd)
 		this->bbt_md = NULL;
 	}
 
-	if (!this->badblock_pattern)
-		nand_create_badblock_pattern(this);
+	if (!this->badblock_pattern) {
+		ret = nand_create_badblock_pattern(this);
+		if (ret)
+			return ret;
+	}
 
 	return nand_scan_bbt(mtd, this->badblock_pattern);
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
