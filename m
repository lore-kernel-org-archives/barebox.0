Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkO1T-0004am-7i
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 07:25:16 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  8 Jul 2019 09:25:10 +0200
Message-Id: <20190708072510.4169-2-o.rempel@pengutronix.de>
In-Reply-To: <20190708072510.4169-1-o.rempel@pengutronix.de>
References: <20190708072510.4169-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec_imx: add regulator support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

at least imx28-evk need it to work with devicetree

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 20 ++++++++++++++++++++
 drivers/net/fec_imx.h |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 38a29fc83e..10422d2e2d 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -19,6 +19,7 @@
 #include <linux/err.h>
 #include <of_net.h>
 #include <of_gpio.h>
+#include <regulator.h>
 #include <gpio.h>
 #include <linux/iopoll.h>
 
@@ -776,6 +777,22 @@ static int fec_probe(struct device_d *dev)
 	}
 	fec->regs = IOMEM(iores->start);
 
+	fec->reg_phy = regulator_get(dev, "phy");
+	if (!IS_ERR(fec->reg_phy)) {
+		ret = regulator_enable(fec->reg_phy);
+		if (ret) {
+			dev_err(dev,
+				"Failed to enable phy regulator: %d\n", ret);
+			goto disable_clk;
+		}
+	} else {
+		if (PTR_ERR(fec->reg_phy) == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
+			goto disable_clk;
+		}
+		fec->reg_phy = NULL;
+	}
+
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
 		of_property_read_u32(dev->device_node, "phy-reset-duration", &msec);
@@ -868,6 +885,9 @@ free_gpio:
 	if (gpio_is_valid(phy_reset))
 		gpio_free(phy_reset);
 release_res:
+	if (fec->reg_phy)
+		regulator_disable(fec->reg_phy);
+
 	release_region(iores);
 disable_clk:
 	fec_clk_disable(fec);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 1a1fbc9872..d1ac92f0e3 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -152,6 +152,7 @@ struct fec_priv {
 	struct clk *clk[FEC_CLK_NUM];
 	struct clk *opt_clk[FEC_OPT_CLK_NUM];
 	enum fec_type type;
+	struct regulator *reg_phy;
 };
 
 static inline int fec_is_imx27(struct fec_priv *priv)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
