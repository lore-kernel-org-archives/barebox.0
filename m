Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward8l.mail.yandex.net ([84.201.143.141])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeh-0007gB-JS
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:32 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:38 +0300
Message-Id: <1425499906-32125-11-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 10/18] NET: arc_emac: Update for newer DTS,
 support for Rockchip .compatible
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/net/arc_emac.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 1770506..06c3376 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -23,6 +23,7 @@
 #include <io.h>
 #include <init.h>
 #include <linux/err.h>
+#include <linux/clk.h>
 
 /* ARC EMAC register set combines entries for MAC and MDIO */
 enum {
@@ -99,6 +100,8 @@ struct arc_emac_priv {
 	u8 *rxbuf;
 	unsigned int txbd_curr;
 	unsigned int last_rx_bd;
+	struct clk *clk;
+	struct clk *refclk;
 };
 
 /**
@@ -379,20 +382,18 @@ static int arc_emac_mdio_write(struct mii_bus *bus, int phy_addr, int reg_num,
 	return arc_mdio_complete_wait(priv);
 }
 
+#define DEFAULT_EMAC_CLOCK_FREQUENCY 50000000UL;
+
 static int arc_emac_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
 	struct arc_emac_priv *priv;
-	unsigned int clock_frequency;
+	unsigned long clock_frequency;
 	struct mii_bus *miibus;
 	u32 id;
 
-	/* Get CPU clock frequency from device tree */
-	if (of_property_read_u32(dev->device_node, "clock-frequency",
-				 &clock_frequency)) {
-		dev_err(dev, "failed to retrieve <clock-frequency> from device tree\n");
-		return -EINVAL;
-	}
+	/* clock-frequency is dropped from DTS, so hardcode it here */
+	clock_frequency = DEFAULT_EMAC_CLOCK_FREQUENCY;
 
 	edev = xzalloc(sizeof(struct eth_device) +
 		       sizeof(struct arc_emac_priv));
@@ -405,6 +406,13 @@ static int arc_emac_probe(struct device_d *dev)
 		return PTR_ERR(priv->regs);
 	priv->bus = miibus;
 
+	priv->clk = clk_get(dev, "hclk");
+	clk_enable(priv->clk);
+
+	priv->refclk = clk_get(dev, "macref");
+	clk_set_rate(priv->refclk, clock_frequency);
+	clk_enable(priv->refclk);
+
 	id = arc_reg_get(priv, R_ID);
 	/* Check for EMAC revision 5 or 7, magic number */
 	if (!(id == 0x0005fd02 || id == 0x0007fd02)) {
@@ -450,6 +458,8 @@ static __maybe_unused struct of_device_id arc_emac_dt_ids[] = {
 	{
 		.compatible = "snps,arc-emac",
 	}, {
+		.compatible = "rockchip,rk3188-emac",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
