Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003ah-7q
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:23 +0200
Message-Id: <20180412072231.31207-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] mfd: da9063: reset watchdog timer
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Setting the new timeout does not suffice for restarting the watchdog;
the self-clearing bit in CONTROL_F must be set too.

barebox does not provide a ping function in its watchdog api to restart
the watchdog timer.  Detect ping vs. set_timeout() by comparing the
actual with the previous timeout value.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 36 ++++++++++++++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index ac303611c0..74ad5bfdab 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -28,8 +28,13 @@ struct da9063 {
 	struct watchdog		wd;
 	struct i2c_client	*client;
 	struct device_d		*dev;
+	unsigned int		timeout;
 };
 
+/* forbidden/impossible value; timeout will be set to this value initially to
+ * detect ping vs. set_timeout() operations. */
+#define DA9063_INITIAL_TIMEOUT	(~0u)
+
 /* System Control and Event Registers */
 #define DA9063_REG_FAULT_LOG	0x05
 #define DA9063_REG_CONTROL_D	0x11
@@ -44,8 +49,25 @@ struct da9063 {
 #define DA9063_TWDSCALE_MASK	0x07
 
 /* DA9063_REG_CONTROL_F (addr=0x13) */
+#define DA9063_WATCHDOG		0x01
 #define DA9063_SHUTDOWN		0x02
 
+static int da9063_watchdog_ping(struct da9063 *priv)
+{
+	int ret;
+	u8 val;
+
+	dev_dbg(priv->dev, "ping\n");
+
+	/* reset watchdog timer; register is self clearing */
+	val = DA9063_WATCHDOG;
+	ret = i2c_write_reg(priv->client, DA9063_REG_CONTROL_F, &val, 1);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct da9063 *priv = container_of(wd, struct da9063, wd);
@@ -57,8 +79,14 @@ static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	if (timeout > 131)
 		return -EINVAL;
 
+	timeout *= 1000; /* convert to ms */
+
+	if (timeout == priv->timeout)
+		/* set_timeout called with previous parameter; just ping the
+		 * watchdog */
+		goto out;
+
 	if (timeout) {
-		timeout *= 1000; /* convert to ms */
 		scale = 0;
 		while (timeout > (2048 << scale) && scale <= 6)
 			scale++;
@@ -78,7 +106,10 @@ static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	if (ret < 0)
 		return ret;
 
-	return 0;
+	priv->timeout = timeout;
+
+out:
+	return da9063_watchdog_ping(priv);
 }
 
 static void da9063_detect_reset_source(struct da9063 *priv)
@@ -127,6 +158,7 @@ static int da9063_probe(struct device_d *dev)
 	priv->wd.priority = of_get_watchdog_priority(dev->device_node);
 	priv->wd.set_timeout = da9063_watchdog_set_timeout;
 	priv->wd.hwdev = dev;
+	priv->timeout = DA9063_INITIAL_TIMEOUT;
 	priv->client = to_i2c_client(dev);
 	priv->dev = dev;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
