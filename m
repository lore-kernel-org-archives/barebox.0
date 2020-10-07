Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ66A-0005mv-P0
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 09:51:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Oct 2020 11:50:58 +0200
Message-Id: <20201007095058.22950-7-a.fatoum@pengutronix.de>
In-Reply-To: <20201007095058.22950-1-a.fatoum@pengutronix.de>
References: <20201007095058.22950-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 7/7] driver: migrate some from dev_get_drvdata to
 device_get_match_data
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The dev_get_drvdata instances here all store a valid pointer in the
match data and can be readily converted. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/da9063.c                 | 4 +---
 drivers/pinctrl/imx-iomux-v3.c       | 4 ++--
 drivers/pinctrl/pinctrl-at91-pio4.c  | 4 ++--
 drivers/pinctrl/pinctrl-tegra-xusb.c | 2 +-
 drivers/pinctrl/pinctrl-tegra30.c    | 4 ++--
 drivers/serial/serial_ns16550.c      | 6 ++----
 6 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index e48c38affac6..31359cf8b822 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -370,11 +370,9 @@ static int da9063_probe(struct device_d *dev)
 {
 	struct da9063 *priv = NULL;
 	struct da906x_device_data const *dev_data;
-	void const *dev_data_tmp;
 	int ret;
 
-	ret = dev_get_drvdata(dev, &dev_data_tmp);
-	dev_data = ret < 0 ? NULL : dev_data_tmp;
+	dev_data = device_get_match_data(dev);
 
 	priv = xzalloc(sizeof(struct da9063));
 	priv->wd.set_timeout = da9063_watchdog_set_timeout;
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index dc98d674a04b..cec2414a03e2 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -168,10 +168,10 @@ static struct pinctrl_ops imx_iomux_v3_ops = {
 static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 {
 	struct imx_iomux_v3 *iomux;
-	struct imx_iomux_v3_data *drvdata = NULL;
+	const struct imx_iomux_v3_data *drvdata;
 	int ret;
 
-	dev_get_drvdata(dev, (const void **)&drvdata);
+	drvdata = device_get_match_data(dev);
 	iomux = xzalloc(sizeof(*iomux));
 
 	iomux->base = base;
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 550e953a7081..40bc573e315b 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -229,7 +229,7 @@ static struct gpio_ops at91_gpio4_ops = {
 static int pinctrl_at91_pio4_gpiochip_add(struct device_d *dev,
 					  struct pinctrl_at91_pio4 *pinctrl)
 {
-	struct at91_pinctrl_data *drvdata;
+	const struct at91_pinctrl_data *drvdata;
 	struct clk *clk;
 	int ret;
 
@@ -247,7 +247,7 @@ static int pinctrl_at91_pio4_gpiochip_add(struct device_d *dev,
 		return ret;
 	}
 
-	dev_get_drvdata(dev, (const void **)&drvdata);
+	drvdata = device_get_match_data(dev);
 
 	pinctrl->gpiochip.ops = &at91_gpio4_ops;
 	pinctrl->gpiochip.base = 0;
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index 6bd884b7e2d9..37d77e5ef663 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -388,7 +388,7 @@ static int pinctrl_tegra_xusb_probe(struct device_d *dev)
 	dev->priv = padctl;
 	padctl->dev = dev;
 
-	dev_get_drvdata(dev, (const void **)&padctl->soc);
+	padctl->soc = device_get_match_data(dev);
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores)) {
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 225a65233e7f..e9f35e0c9df4 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -32,7 +32,7 @@ struct pinctrl_tegra30 {
 		u32 __iomem *mux;
 	} regs;
 	struct pinctrl_device pinctrl;
-	struct pinctrl_tegra30_drvdata *drvdata;
+	const struct pinctrl_tegra30_drvdata *drvdata;
 };
 
 struct tegra_pingroup {
@@ -893,7 +893,7 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 		regs[i] = IOMEM(iores->start);
 	}
 
-	dev_get_drvdata(dev, (const void **)&ctrl->drvdata);
+	ctrl->drvdata = device_get_match_data(dev);
 
 	ctrl->pinctrl.dev = dev;
 	ctrl->pinctrl.ops = &pinctrl_tegra30_ops;
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f117ab9dc10a..fc6fa7dc3e43 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -468,12 +468,10 @@ static int ns16550_probe(struct device_d *dev)
 	struct ns16550_priv *priv;
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	struct ns16550_drvdata *devtype;
+	const struct ns16550_drvdata *devtype;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		devtype = &ns16550_drvdata;
+	devtype = device_get_match_data(dev) ?: &ns16550_drvdata;
 
 	priv = xzalloc(sizeof(*priv));
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
