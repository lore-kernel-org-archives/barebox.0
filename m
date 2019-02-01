Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpYSz-0001V8-Gu
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 13:02:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gpYSv-0000Xs-UE
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 14:02:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  1 Feb 2019 14:02:41 +0100
Message-Id: <20190201130241.26620-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: fec_imx: skip fec_halt if the FEC wasn't started
To: barebox@lists.infradead.org

If the FEC driver is enabled, but the ethernet device was never
opened due to booting from another source the wait for graceful
transmit stop will always fail. This introduces an unnecessary
boot delay and prints a distracting warning.

As there is no point in trying to shut down the FEC if it was
never started, just skip all of fec_halt in that case.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/fec_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 4823b08340c6..36505c529c84 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -395,6 +395,9 @@ static void fec_halt(struct eth_device *dev)
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
 	uint32_t reg;
 
+	if (!(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_ETHER_EN))
+		return;
+
 	/* issue graceful stop command to the FEC transmitter if necessary */
 	writel(readl(fec->regs + FEC_X_CNTRL) | FEC_ECNTRL_RESET,
 			fec->regs + FEC_X_CNTRL);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
