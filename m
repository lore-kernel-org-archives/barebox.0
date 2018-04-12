Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003af-8C
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:27 +0200
Message-Id: <20180412072231.31207-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] mfd: da9063: added of_device_id information
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index a1c748610a..00a61279f3 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -27,6 +27,8 @@ struct da9063 {
 	struct restart_handler	restart;
 	struct watchdog		wd;
 	struct i2c_client	*client;
+	/* dummy client for accessing bank #1 */
+	struct i2c_client	*client1;
 	struct device_d		*dev;
 	unsigned int		timeout;
 };
@@ -40,6 +42,9 @@ struct da9063 {
 #define DA9063_REG_CONTROL_D	0x11
 #define DA9063_REG_CONTROL_F	0x13
 
+/* bank1: control register I */
+#define DA9063_REG1_CONFIG_I	0x10e
+
 /* DA9063_REG_FAULT_LOG (addr=0x05) */
 #define DA9063_TWD_ERROR	0x01
 #define DA9063_POR		0x02
@@ -52,6 +57,9 @@ struct da9063 {
 #define DA9063_WATCHDOG		0x01
 #define DA9063_SHUTDOWN		0x02
 
+/* DA9063_REG_CONTROL_I (addr=0x10e) */
+#define DA9062_WATCHDOG_SD	BIT(3)
+
 struct da906x_device_data {
 	int	(*init)(struct da9063 *priv);
 };
@@ -65,6 +73,8 @@ static int da906x_reg_update(struct da9063 *priv, unsigned int reg,
 
 	if (reg < 0x100)
 		client = priv->client;
+	else if (reg < 0x200)
+		client = priv->client1;
 	else
 		/* this should/can not happen because function is usually
 		 * called with a static register number; warn about it
@@ -183,6 +193,30 @@ static void da9063_restart(struct restart_handler *rst)
 	i2c_write_reg(priv->client, DA9063_REG_CONTROL_F, &val, 1);
 }
 
+static int da9062_device_init(struct da9063 *priv)
+{
+	int ret;
+
+	priv->client1 = i2c_new_dummy(priv->client->adapter,
+				      priv->client->addr + 1);
+	if (!priv) {
+		dev_warn(priv->dev, "failed to create bank 1 device\n");
+		/* TODO: return -EINVAL; i2c api does not return more
+		 * details */
+		return -EINVAL;
+	}
+
+	/* clear CONFIG_I[WATCHDOG_SD] */
+	ret = da906x_reg_update(priv, DA9063_REG1_CONFIG_I,
+				DA9062_WATCHDOG_SD, DA9062_WATCHDOG_SD);
+
+	return ret;
+}
+
+static struct da906x_device_data const	da9062_device_data = {
+	.init	= da9062_device_init,
+};
+
 static int da9063_probe(struct device_d *dev)
 {
 	struct da9063 *priv = NULL;
@@ -229,13 +263,26 @@ on_error:
 
 static struct platform_device_id da9063_id[] = {
 	{ "da9063", (uintptr_t)(NULL) },
+	{ "da9062", (uintptr_t)(&da9062_device_data) },
 	{ }
 };
 
+static struct of_device_id const	da906x_dt_ids[] = {
+	{
+		.compatible	= "dlg,da9063",
+		.data		= NULL,
+	}, {
+		.compatible	= "dlg,da9062",
+		.data		= &da9062_device_data,
+	}, {
+	}
+};
+
 static struct driver_d da9063_driver = {
 	.name = "da9063",
 	.probe = da9063_probe,
 	.id_table = da9063_id,
+	.of_compatible  = DRV_OF_COMPAT(da906x_dt_ids),
 };
 
 static int da9063_init(void)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
