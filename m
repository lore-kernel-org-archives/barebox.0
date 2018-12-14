Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHo-00005w-NN
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:18 +0100
Message-Id: <20181214141730.26181-12-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/23] mtd: nand: omap: set eccbytes correctly
To: Barebox List <barebox@lists.infradead.org>

The total number of ecc bytes per page must be provided to the
nand core. This patch fixes this for bch8_hw and bch8_hw_romcode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d64ae41e7a..58ba95cb48 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -765,6 +765,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		omap_oobinfo.oobfree->offset = offset;
 		oinfo->nand.ecc.steps = minfo->writesize / oinfo->nand.ecc.size;
 		oinfo->nand.ecc.total = oinfo->nand.ecc.steps * oinfo->nand.ecc.bytes;
+		omap_oobinfo.eccbytes = oinfo->nand.ecc.total;
 
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
@@ -779,6 +780,9 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
 		omap_oobinfo.oobfree->length = 0;
+		oinfo->nand.ecc.steps = minfo->writesize / oinfo->nand.ecc.size;
+		oinfo->nand.ecc.total = oinfo->nand.ecc.steps * oinfo->nand.ecc.bytes;
+		omap_oobinfo.eccbytes = oinfo->nand.ecc.total;
 		j = 0;
 		for (i = 2; i < 58; i++)
 			omap_oobinfo.eccpos[j++] = i;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
