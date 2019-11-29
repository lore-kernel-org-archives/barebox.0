Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzA-0006np-8h
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-RA
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:42 +0100
Message-Id: <20191129151505.23946-17-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 16/39] mfd: da9063: don't try to register gpiochip when
 GPIOLIB isn't built
To: barebox@lists.infradead.org

Fixes: feee4b638048 (gpio: add DA9062 MFD gpio support)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/da9063.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index e1343bac7618..967ca9ac51e4 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -402,13 +402,15 @@ static int da9063_probe(struct device_d *dev)
 
 	restart_handler_register(&priv->restart);
 
-	priv->gpio.base = -1;
-	priv->gpio.ngpio = 5;
-	priv->gpio.ops  = &da9063_gpio_ops;
-	priv->gpio.dev = dev;
-	ret = gpiochip_add(&priv->gpio);
-	if (ret)
-		goto on_error;
+	if (IS_ENABLED(CONFIG_GPIOLIB)) {
+		priv->gpio.base = -1;
+		priv->gpio.ngpio = 5;
+		priv->gpio.ops  = &da9063_gpio_ops;
+		priv->gpio.dev = dev;
+		ret = gpiochip_add(&priv->gpio);
+		if (ret)
+			goto on_error;
+	}
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
 		return of_platform_populate(dev->device_node, NULL, dev);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
