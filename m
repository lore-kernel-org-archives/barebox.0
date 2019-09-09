Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Flz-0004no-Na
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:15:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 11:15:39 +0200
Message-Id: <20190909091542.15671-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190909091542.15671-1-a.fatoum@pengutronix.de>
References: <20190909091542.15671-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/4] i2c: port Linux i2c_parse_fw_timings
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux has a generic function for extracting i2c timings parameters from
device-associated firmware nodes. Port this function to barebox, but
have it only work on device tree nodes for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h | 20 +++++++++++++++++
 2 files changed, 75 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 25e0fe7add3f..35ea63ab0729 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <of.h>
 #include <gpio.h>
+#include <linux/property.h>
 
 #include <i2c/i2c.h>
 
@@ -556,6 +557,60 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 	return NULL;
 }
 
+/**
+ * i2c_parse_fw_timings - get I2C related timing parameters from firmware
+ * @dev: The device to scan for I2C timing properties
+ * @t: the i2c_timings struct to be filled with values
+ * @use_defaults: bool to use sane defaults derived from the I2C specification
+ *		  when properties are not found, otherwise use 0
+ *
+ * Scan the device for the generic I2C properties describing timing parameters
+ * for the signal and fill the given struct with the results. If a property was
+ * not found and use_defaults was true, then maximum timings are assumed which
+ * are derived from the I2C specification. If use_defaults is not used, the
+ * results will be 0, so drivers can apply their own defaults later. The latter
+ * is mainly intended for avoiding regressions of existing drivers which want
+ * to switch to this function. New drivers almost always should use the defaults.
+ */
+
+void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults)
+{
+	int ret;
+
+	memset(t, 0, sizeof(*t));
+
+	ret = device_property_read_u32(dev, "clock-frequency", &t->bus_freq_hz);
+	if (ret && use_defaults)
+		t->bus_freq_hz = 100000;
+
+	ret = device_property_read_u32(dev, "i2c-scl-rising-time-ns", &t->scl_rise_ns);
+	if (ret && use_defaults) {
+		if (t->bus_freq_hz <= 100000)
+			t->scl_rise_ns = 1000;
+		else if (t->bus_freq_hz <= 400000)
+			t->scl_rise_ns = 300;
+		else
+			t->scl_rise_ns = 120;
+	}
+
+	ret = device_property_read_u32(dev, "i2c-scl-falling-time-ns", &t->scl_fall_ns);
+	if (ret && use_defaults) {
+		if (t->bus_freq_hz <= 400000)
+			t->scl_fall_ns = 300;
+		else
+			t->scl_fall_ns = 120;
+	}
+
+	device_property_read_u32(dev, "i2c-scl-internal-delay-ns", &t->scl_int_delay_ns);
+
+	ret = device_property_read_u32(dev, "i2c-sda-falling-time-ns", &t->sda_fall_ns);
+	if (ret && use_defaults)
+		t->sda_fall_ns = t->scl_fall_ns;
+
+	device_property_read_u32(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns);
+}
+EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
+
 /**
  * i2c_add_numbered_adapter - declare i2c adapter, use static bus number
  * @adapter: the adapter to register (with adap->nr initialized)
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 17b507ca2203..a694e4ab2ff1 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -238,6 +238,24 @@ struct i2c_board_info {
 	struct device_node *of_node;
 };
 
+/**
+ * struct i2c_timings - I2C timing information
+ * @bus_freq_hz: the bus frequency in Hz
+ * @scl_rise_ns: time SCL signal takes to rise in ns; t(r) in the I2C specification
+ * @scl_fall_ns: time SCL signal takes to fall in ns; t(f) in the I2C specification
+ * @scl_int_delay_ns: time IP core additionally needs to setup SCL in ns
+ * @sda_fall_ns: time SDA signal takes to fall in ns; t(f) in the I2C specification
+ * @sda_hold_ns: time IP core additionally needs to hold SDA in ns
+ */
+struct i2c_timings {
+	u32 bus_freq_hz;
+	u32 scl_rise_ns;
+	u32 scl_fall_ns;
+	u32 scl_int_delay_ns;
+	u32 sda_fall_ns;
+	u32 sda_hold_ns;
+};
+
 /**
  * I2C_BOARD_INFO - macro used to list an i2c device and its address
  * @dev_type: identifies the device type
@@ -264,6 +282,8 @@ extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
 
+void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
+
 extern struct list_head i2c_adapter_list;
 #define for_each_i2c_adapter(adap) \
 	list_for_each_entry(adap, &i2c_adapter_list, list)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
