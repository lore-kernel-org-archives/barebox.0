Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qg-0006l8-6O
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:50 +0200
Message-Id: <1311064803-6305-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/19] nand i.MX: convert to struct resource
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index a13f321..e471c8a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1034,7 +1034,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->data_buf = (uint8_t *)(host + 1);
-	host->base = (void __iomem *)dev->map_base;
+	host->base = dev_request_mem_region(dev, 0);
 
 	host->main_area0 = host->base;
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
