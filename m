Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcke-0003SK-0l
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:37:09 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:36:57 +0100
Message-Id: <1355758617-21175-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] nand: mxs: NO_SUBPAGE_WRITE flag was overwritten
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

It is not the chip, but this controller which cannot do subpage writes.
So, make sure we add the flag at the proper place, so it doesn't get
overwritten by flash detection anymore.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c |   12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index c4509d3..bc34526 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1217,7 +1217,6 @@ static int mxs_nand_probe(struct device_d *dev)
 	mtd->parent = dev;
 
 	nand->priv = nand_info;
-	nand->options |= NAND_NO_SUBPAGE_WRITE;
 
 	nand->cmd_ctrl		= mxs_nand_cmd_ctrl;
 
@@ -1241,8 +1240,15 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand->ecc.bytes		= 9;
 	nand->ecc.size		= 512;
 
-	/* Scan to find existence of the device */
-	err = nand_scan(mtd, 1);
+	/* first scan to find the device and get the page size */
+	err = nand_scan_ident(mtd, 1);
+	if (err)
+		goto err2;
+
+	nand->options |= NAND_NO_SUBPAGE_WRITE;
+
+	/* second phase scan */
+	err = nand_scan_tail(mtd);
 	if (err)
 		goto err2;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
