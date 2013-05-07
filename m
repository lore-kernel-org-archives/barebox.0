Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZoSv-0003uj-OF
 for barebox@lists.infradead.org; Tue, 07 May 2013 20:26:26 +0000
Received: from mail419.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BD05CFF9127
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 22:26:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  7 May 2013 22:21:39 +0200
Message-Id: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Revert "nand_base: detect more ONFI flash"
To: barebox@lists.infradead.org

this brake the nand support on at91sam9x5ek
where we have a non compliant ONFI nand
NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64

This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/nand_base.c |   13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index e8103cf..67e913a 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1179,15 +1179,16 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 		return ERR_PTR(-ENODEV);
 	}
 
-	if (!type)
-		type = nand_flash_ids;
-
-	for (; type->name != NULL; type++)
-		if (dev_id == type->id)
+	/* Lookup the flash id */
+	for (i = 0; nand_flash_ids[i].name != NULL; i++) {
+		if (dev_id == nand_flash_ids[i].id) {
+			type =  &nand_flash_ids[i];
 			break;
+		}
+	}
 
 	chip->onfi_version = 0;
-	if (!type->name || !type->pagesize) {
+	if (!type) {
 		/* Check is chip is ONFI compliant */
 		ret = nand_flash_detect_onfi(mtd, chip, &busw);
 		if (ret)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
