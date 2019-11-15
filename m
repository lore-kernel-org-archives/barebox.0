Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVW68-0004rm-6J
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:32:55 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 539E610000D
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:32:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:32:38 +0100
Message-Id: <20191115073239.21013-3-ahmad@a3f.at>
In-Reply-To: <20191115073239.21013-1-ahmad@a3f.at>
References: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
 <20191115073239.21013-1-ahmad@a3f.at>
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
Subject: [PATCH 2/3] net: designware: eqos: enable clocks before mdio_register
To: barebox@lists.infradead.org

We can't be using the MAC including the MDIO controller while the clocks
are off, but this is exactly the case when mdio_register is called and
the interface is not yet up. To allow reading the PHY id to succeed
before the interface is up, turn on the clocks as part of the
initialization in the probe.

This fixes following error at probe time:

    ERROR: <NULL>: MDIO not idle at entry

The NULL is fixed in a follow-up commit.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/designware_eqos.c     |  8 +++---
 drivers/net/designware_eqos.h     |  4 ---
 drivers/net/designware_stm32.c    | 33 +---------------------
 drivers/net/designware_tegra186.c | 47 ++++++-------------------------
 4 files changed, 14 insertions(+), 78 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 52a5ec272e7f..84dcd04a3fc9 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -365,7 +365,7 @@ static int phy_resume(struct phy_device *phydev)
 	return 0;
 }
 
-int eqos_start(struct eth_device *edev)
+static int eqos_start(struct eth_device *edev)
 {
 	struct eqos *eqos = edev->priv;
 	u32 val, tx_fifo_sz, rx_fifo_sz, tqs, rqs, pbl;
@@ -611,7 +611,7 @@ int eqos_start(struct eth_device *edev)
 	return 0;
 }
 
-void eqos_stop(struct eth_device *edev)
+static void eqos_stop(struct eth_device *edev)
 {
 	struct eqos *eqos = edev->priv;
 	int i;
@@ -841,10 +841,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	dev->priv = edev->priv = eqos;
 
 	edev->parent = dev;
-	edev->open = ops->start;
+	edev->open = eqos_start;
 	edev->send = eqos_send;
 	edev->recv = eqos_recv;
-	edev->halt = ops->stop;
+	edev->halt = eqos_stop;
 	edev->get_ethaddr = ops->get_ethaddr;
 	edev->set_ethaddr = ops->set_ethaddr;
 
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index 969a524c0a95..f794195db4a1 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -11,8 +11,6 @@ struct eth_device;
 
 struct eqos_ops {
 	int (*init)(struct device_d *dev, struct eqos *priv);
-	int (*start)(struct eth_device *edev);
-	void (*stop)(struct eth_device *edev);
 	int (*get_ethaddr)(struct eth_device *dev, unsigned char *mac);
 	int (*set_ethaddr)(struct eth_device *edev, const unsigned char *mac);
 	void (*adjust_link)(struct eth_device *edev);
@@ -73,8 +71,6 @@ int eqos_reset(struct eqos *priv);
 
 int eqos_get_ethaddr(struct eth_device *edev, unsigned char *mac);
 int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac);
-int eqos_start(struct eth_device *edev);
-void eqos_stop(struct eth_device *edev);
 void eqos_adjust_link(struct eth_device *edev);
 
 #define eqos_dbg(eqos, ...) dev_dbg(&eqos->netdev.dev, __VA_ARGS__)
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index bb6781fb3450..4c682a5daca3 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -164,16 +164,6 @@ static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
 		dev_dbg(dev, "No phy clock provided. Continuing without.\n");
 	}
 
-	return 0;
-
-}
-
-static int eqos_start_stm32(struct eth_device *edev)
-{
-	struct eqos *eqos = edev->priv;
-	struct eqos_stm32 *priv = to_stm32(eqos);
-	int ret;
-
 	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret < 0) {
 		eqos_err(eqos, "clk_bulk_enable() failed: %s\n",
@@ -181,35 +171,13 @@ static int eqos_start_stm32(struct eth_device *edev)
 		return ret;
 	}
 
-	udelay(10);
-
-	ret = eqos_start(edev);
-	if (ret)
-		goto err_stop_clks;
-
 	return 0;
-
-err_stop_clks:
-	clk_bulk_disable(priv->num_clks, priv->clks);
-
-	return ret;
-}
-
-static void eqos_stop_stm32(struct eth_device *edev)
-{
-	struct eqos_stm32 *priv = to_stm32(edev->priv);
-
-	eqos_stop(edev);
-
-	clk_bulk_disable(priv->num_clks, priv->clks);
 }
 
 static struct eqos_ops stm32_ops = {
 	.init = eqos_init_stm32,
 	.get_ethaddr = eqos_get_ethaddr,
 	.set_ethaddr = eqos_set_ethaddr,
-	.start = eqos_start_stm32,
-	.stop = eqos_stop_stm32,
 	.adjust_link = eqos_adjust_link,
 	.get_csr_clk_rate = eqos_get_csr_clk_rate_stm32,
 
@@ -229,6 +197,7 @@ static void eqos_remove_stm32(struct device_d *dev)
 
 	eqos_remove(dev);
 
+	clk_bulk_disable(priv->num_clks, priv->clks);
 	clk_bulk_put(priv->num_clks, priv->clks);
 }
 
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 618ae113971d..20521db1c711 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -230,29 +230,16 @@ static int eqos_init_tegra186(struct device_d *dev, struct eqos *eqos)
 	priv->clks = xmemdup(tegra186_clks, sizeof(tegra186_clks));
 	priv->num_clks = ARRAY_SIZE(tegra186_clks);
 
-	return 0;
-
-release_res:
-	reset_control_put(priv->rst);
-	return ret;
-}
-
-static int eqos_start_tegra186(struct eth_device *edev)
-{
-	struct eqos *eqos = edev->priv;
-	struct eqos_tegra186 *priv = to_tegra186(eqos);
-	int ret;
-
 	ret = clk_bulk_enable(priv->num_clks, priv->clks);
 	if (ret < 0) {
 		eqos_err(eqos, "clk_bulk_enable() failed: %s\n", strerror(-ret));
-		return ret;
+		goto release_res;
 	}
 
 	ret = eqos_clks_set_rate_tegra186(priv);
 	if (ret < 0) {
 		eqos_err(eqos, "clks_set_rate() failed: %s\n", strerror(-ret));
-		goto err;
+		goto err_stop_clks;
 	}
 
 	eqos_reset_tegra186(priv, false);
@@ -261,32 +248,14 @@ static int eqos_start_tegra186(struct eth_device *edev)
 		goto err_stop_clks;
 	}
 
-	udelay(10);
-
-	ret = eqos_start(edev);
-	if (ret)
-		goto err_stop_resets;
-
 	return 0;
 
-err_stop_resets:
-	eqos_reset_tegra186(priv, true);
 err_stop_clks:
 	clk_bulk_disable(priv->num_clks, priv->clks);
-err:
-	return ret;
-}
-
-
-static void eqos_stop_tegra186(struct eth_device *edev)
-{
-	struct eqos_tegra186 *priv = to_tegra186(edev->priv);
-
-	eqos_stop(edev);
-
-	eqos_reset_tegra186(priv, true);
+release_res:
+	reset_control_put(priv->rst);
 
-	clk_bulk_disable(priv->num_clks, priv->clks);
+	return ret;
 }
 
 static void eqos_adjust_link_tegra186(struct eth_device *edev)
@@ -308,8 +277,6 @@ static const struct eqos_ops tegra186_ops = {
 	.init = eqos_init_tegra186,
 	.get_ethaddr = eqos_get_ethaddr,
 	.set_ethaddr = eqos_set_ethaddr_tegra186,
-	.start = eqos_start_tegra186,
-	.stop = eqos_stop_tegra186,
 	.adjust_link = eqos_adjust_link_tegra186,
 	.get_csr_clk_rate = eqos_get_csr_clk_rate_tegra186,
 
@@ -329,6 +296,10 @@ static void eqos_remove_tegra186(struct device_d *dev)
 
 	eqos_remove(dev);
 
+	eqos_reset_tegra186(priv, true);
+
+	clk_bulk_disable(priv->num_clks, priv->clks);
+
 	clk_bulk_put(priv->num_clks, priv->clks);
 
 	gpio_free(priv->phy_reset_gpio);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
