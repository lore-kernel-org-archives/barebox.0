Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJV-0005Dg-Ge
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:53 +0100
Message-Id: <1320757313-12568-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
References: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] mtd nand omap: use NAND_OWN_BUFFERS option
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 765a0d6..d5e642a 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -765,9 +765,6 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 
 	oinfo->ecc_mode = mode;
 
-	if (nand->buffers)
-		kfree(nand->buffers);
-
 	/* second phase scan */
 	if (nand_scan_tail(minfo))
 		return -ENXIO;
@@ -897,6 +894,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	/* Dont do a bbt scan at the start */
 	nand->options |= NAND_SKIP_BBTSCAN;
 
+	nand->options |= NAND_OWN_BUFFERS;
+	nand->buffers = xzalloc(sizeof(*nand->buffers));
+
 	/* State my controller */
 	nand->controller = &oinfo->controller;
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
