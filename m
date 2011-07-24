Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GE-0002x8-VR
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:36 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 784A8FFA313
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:15 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:09 +0200
Message-Id: <1311518949-6990-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 12/12] nand: convert to struct resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   10 +++++-----
 drivers/mtd/nand/nand_s3c2410.c   |    4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 4a2d561..083aa57 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -14,8 +14,8 @@
  * static struct device_d my_nand_device = {
  *	.name = "gpmc_nand",
  *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
- *	.map_base = GPMC base address
- *	.size = GPMC address map size.
+ *	.resource[0].start = GPMC base address
+ *	.resource[0].size = GPMC address map size.
  *	.platform_data = platform data - required - explained below
  * };
  * platform data required:
@@ -97,7 +97,7 @@ struct gpmc_nand_info {
 	void *gpmc_command;
 	void *gpmc_address;
 	void *gpmc_data;
-	unsigned long gpmc_base;
+	void __iomem *gpmc_base;
 	unsigned char wait_mon_mask;
 	uint64_t timeout;
 	unsigned inuse:1;
@@ -672,7 +672,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	struct gpmc_nand_platform_data *pdata;
 	struct nand_chip *nand;
 	struct mtd_info *minfo;
-	unsigned long cs_base;
+	void __iomem *cs_base;
 	int err;
 	struct nand_ecclayout *layout, *lsp, *llp;
 
@@ -703,7 +703,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	}
 	/* Setup register specific data */
 	oinfo->gpmc_cs = pdata->cs;
-	oinfo->gpmc_base = pdev->map_base;
+	oinfo->gpmc_base = dev_request_mem_region(pdev, 0);
 	cs_base = oinfo->gpmc_base + GPMC_CONFIG1_0 +
 		(pdata->cs * GPMC_CONFIG_CS_SIZE);
 	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 88e89cd..0ce20d4 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -422,7 +422,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->dev = dev;
-	host->base = IOMEM(dev->map_base);
+	host->base = dev_request_mem_region(dev, 0);
 
 	/* structures must be linked */
 	chip = &host->nand;
@@ -435,7 +435,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->chip_delay = 50;
 	chip->priv = host;
 
-	chip->IO_ADDR_R = chip->IO_ADDR_W = IOMEM(dev->map_base + NFDATA);
+	chip->IO_ADDR_R = chip->IO_ADDR_W = host->base + NFDATA;
 
 #ifdef CONFIG_CPU_S3C2440
 	chip->read_buf = s3c2440_nand_read_buf;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
