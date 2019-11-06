Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFU6-0002EB-Em
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:12:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:51 +0100
Message-Id: <20191106071155.26389-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-1-a.fatoum@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/10] mfd: stpmic1: use dev_get_regmap instead of priv member
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

When we call regmap_init, the regmap is associated with the device
supplied and can be queried with dev_get_regmap. This is more natural
than expecting cell drivers to cast dev->parent->priv. Do it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/stpmic1.c          | 1 -
 drivers/watchdog/stpmic1_wdt.c | 5 ++++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index 88c7921990fc..eae6fe3a4e05 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -69,7 +69,6 @@ static int __init stpmic1_probe(struct device_d *dev)
 	stpmic1->client = to_i2c_client(dev);
 	regmap = regmap_init(dev, &regmap_stpmic1_i2c_bus,
 			     stpmic1, &stpmic1_regmap_i2c_config);
-	dev->priv = regmap;
 
 	ret = regmap_register_cdev(regmap, NULL);
 	if (ret)
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index f79b7e8c2768..9b7a586387db 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -169,7 +169,10 @@ static int stpmic1_wdt_probe(struct device_d *dev)
 	int ret;
 
 	wdt = xzalloc(sizeof(*wdt));
-	wdt->regmap = dev->parent->priv;
+
+	wdt->regmap = dev_get_regmap(dev->parent, NULL);
+	if (IS_ERR(wdt->regmap))
+		return PTR_ERR(wdt->regmap);
 
 	wdd = &wdt->wdd;
 	wdd->hwdev = dev;
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
