Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f52.google.com ([74.125.83.52])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Ymj-0005FY-Vz
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 16:14:14 +0000
Received: by mail-ee0-f52.google.com with SMTP id b15so4642562eek.11
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 08:14:12 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 21 Feb 2013 17:13:40 +0100
Message-Id: <1361463220-30166-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1361463220-30166-1-git-send-email-h.feurstein@gmail.com>
References: <1361463220-30166-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/2] net: fec_imx: ensure constant timeout in fec_halt
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/fec_imx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 44a3112..14889d3 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -425,15 +425,20 @@ static int fec_open(struct eth_device *edev)
 static void fec_halt(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
-	int counter = 0xffff;
+	uint64_t tmo;
 
 	/* issue graceful stop command to the FEC transmitter if necessary */
 	writel(readl(fec->regs + FEC_X_CNTRL) | FEC_ECNTRL_RESET,
 			fec->regs + FEC_X_CNTRL);
 
 	/* wait for graceful stop to register */
-	while ((counter--) && (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_GRA)))
-		;	/* FIXME ensure time */
+	tmo = get_time_ns();
+	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_GRA)) {
+		if (is_timeout(tmo, 1 * SECOND)) {
+			dev_err(&dev->dev, "graceful stop timeout\n");
+			break;
+		}
+	}
 
 	/* Disable SmartDMA tasks */
 	fec_tx_task_disable(fec);
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
