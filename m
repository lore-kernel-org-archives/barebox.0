Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgc-00078C-9x
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:59 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so5316442lbi.39
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:11 +0400
Message-Id: <1403558473-26199-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/7] i2c: i2c_gpio: add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../devicetree/bindings/gpio/gpio_i2c.txt          | 32 +++++++++++++
 drivers/i2c/busses/i2c-gpio.c                      | 54 +++++++++++++++++++--
 include/of_gpio.h                                  | 55 ++++++++++++++++++++++
 3 files changed, 138 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio_i2c.txt b/Documentation/devicetree/bindings/gpio/gpio_i2c.txt
new file mode 100644
index 0000000..4f8ec94
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio_i2c.txt
@@ -0,0 +1,32 @@
+Device-Tree bindings for i2c gpio driver
+
+Required properties:
+	- compatible = "i2c-gpio";
+	- gpios: sda and scl gpio
+
+
+Optional properties:
+	- i2c-gpio,sda-open-drain: sda as open drain
+	- i2c-gpio,scl-open-drain: scl as open drain
+	- i2c-gpio,scl-output-only: scl as output only
+	- i2c-gpio,delay-us: delay between GPIO operations (may depend on each platform)
+	- i2c-gpio,timeout-ms: timeout to get data
+
+Example nodes:
+
+i2c@0 {
+	compatible = "i2c-gpio";
+	gpios = <&pioA 23 0 /* sda */
+		 &pioA 24 0 /* scl */
+		>;
+	i2c-gpio,sda-open-drain;
+	i2c-gpio,scl-open-drain;
+	i2c-gpio,delay-us = <2>;	/* ~100 kHz */
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	rv3029c2@56 {
+		compatible = "rv3029c2";
+		reg = <0x56>;
+	};
+};
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 8b49c2c..29dc3d2 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -15,6 +15,7 @@
 #include <i2c/i2c-gpio.h>
 #include <init.h>
 #include <gpio.h>
+#include <of_gpio.h>
 
 struct i2c_gpio_private_data {
 	struct i2c_adapter adap;
@@ -83,6 +84,38 @@ static int i2c_gpio_getscl(void *data)
 	return gpio_get_value(pdata->scl_pin);
 }
 
+static int of_i2c_gpio_probe(struct device_node *np,
+			     struct i2c_gpio_platform_data *pdata)
+{
+	u32 reg;
+
+	if (of_gpio_count(np) < 2)
+		return -ENODEV;
+
+	pdata->sda_pin = of_get_gpio(np, 0);
+	pdata->scl_pin = of_get_gpio(np, 1);
+
+	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin)) {
+		pr_err("%s: invalid GPIO pins, sda=%d/scl=%d\n",
+		       np->full_name, pdata->sda_pin, pdata->scl_pin);
+		return -ENODEV;
+	}
+
+	of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);
+
+	if (!of_property_read_u32(np, "i2c-gpio,timeout-ms", &reg))
+		pdata->timeout_ms = reg;
+
+	pdata->sda_is_open_drain =
+		of_property_read_bool(np, "i2c-gpio,sda-open-drain");
+	pdata->scl_is_open_drain =
+		of_property_read_bool(np, "i2c-gpio,scl-open-drain");
+	pdata->scl_is_output_only =
+		of_property_read_bool(np, "i2c-gpio,scl-output-only");
+
+	return 0;
+}
+
 static int i2c_gpio_probe(struct device_d *dev)
 {
 	struct i2c_gpio_private_data *priv;
@@ -97,9 +130,15 @@ static int i2c_gpio_probe(struct device_d *dev)
 	bit_data = &priv->bit_data;
 	pdata = &priv->pdata;
 
-	if (!dev->platform_data)
-		return -ENXIO;
-	memcpy(pdata, dev->platform_data, sizeof(*pdata));
+	if (dev->device_node) {
+		ret = of_i2c_gpio_probe(dev->device_node, pdata);
+		if (ret)
+			return ret;
+	} else {
+		if (!dev->platform_data)
+			return -ENXIO;
+		memcpy(pdata, dev->platform_data, sizeof(*pdata));
+	}
 
 	ret = gpio_request(pdata->sda_pin, "sda");
 	if (ret)
@@ -144,6 +183,7 @@ static int i2c_gpio_probe(struct device_d *dev)
 
 	adap->algo_data = bit_data;
 	adap->dev.parent = dev;
+	adap->dev.device_node = dev->device_node;
 
 	adap->nr = dev->id;
 	ret = i2c_bit_add_numbered_bus(adap);
@@ -165,8 +205,16 @@ err_request_sda:
 	return ret;
 }
 
+#if defined(CONFIG_OFDEVICE)
+static struct of_device_id i2c_gpio_dt_ids[] = {
+	{ .compatible = "i2c-gpio", },
+	{ /* sentinel */ }
+};
+#endif
+
 static struct driver_d i2c_gpio_driver = {
 	.name	= "i2c-gpio",
 	.probe	= i2c_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(i2c_gpio_dt_ids),
 };
 device_platform_driver(i2c_gpio_driver);
diff --git a/include/of_gpio.h b/include/of_gpio.h
index d42b18e..95a454c 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -35,10 +35,65 @@ static inline int of_get_named_gpio_flags(struct device_node *np,
 
 #endif /* CONFIG_OF_GPIO */
 
+/**
+ * of_gpio_named_count() - Count GPIOs for a device
+ * @np:		device node to count GPIOs for
+ * @propname:	property name containing gpio specifier(s)
+ *
+ * The function returns the count of GPIOs specified for a node.
+ * Note that the empty GPIO specifiers count too. Returns either
+ *   Number of gpios defined in property,
+ *   -EINVAL for an incorrectly formed gpios property, or
+ *   -ENOENT for a missing gpios property
+ *
+ * Example:
+ * gpios = <0
+ *          &gpio1 1 2
+ *          0
+ *          &gpio2 3 4>;
+ *
+ * The above example defines four GPIOs, two of which are not specified.
+ * This function will return '4'
+ */
+static inline int of_gpio_named_count(struct device_node *np, const char* propname)
+{
+	return of_count_phandle_with_args(np, propname, "#gpio-cells");
+}
+
+/**
+ * of_gpio_count() - Count GPIOs for a device
+ * @np:		device node to count GPIOs for
+ *
+ * Same as of_gpio_named_count, but hard coded to use the 'gpios' property
+ */
+static inline int of_gpio_count(struct device_node *np)
+{
+	return of_gpio_named_count(np, "gpios");
+}
+
+static inline int of_get_gpio_flags(struct device_node *np, int index,
+		      enum of_gpio_flags *flags)
+{
+	return of_get_named_gpio_flags(np, "gpios", index, flags);
+}
+
 static inline int of_get_named_gpio(struct device_node *np,
 				const char *list_name, int index)
 {
 	return of_get_named_gpio_flags(np, list_name, index, NULL);
 }
 
+/**
+ * of_get_gpio() - Get a GPIO number to use with GPIO API
+ * @np:		device node to get GPIO from
+ * @index:	index of the GPIO
+ *
+ * Returns GPIO number to use with Linux generic GPIO API, or one of the errno
+ * value on the error condition.
+ */
+static inline int of_get_gpio(struct device_node *np, int index)
+{
+	return of_get_gpio_flags(np, index, NULL);
+}
+
 #endif
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
