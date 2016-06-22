Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFbwe-0006RY-Ro
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 06:47:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Jun 2016 08:47:05 +0200
Message-Id: <1466578025-8192-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: gpmi: Use subpage reads only on suitable NAND chips
To: Barebox List <barebox@lists.infradead.org>

On some NAND chips the driver uses a ECC size that is not dividable by
the number of chunks per page which means a single chunk cannot be read.
Disable the subpage feature for these NANDs. This is quite unfortunate
since the subpage feature really speeds up scanning NAND chips.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index a9c6e96..fd4e209 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1392,14 +1392,16 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand->ecc.size		= 512;
 	nand->ecc.strength	= 8;
 
-	nand->ecc.read_subpage = gpmi_ecc_read_subpage;
-	nand->options |= NAND_SUBPAGE_READ;
-
 	/* first scan to find the device and get the page size */
 	err = nand_scan_ident(mtd, 4, NULL);
 	if (err)
 		goto err2;
 
+	if ((13 * mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) % 8) == 0) {
+		nand->ecc.read_subpage = gpmi_ecc_read_subpage;
+		nand->options |= NAND_SUBPAGE_READ;
+	}
+
 	nand->options |= NAND_NO_SUBPAGE_WRITE;
 
 	/* second phase scan */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
