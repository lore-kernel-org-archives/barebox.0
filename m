Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxh-0007XD-9y
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:29 +0200
Message-Id: <1334325273-1701-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] net fec: Add i.MX6 support
To: barebox@lists.infradead.org

Currently only 100Mb/s is tested. Freescale's U-Boot suggests that
there are some additional adjustments necessary for Gigabit support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   25 ++++++++++++++++++++++---
 include/fec.h         |    1 +
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 08cd761..599a9b4 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -274,7 +274,7 @@ static int fec_set_hwaddr(struct eth_device *dev, unsigned char *mac)
 static int fec_init(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
-	u32 rcntl;
+	u32 rcntl, xwmrk;
 
 	/*
 	 * Clear FEC-Lite interrupt event register(IEVENT)
@@ -317,13 +317,25 @@ static int fec_init(struct eth_device *dev)
 			writel(FEC_MIIGSK_ENR_EN, fec->regs + FEC_MIIGSK_ENR);
 		}
 	}
+
+	if (fec->xcv_type == RGMII)
+		rcntl |= 1 << 6;
+
 	writel(rcntl, fec->regs + FEC_R_CNTRL);
 
 	/*
 	 * Set Opcode/Pause Duration Register
 	 */
 	writel(0x00010020, fec->regs + FEC_OP_PAUSE);
-	writel(0x2, fec->regs + FEC_X_WMRK);
+
+	xwmrk = 0x2;
+
+	/* set ENET tx at store and forward mode */
+	if (cpu_is_mx6())
+		xwmrk |= 1 << 8;
+
+	writel(xwmrk, fec->regs + FEC_X_WMRK);
+
 	/*
 	 * Set multicast address filter
 	 */
@@ -349,6 +361,7 @@ static int fec_open(struct eth_device *edev)
 {
 	struct fec_priv *fec = (struct fec_priv *)edev->priv;
 	int ret;
+	u32 ecr;
 
 	/*
 	 * Initialize RxBD/TxBD rings
@@ -363,7 +376,13 @@ static int fec_open(struct eth_device *edev)
 	/*
 	 * Enable FEC-Lite controller
 	 */
-	writel(FEC_ECNTRL_ETHER_EN, fec->regs + FEC_ECNTRL);
+	ecr = FEC_ECNTRL_ETHER_EN;
+
+	/* Enable Swap to support little-endian device */
+	if (cpu_is_mx6())
+		ecr |= 0x100;
+
+	writel(ecr, fec->regs + FEC_ECNTRL);
 	/*
 	 * Enable SmartDMA receive task
 	 */
diff --git a/include/fec.h b/include/fec.h
index 85691b6..f56b023 100644
--- a/include/fec.h
+++ b/include/fec.h
@@ -33,6 +33,7 @@ typedef enum {
 	MII10,
 	MII100,
 	RMII,
+	RGMII,
 } xceiver_type;
 
 /*
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
