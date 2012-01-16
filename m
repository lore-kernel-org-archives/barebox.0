Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmpG6-0006xI-Nv
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 16:18:11 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1F5161004522
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2012 17:12:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Jan 2012 17:10:25 +0100
Message-Id: <1326730225-1552-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] atmel_nand: disable hardware ecc if not enable
To: barebox@lists.infradead.org

allow to save 1360 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 3213de2..0533759 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -374,7 +374,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	nand_chip->ecc.mode = NAND_ECC_SOFT;
 
-	if (pdata->ecc_mode == NAND_ECC_HW) {
+	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
+	    pdata->ecc_mode == NAND_ECC_HW) {
 		host->ecc = dev_request_mem_region(dev, 1);
 
 		if (!host->ecc)
@@ -412,7 +413,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		goto err_scan_ident;
 	}
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW) {
+	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
+	    nand_chip->ecc.mode == NAND_ECC_HW) {
 		/* ECC is calculated for the whole page (1 step) */
 		nand_chip->ecc.size = mtd->writesize;
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
