Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ifE-0004NW-NJ
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:07 +0100
Message-Id: <20200220100109.18147-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200220100109.18147-1-a.fatoum@pengutronix.de>
References: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/6] phy: remove unused init_data parameter
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

Linux has since migrated to a new lookup API that lacks the init_data
parameter. As it's unused in barebox, follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 drivers/phy/phy-core.c                     | 5 +----
 drivers/phy/usb-nop-xceiv.c                | 2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c       | 4 ++--
 drivers/usb/imx/imx-usb-phy.c              | 2 +-
 include/linux/phy/phy.h                    | 8 ++------
 6 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 1aef2b300448..6d60eacd7ff9 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -106,7 +106,7 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
 	if (IS_ERR(imx_phy->base))
 		return PTR_ERR(imx_phy->base);
 
-	imx_phy->phy = phy_create(dev, NULL, &imx8mq_usb_phy_ops, NULL);
+	imx_phy->phy = phy_create(dev, NULL, &imx8mq_usb_phy_ops);
 	if (IS_ERR(imx_phy->phy))
 		return PTR_ERR(imx_phy->phy);
 
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 066a887a2226..d1f3c7fde4a2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -25,13 +25,11 @@ static int phy_ida;
  * @dev: device that is creating the new phy
  * @node: device node of the phy
  * @ops: function pointers for performing phy operations
- * @init_data: contains the list of PHY consumers or NULL
  *
  * Called to create a phy using phy framework.
  */
 struct phy *phy_create(struct device_d *dev, struct device_node *node,
-		       const struct phy_ops *ops,
-		       struct phy_init_data *init_data)
+		       const struct phy_ops *ops)
 {
 	int ret;
 	int id;
@@ -52,7 +50,6 @@ struct phy *phy_create(struct device_d *dev, struct device_node *node,
 	phy->dev.device_node = node ?: dev->device_node;
 	phy->id = id;
 	phy->ops = ops;
-	phy->init_data = init_data;
 
 	ret = register_device(&phy->dev);
 	if (ret)
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index b124e6c0c48a..a9031fa7f8a8 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -107,7 +107,7 @@ static int nop_usbphy_probe(struct device_d *dev)
 	/* FIXME: Add vbus-detect-gpio support */
 
 	nopphy->usb_phy.dev = dev;
-	nopphy->phy = phy_create(dev, NULL, &nop_phy_ops, NULL);
+	nopphy->phy = phy_create(dev, NULL, &nop_phy_ops);
 	if (IS_ERR(nopphy->phy)) {
 		ret = PTR_ERR(nopphy->phy);
 		goto release_gpio;
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index e477280e62c3..c4d3bbe8d429 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -415,7 +415,7 @@ static int pinctrl_tegra_xusb_probe(struct device_d *dev)
 		goto reset;
 	}
 
-	phy = phy_create(dev, NULL, &pcie_phy_ops, NULL);
+	phy = phy_create(dev, NULL, &pcie_phy_ops);
 	if (IS_ERR(phy)) {
 		err = PTR_ERR(phy);
 		goto unregister;
@@ -424,7 +424,7 @@ static int pinctrl_tegra_xusb_probe(struct device_d *dev)
 	padctl->phys[TEGRA_XUSB_PADCTL_PCIE] = phy;
 	phy_set_drvdata(phy, padctl);
 
-	phy = phy_create(dev, NULL, &sata_phy_ops, NULL);
+	phy = phy_create(dev, NULL, &sata_phy_ops);
 	if (IS_ERR(phy)) {
 		err = PTR_ERR(phy);
 		goto unregister;
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index d4562285c068..069dddcacbc7 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -174,7 +174,7 @@ static int imx_usbphy_probe(struct device_d *dev)
 	imxphy->usb_phy.dev = dev;
 	imxphy->usb_phy.notify_connect = imx_usbphy_notify_connect;
 	imxphy->usb_phy.notify_disconnect = imx_usbphy_notify_disconnect;
-	imxphy->phy = phy_create(dev, NULL, &imx_phy_ops, NULL);
+	imxphy->phy = phy_create(dev, NULL, &imx_phy_ops);
 	if (IS_ERR(imxphy->phy)) {
 		ret = PTR_ERR(imxphy->phy);
 		goto err_clk;
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 5d96e02df4fd..df480d4634ac 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -49,7 +49,6 @@ struct phy_attrs {
  * @dev: phy device
  * @id: id of the phy device
  * @ops: function pointers for performing phy operations
- * @init_data: list of PHY consumers (non-dt only)
  * @mutex: mutex to protect phy_ops
  * @init_count: used to protect when the PHY is used by multiple consumers
  * @power_count: used to protect when the PHY is used by multiple consumers
@@ -59,7 +58,6 @@ struct phy {
 	struct device_d		dev;
 	int			id;
 	const struct phy_ops	*ops;
-	struct phy_init_data	*init_data;
 	int			init_count;
 	int			power_count;
 	struct phy_attrs	attrs;
@@ -144,8 +142,7 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id);
 struct phy *of_phy_simple_xlate(struct device_d *dev,
 	struct of_phandle_args *args);
 struct phy *phy_create(struct device_d *dev, struct device_node *node,
-		       const struct phy_ops *ops,
-		       struct phy_init_data *init_data);
+		       const struct phy_ops *ops);
 void phy_destroy(struct phy *phy);
 struct phy_provider *__of_phy_provider_register(struct device_d *dev,
 	struct phy * (*of_xlate)(struct device_d *dev,
@@ -225,8 +222,7 @@ static inline struct phy *of_phy_simple_xlate(struct device_d *dev,
 
 static inline struct phy *phy_create(struct device_d *dev,
 				     struct device_node *node,
-				     const struct phy_ops *ops,
-				     struct phy_init_data *init_data)
+				     const struct phy_ops *ops)
 {
 	return ERR_PTR(-ENOSYS);
 }
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
