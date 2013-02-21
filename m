Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8SLJ-0001J0-PJ
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 09:21:30 +0000
Received: by mail-ea0-f177.google.com with SMTP id n13so3654940eaa.8
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 01:21:28 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 21 Feb 2013 10:21:13 +0100
Message-Id: <1361438474-28008-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 1/2] net: fec_imx: ensure constant timeout in fec_halt
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/fec_imx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 2378a19..6dfb093 100644
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
+			printf("graceful stop timeout\n");
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
