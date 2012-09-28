Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THc3m-0005Iw-P2
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 15:00:59 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 28 Sep 2012 17:00:48 +0200
Message-Id: <1348844450-26842-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348844450-26842-1-git-send-email-jlu@pengutronix.de>
References: <1348844450-26842-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH v2 1/3] davinci_emac: return 0 on successful transmit
To: barebox@lists.infradead.org

The _send function should not return the length of the transmitted packet.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/net/davinci_emac.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 09fcb63..7f39972 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -410,7 +410,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 {
 	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
 	uint64_t start;
-	int ret_status = -1;
+	int ret_status;
 
 	dev_dbg(priv->dev, "+ emac_send (length %d)\n", length);
 
@@ -437,7 +437,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 		if (readl(priv->adap_emac + EMAC_TXINTSTATRAW) & 0x01) {
 			/* Acknowledge the TX descriptor */
 			writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0CP);
-			ret_status = length;
+			ret_status = 0;
 			break;
 		}
 		if (is_timeout(start, 100 * MSECOND)) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
