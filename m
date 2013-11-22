Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G6-KH
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:58 +0100
Message-Id: <1385131741-28280-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/17] gpio: omap: Add devicetree probe support
To: barebox@lists.infradead.org

This adds devicetree probe support for the OMAP gpio ports and
also makes sure the corresponding platform_devices don't get
registered when they are already present from devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-omap.c | 39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index 49ffbda..e66a614 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -48,6 +48,18 @@ struct omap_gpio_chip {
 	struct gpio_chip chip;
 };
 
+struct omap_gpio_drvdata {
+	unsigned int regofs;
+};
+
+static struct omap_gpio_drvdata gpio_omap3_drvdata = {
+	.regofs = 0x0,
+};
+
+static struct omap_gpio_drvdata gpio_omap4_drvdata = {
+	.regofs = 0x100,
+};
+
 static inline int omap_get_gpio_index(int gpio)
 {
 	return gpio & 0x1f;
@@ -129,11 +141,24 @@ static struct gpio_ops omap_gpio_ops = {
 static int omap_gpio_probe(struct device_d *dev)
 {
 	struct omap_gpio_chip *omapgpio;
+	struct omap_gpio_drvdata *drvdata = NULL;
+
+	dev_get_drvdata(dev, (unsigned long *)&drvdata);
 
 	omapgpio = xzalloc(sizeof(*omapgpio));
 	omapgpio->base = dev_request_mem_region(dev, 0);
+	if (drvdata)
+		omapgpio->base += drvdata->regofs;
+
 	omapgpio->chip.ops = &omap_gpio_ops;
-	omapgpio->chip.base = dev->id * 32;
+	if (dev->id < 0) {
+		omapgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		if (omapgpio->chip.base < 0)
+			return omapgpio->chip.base;
+		omapgpio->chip.base *= 32;
+	} else {
+		omapgpio->chip.base = dev->id * 32;
+	}
 	omapgpio->chip.ngpio = 32;
 	omapgpio->chip.dev = dev;
 	gpiochip_add(&omapgpio->chip);
@@ -144,9 +169,21 @@ static int omap_gpio_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id omap_gpio_dt_ids[] = {
+	{
+		.compatible = "ti,omap4-gpio",
+		.data = (unsigned long)&gpio_omap4_drvdata,
+	}, {
+		.compatible = "ti,omap3-gpio",
+		.data = (unsigned long)&gpio_omap3_drvdata,
+	}, {
+	}
+};
+
 static struct driver_d omap_gpio_driver = {
 	.name = "omap-gpio",
 	.probe = omap_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(omap_gpio_dt_ids),
 };
 
 static int omap_gpio_add(void)
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
