Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyT-0005ZW-UR
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:10 +0200
Message-Id: <20190805122015.19220-4-s.hauer@pengutronix.de>
In-Reply-To: <20190805122015.19220-1-s.hauer@pengutronix.de>
References: <20190805122015.19220-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] mtd: nand-mxs: Make locally used variable static
To: Barebox List <barebox@lists.infradead.org>

fake_ecc_layout is only used in the mxs nand driver, so make it static.
Also it's not necessary to zero the structure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index fb3e2b7958..4317c30805 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -236,7 +236,7 @@ struct mxs_nand_info {
 	int		bb_mark_bit_offset;
 };
 
-struct nand_ecclayout fake_ecc_layout;
+static struct nand_ecclayout fake_ecc_layout;
 
 static inline int mxs_nand_is_imx6(struct mxs_nand_info *info)
 {
@@ -2188,8 +2188,6 @@ static int mxs_nand_probe(struct device_d *dev)
 	if (err)
 		goto err2;
 
-	memset(&fake_ecc_layout, 0, sizeof(fake_ecc_layout));
-
 	/* structures must be linked */
 	chip = &nand_info->nand_chip;
 	mtd = &nand_info->mtd;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
