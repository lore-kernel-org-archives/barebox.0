Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT3Bc-0003Xq-D4
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 13:20:53 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 15 Oct 2020 15:20:47 +0200
Message-Id: <20201015132048.420995-2-m.tretter@pengutronix.de>
In-Reply-To: <20201015132048.420995-1-m.tretter@pengutronix.de>
References: <20201015132048.420995-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 2/3] net: macb: adjust clk_tx rate for link speed changes
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Changes of the link speed might require an adjustment of the clk_tx.

Read the clk_tx from the device tree and change the rate if the link
speed changes.

If the clk_tx rate is already correct, changing the clock is not
required and, thus, not being able to get the clock rate is not fatal.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/macb.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 09b58ffd017f..fa530cfe8e4c 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -258,9 +258,38 @@ static int macb_recv(struct eth_device *edev)
 	return 0;
 }
 
+static int macb_set_tx_clk(struct macb_device *macb, int speed)
+{
+	int rate;
+	int rate_rounded;
+
+	if (!macb->txclk) {
+		dev_dbg(macb->dev, "txclk not available\n");
+		return 0;
+	}
+
+	switch (speed) {
+	case SPEED_100:
+		rate = 25000000;
+		break;
+	case SPEED_1000:
+		rate = 125000000;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	rate_rounded = clk_round_rate(macb->txclk, rate);
+	if (rate_rounded <= 0)
+		return -EINVAL;
+
+	return clk_set_rate(macb->txclk, rate_rounded);
+}
+
 static void macb_adjust_link(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
+	int err;
 	u32 reg;
 
 	reg = macb_readl(macb, NCFGR);
@@ -276,6 +305,10 @@ static void macb_adjust_link(struct eth_device *edev)
 		reg |= GEM_BIT(GBE);
 
 	macb_or_gem_writel(macb, NCFGR, reg);
+
+	err = macb_set_tx_clk(macb, edev->phydev->speed);
+	if (err)
+		dev_warn(macb->dev, "cannot set txclk\n");
 }
 
 static int macb_open(struct eth_device *edev)
@@ -724,6 +757,8 @@ static int macb_probe(struct device_d *dev)
 	macb->txclk = clk_get(dev, "tx_clk");
 	if (!IS_ERR(macb->txclk))
 		clk_enable(macb->txclk);
+	else
+		macb->txclk = NULL;
 
 	macb->rxclk = clk_get(dev, "rx_clk");
 	if (!IS_ERR(macb->rxclk))
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
