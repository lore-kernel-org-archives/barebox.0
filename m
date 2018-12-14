Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005d-1L
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:17 +0100
Message-Id: <20181214141730.26181-11-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/23] mtd: nand: omap: fix bch8_hw_romcode ecc layout
To: Barebox List <barebox@lists.infradead.org>

The ecc layout we provide to the nand core is broken since
00f119a293. Before this commit ecc bytes/size were per page
and now they are per subpage. The offset for the first ecc
byte was calculated as oob_end - num_ecc_bytes which must
now become oob_end - num_ecc_bytes * ecc_steps.

Fixes: 00f119a293 ("mtd: omap gpmc: fix ecc bytes/size")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 91f5682e9e..d64ae41e7a 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -763,10 +763,14 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
+		oinfo->nand.ecc.steps = minfo->writesize / oinfo->nand.ecc.size;
+		oinfo->nand.ecc.total = oinfo->nand.ecc.steps * oinfo->nand.ecc.bytes;
+
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
-		offset = minfo->oobsize - oinfo->nand.ecc.bytes;
-		for (i = 0; i < oinfo->nand.ecc.bytes; i++)
+		offset = minfo->oobsize - oinfo->nand.ecc.total;
+
+		for (i = 0; i < oinfo->nand.ecc.total; i++)
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
