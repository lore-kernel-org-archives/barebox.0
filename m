Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003ai-87
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:26 +0200
Message-Id: <20180412072231.31207-5-s.hauer@pengutronix.de>
In-Reply-To: <20180412072231.31207-1-s.hauer@pengutronix.de>
References: <20180412072231.31207-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] mfd: da9063: add device specific init function
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Provide some more information about the used PMIC type; later patches
will add support for DA9062 which needs a custom init function.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 4f09bd384e..a1c748610a 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -52,6 +52,10 @@ struct da9063 {
 #define DA9063_WATCHDOG		0x01
 #define DA9063_SHUTDOWN		0x02
 
+struct da906x_device_data {
+	int	(*init)(struct da9063 *priv);
+};
+
 static int da906x_reg_update(struct da9063 *priv, unsigned int reg,
 			     uint8_t mask, uint8_t val)
 {
@@ -182,8 +186,13 @@ static void da9063_restart(struct restart_handler *rst)
 static int da9063_probe(struct device_d *dev)
 {
 	struct da9063 *priv = NULL;
+	struct da906x_device_data const *dev_data;
+	void const *dev_data_tmp;
 	int ret;
 
+	ret = dev_get_drvdata(dev, &dev_data_tmp);
+	dev_data = ret < 0 ? NULL : dev_data_tmp;
+
 	priv = xzalloc(sizeof(struct da9063));
 	priv->wd.priority = of_get_watchdog_priority(dev->device_node);
 	priv->wd.set_timeout = da9063_watchdog_set_timeout;
@@ -192,6 +201,12 @@ static int da9063_probe(struct device_d *dev)
 	priv->client = to_i2c_client(dev);
 	priv->dev = dev;
 
+	if (dev_data && dev_data->init) {
+		ret = dev_data->init(priv);
+		if (ret < 0)
+			goto on_error;
+	}
+
 	ret = watchdog_register(&priv->wd);
 	if (ret)
 		goto on_error;
@@ -213,7 +228,7 @@ on_error:
 }
 
 static struct platform_device_id da9063_id[] = {
-        { "da9063", },
+	{ "da9063", (uintptr_t)(NULL) },
 	{ }
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
