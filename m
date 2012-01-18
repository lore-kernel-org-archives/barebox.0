Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnXgZ-0008Q2-Pm
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 15:44:29 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6D102FFB7AE
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 16:45:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Jan 2012 16:43:06 +0100
Message-Id: <1326901386-9220-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Revert "mtd omap nand: fix driver without
 CONFIG_PARAMETER"
To: barebox@lists.infradead.org

This reverts commit 7762f9627a3ec971e4122abf0b3d831b619dcad7.

already applied by d002818ae37545481a8de55ed8c56eb2735b5a72

    fix gpmc_nand_probe without param support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/nand_omap_gpmc.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 04617f6..d55dcaa 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -958,7 +958,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
 	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
-	omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
 
 	if (! IS_ENABLED(CONFIG_PARAMETER))
 		omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
