Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEpYc-0005HS-MY
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 06:53:20 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 30 Sep 2019 08:53:13 +0200
Message-Id: <1569826393-188933-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] mtd: nand: nand_omap_gpmc: Fix mtd_info usage
To: barebox@lists.infradead.org

The mtd_info has not been set correctly in the omap gpmc probe.
Remove the mtd_info in the private struct like it has been done in
other nand drivers. And update the driver accordingly.

Fixes: 76b6f74c5397 ("mtd: nand: Embed struct mtd_info into struct nand_chip")

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index c4d0cdfb573f..83fa93b61707 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -110,7 +110,6 @@ struct gpmc_nand_info {
 	struct device_d *pdev;
 	struct gpmc_nand_platform_data *pdata;
 	struct nand_chip nand;
-	struct mtd_info minfo;
 	int gpmc_cs;
 	void *gpmc_command;
 	void *gpmc_address;
@@ -582,8 +581,8 @@ static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chi
  */
 static void omap_read_buf_pref(struct mtd_info *mtd, u_char *buf, int len)
 {
-	struct gpmc_nand_info *info = container_of(mtd,
-						struct gpmc_nand_info, minfo);
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct gpmc_nand_info *info = nand_chip->priv;
 	u32 r_count = 0;
 	u32 *p = (u32 *)buf;
 
@@ -623,8 +622,9 @@ static void omap_read_buf_pref(struct mtd_info *mtd, u_char *buf, int len)
 static void omap_write_buf_pref(struct mtd_info *mtd,
 					const u_char *buf, int len)
 {
-	struct gpmc_nand_info *info = container_of(mtd,
-						struct gpmc_nand_info, minfo);
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct gpmc_nand_info *info = nand_chip->priv;
+
 	u32 w_count = 0;
 	u_char *buf1 = (u_char *)buf;
 	u32 *p32 = (u32 *)buf;
@@ -1021,8 +1021,8 @@ static int gpmc_read_page_hwecc(struct mtd_info *mtd,
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		enum gpmc_ecc_mode mode)
 {
-	struct mtd_info *minfo = &oinfo->minfo;
 	struct nand_chip *nand = &oinfo->nand;
+	struct mtd_info *minfo = &nand->mtd;
 	int offset, err;
 	int i, j;
 
@@ -1116,7 +1116,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[oinfo->nand.ecc.total - 1] + 1;
 
 		err = elm_config(BCH16_ECC,
-				 oinfo->minfo.writesize / nand->ecc.size,
+				 minfo->writesize / nand->ecc.size,
 				 nand->ecc.size, nand->ecc.bytes);
 		if (err < 0)
 			return err;
@@ -1199,7 +1199,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	nand = &oinfo->nand;
 	nand->priv = (void *)oinfo;
 
-	minfo = &oinfo->minfo;
+	minfo = &nand->mtd;
 	minfo->parent = pdev;
 
 	if (pdata->cs >= GPMC_NUM_CS) {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
