Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6WMW-0005G5-RF
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:09:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:09:27 +0200
Message-Id: <20180412070927.6374-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mfd: da9063: Fix compilation
To: Barebox List <barebox@lists.infradead.org>

Fixes: 1ef7cd07a3 watchdog: rename dev to hwdev

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/da9063.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 4a335c9983..ac303611c0 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -126,7 +126,7 @@ static int da9063_probe(struct device_d *dev)
 	priv = xzalloc(sizeof(struct da9063));
 	priv->wd.priority = of_get_watchdog_priority(dev->device_node);
 	priv->wd.set_timeout = da9063_watchdog_set_timeout;
-	priv->wd.dev = dev;
+	priv->wd.hwdev = dev;
 	priv->client = to_i2c_client(dev);
 	priv->dev = dev;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
