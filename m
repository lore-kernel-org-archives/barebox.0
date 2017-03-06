Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wl-0007fS-KL
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:01 +0000
Received: by mail-pg0-x244.google.com with SMTP id 187so7290105pgb.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:41 -0800
Message-Id: <20170306225356.31475-31-andrew.smirnov@gmail.com>
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
Subject: [PATCH 30/45] w1-gpio: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/w1/masters/w1-gpio.c | 53 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 946e9d3..916027e 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -16,6 +16,7 @@
 #include <driver.h>
 #include <linux/w1-gpio.h>
 #include <gpio.h>
+#include <of_gpio.h>
 
 #include "../w1.h"
 
@@ -43,12 +44,58 @@ static u8 w1_gpio_read_bit(struct w1_bus *bus)
 	return gpio_get_value(pdata->pin) ? 1 : 0;
 }
 
+static int w1_gpio_probe_dt(struct device_d *dev)
+{
+	struct w1_gpio_platform_data *pdata;
+	struct device_node *np = dev->device_node;
+	int gpio;
+
+	if (dev->platform_data)
+		return 0;
+
+	pdata = xzalloc(sizeof(*pdata));
+
+	if (of_get_property(np, "linux,open-drain", NULL))
+		pdata->is_open_drain = 1;
+
+	gpio = of_get_gpio(np, 0);
+	if (!gpio_is_valid(gpio)) {
+		if (gpio != -EPROBE_DEFER)
+			dev_err(dev,
+				"Failed to parse gpio property for data pin (%d)\n",
+				gpio);
+
+		goto free_pdata;
+	}
+	pdata->pin = gpio;
+
+	gpio = of_get_gpio(np, 1);
+	if (gpio == -EPROBE_DEFER)
+		goto free_pdata;
+
+	/* ignore other errors as the pullup gpio is optional */
+	pdata->ext_pullup_enable_pin = gpio;
+
+	dev->platform_data = pdata;
+	return 0;
+
+free_pdata:
+	free(pdata);
+	return gpio;
+}
+
 static int __init w1_gpio_probe(struct device_d *dev)
 {
 	struct w1_bus *master;
 	struct w1_gpio_platform_data *pdata;
 	int err;
 
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		err = w1_gpio_probe_dt(dev);
+		if (err < 0)
+			return err;
+	}
+
 	pdata = dev->platform_data;
 
 	if (!pdata)
@@ -104,8 +151,14 @@ static int __init w1_gpio_probe(struct device_d *dev)
 	return err;
 }
 
+static __maybe_unused const struct of_device_id w1_gpio_dt_ids[] = {
+	{ .compatible = "w1-gpio" },
+	{}
+};
+
 static struct driver_d w1_gpio_driver = {
 	.name	= "w1-gpio",
 	.probe	= w1_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(w1_gpio_dt_ids),
 };
 device_platform_driver(w1_gpio_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
