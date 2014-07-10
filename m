Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X59nc-0001Ec-AM
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 08:33:53 +0000
Received: by mail-la0-f51.google.com with SMTP id mc6so5734297lab.24
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 01:33:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 Jul 2014 12:33:16 +0400
Message-Id: <1404981199-21293-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/5] add rtc support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/Kconfig       |  1 +
 drivers/Makefile      |  1 +
 drivers/rtc/Kconfig   | 16 +++++++++++++
 drivers/rtc/Makefile  |  6 +++++
 drivers/rtc/class.c   | 62 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/rtc/rtc-lib.c | 64 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/rtc.h   | 46 ++++++++++++++++++++++++++++++++++++
 include/rtc.h         |  2 ++
 8 files changed, 198 insertions(+)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 12a9d8c..d38032c 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -28,5 +28,6 @@ source "drivers/bus/Kconfig"
 source "drivers/regulator/Kconfig"
 source "drivers/reset/Kconfig"
 source "drivers/pci/Kconfig"
+source "drivers/rtc/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 1990e86..4591f9a 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -27,3 +27,4 @@ obj-y += bus/
 obj-$(CONFIG_REGULATOR) += regulator/
 obj-$(CONFIG_RESET_CONTROLLER) += reset/
 obj-$(CONFIG_PCI) += pci/
+obj-y += rtc/
diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
new file mode 100644
index 0000000..f148266
--- /dev/null
+++ b/drivers/rtc/Kconfig
@@ -0,0 +1,16 @@
+#
+# RTC class/drivers configuration
+#
+
+config RTC_LIB
+	bool
+
+menuconfig RTC_CLASS
+        bool "Real Time Clock"
+        default n
+        depends on !S390 && !UML
+        select RTC_LIB
+        help
+          Generic RTC class support. If you say yes here, you will
+          be allowed to plug one or more RTCs to your system. You will
+          probably want to enable one or more of the interfaces below.
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
new file mode 100644
index 0000000..7d1b5bc
--- /dev/null
+++ b/drivers/rtc/Makefile
@@ -0,0 +1,6 @@
+#
+# Makefile for RTC class/drivers.
+#
+
+obj-$(CONFIG_RTC_LIB)           += rtc-lib.o
+obj-$(CONFIG_RTC_CLASS)         += class.o
diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
new file mode 100644
index 0000000..b808f3d
--- /dev/null
+++ b/drivers/rtc/class.c
@@ -0,0 +1,62 @@
+#include <linux/err.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+
+LIST_HEAD(rtc_list);
+EXPORT_SYMBOL(rtc_list);
+
+struct rtc_device *rtc_lookup(const char *name)
+{
+	struct rtc_device *r;
+
+	if (!name)
+		return ERR_PTR(-ENODEV);
+
+	list_for_each_entry(r, &rtc_list, list) {
+		if (!strcmp(dev_name(&r->class_dev), name))
+			return r;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL(rtc_lookup);
+
+int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
+{
+	return rtc->ops->read_time(rtc, tm);
+}
+EXPORT_SYMBOL(rtc_read_time);
+
+int rtc_register(struct rtc_device *rtcdev)
+{
+	struct device_d *dev = &rtcdev->class_dev;
+
+	dev->id = DEVICE_ID_DYNAMIC;
+	strcpy(dev->name, "rtc");
+	if (rtcdev->dev)
+		dev->parent = rtcdev->dev;
+	platform_device_register(dev);
+
+	list_add_tail(&rtcdev->list, &rtc_list);
+
+	return 0;
+}
+EXPORT_SYMBOL(rtc_register);
+
+#if 0
+int rtc_unregister(struct rtc_device *cdev)
+{
+	struct device_d *dev = &cdev->class_dev;
+	int status;
+
+	list_del(&cdev->list);
+	if (list_empty(&rtc_list))
+		initialized = CONSOLE_UNINITIALIZED;
+
+	status = unregister_device(dev);
+	if (!status)
+		memset(cdev, 0, sizeof(*cdev));
+	return status;
+}
+EXPORT_SYMBOL(rtc_unregister);
+#endif
diff --git a/drivers/rtc/rtc-lib.c b/drivers/rtc/rtc-lib.c
new file mode 100644
index 0000000..44c0a06
--- /dev/null
+++ b/drivers/rtc/rtc-lib.c
@@ -0,0 +1,64 @@
+/*
+ * rtc and date/time utility functions
+ *
+ * Copyright (C) 2005-06 Tower Technologies
+ * Author: Alessandro Zummo <a.zummo@towertech.it>
+ *
+ * based on arch/arm/common/rtctime.c and other bits
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+*/
+
+#include <rtc.h>
+#include <linux/rtc.h>
+
+static const unsigned char rtc_days_in_month[] = {
+	31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
+};
+
+static const unsigned short rtc_ydays[2][13] = {
+	/* Normal years */
+	{ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 },
+	/* Leap years */
+	{ 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 }
+};
+
+#define LEAPS_THRU_END_OF(y) ((y)/4 - (y)/100 + (y)/400)
+
+/*
+ * The number of days in the month.
+ */
+int rtc_month_days(unsigned int month, unsigned int year)
+{
+	return rtc_days_in_month[month] + (is_leap_year(year) && month == 1);
+}
+EXPORT_SYMBOL(rtc_month_days);
+
+/*
+ * The number of days since January 1. (0 to 365)
+ */
+int rtc_year_days(unsigned int day, unsigned int month, unsigned int year)
+{
+	return rtc_ydays[is_leap_year(year)][month] + day-1;
+}
+EXPORT_SYMBOL(rtc_year_days);
+
+/*
+ * Does the rtc_time represent a valid date/time?
+ */
+int rtc_valid_tm(struct rtc_time *tm)
+{
+	if (tm->tm_year < 70
+		|| ((unsigned)tm->tm_mon) >= 12
+		|| tm->tm_mday < 1
+		|| tm->tm_mday > rtc_month_days(tm->tm_mon, tm->tm_year + 1900)
+		|| ((unsigned)tm->tm_hour) >= 24
+		|| ((unsigned)tm->tm_min) >= 60
+		|| ((unsigned)tm->tm_sec) >= 60)
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL(rtc_valid_tm);
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
new file mode 100644
index 0000000..fc94a57
--- /dev/null
+++ b/include/linux/rtc.h
@@ -0,0 +1,46 @@
+/*
+ * Generic RTC interface.
+ * This version contains the part of the user interface to the Real Time Clock
+ * service. It is used with both the legacy mc146818 and also  EFI
+ * Struct rtc_time and first 12 ioctl by Paul Gortmaker, 1996 - separated out
+ * from <linux/mc146818rtc.h> to this file for 2.4 kernels.
+ *
+ * Copyright (C) 1999 Hewlett-Packard Co.
+ * Copyright (C) 1999 Stephane Eranian <eranian@hpl.hp.com>
+ */
+#ifndef _LINUX_RTC_H_
+#define _LINUX_RTC_H_
+
+#include <common.h>
+#include <linux/types.h>
+
+extern int rtc_month_days(unsigned int month, unsigned int year);
+extern int rtc_year_days(unsigned int day, unsigned int month, unsigned int year);
+extern int rtc_valid_tm(struct rtc_time *tm);
+
+struct rtc_class_ops;
+
+struct rtc_device {
+	struct device_d *dev;
+	struct device_d class_dev;
+	struct list_head list;
+
+	const struct rtc_class_ops *ops;
+};
+
+struct rtc_class_ops {
+	int (*read_time)(struct rtc_device *, struct rtc_time *);
+	int (*set_time)(struct rtc_device *, struct rtc_time *);
+};
+
+extern int rtc_register(struct rtc_device *rtcdev);
+
+extern int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm);
+extern int rtc_set_time(struct rtc_device *rtc, struct rtc_time *tm);
+
+static inline bool is_leap_year(unsigned int year)
+{
+	return (!(year % 4) && (year % 100)) || !(year % 400);
+}
+
+#endif /* _LINUX_RTC_H_ */
diff --git a/include/rtc.h b/include/rtc.h
index c2d8bce..e2414fb 100644
--- a/include/rtc.h
+++ b/include/rtc.h
@@ -53,4 +53,6 @@ void to_tm (int, struct rtc_time *);
 unsigned long mktime (unsigned int, unsigned int, unsigned int,
 		      unsigned int, unsigned int, unsigned int);
 
+extern struct rtc_device *rtc_lookup(const char *name);
+
 #endif	/* _RTC_H_ */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
