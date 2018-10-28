Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsWQ-0002IP-Jv
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:23:00 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991063AbeJ1VW6TiaDF (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:22:58 +0100
Date: Sun, 28 Oct 2018 22:22:57 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212257.GF14788@lenoch>
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
Subject: [PATCH 05/16] mtd: nand: Request strength instead of bytes for soft
 BCH
To: barebox@lists.infradead.org

Linux commits e0377cdebaf3 and 438320dd34a4 combined and adapted
for Barebox:

  Previously, we requested that drivers pass ecc.size and ecc.bytes when
  using NAND_ECC_SOFT_BCH. However, a driver is likely to only know the ECC
  strength required for its NAND, so each driver would need to perform a
  strength-to-bytes calculation.

  Avoid duplicating this calculation in each driver by asking drivers to
  pass ecc.size and ecc.strength so that the strength-to-bytes calculation
  need only be implemented once.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index d4b7167f5..24fa0e3a7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3677,15 +3677,18 @@ int nand_scan_tail(struct mtd_info *mtd)
 		chip->ecc.read_oob = nand_read_oob_std;
 		chip->ecc.write_oob = nand_write_oob_std;
 		/*
-		 * Board driver should supply ecc.size and ecc.bytes values to
-		 * select how many bits are correctable; see nand_bch_init()
-		 * for details. Otherwise, default to 4 bits for large page
-		 * devices.
+		 * Board driver should supply ecc.size and ecc.strength values
+		 * to select how many bits are correctable. Otherwise, default
+		 * to 4 bits for large page devices.
 		 */
 		if (!chip->ecc.size && (mtd->oobsize >= 64)) {
 			chip->ecc.size = 512;
-			chip->ecc.bytes = 7;
+			chip->ecc.strength = 4;
 		}
+
+		/* See nand_bch_init() for details. */
+		chip->ecc.bytes = DIV_ROUND_UP(
+				chip->ecc.strength * fls(8 * chip->ecc.size), 8);
 		chip->ecc.priv = nand_bch_init(mtd,
 					       chip->ecc.size,
 					       chip->ecc.bytes,
@@ -3694,8 +3697,6 @@ int nand_scan_tail(struct mtd_info *mtd)
 			pr_warn("BCH ECC initialization failed!\n");
 			BUG();
 		}
-		chip->ecc.strength =
-			chip->ecc.bytes * 8 / fls(8 * chip->ecc.size);
 		break;
 #endif
 #ifdef CONFIG_NAND_ECC_NONE
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
