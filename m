Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bRbEV-00088U-7D
 for barebox@lists.infradead.org; Mon, 25 Jul 2016 08:27:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jul 2016 10:27:04 +0200
Message-Id: <1469435224-20676-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] nand: mrvl: use ERR_CAST() for returning error pointers
To: Barebox List <barebox@lists.infradead.org>

ERR_CAST exists to return error pointers as error pointers without
casting them explicitly to the correct pointer type.

Also this Fixes:
In function 'alloc_nand_resource':
warning: return makes pointer from integer without a cast

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 578790d..f48403d 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1138,16 +1138,16 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
-		return PTR_ERR(iores);
+		return ERR_CAST(iores);
 	host->mmio_base = IOMEM(iores->start);
 	if (IS_ERR(host->mmio_base)) {
 		free(host);
-		return host->mmio_base;
+		return ERR_CAST(host->mmio_base);
 	}
 	host->core_clk = clk_get(dev, NULL);
 	if (IS_ERR(host->core_clk)) {
 		free(host);
-		return (void *)host->core_clk;
+		return ERR_CAST(host->core_clk);
 	}
 	clk_enable(host->core_clk);
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
