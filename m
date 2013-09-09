Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qZ-0008Kr-H0
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:18 +0200
Message-Id: <1378738401-723-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
References: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] net: designware: use dma_alloc for descriptors
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 45de31c..33d7345 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -418,8 +418,8 @@ static int dwc_ether_probe(struct device_d *dev)
 		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr));
 	priv->rx_mac_descrtable = dma_alloc_coherent(
 		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr));
-	priv->txbuffs = malloc(TX_TOTAL_BUFSIZE);
-	priv->rxbuffs = malloc(RX_TOTAL_BUFSIZE);
+	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
+	priv->rxbuffs = dma_alloc(RX_TOTAL_BUFSIZE);
 	priv->fix_mac_speed = pdata->fix_mac_speed;
 
 	edev = &priv->netdev;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
