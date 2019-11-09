Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRkM-0007FM-BJ
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:29:51 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id A98ECE7424E
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:42 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:26 +0100
Message-Id: <20191109142837.82409-7-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 07/18] net: macb: handle more clocks
To: barebox@lists.infradead.org

Both pclk and hclk are required clocks in the DT binding.
rx_clk and tx_clk are optional, but must be enabled if a system
has separate gates for them.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/macb.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index c4ab9efb639c..df1e606454b1 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -69,7 +69,7 @@ struct macb_device {
 
 	int			phy_addr;
 
-	struct clk		*pclk;
+	struct clk		*pclk, *hclk, *txclk, *rxclk;
 	const struct device_d	*dev;
 	struct eth_device	netdev;
 
@@ -653,7 +653,7 @@ static int macb_probe(struct device_d *dev)
 	struct resource *iores;
 	struct eth_device *edev;
 	struct macb_device *macb;
-	const char *pclk_name;
+	const char *pclk_name, *hclk_name;
 	u32 ncfgr;
 
 	macb = xzalloc(sizeof(*macb));
@@ -689,6 +689,7 @@ static int macb_probe(struct device_d *dev)
 		macb->phy_addr = pdata->phy_addr;
 		macb->phy_flags = pdata->phy_flags;
 		pclk_name = "macb_clk";
+		hclk_name = NULL;
 	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
 		int ret;
 		struct device_node *mdiobus;
@@ -705,6 +706,7 @@ static int macb_probe(struct device_d *dev)
 
 		macb->phy_addr = -1;
 		pclk_name = "pclk";
+		hclk_name = "hclk";
 	} else {
 		dev_err(dev, "macb: no platform_data\n");
 		return -ENODEV;
@@ -727,6 +729,24 @@ static int macb_probe(struct device_d *dev)
 
 	clk_enable(macb->pclk);
 
+	if (hclk_name) {
+		macb->hclk = clk_get(dev, pclk_name);
+		if (IS_ERR(macb->pclk)) {
+			dev_err(dev, "no hclk\n");
+			return PTR_ERR(macb->hclk);
+		}
+
+		clk_enable(macb->hclk);
+	}
+
+	macb->txclk = clk_get(dev, "tx_clk");
+	if (!IS_ERR(macb->txclk))
+		clk_enable(macb->txclk);
+
+	macb->rxclk = clk_get(dev, "rx_clk");
+	if (!IS_ERR(macb->rxclk))
+		clk_enable(macb->rxclk);
+
 	macb->is_gem = read_is_gem(macb);
 
 	if (macb_is_gem(macb))
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
