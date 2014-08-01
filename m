Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtz-0007YR-23
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:12 +0200
Message-Id: <1406899755-8288-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mtd: omap gpmc: fix ecc bytes/size
To: barebox@lists.infradead.org

The ecc bytes / size are per subpage, not per page.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 59712b8..5ff1647 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -804,8 +804,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 					offset - omap_oobinfo.eccbytes;
 		break;
 	case OMAP_ECC_BCH4_CODE_HW:
-		oinfo->nand.ecc.bytes    = 4 * 7;
-		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.bytes    = 7;
+		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH4_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
@@ -815,8 +815,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW:
-		oinfo->nand.ecc.bytes    = 4 * 13;
-		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.bytes    = 13;
+		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
@@ -826,8 +826,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		oinfo->nand.ecc.bytes    = 4 * 13;
-		oinfo->nand.ecc.size     = 4 * 512;
+		oinfo->nand.ecc.bytes    = 13;
+		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
 		omap_oobinfo.oobfree->length = 0;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
