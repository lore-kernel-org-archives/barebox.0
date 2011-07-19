Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBa-0005Bc-Dr
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:23 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id EA95BFF9889
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:26 +0200
Message-Id: <1311095849-16071-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] nomadik/nand: switch to dev_request_mem_region
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/nomadik_nand.c |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 058170f..3073011 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -189,8 +189,8 @@ static int nomadik_nand_probe(struct device_d *dev)
 		goto err;
 	}
 
-	host->cmd_va = (void __iomem*)dev->resource[1].start;
-	host->addr_va = (void __iomem*)dev->resource[0].start;
+	host->cmd_va = dev_request_mem_region(dev, 1);
+	host->addr_va = dev_request_mem_region(dev, 0);
 
 	/* Link all private pointers */
 	mtd = &host->mtd;
@@ -198,8 +198,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	mtd->priv = nand;
 	nand->priv = host;
 
-	nand->IO_ADDR_R = (void __iomem *)dev->resource[2].start;
-	nand->IO_ADDR_W = (void __iomem *)dev->resource[2].start;
+	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region(dev, 2);
 	nand->cmd_ctrl = nomadik_cmd_ctrl;
 
 	nand->ecc.mode = NAND_ECC_HW;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
