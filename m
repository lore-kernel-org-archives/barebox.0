Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCpCb-0008T6-Ki
 for barebox@lists.infradead.org; Mon, 22 May 2017 15:24:59 +0000
Received: by mail-pf0-x244.google.com with SMTP id w69so20721768pfk.1
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 08:24:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 22 May 2017 08:24:20 -0700
Message-Id: <20170522152420.14443-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170522152420.14443-1-andrew.smirnov@gmail.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] usb-nop-xceiv: Add support for 'reset-gpios' binding
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/phy/usb-nop-xceiv.c | 46 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index d403fe4..bd28af4 100644
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
+		gpio_direction_output(nopphy->reset, 0);
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
+	unsigned long flags = GPIOF_DIR_OUT;
 
 	nopphy = xzalloc(sizeof(*nopphy));
 
@@ -70,6 +89,21 @@ static int nop_usbphy_probe(struct device_d *dev)
 	if (IS_ERR(nopphy->clk))
 		nopphy->clk = NULL;
 
+	nopphy->reset = of_get_named_gpio_flags(dev->device_node,
+						"reset-gpios", 0, &of_flags);
+	if (gpio_is_valid(nopphy->reset)) {
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		name = basprintf("%s reset", dev_name(dev));
+		ret  = gpio_request_one(nopphy->reset, flags, name);
+		if (ret < 0)
+			goto err_free;
+
+		/* assert reset */
+		gpio_direction_output(nopphy->reset, 1);
+	}
+
 	/* FIXME: Add vbus regulator support */
 	/* FIXME: Add vbus-detect-gpio support */
 
@@ -77,7 +111,7 @@ static int nop_usbphy_probe(struct device_d *dev)
 	nopphy->phy = phy_create(dev, NULL, &nop_phy_ops, NULL);
 	if (IS_ERR(nopphy->phy)) {
 		ret = PTR_ERR(nopphy->phy);
-		goto err_free;
+		goto release_gpio;
 	}
 
 	phy_set_drvdata(nopphy->phy, nopphy);
@@ -85,13 +119,17 @@ static int nop_usbphy_probe(struct device_d *dev)
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
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
