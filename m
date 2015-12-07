Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22e.google.com ([2607:f8b0:400e:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qca-0003wH-N5
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:15 +0000
Received: by pfu207 with SMTP id 207so60915978pfu.2
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:42 -0800
Message-Id: <1449474763-14099-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] hwmon: Port Linux driver for LM75 sensor
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/hwmon/Kconfig  |   9 +++
 drivers/hwmon/Makefile |   2 +
 drivers/hwmon/lm75.c   | 194 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/hwmon/lm75.h   |  48 ++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 drivers/hwmon/lm75.c
 create mode 100644 drivers/hwmon/lm75.h

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 6ce06a7..db51d26 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -13,4 +13,13 @@ menuconfig HWMON

 if HWMON

+config SENSORS_LM75
+	tristate "National Semiconductor LM75 and compatibles"
+	depends on I2C
+	help
+	  If you say yes here you get support for one common type of
+	  temperature sensor chip, with models including:
+
+		- National Semiconductor LM75, LM75A
+
 endif # HWMON
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 47a2e58..e73e681 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -3,3 +3,5 @@
 #

 obj-$(CONFIG_HWMON)		+= class.o
+
+obj-$(CONFIG_SENSORS_LM75)	+= lm75.o
diff --git a/drivers/hwmon/lm75.c b/drivers/hwmon/lm75.c
new file mode 100644
index 0000000..5df85bf
--- /dev/null
+++ b/drivers/hwmon/lm75.c
@@ -0,0 +1,194 @@
+/*
+ * lm75.c - Part of lm_sensors, Linux kernel modules for hardware
+ *	 monitoring
+ * Copyright (c) 1998, 1999  Frodo Looijaard <frodol@dds.nl>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c.h>
+#include <linux/err.h>
+#include <hwmon.h>
+#include "lm75.h"
+
+
+/*
+ * This driver handles the LM75 and compatible digital temperature sensors.
+ */
+
+enum lm75_type {		/* keep sorted in alphabetical order */
+	lm75,
+};
+
+
+
+/* The LM75 registers */
+#define LM75_REG_CONF		0x01
+static const u8 LM75_REG_TEMP[3] = {
+	0x00,		/* input */
+	0x03,		/* max */
+	0x02,		/* hyst */
+};
+
+/* Each client has this additional data */
+struct lm75_data {
+	struct i2c_client	*client;
+	struct hwmon_sensor	sensor;
+
+	u8			resolution;	/* In bits, between 9 and 12 */
+};
+
+static inline struct lm75_data *to_lm75_data(struct hwmon_sensor *sensor)
+{
+	return container_of(sensor, struct lm75_data, sensor);
+}
+
+/*
+ * All registers are word-sized, except for the configuration register.
+ * LM75 uses a high-byte first convention, which is exactly opposite to
+ * the SMBus standard.
+ */
+static s32 lm75_read_value(struct i2c_client *client, u8 reg)
+{
+	if (reg == LM75_REG_CONF)
+		return i2c_smbus_read_byte_data(client, reg);
+	else
+		return i2c_smbus_read_word_swapped(client, reg);
+}
+
+static s32 lm75_write_value(struct i2c_client *client, u8 reg, u16 value)
+{
+	if (reg == LM75_REG_CONF)
+		return i2c_smbus_write_byte_data(client, reg, value);
+	else
+		return i2c_smbus_write_word_swapped(client, reg, value);
+}
+
+static inline s32 lm75_reg_to_mc(s16 temp, u8 resolution)
+{
+	return ((temp >> (16 - resolution)) * 1000) >> (resolution - 8);
+}
+
+static int lm75_read_temp(struct hwmon_sensor *sensor, s32 *reading)
+{
+	struct lm75_data *data = to_lm75_data(sensor);
+
+	s32 ret = lm75_read_value(data->client, LM75_REG_TEMP[0]);
+
+	if (ret < 0)
+		return ret;
+
+	*reading = lm75_reg_to_mc((s16)ret, data->resolution);
+	return 0;
+}
+
+static int lm75_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct lm75_data *data;
+	int err;
+	u8 set_mask, clr_mask;
+	int new;
+	enum lm75_type kind;
+
+	err = dev_get_drvdata(dev, (const void **)&kind);
+	if (err) {
+		dev_err(dev, "Can't get driver data\n");
+		return err;
+	}
+
+	data = xzalloc(sizeof(struct lm75_data));
+	if (!data)
+		return -ENOMEM;
+
+	data->client = client;
+
+	/* Set to LM75 resolution (9 bits, 1/2 degree C) and range.
+	 * Then tweak to be more precise when appropriate.
+	 */
+	set_mask = 0;
+	clr_mask = LM75_SHUTDOWN;		/* continuous conversions */
+
+	switch (kind) {
+	case lm75:
+		data->resolution = 9;
+		break;
+	}
+
+	/* configure as specified */
+	err = lm75_read_value(client, LM75_REG_CONF);
+	if (err < 0) {
+		dev_err(dev, "Can't read config? %d\n", err);
+		goto exit;
+	}
+
+	new = err & ~clr_mask;
+	new |= set_mask;
+	if (err != new)
+		lm75_write_value(client, LM75_REG_CONF, new);
+	dev_dbg(dev, "Config %02x\n", new);
+
+	if (!dev->device_node) {
+		dev_err(dev, "No device_node associated with the device\n");
+		err = -EINVAL;
+		goto exit;
+	}
+
+	data->sensor.name = of_get_property(dev->device_node,
+					    "barebox,sensor-name",
+					    NULL);
+	if (!data->sensor.name) {
+		dev_err(dev, "No sensor-name specified\n");
+		err = -EINVAL;
+		goto exit;
+	}
+
+	data->sensor.read = lm75_read_temp;
+	data->sensor.dev = dev;
+
+	err = hwmon_sensor_register(&data->sensor);
+
+exit:
+	if (err) {
+		free(data);
+		return err;
+	}
+
+	return 0;
+}
+
+static const struct platform_device_id lm75_ids[] = {
+	{ "lm75", lm75, },
+	{ /* LIST END */ }
+};
+
+static struct driver_d lm75_driver = {
+	.name		= "lm75",
+	.probe		= lm75_probe,
+	.id_table	= lm75_ids,
+};
+
+static int lm75_init(void)
+{
+	return i2c_driver_register(&lm75_driver);
+}
+device_initcall(lm75_init);
diff --git a/drivers/hwmon/lm75.h b/drivers/hwmon/lm75.h
new file mode 100644
index 0000000..9ffe83e
--- /dev/null
+++ b/drivers/hwmon/lm75.h
@@ -0,0 +1,48 @@
+/*
+    lm75.h - Part of lm_sensors, Linux kernel modules for hardware
+	      monitoring
+    Copyright (c) 2003 Mark M. Hoffman <mhoffman@lightlink.com>
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License
+    along with this program; if not, write to the Free Software
+    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+*/
+
+/*
+    This file contains common code for encoding/decoding LM75 type
+    temperature readings, which are emulated by many of the chips
+    we support.  As the user is unlikely to load more than one driver
+    which contains this code, we don't worry about the wasted space.
+*/
+
+
+/* straight from the datasheet */
+#define LM75_TEMP_MIN (-55000)
+#define LM75_TEMP_MAX 125000
+#define LM75_SHUTDOWN 0x01
+
+/* TEMP: 0.001C/bit (-55C to +125C)
+   REG: (0.5C/bit, two's complement) << 7 */
+static inline u16 LM75_TEMP_TO_REG(long temp)
+{
+	int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
+	ntemp += (ntemp < 0 ? -250 : 250);
+	return (u16)((ntemp / 500) << 7);
+}
+
+static inline int LM75_TEMP_FROM_REG(u16 reg)
+{
+	/* use integer division instead of equivalent right shift to
+	   guarantee arithmetic shift and preserve the sign */
+	return ((s16)reg / 128) * 500;
+}
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
