Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpbS-0007hz-J5
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:56:54 +0200
Message-Id: <1400137016-15688-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400137016-15688-1-git-send-email-s.hauer@pengutronix.de>
References: <1400137016-15688-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: cpsw: print slave_num in dev_dbg
To: barebox@lists.infradead.org

Since the cpsw has two slaves which handle one network interface
each the slave number is interesting during debugging. Print the
number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index f11b2d9..46fa53d 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -542,7 +542,7 @@ static int cpsw_get_hwaddr(struct eth_device *edev, unsigned char *mac)
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	return -1;
 }
@@ -552,7 +552,7 @@ static int cpsw_set_hwaddr(struct eth_device *edev, unsigned char *mac)
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	memcpy(&priv->mac_addr, mac, sizeof(priv->mac_addr));
 
@@ -568,7 +568,7 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 	struct phy_device *phydev = slave->edev.phydev;
 	u32 mac_control = 0;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	if (!phydev)
 		return;
@@ -609,7 +609,7 @@ static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
 {
 	int link = 0;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	cpsw_slave_update_link(slave, priv, &link);
 
@@ -621,7 +621,7 @@ static void cpsw_adjust_link(struct eth_device *edev)
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	cpsw_update_link(slave, priv);
 }
@@ -638,7 +638,7 @@ static void cpsw_slave_init(struct cpsw_slave *slave, struct cpsw_priv *priv)
 {
 	u32	slave_port;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	soft_reset(priv, &slave->sliver->soft_reset);
 
@@ -769,7 +769,7 @@ static int cpsw_open(struct eth_device *edev)
 	struct cpsw_priv *priv = slave->cpsw;
 	int i, ret;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	ret = phy_device_connect(edev, &priv->miibus, slave->phy_id,
 				 cpsw_adjust_link, 0, slave->phy_if);
@@ -855,6 +855,8 @@ static void cpsw_halt(struct eth_device *edev)
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
 
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
+
 	writel(0, priv->dma_regs + CPDMA_TXCONTROL);
 	writel(0, priv->dma_regs + CPDMA_RXCONTROL);
 
@@ -872,7 +874,7 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 	void *buffer;
 	int ret, len;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	/* first reap completed packets */
 	while (cpdma_process(priv, &priv->tx_chan, &buffer, &len) >= 0);
@@ -917,7 +919,7 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	void			*regs = priv->regs;
 	struct eth_device	*edev = &slave->edev;
 
-	dev_dbg(priv->dev, "* %s\n", __func__);
+	dev_dbg(priv->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	slave->slave_num = slave_num;
 	slave->regs	= regs + priv->slave_ofs + priv->slave_size * slave_num;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
