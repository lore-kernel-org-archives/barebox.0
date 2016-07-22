Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQa4J-0005Bw-FS
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 13:00:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQa3y-0001fI-2T
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 15:00:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 15:00:21 +0200
Message-Id: <1469192421-15748-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
References: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] nand: mrvl: don't double cast error pointer
To: barebox@lists.infradead.org

Fixes:
In function 'alloc_nand_resource':
warning: return makes pointer from integer without a cast

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 578790da2612..1341f084d8f8 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1138,7 +1138,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
-		return PTR_ERR(iores);
+		return iores;
 	host->mmio_base = IOMEM(iores->start);
 	if (IS_ERR(host->mmio_base)) {
 		free(host);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
