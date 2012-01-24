Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgp0-00087Y-If
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:48 +0100
Message-Id: <1327413231-17495-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 2/5] net: fec_imx: refactor R_CNTRL setup
To: barebox@lists.infradead.org

Introduce a variable which gets updated when needed and only written
once. Will make further additions easier.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/fec_imx.c |   23 +++++++----------------
 1 files changed, 7 insertions(+), 16 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 1101dad..15c7a4a 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -274,6 +274,7 @@ static int fec_set_hwaddr(struct eth_device *dev, unsigned char *mac)
 static int fec_init(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
+	u32 rcntl;
 
 	/*
 	 * Clear FEC-Lite interrupt event register(IEVENT)
@@ -288,17 +289,9 @@ static int fec_init(struct eth_device *dev)
 	/*
 	 * Set FEC-Lite receive control register(R_CNTRL):
 	 */
-	if (fec->xcv_type == SEVENWIRE) {
-		/*
-		 * Frame length=1518; 7-wire mode
-		 */
-		writel(FEC_R_CNTRL_MAX_FL(1518), fec->regs + FEC_R_CNTRL);
-	} else {
-		/*
-		 * Frame length=1518; MII mode;
-		 */
-		writel(FEC_R_CNTRL_MAX_FL(1518) | FEC_R_CNTRL_MII_MODE,
-			fec->regs + FEC_R_CNTRL);
+	rcntl = FEC_R_CNTRL_MAX_FL(1518);
+	if (fec->xcv_type != SEVENWIRE) {
+		rcntl |= FEC_R_CNTRL_MII_MODE;
 		/*
 		 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
 		 * and do not drop the Preamble.
@@ -309,13 +302,10 @@ static int fec_init(struct eth_device *dev)
 
 	if (fec->xcv_type == RMII) {
 		if (cpu_is_mx28()) {
-			/* just another way to enable RMII */
-			uint32_t reg = readl(fec->regs + FEC_R_CNTRL);
-			writel(reg | FEC_R_CNTRL_RMII_MODE
+			rcntl |= FEC_R_CNTRL_RMII_MODE;
 				/* the linux driver add these bits, why not we? */
 				/* | FEC_R_CNTRL_FCE | */
-				/* FEC_R_CNTRL_NO_LGTH_CHECK */,
-				fec->regs + FEC_R_CNTRL);
+				/* FEC_R_CNTRL_NO_LGTH_CHECK */
 		} else {
 			/* disable the gasket and wait */
 			writel(0, fec->regs + FEC_MIIGSK_ENR);
@@ -329,6 +319,7 @@ static int fec_init(struct eth_device *dev)
 			writel(FEC_MIIGSK_ENR_EN, fec->regs + FEC_MIIGSK_ENR);
 		}
 	}
+	writel(rcntl, fec->regs + FEC_R_CNTRL);
 
 	/*
 	 * Set Opcode/Pause Duration Register
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
