Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOTLV-00071S-8S
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 13:07:37 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DB3E1DC2407
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 15:14:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 15:05:15 +0200
Message-Id: <1350479115-29192-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350479115-29192-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121017130320.GF30038@game.jcrosoft.org>
 <1350479115-29192-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] nomadik_nand: switch to named resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c |    3 +++
 drivers/mtd/nand/nomadik_nand.c |    6 +++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 7f93ecb..0c85b25 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -50,14 +50,17 @@ static struct nomadik_nand_platform_data nhk8815_nand_data = {
 
 static struct resource nhk8815_nand_resources[] = {
 	{
+		.name	= "nand_addr",
 		.start	= NAND_IO_ADDR,
 		.end	= NAND_IO_ADDR + 0xfff,
 		.flags	= IORESOURCE_MEM,
 	}, {
+		.name	= "nand_cmd",
 		.start	= NAND_IO_CMD,
 		.end	= NAND_IO_CMD + 0xfff,
 		.flags	= IORESOURCE_MEM,
 	}, {
+		.name	= "nand_data",
 		.start	= NAND_IO_DATA,
 		.end	= NAND_IO_DATA + 0xfff,
 		.flags	= IORESOURCE_MEM,
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 6fc9398..b19d6c6 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -189,8 +189,8 @@ static int nomadik_nand_probe(struct device_d *dev)
 		goto err;
 	}
 
-	host->cmd_va = dev_request_mem_region(dev, 1);
-	host->addr_va = dev_request_mem_region(dev, 0);
+	host->cmd_va = dev_request_mem_region_by_name(dev, "nand_cmd");
+	host->addr_va = dev_request_mem_region_by_name(dev, "nand_addr");
 
 	/* Link all private pointers */
 	mtd = &host->mtd;
@@ -198,7 +198,7 @@ static int nomadik_nand_probe(struct device_d *dev)
 	mtd->priv = nand;
 	nand->priv = host;
 
-	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region(dev, 2);
+	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region_by_name(dev, "nand_data");
 	nand->cmd_ctrl = nomadik_cmd_ctrl;
 
 	nand->ecc.mode = NAND_ECC_HW;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
