Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003ag-8B
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:24 +0200
Message-Id: <20180412072231.31207-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] mfd: da9063: added generic reg_update() function
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Used to set or clear bits of a register.

The calculation of 'client' might look odd and unnecessary complicated.
But style prepares access to other register banks which is added in
following patches.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 74ad5bfdab..68b0723b61 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -52,6 +52,43 @@ struct da9063 {
 #define DA9063_WATCHDOG		0x01
 #define DA9063_SHUTDOWN		0x02
 
+static int da906x_reg_update(struct da9063 *priv, unsigned int reg,
+			     uint8_t mask, uint8_t val)
+{
+	struct i2c_client *client;
+	uint8_t tmp;
+	int ret;
+
+	if (reg < 0x100)
+		client = priv->client;
+	else
+		/* this should/can not happen because function is usually
+		 * called with a static register number; warn about it
+		 * below */
+		client = NULL;
+
+	if (WARN_ON(!client))
+		return -EINVAL;
+
+	ret = i2c_read_reg(client, reg & 0xffu, &tmp, 1);
+	if (ret < 0) {
+		dev_warn(priv->dev, "failed to read reg %02x\n", reg);
+		return ret;
+	}
+
+	tmp &= ~mask;
+	tmp |= val;
+
+	ret = i2c_write_reg(client, reg & 0xffu, &tmp, 1);
+	if (ret < 0) {
+		dev_warn(priv->dev, "failed to write %02x into reg %02x\n",
+			 tmp, reg);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int da9063_watchdog_ping(struct da9063 *priv)
 {
 	int ret;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
