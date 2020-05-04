Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVry-0003re-2b
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:50:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0005gA-TC
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0007d8-HG
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 May 2020 09:50:19 +0200
Message-Id: <20200504075022.28234-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
References: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/5] net: cpsw: move generic setup code to probe
To: barebox@lists.infradead.org

All generic cpsw code can move to probe, so the controller is only reset
and configured once.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/cpsw.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index d745737aa3..55d7ad5f5b 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -801,7 +801,7 @@ static int cpsw_open(struct eth_device *edev)
 {
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
-	int i, ret;
+	int ret;
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
@@ -810,6 +810,16 @@ static int cpsw_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	cpsw_slave_init(slave, priv);
+
+	return 0;
+}
+
+static int cpsw_setup(struct device_d *dev)
+{
+	struct cpsw_priv *priv = dev->priv;
+	int i, ret;
+
 	/* soft reset the controller and initialize priv */
 	soft_reset(priv, &priv->regs->soft_reset);
 
@@ -834,9 +844,6 @@ static int cpsw_open(struct eth_device *edev)
 	cpsw_ale_add_ucast(priv, priv->mac_addr, priv->host_port,
 			   ALE_SECURE);
 	cpsw_ale_add_mcast(priv, ethbdaddr, 1 << priv->host_port);
-
-	cpsw_slave_init(slave, priv);
-
 	/* init descriptor pool */
 	for (i = 0; i < NUM_DESCS; i++) {
 		u32 val = (i == (NUM_DESCS - 1)) ? 0 : (u32)&priv->descs[i + 1];
@@ -875,7 +882,7 @@ static int cpsw_open(struct eth_device *edev)
 		ret = cpdma_submit(priv, &priv->rx_chan, NetRxPackets[i],
 				   PKTSIZE);
 		if (ret < 0) {
-			dev_err(&slave->dev, "error %d submitting rx desc\n", ret);
+			dev_err(dev, "error %d submitting rx desc\n", ret);
 			break;
 		}
 	}
@@ -1248,6 +1255,8 @@ static int cpsw_probe(struct device_d *dev)
 
 	dev->priv = priv;
 
+	cpsw_setup(dev);
+
 	return 0;
 out:
 	free(priv->slaves);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
