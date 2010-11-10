Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Ph-7R
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:49 +0100
Message-Id: <1289400839-5937-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] imx_nand: rework get_dev_status
To: barebox@lists.infradead.org

We save/restore the value in the buffer anyway, so it makes
no difference whether we use main_area0 or main_area1. So,
we can use main_area0 and remove main_area1 from the driver
which is otherwise unused. Also, clean up the comments in
get_dev_status.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   21 ++++++++++-----------
 1 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index d5503a1..b49b7db 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -142,7 +142,6 @@ struct imx_nand_host {
 
 	void			*spare0;
 	void			*main_area0;
-	void			*main_area1;
 
 	void __iomem		*base;
 	void __iomem		*regs;
@@ -361,18 +360,18 @@ static void send_read_id(struct imx_nand_host *host)
  */
 static u16 get_dev_status(struct imx_nand_host *host)
 {
-	volatile u16 *mainbuf = host->main_area1;
+	void *main_buf = host->main_area0;
 	u32 store;
 	u16 ret, tmp;
-	/* Issue status request to NAND device */
 
-	/* store the main area1 first word, later do recovery */
-	store = *((u32 *) mainbuf);
+	writew(0x0, host->regs + NFC_BUF_ADDR);
+
 	/*
-	 * NANDFC buffer 1 is used for device status to prevent
-	 * corruption of read/write buffer on status requests.
+	 * The device status is stored in main_area0. To
+	 * prevent corruption of the buffer save the value
+	 * and restore it afterwards.
 	 */
-	writew(1, host->regs + NFC_BUF_ADDR);
+	store = readl(main_buf);
 
 	/* Read status into main buffer */
 	tmp = readw(host->regs + NFC_CONFIG1);
@@ -386,8 +385,9 @@ static u16 get_dev_status(struct imx_nand_host *host)
 
 	/* Status is placed in first word of main buffer */
 	/* get status, then recovery area 1 data */
-	ret = mainbuf[0];
-	*((u32 *) mainbuf) = store;
+	ret = readw(main_buf);
+
+	writel(store, main_buf);
 
 	return ret;
 }
@@ -858,7 +858,6 @@ static int __init imxnd_probe(struct device_d *dev)
 	host->base = (void __iomem *)dev->map_base;
 
 	host->main_area0 = host->base;
-	host->main_area1 = host->base + 0x200;
 
 	if (nfc_is_v21()) {
 		host->regs = host->base + 0x1e00;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
