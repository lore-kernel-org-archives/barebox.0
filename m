Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Nz8-0007DG-Nv
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 17:22:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 23 Jan 2014 21:22:06 +0400
Message-Id: <1390497727-1625-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
References: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/4] gpio: clps711x: Update driver
To: barebox@lists.infradead.org

This patch updates the CLPS711X GPIO driver.
The update adds support for use with devicetree and
optimizes "probe" a bit.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-clps711x.c | 39 +++++++++++++++++++++++++--------------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index feead51..2f12439 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Alexander Shiyan <shc_work@mail.ru>
+ * Copyright (C) 2013-2014 Alexander Shiyan <shc_work@mail.ru>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -15,15 +15,18 @@
 
 static int clps711x_gpio_probe(struct device_d *dev)
 {
-	int err;
+	int err, id = dev->id;
 	void __iomem *dat, *dir = NULL, *dir_inv = NULL;
 	struct bgpio_chip *bgc;
 
-	if ((dev->id < 0) || (dev->id > 4))
+	if (dev->device_node)
+		id = of_alias_get_id(dev->device_node, "gpio");
+
+	if (id < 0 || id > 4)
 		return -ENODEV;
 
 	dat = dev_request_mem_region(dev, 0);
-	switch (dev->id) {
+	switch (id) {
 	case 3:
 		dir_inv = dev_request_mem_region(dev, 1);
 		break;
@@ -40,27 +43,35 @@ static int clps711x_gpio_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	err = bgpio_init(bgc, dev, 1, dat, NULL, NULL, dir, dir_inv, 0);
-	if (err) {
-		free(bgc);
-		return err;
-	}
+	if (err)
+		goto out_err;
 
-	bgc->gc.base = dev->id * 8;
-	switch (dev->id) {
+	bgc->gc.base = id * 8;
+	switch (id) {
 	case 4:
 		bgc->gc.ngpio = 3;
 		break;
 	default:
-		bgc->gc.ngpio = 8;
 		break;
 	}
 
-	return gpiochip_add(&bgc->gc);
+	err = gpiochip_add(&bgc->gc);
+
+out_err:
+	if (err)
+		free(bgc);
+
+	return err;
 }
 
+static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
+	{ .compatible = "cirrus,clps711x-gpio", },
+};
+
 static struct driver_d clps711x_gpio_driver = {
-	.name	= "clps711x-gpio",
-	.probe	= clps711x_gpio_probe,
+	.name		= "clps711x-gpio",
+	.probe		= clps711x_gpio_probe,
+	.of_compatible	= DRV_OF_COMPAT(clps711x_gpio_dt_ids),
 };
 
 static __init int clps711x_gpio_register(void)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
