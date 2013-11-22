Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G0-4y
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:53 +0100
Message-Id: <1385131741-28280-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/17] net: cpsw: drop for_each_slave
To: barebox@lists.infradead.org

We currently only use one slave, so drop for_each_slave and hardcode
slave[0] until we pass the proper context to the functions that makes
this hack unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 40 ++++++++++++++--------------------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index d969654..fcb1f66 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -226,12 +226,6 @@ struct cpsw_priv {
 	struct cpdma_chan		rx_chan, tx_chan;
 
 	struct cpsw_slave		*slaves;
-#define for_each_slave(priv, func, arg...)			\
-	do {							\
-		int idx;					\
-		for (idx = 0; idx < (priv)->num_slaves; idx++)	\
-			(func)((priv)->slaves + idx, ##arg);	\
-	} while (0)
 };
 
 static int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
@@ -540,16 +534,6 @@ static inline void soft_reset(struct cpsw_priv *priv, void *reg)
 			 ((mac)[2] << 16) | ((mac)[3] << 24))
 #define mac_lo(mac)	(((mac)[4] << 0) | ((mac)[5] << 8))
 
-static void cpsw_set_slave_mac(struct cpsw_slave *slave,
-			       struct cpsw_priv *priv,
-			       unsigned char *mac)
-{
-	dev_dbg(priv->dev, "* %s\n", __func__);
-
-	writel(mac_hi(mac), &slave->regs->sa_hi);
-	writel(mac_lo(mac), &slave->regs->sa_lo);
-}
-
 static int cpsw_get_hwaddr(struct eth_device *edev, unsigned char *mac)
 {
 	struct cpsw_priv *priv = edev->priv;
@@ -562,12 +546,14 @@ static int cpsw_get_hwaddr(struct eth_device *edev, unsigned char *mac)
 static int cpsw_set_hwaddr(struct eth_device *edev, unsigned char *mac)
 {
 	struct cpsw_priv *priv = edev->priv;
+	struct cpsw_slave *slave = &priv->slaves[0];
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
 	memcpy(&priv->mac_addr, mac, sizeof(priv->mac_addr));
 
-	for_each_slave(priv, cpsw_set_slave_mac, priv, mac);
+	writel(mac_hi(mac), &slave->regs->sa_hi);
+	writel(mac_lo(mac), &slave->regs->sa_lo);
 
 	return 0;
 }
@@ -615,22 +601,25 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 	slave->mac_control = mac_control;
 }
 
-static int cpsw_update_link(struct cpsw_priv *priv)
+static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
 {
 	int link = 0;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
-	for_each_slave(priv, cpsw_slave_update_link, priv, &link);
+	cpsw_slave_update_link(slave, priv, &link);
+
 	return link;
 }
 
-static void cpsw_adjust_link(struct eth_device *edev) {
+static void cpsw_adjust_link(struct eth_device *edev)
+{
 	struct cpsw_priv *priv = edev->priv;
+	struct cpsw_slave *slave = &priv->slaves[0];
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
-	cpsw_update_link(priv);
+	cpsw_update_link(slave, priv);
 }
 
 static inline u32 cpsw_get_slave_port(struct cpsw_priv *priv, u32 slave_num)
@@ -803,9 +792,8 @@ static int cpsw_open(struct eth_device *edev)
 			   ALE_SECURE);
 	cpsw_ale_add_mcast(priv, ethbdaddr, 1 << priv->host_port);
 
-	for_each_slave(priv, cpsw_slave_init, priv);
-
-	cpsw_update_link(priv);
+	cpsw_slave_init(&priv->slaves[0], priv);
+	cpsw_update_link(&priv->slaves[0], priv);
 
 	/* init descriptor pool */
 	for (i = 0; i < NUM_DESCS; i++) {
@@ -1044,7 +1032,7 @@ int cpsw_probe(struct device_d *dev)
 		priv->data = *data;
 		priv->num_slaves = data->num_slaves;
 		priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
-		for_each_slave(priv, cpsw_slave_init_data, idx, priv);
+		cpsw_slave_init_data(&priv->slaves[0], 0, priv);
 	}
 
 	priv->channels = 8;
@@ -1118,7 +1106,7 @@ int cpsw_probe(struct device_d *dev)
 
 	mdiobus_register(&priv->miibus);
 
-	for_each_slave(priv, cpsw_slave_setup, idx, priv);
+	cpsw_slave_setup(&priv->slaves[0], 0, priv);
 
 	return 0;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
