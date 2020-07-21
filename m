Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxlYK-0001kg-Ec
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 06:15:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Jul 2020 08:14:56 +0200
Message-Id: <20200721061458.26739-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] i2c: sync i2c_parse_fw_timings() with upstream
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Upstream now has support for i2c-digital-filter-width-ns and
i2c-analog-filter-cutoff-frequency device tree properties, that are
used in an upcoming patch.
Prepare for it by syncing with Linux v5.8-rc4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 73 ++++++++++++++++++++++-------------------------
 include/i2c/i2c.h | 14 +++++++++
 2 files changed, 48 insertions(+), 39 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 2fed624d69f9..57d8c7017f4b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -569,6 +569,18 @@ struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
 	return to_i2c_client(dev);
 }
 
+static void i2c_parse_timing(struct device_d *dev, char *prop_name, u32 *cur_val_p,
+			    u32 def_val, bool use_def)
+{
+	int ret;
+
+	ret = of_property_read_u32(dev->device_node, prop_name, cur_val_p);
+	if (ret && use_def)
+		*cur_val_p = def_val;
+
+	dev_dbg(dev, "%s: %u\n", prop_name, *cur_val_p);
+}
+
 /**
  * i2c_parse_fw_timings - get I2C related timing parameters from firmware
  * @dev: The device to scan for I2C timing properties
@@ -587,45 +599,28 @@ struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
 
 void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults)
 {
-	int ret;
-
-	memset(t, 0, sizeof(*t));
-
-	ret = of_property_read_u32(dev->device_node, "clock-frequency",
-				   &t->bus_freq_hz);
-	if (ret && use_defaults)
-		t->bus_freq_hz = 100000;
-
-	ret = of_property_read_u32(dev->device_node, "i2c-scl-rising-time-ns",
-				   &t->scl_rise_ns);
-	if (ret && use_defaults) {
-		if (t->bus_freq_hz <= 100000)
-			t->scl_rise_ns = 1000;
-		else if (t->bus_freq_hz <= 400000)
-			t->scl_rise_ns = 300;
-		else
-			t->scl_rise_ns = 120;
-	}
-
-	ret = of_property_read_u32(dev->device_node, "i2c-scl-falling-time-ns",
-				   &t->scl_fall_ns);
-	if (ret && use_defaults) {
-		if (t->bus_freq_hz <= 400000)
-			t->scl_fall_ns = 300;
-		else
-			t->scl_fall_ns = 120;
-	}
-
-	of_property_read_u32(dev->device_node, "i2c-scl-internal-delay-ns",
-			     &t->scl_int_delay_ns);
-
-	ret = of_property_read_u32(dev->device_node, "i2c-sda-falling-time-ns",
-				   &t->sda_fall_ns);
-	if (ret && use_defaults)
-		t->sda_fall_ns = t->scl_fall_ns;
-
-	of_property_read_u32(dev->device_node, "i2c-sda-hold-time-ns",
-			     &t->sda_hold_ns);
+	bool u = use_defaults;
+	u32 d;
+
+	i2c_parse_timing(dev, "clock-frequency", &t->bus_freq_hz,
+			 I2C_MAX_STANDARD_MODE_FREQ, u);
+
+	d = t->bus_freq_hz <= I2C_MAX_STANDARD_MODE_FREQ ? 1000 :
+	    t->bus_freq_hz <= I2C_MAX_FAST_MODE_FREQ ? 300 : 120;
+	i2c_parse_timing(dev, "i2c-scl-rising-time-ns", &t->scl_rise_ns, d, u);
+
+	d = t->bus_freq_hz <= I2C_MAX_FAST_MODE_FREQ ? 300 : 120;
+	i2c_parse_timing(dev, "i2c-scl-falling-time-ns", &t->scl_fall_ns, d, u);
+
+	i2c_parse_timing(dev, "i2c-scl-internal-delay-ns",
+			 &t->scl_int_delay_ns, 0, u);
+	i2c_parse_timing(dev, "i2c-sda-falling-time-ns", &t->sda_fall_ns,
+			 t->scl_fall_ns, u);
+	i2c_parse_timing(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns, 0, u);
+	i2c_parse_timing(dev, "i2c-digital-filter-width-ns",
+			 &t->digital_filter_width_ns, 0, u);
+	i2c_parse_timing(dev, "i2c-analog-filter-cutoff-frequency",
+			 &t->analog_filter_cutoff_freq_hz, 0, u);
 }
 EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index bfc1eab81588..af6287602ca5 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -31,6 +31,14 @@ struct i2c_platform_data {
 	int bitrate;
 };
 
+/* I2C Frequency Modes */
+#define I2C_MAX_STANDARD_MODE_FREQ	100000
+#define I2C_MAX_FAST_MODE_FREQ		400000
+#define I2C_MAX_FAST_MODE_PLUS_FREQ	1000000
+#define I2C_MAX_TURBO_MODE_FREQ		1400000
+#define I2C_MAX_HIGH_SPEED_MODE_FREQ	3400000
+#define I2C_MAX_ULTRA_FAST_MODE_FREQ	5000000
+
 #define I2C_NAME_SIZE	20
 
 #define I2C_M_RD		0x0001	/* read data, from slave to master */
@@ -246,6 +254,10 @@ struct i2c_board_info {
  * @scl_int_delay_ns: time IP core additionally needs to setup SCL in ns
  * @sda_fall_ns: time SDA signal takes to fall in ns; t(f) in the I2C specification
  * @sda_hold_ns: time IP core additionally needs to hold SDA in ns
+ * @digital_filter_width_ns: width in ns of spikes on i2c lines that the IP core
+ *	digital filter can filter out
+ * @analog_filter_cutoff_freq_hz: threshold frequency for the low pass IP core
+ *	analog filter
  */
 struct i2c_timings {
 	u32 bus_freq_hz;
@@ -254,6 +266,8 @@ struct i2c_timings {
 	u32 scl_int_delay_ns;
 	u32 sda_fall_ns;
 	u32 sda_hold_ns;
+	u32 digital_filter_width_ns;
+	u32 analog_filter_cutoff_freq_hz;
 };
 
 /**
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
