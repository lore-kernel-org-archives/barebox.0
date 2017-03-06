Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wl-0007cN-PX
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:06 +0000
Received: by mail-pf0-x241.google.com with SMTP id 67so14532562pfg.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:37 -0800
Message-Id: <20170306225356.31475-27-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 26/45] spi: atmel_spi: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/atmel_spi.c | 29 ++++++++++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 3f2c527..68466ef 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -29,6 +29,7 @@
 #include <clock.h>
 #include <xfuncs.h>
 #include <gpio.h>
+#include <of_gpio.h>
 #include <io.h>
 #include <spi/spi.h>
 #include <mach/io.h>
@@ -375,10 +376,11 @@ static int atmel_spi_probe(struct device_d *dev)
 	int ret = 0;
 	int i;
 	struct spi_master *master;
+	struct device_node *node = dev->device_node;
 	struct atmel_spi *as;
 	struct at91_spi_platform_data *pdata = dev->platform_data;
 
-	if (!pdata) {
+	if (!IS_ENABLED(CONFIG_OFDEVICE) && !pdata) {
 		dev_err(dev, "missing platform data\n");
 		return -EINVAL;
 	}
@@ -389,6 +391,23 @@ static int atmel_spi_probe(struct device_d *dev)
 	master->dev = dev;
 	master->bus_num = dev->id;
 
+	if (pdata) {
+		master->num_chipselect = pdata->num_chipselect;
+		as->cs_pins = pdata->chipselect;
+	} else {
+		master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
+		as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
+
+		for (i = 0; i < master->num_chipselect; i++) {
+			as->cs_pins[i] = of_get_named_gpio(node, "cs-gpios", i);
+
+			if (!gpio_is_valid(as->cs_pins[i]))
+			    break;
+		}
+
+		master->num_chipselect = i;
+	}
+
 	as->clk = clk_get(dev, "spi_clk");
 	if (IS_ERR(as->clk)) {
 		dev_err(dev, "no spi_clk\n");
@@ -398,8 +417,6 @@ static int atmel_spi_probe(struct device_d *dev)
 
 	master->setup = atmel_spi_setup;
 	master->transfer = atmel_spi_transfer;
-	master->num_chipselect = pdata->num_chipselect;
-	as->cs_pins = pdata->chipselect;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -438,8 +455,14 @@ out_free:
 	return ret;
 }
 
+static __maybe_unused const struct of_device_id atmel_spi_dt_ids[] = {
+	{ .compatible = "atmel,at91rm9200-spi" },
+	{ /* sentinel */ }
+};
+
 static struct driver_d atmel_spi_driver = {
 	.name  = "atmel_spi",
 	.probe = atmel_spi_probe,
+	.of_compatible = DRV_OF_COMPAT(atmel_spi_dt_ids),
 };
 device_platform_driver(atmel_spi_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
