Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlRAY-0003u7-Sa
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 19:50:28 +0000
Received: by wyf23 with SMTP id 23so4015777wyf.36
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 12:50:25 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 25 Jul 2011 21:50:18 +0200
Message-Id: <1311623420-30234-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/4] nios2/altera_tse.c: switch to ressources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/net/altera_tse.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index ac8cd2d..4298739 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -510,7 +510,7 @@ static int tse_probe(struct device_d *dev)
 	dev->type_data = edev;
 	edev->priv = (struct altera_tse_priv *)(edev + 1);
 
-	edev->iobase = dev->map_base;
+	edev->iobase = (int)dev_request_mem_region(dev, 0);
 
 	priv = edev->priv;
 
@@ -539,7 +539,7 @@ static int tse_probe(struct device_d *dev)
 	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1)); 
 	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
 
-	priv->mac_dev = (struct alt_tse_mac *)dev->map_base;
+	priv->mac_dev = (struct alt_tse_mac *)dev_request_mem_region(dev, 0);
 	priv->sgdma_rx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_RX_BASE;
 	priv->sgdma_tx = (struct alt_sgdma_registers *)NIOS_SOPC_SGDMA_TX_BASE;
 	priv->rx_desc = rx_desc;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
