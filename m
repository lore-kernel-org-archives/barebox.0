Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qcZ-0003vx-Iz
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:12 +0000
Received: by pfdd184 with SMTP id d184so60967612pfd.3
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:40 -0800
Message-Id: <1449474763-14099-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] drivers: Introduce hardware monitoring subsystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This commit introduces hardware monitoring system designed to
facilitate data retreival from sensors reporing signed scalar values
with no more than 32-bit of precision.

The system was designed after a, similar in simplicity, 'rtc'
subsystem and doesn't share very much in common with it's namesake
from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/Kconfig        |  1 +
 drivers/Makefile       |  1 +
 drivers/hwmon/Kconfig  | 16 ++++++++++++++++
 drivers/hwmon/Makefile |  5 +++++
 drivers/hwmon/class.c  | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/hwmon.h        | 32 ++++++++++++++++++++++++++++++++
 6 files changed, 105 insertions(+)
 create mode 100644 drivers/hwmon/Kconfig
 create mode 100644 drivers/hwmon/Makefile
 create mode 100644 drivers/hwmon/class.c
 create mode 100644 include/hwmon.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 5984ccc..5527049 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -31,5 +31,6 @@ source "drivers/pci/Kconfig"
 source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
 source "drivers/phy/Kconfig"
+source "drivers/hwmon/Kconfig"

 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 3afbb61..de2ee70 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -31,3 +31,4 @@ obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HABV4) += habv4/
+obj-y += hwmon/
diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
new file mode 100644
index 0000000..6ce06a7
--- /dev/null
+++ b/drivers/hwmon/Kconfig
@@ -0,0 +1,16 @@
+#
+# HWMON class/drivers configuration
+#
+
+menuconfig HWMON
+	tristate "Hardware Monitoring support"
+	default y
+	help
+	  Hardware monitoring devices let you monitor the hardware
+	  health of a system. If you want this support you should say
+	  Y here and also to the specific driver(s) for your sensors
+	  chip(s) below.
+
+if HWMON
+
+endif # HWMON
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
new file mode 100644
index 0000000..47a2e58
--- /dev/null
+++ b/drivers/hwmon/Makefile
@@ -0,0 +1,5 @@
+#
+# Makefile for sensor chip drivers.
+#
+
+obj-$(CONFIG_HWMON)		+= class.o
diff --git a/drivers/hwmon/class.c b/drivers/hwmon/class.c
new file mode 100644
index 0000000..898c0d8
--- /dev/null
+++ b/drivers/hwmon/class.c
@@ -0,0 +1,50 @@
+/*
+ * Hwmon barebox subsystem, base class
+ *
+ * Copyright (C) 2015 Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <linux/err.h>
+#include <hwmon.h>
+
+LIST_HEAD(hwmon_sensor_list);
+EXPORT_SYMBOL(hwmon_sensor_list);
+
+int hwmon_sensor_register(struct hwmon_sensor *sensor)
+{
+	struct device_d *dev = &sensor->class_dev;
+
+	if (!sensor->read)
+		return -EINVAL;
+
+	dev->id = DEVICE_ID_DYNAMIC;
+	strcpy(dev->name, "sensor");
+	if (sensor->dev)
+		dev->parent = sensor->dev;
+	platform_device_register(dev);
+
+	list_add_tail(&sensor->list, &hwmon_sensor_list);
+
+	return 0;
+}
+EXPORT_SYMBOL(hwmon_sensor_register);
+
+int hwmon_sensor_read(struct hwmon_sensor *sensor, s32 *reading)
+{
+	if (!sensor->read)
+		return -EINVAL;
+
+	return sensor->read(sensor, reading);
+}
+EXPORT_SYMBOL(hwmon_sensor_read);
diff --git a/include/hwmon.h b/include/hwmon.h
new file mode 100644
index 0000000..2897e47
--- /dev/null
+++ b/include/hwmon.h
@@ -0,0 +1,32 @@
+#ifndef __HWMON_H__
+#define __HWMON_H__
+
+#include <common.h>
+#include <driver.h>
+#include <linux/types.h>
+
+enum hwmon_sensor_type {
+	SENSOR_TEMPERATURE,
+};
+
+struct hwmon_sensor {
+	int (*read) (struct hwmon_sensor *, s32 *);
+	const char *name;
+
+	struct device_d *dev;
+	struct device_d class_dev;
+
+	enum hwmon_sensor_type type;
+
+	struct list_head list;
+};
+
+
+int hwmon_sensor_register(struct hwmon_sensor *sensor);
+int hwmon_sensor_read(struct hwmon_sensor *sensor, s32 *reading);
+
+extern struct list_head hwmon_sensor_list;
+#define for_each_hwmon_sensor(sensor) list_for_each_entry(sensor, &hwmon_sensor_list, list)
+
+
+#endif
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
