Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfPwh-00082O-9Q
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 08:32:51 +0000
Received: by mail-la0-f45.google.com with SMTP id pv20so994550lab.32
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 01:32:28 -0700 (PDT)
From: chf.fritz@googlemail.com
Date: Wed, 30 Apr 2014 10:32:03 +0200
Message-Id: <5360b51b.c62a980a.05b6.526e@mx.google.com>
In-Reply-To: <1398846723-10241-1-git-send-email-y>
References: <1398846723-10241-1-git-send-email-y>
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
Subject: [PATCH 3/3] net cpsw: check phy status on send and receive
To: barebox@lists.infradead.org

From: Christoph Fritz <chf.fritz@googlemail.com>

This patch adds phy status checks on cpsw_send() and cpsw_recv().
This is derived from upstream.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/net/cpsw.c |   24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ec3263d..9e7b320 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -229,6 +229,9 @@ struct cpsw_priv {
 	struct cpdma_chan		rx_chan, tx_chan;
 
 	struct cpsw_slave		*slaves;
+
+	u32				mdio_link;
+	u32				phy_mask;
 };
 
 static int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
@@ -608,14 +611,28 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
 {
 	int link = 0;
+	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
 	cpsw_slave_update_link(slave, priv, &link);
 
+	priv->mdio_link = readl(&mdio_regs->link);
 	return link;
 }
 
+static int cpsw_check_link(struct cpsw_priv *priv)
+{
+	u32 link = 0;
+	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
+
+	link = readl(&mdio_regs->link) & priv->phy_mask;
+	if ((link) && (link == priv->mdio_link))
+		return 1;
+
+	return cpsw_update_link(&priv->slaves[0], priv);
+}
+
 static void cpsw_adjust_link(struct eth_device *edev)
 {
 	struct cpsw_slave *slave = edev->priv;
@@ -657,6 +674,8 @@ static void cpsw_slave_init(struct cpsw_slave *slave, struct cpsw_priv *priv)
 
 	/* add broadcast address */
 	cpsw_ale_add_mcast(priv, ethbdaddr, 1 << slave_port);
+
+	priv->phy_mask |= 1 << slave->phy_id;
 }
 
 static struct cpdma_desc *cpdma_desc_alloc(struct cpsw_priv *priv)
@@ -874,6 +893,9 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
+	if (!cpsw_check_link(priv))
+		return -EIO;
+
 	/* first reap completed packets */
 	while (cpdma_process(priv, &priv->tx_chan, &buffer, &len) >= 0);
 
@@ -893,6 +915,8 @@ static int cpsw_recv(struct eth_device *edev)
 	void *buffer;
 	int len;
 
+	cpsw_check_link(priv);
+
 	while (cpdma_process(priv, &priv->rx_chan, &buffer, &len) >= 0) {
 		dma_inv_range((ulong)buffer, (ulong)buffer + len);
 		net_receive(buffer, len);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
