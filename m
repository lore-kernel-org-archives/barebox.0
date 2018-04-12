Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003ak-89
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:28 +0200
Message-Id: <20180412072231.31207-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] mfd: da9063: read out and report device id
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

just some kind of debugging atm...

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 00a61279f3..0c27bf495f 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -45,6 +45,8 @@ struct da9063 {
 /* bank1: control register I */
 #define DA9063_REG1_CONFIG_I	0x10e
 
+#define DA9062AA_DEVICE_ID	0x181
+
 /* DA9063_REG_FAULT_LOG (addr=0x05) */
 #define DA9063_TWD_ERROR	0x01
 #define DA9063_POR		0x02
@@ -196,6 +198,7 @@ static void da9063_restart(struct restart_handler *rst)
 static int da9062_device_init(struct da9063 *priv)
 {
 	int ret;
+	uint8_t id[4];
 
 	priv->client1 = i2c_new_dummy(priv->client->adapter,
 				      priv->client->addr + 1);
@@ -206,6 +209,16 @@ static int da9062_device_init(struct da9063 *priv)
 		return -EINVAL;
 	}
 
+	ret = i2c_read_reg(priv->client1, DA9062AA_DEVICE_ID & 0xffu,
+			   id, sizeof id);
+	if (ret < 0) {
+		dev_warn(priv->dev, "failed to read ID: %d\n", ret);
+		return ret;
+	}
+
+	dev_info(priv->dev, "da9062 with id %02x.%02x.%02x.%02x detected\n",
+		 id[0], id[1], id[2], id[3]);
+
 	/* clear CONFIG_I[WATCHDOG_SD] */
 	ret = da906x_reg_update(priv, DA9063_REG1_CONFIG_I,
 				DA9062_WATCHDOG_SD, DA9062_WATCHDOG_SD);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
