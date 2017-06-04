Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dHLy3-0000LU-H5
 for barebox@lists.infradead.org; Sun, 04 Jun 2017 03:12:42 +0000
Received: by mail-pg0-x242.google.com with SMTP id f127so5970784pgc.2
 for <barebox@lists.infradead.org>; Sat, 03 Jun 2017 20:12:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  3 Jun 2017 20:11:54 -0700
Message-Id: <20170604031154.26663-5-andrew.smirnov@gmail.com>
In-Reply-To: <20170604031154.26663-1-andrew.smirnov@gmail.com>
References: <20170604031154.26663-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 4/4] usb-nop-xceiv: Add support for 'reset-gpios' binding
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/phy/usb-nop-xceiv.c | 45 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index d403fe4..b124e6c 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -22,12 +22,15 @@
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <gpio.h>
+#include <of_gpio.h>
 
 struct nop_usbphy {
 	struct usb_phy usb_phy;
 	struct phy *phy;
 	struct phy_provider *provider;
 	struct clk *clk;
+	int reset;
 };
 
 static struct phy *nop_usbphy_xlate(struct device_d *dev,
@@ -40,9 +43,22 @@ static struct phy *nop_usbphy_xlate(struct device_d *dev,
 
 static int nop_usbphy_init(struct phy *phy)
 {
+	int ret;
 	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
 
-	return clk_enable(nopphy->clk);
+	ret = clk_enable(nopphy->clk);
+	if (ret < 0)
+		return ret;
+
+	if (gpio_is_valid(nopphy->reset)) {
+		/*
+		 * Let's wait for 100 ms before deasserting reset line
+		 */
+		mdelay(100);
+		gpio_set_active(nopphy->reset, false);
+	}
+
+	return 0;
 }
 
 static struct usb_phy *nop_usbphy_to_usbphy(struct phy *phy)
@@ -61,6 +77,9 @@ static int nop_usbphy_probe(struct device_d *dev)
 {
 	int ret;
 	struct nop_usbphy *nopphy;
+	enum of_gpio_flags of_flags;
+	char *name = NULL;
+	unsigned long flags = GPIOF_OUT_INIT_ACTIVE;
 
 	nopphy = xzalloc(sizeof(*nopphy));
 
@@ -70,6 +89,20 @@ static int nop_usbphy_probe(struct device_d *dev)
 	if (IS_ERR(nopphy->clk))
 		nopphy->clk = NULL;
 
+	nopphy->reset = of_get_named_gpio_flags(dev->device_node,
+						"reset-gpios", 0, &of_flags);
+	if (gpio_is_valid(nopphy->reset)) {
+		/* assert reset */
+
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		name = basprintf("%s reset", dev_name(dev));
+		ret  = gpio_request_one(nopphy->reset, flags, name);
+		if (ret < 0)
+			goto err_free;
+	}
+
 	/* FIXME: Add vbus regulator support */
 	/* FIXME: Add vbus-detect-gpio support */
 
@@ -77,7 +110,7 @@ static int nop_usbphy_probe(struct device_d *dev)
 	nopphy->phy = phy_create(dev, NULL, &nop_phy_ops, NULL);
 	if (IS_ERR(nopphy->phy)) {
 		ret = PTR_ERR(nopphy->phy);
-		goto err_free;
+		goto release_gpio;
 	}
 
 	phy_set_drvdata(nopphy->phy, nopphy);
@@ -85,13 +118,17 @@ static int nop_usbphy_probe(struct device_d *dev)
 	nopphy->provider = of_phy_provider_register(dev, nop_usbphy_xlate);
 	if (IS_ERR(nopphy->provider)) {
 		ret = PTR_ERR(nopphy->provider);
-		goto err_free;
+		goto release_gpio;
 	}
 
 	return 0;
+
+release_gpio:
+	if (gpio_is_valid(nopphy->reset))
+		gpio_free(nopphy->reset);
 err_free:
 	free(nopphy);
-
+	free(name);
 	return ret;
 };
 
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
