Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Jh7-000087-Ea
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 13:27:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 15:26:49 +0200
Message-Id: <20190909132648.15294-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190909091542.15671-2-a.fatoum@pengutronix.de>
References: <20190909091542.15671-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! i2c: port Linux i2c_parse_fw_timings
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de

I forgot to add <linux/property.h> in the patch series. After discussion
with Sascha, we could do away with it and just use the of_* helper
directly. Do this and fix the build error caused...
---
 drivers/i2c/i2c.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 35ea63ab0729..9df5ee70c7f1 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -24,7 +24,6 @@
 #include <init.h>
 #include <of.h>
 #include <gpio.h>
-#include <linux/property.h>
 
 #include <i2c/i2c.h>
 
@@ -579,11 +578,13 @@ void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_
 
 	memset(t, 0, sizeof(*t));
 
-	ret = device_property_read_u32(dev, "clock-frequency", &t->bus_freq_hz);
+	ret = of_property_read_u32(dev->device_node, "clock-frequency",
+				   &t->bus_freq_hz);
 	if (ret && use_defaults)
 		t->bus_freq_hz = 100000;
 
-	ret = device_property_read_u32(dev, "i2c-scl-rising-time-ns", &t->scl_rise_ns);
+	ret = of_property_read_u32(dev->device_node, "i2c-scl-rising-time-ns",
+				   &t->scl_rise_ns);
 	if (ret && use_defaults) {
 		if (t->bus_freq_hz <= 100000)
 			t->scl_rise_ns = 1000;
@@ -593,7 +594,8 @@ void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_
 			t->scl_rise_ns = 120;
 	}
 
-	ret = device_property_read_u32(dev, "i2c-scl-falling-time-ns", &t->scl_fall_ns);
+	ret = of_property_read_u32(dev->device_node, "i2c-scl-falling-time-ns",
+				   &t->scl_fall_ns);
 	if (ret && use_defaults) {
 		if (t->bus_freq_hz <= 400000)
 			t->scl_fall_ns = 300;
@@ -601,13 +603,16 @@ void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_
 			t->scl_fall_ns = 120;
 	}
 
-	device_property_read_u32(dev, "i2c-scl-internal-delay-ns", &t->scl_int_delay_ns);
+	of_property_read_u32(dev->device_node, "i2c-scl-internal-delay-ns",
+			     &t->scl_int_delay_ns);
 
-	ret = device_property_read_u32(dev, "i2c-sda-falling-time-ns", &t->sda_fall_ns);
+	ret = of_property_read_u32(dev->device_node, "i2c-sda-falling-time-ns",
+				   &t->sda_fall_ns);
 	if (ret && use_defaults)
 		t->sda_fall_ns = t->scl_fall_ns;
 
-	device_property_read_u32(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns);
+	of_property_read_u32(dev->device_node, "i2c-sda-hold-time-ns",
+			     &t->sda_hold_ns);
 }
 EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
