Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WZA-0003am-7y
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:22:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:22:25 +0200
Message-Id: <20180412072231.31207-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] mfd: da9063: use da906x_reg_update()
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Use the previously added da906x_reg_update() function.

NOTE: patch depends on another patchset ("da9063: reset watchdog
timer"),

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Tested-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mfd/da9063.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 68b0723b61..4f09bd384e 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -111,7 +111,6 @@ static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	struct device_d *dev = priv->dev;
 	unsigned int scale = 0;
 	int ret;
-	u8 val;
 
 	if (timeout > 131)
 		return -EINVAL;
@@ -132,14 +131,8 @@ static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 		scale++; /* scale 0 disables the WD */
 	}
 
-	ret = i2c_read_reg(priv->client, DA9063_REG_CONTROL_D, &val, 1);
-	if (ret < 0)
-		return ret;
-
-	val &= ~DA9063_TWDSCALE_MASK;
-	val |= scale;
-
-	ret = i2c_write_reg(priv->client, DA9063_REG_CONTROL_D, &val, 1);
+	ret = da906x_reg_update(priv, DA9063_REG_CONTROL_D,
+				DA9063_TWDSCALE_MASK, scale);
 	if (ret < 0)
 		return ret;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
