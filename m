Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpCyU-0002LN-5Z
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 12:29:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Sep 2017 14:28:36 +0200
Message-Id: <20170905122836.14670-2-s.hauer@pengutronix.de>
In-Reply-To: <20170905122836.14670-1-s.hauer@pengutronix.de>
References: <20170905122836.14670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: nand: nand_mxs: Don't call get/set features on chips
 which do not support it
To: Barebox List <barebox@lists.infradead.org>

Older versions of the ONFI spec do not support get/set features, so
do not call these commands when they are not available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index cba0beedbb..110334d256 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2030,19 +2030,23 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 
 	nand->select_chip(mtd, 0);
 
-	/* [1] send SET FEATURE commond to NAND */
-	feature[0] = mode;
+	if (le16_to_cpu(nand->onfi_params.opt_cmd)
+	      & ONFI_OPT_CMD_SET_GET_FEATURES) {
 
-	ret = nand->onfi_set_features(mtd, nand,
+		/* [1] send SET FEATURE commond to NAND */
+		feature[0] = mode;
+
+		ret = nand->onfi_set_features(mtd, nand,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
-	if (ret)
-		goto err_out;
+		if (ret)
+			goto err_out;
 
-	/* [2] send GET FEATURE command to double-check the timing mode */
-	ret = nand->onfi_get_features(mtd, nand,
+		/* [2] send GET FEATURE command to double-check the timing mode */
+		ret = nand->onfi_get_features(mtd, nand,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
-	if (ret || feature[0] != mode)
-		goto err_out;
+		if (ret || feature[0] != mode)
+			goto err_out;
+	}
 
 	nand->select_chip(mtd, -1);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
