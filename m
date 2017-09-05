Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpCyU-0002LM-5A
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 12:29:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Sep 2017 14:28:35 +0200
Message-Id: <20170905122836.14670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: Only call ONFI get/set features on supported
 chips
To: Barebox List <barebox@lists.infradead.org>

Older versions of the ONFI spec do not support get/set features, so
do not call these commands when they are not available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 8 ++++++--
 include/linux/mtd/nand.h     | 3 +++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index d9f79474cd..b321c59180 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2839,7 +2839,9 @@ static int nand_onfi_set_features(struct mtd_info *mtd, struct nand_chip *chip,
 {
 	int status;
 
-	if (!chip->onfi_version)
+	if (!chip->onfi_version ||
+	    !(le16_to_cpu(chip->onfi_params.opt_cmd)
+	      & ONFI_OPT_CMD_SET_GET_FEATURES))
 		return -EINVAL;
 
 	chip->cmdfunc(mtd, NAND_CMD_SET_FEATURES, addr, -1);
@@ -2860,7 +2862,9 @@ static int nand_onfi_set_features(struct mtd_info *mtd, struct nand_chip *chip,
 static int nand_onfi_get_features(struct mtd_info *mtd, struct nand_chip *chip,
 			int addr, uint8_t *subfeature_param)
 {
-	if (!chip->onfi_version)
+	if (!chip->onfi_version ||
+	    !(le16_to_cpu(chip->onfi_params.opt_cmd)
+	      & ONFI_OPT_CMD_SET_GET_FEATURES))
 		return -EINVAL;
 
 	/* clear the sub feature parameters */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 27538c3f42..88a8fe9756 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -222,6 +222,9 @@ struct nand_chip;
 /* ONFI subfeature parameters length */
 #define ONFI_SUBFEATURE_PARAM_LEN	4
 
+/* ONFI optional commands SET/GET FEATURES supported? */
+#define ONFI_OPT_CMD_SET_GET_FEATURES   (1 << 2)
+
 struct nand_onfi_params {
 	/* rev info and features block */
 	/* 'O' 'N' 'F' 'I'  */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
