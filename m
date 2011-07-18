Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QinbZ-0005ym-7n
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:11:35 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 3FC0EFFA7B3
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:11:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Jul 2011 14:54:37 +0200
Message-Id: <1310993678-7563-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/10] nomadik_nand: use "struct resource" instead of
	platform_data
To: barebox@lists.infradead.org

drop data_va, cmd_va and addr_va in favor of resources

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/setup.c           |   18 +++++++++++++++---
 arch/arm/mach-nomadik/include/mach/nand.h |    3 ---
 drivers/mtd/nand/nomadik_nand.c           |    8 ++++----
 3 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 3d08516..3b67e44 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -61,17 +61,29 @@ static int nhk8815_nand_init(void)
 }
 
 static struct nomadik_nand_platform_data nhk8815_nand_data = {
-	.addr_va	= NAND_IO_ADDR,
-	.cmd_va		= NAND_IO_CMD,
-	.data_va	= NAND_IO_DATA,
 	.options	= NAND_COPYBACK | NAND_CACHEPRG | NAND_NO_PADDING \
 			| NAND_NO_READRDY | NAND_NO_AUTOINCR,
 	.init		= nhk8815_nand_init,
 };
 
+static struct resource nhk8815_nand_resources[] = {
+	{
+		.start	= NAND_IO_ADDR,
+		.size	= 0xfff,
+	}, {
+		.start	= NAND_IO_CMD,
+		.size	= 0xfff,
+	}, {
+		.start	= NAND_IO_DATA,
+		.size	= 0xfff,
+	}
+};
+
 static struct device_d nhk8815_nand_device = {
 	.id		= -1,
 	.name		= "nomadik_nand",
+	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
+	.resource	= nhk8815_nand_resources,
 	.platform_data	= &nhk8815_nand_data,
 };
 
diff --git a/arch/arm/mach-nomadik/include/mach/nand.h b/arch/arm/mach-nomadik/include/mach/nand.h
index 265fe53..544f0e0 100644
--- a/arch/arm/mach-nomadik/include/mach/nand.h
+++ b/arch/arm/mach-nomadik/include/mach/nand.h
@@ -2,9 +2,6 @@
 #define __ASM_ARCH_NAND_H
 
 struct nomadik_nand_platform_data {
-	unsigned long data_va;
-	unsigned long cmd_va;
-	unsigned long addr_va;
 	int options;
 	int (*init) (void);
 };
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 673fd88..058170f 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -189,8 +189,8 @@ static int nomadik_nand_probe(struct device_d *dev)
 		goto err;
 	}
 
-	host->cmd_va = (void __iomem*)pdata->cmd_va;
-	host->addr_va = (void __iomem*)pdata->addr_va;
+	host->cmd_va = (void __iomem*)dev->resource[1].start;
+	host->addr_va = (void __iomem*)dev->resource[0].start;
 
 	/* Link all private pointers */
 	mtd = &host->mtd;
@@ -198,8 +198,8 @@ static int nomadik_nand_probe(struct device_d *dev)
 	mtd->priv = nand;
 	nand->priv = host;
 
-	nand->IO_ADDR_R = (void __iomem*)pdata->data_va;
-	nand->IO_ADDR_W = (void __iomem*)pdata->data_va;
+	nand->IO_ADDR_R = (void __iomem *)dev->resource[2].start;
+	nand->IO_ADDR_W = (void __iomem *)dev->resource[2].start;
 	nand->cmd_ctrl = nomadik_cmd_ctrl;
 
 	nand->ecc.mode = NAND_ECC_HW;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
