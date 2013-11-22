Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G2-IH
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:54 +0100
Message-Id: <1385131741-28280-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/17] net: cpsw: attach slave to edev->priv
To: barebox@lists.infradead.org

An ethernet device belongs to a slave, so set edev->priv to the slave
and not to the cpsw.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index fcb1f66..a79859b 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -180,6 +180,7 @@ struct cpsw_slave {
 	int				phy_id;
 	phy_interface_t			phy_if;
 	struct eth_device		edev;
+	struct cpsw_priv		*cpsw;
 };
 
 struct cpdma_desc {
@@ -536,7 +537,8 @@ static inline void soft_reset(struct cpsw_priv *priv, void *reg)
 
 static int cpsw_get_hwaddr(struct eth_device *edev, unsigned char *mac)
 {
-	struct cpsw_priv *priv = edev->priv;
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
@@ -545,8 +547,8 @@ static int cpsw_get_hwaddr(struct eth_device *edev, unsigned char *mac)
 
 static int cpsw_set_hwaddr(struct eth_device *edev, unsigned char *mac)
 {
-	struct cpsw_priv *priv = edev->priv;
-	struct cpsw_slave *slave = &priv->slaves[0];
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
@@ -614,8 +616,8 @@ static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
 
 static void cpsw_adjust_link(struct eth_device *edev)
 {
-	struct cpsw_priv *priv = edev->priv;
-	struct cpsw_slave *slave = &priv->slaves[0];
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
@@ -756,8 +758,8 @@ static int cpsw_init(struct eth_device *edev)
 
 static int cpsw_open(struct eth_device *edev)
 {
-	struct cpsw_priv *priv = edev->priv;
-	struct cpsw_slave *slave = &priv->slaves[0];
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 	int i, ret;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
@@ -841,9 +843,10 @@ static int cpsw_open(struct eth_device *edev)
 	return 0;
 }
 
-static void cpsw_halt(struct eth_device *dev)
+static void cpsw_halt(struct eth_device *edev)
 {
-	struct cpsw_priv	*priv = dev->priv;
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 
 	writel(0, priv->dma_regs + CPDMA_TXCONTROL);
 	writel(0, priv->dma_regs + CPDMA_RXCONTROL);
@@ -855,9 +858,10 @@ static void cpsw_halt(struct eth_device *dev)
 	soft_reset(priv, priv->dma_regs + CPDMA_SOFTRESET);
 }
 
-static int cpsw_send(struct eth_device *dev, void *packet, int length)
+static int cpsw_send(struct eth_device *edev, void *packet, int length)
 {
-	struct cpsw_priv	*priv = dev->priv;
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 	void *buffer;
 	int ret, len;
 
@@ -875,9 +879,10 @@ static int cpsw_send(struct eth_device *dev, void *packet, int length)
 	return ret;
 }
 
-static int cpsw_recv(struct eth_device *dev)
+static int cpsw_recv(struct eth_device *edev)
 {
-	struct cpsw_priv	*priv = dev->priv;
+	struct cpsw_slave *slave = edev->priv;
+	struct cpsw_priv *priv = slave->cpsw;
 	void *buffer;
 	int len;
 
@@ -910,8 +915,9 @@ static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	slave->slave_num = slave_num;
 	slave->regs	= regs + priv->slave_ofs + priv->slave_size * slave_num;
 	slave->sliver	= regs + priv->sliver_ofs + SLIVER_SIZE * slave_num;
+	slave->cpsw	= priv;
 
-	edev->priv	= priv;
+	edev->priv	= slave;
 	edev->init	= cpsw_init;
 	edev->open	= cpsw_open;
 	edev->halt	= cpsw_halt;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
