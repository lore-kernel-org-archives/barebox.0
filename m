Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56d-0005aA-8q
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:18 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so2542378bkc.15
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:49 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:34 +0200
Message-Id: <1372788879-11028-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 05/10] OF: gpio: convert DT based gpio handling to new OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This creates a Linux OF API compatible counterpart of of_get_named_gpio_flags.
Existing of_get_named_gpio is converted to a static inline function, which is
in the corresponding of_gpio.h include. While at it, drivers/of/gpio.c is
also renamed to drivers/of/of_gpio.c to follow the of_ prefix naming scheme.
The new include is also added to existing users of of_get_named_gpio.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v3:
- split off gpio related changes in this patch

Cc: barebox@lists.infradead.org
---
 drivers/of/Makefile   |    2 +-
 drivers/of/gpio.c     |   26 ------------------------
 drivers/of/of_gpio.c  |   52 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/spi/imx_spi.c |    1 +
 include/of.h          |    3 --
 include/of_gpio.h     |   44 +++++++++++++++++++++++++++++++++++++++++
 6 files changed, 98 insertions(+), 30 deletions(-)
 delete mode 100644 drivers/of/gpio.c
 create mode 100644 drivers/of/of_gpio.c
 create mode 100644 include/of_gpio.h

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 186074e..e7d0733 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,5 +1,5 @@
 obj-y += address.o base.o fdt.o platform.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
-obj-$(CONFIG_GPIOLIB) += gpio.o
+obj-$(CONFIG_GPIOLIB) += of_gpio.o
 obj-y += partition.o
 obj-y += of_net.o
diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
deleted file mode 100644
index 41e91ec..0000000
--- a/drivers/of/gpio.c
+++ /dev/null
@@ -1,26 +0,0 @@
-#define DEBUG
-
-#include <common.h>
-#include <errno.h>
-#include <of.h>
-#include <gpio.h>
-
-int of_get_named_gpio(struct device_node *np,
-                                   const char *propname, int index)
-{
-	int ret;
-	struct of_phandle_args out_args;
-
-	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
-					index, &out_args);
-	if (ret) {
-		pr_debug("%s: can't parse gpios property: %d\n", __func__, ret);
-		return -EINVAL;
-	}
-
-	ret = gpio_get_num(out_args.np->device, out_args.args[0]);
-	if (ret < 0)
-		return ret;
-
-	return ret;
-}
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
new file mode 100644
index 0000000..3afdf0d
--- /dev/null
+++ b/drivers/of/of_gpio.c
@@ -0,0 +1,52 @@
+#include <common.h>
+#include <errno.h>
+#include <of.h>
+#include <of_gpio.h>
+#include <gpio.h>
+
+/**
+ * of_get_named_gpio_flags() - Get a GPIO number and flags to use with GPIO API
+ * @np:		device node to get GPIO from
+ * @propname:	property name containing gpio specifier(s)
+ * @index:	index of the GPIO
+ * @flags:	a flags pointer to fill in
+ *
+ * Returns GPIO number to use with GPIO API, or one of the errno value on the
+ * error condition. If @flags is not NULL the function also fills in flags for
+ * the GPIO.
+ */
+int of_get_named_gpio_flags(struct device_node *np, const char *propname,
+			   int index, enum of_gpio_flags *flags)
+{
+	struct of_phandle_args out_args;
+	struct device_d *dev;
+	int ret;
+
+	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
+					index, &out_args);
+	if (ret) {
+		pr_err("%s: cannot parse %s property: %d\n",
+			__func__, propname, ret);
+		return ret;
+	}
+
+	dev = of_find_device_by_node(out_args.np);
+	if (!dev) {
+		pr_err("%s: unable to find device of node %s: %d\n",
+			__func__, out_args.np->full_name, ret);
+		return ret;
+	}
+
+	ret = gpio_get_num(dev, out_args.args[0]);
+	if (ret < 0) {
+		pr_err("%s: unable to get gpio num of device %s: %d\n",
+			__func__, dev_name(dev), ret);
+		return ret;
+	}
+
+	if (flags)
+		*flags = out_args.args[1];
+
+	return ret;
+}
+EXPORT_SYMBOL(of_get_named_gpio_flags);
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index b749337..6f942bf 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -23,6 +23,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <gpio.h>
+#include <of_gpio.h>
 #include <mach/spi.h>
 #include <mach/generic.h>
 #include <linux/clk.h>
diff --git a/include/of.h b/include/of.h
index f1f555f..f33ed20 100644
--- a/include/of.h
+++ b/include/of.h
@@ -96,9 +96,6 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
-int of_get_named_gpio(struct device_node *np,
-                                   const char *propname, int index);
-
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
diff --git a/include/of_gpio.h b/include/of_gpio.h
new file mode 100644
index 0000000..50536a8
--- /dev/null
+++ b/include/of_gpio.h
@@ -0,0 +1,44 @@
+/*
+ * OF helpers for the GPIO API
+ *
+ * based on Linux OF_GPIO API
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __OF_GPIO_H
+#define __OF_GPIO_H
+
+/*
+ * This is Linux-specific flags. By default controllers' and Linux' mapping
+ * match, but GPIO controllers are free to translate their own flags to
+ * Linux-specific in their .xlate callback. Though, 1:1 mapping is recommended.
+ */
+enum of_gpio_flags {
+	OF_GPIO_ACTIVE_LOW = 0x1,
+};
+
+#ifdef CONFIG_OFTREE
+extern int of_get_named_gpio_flags(struct device_node *np,
+		const char *list_name, int index, enum of_gpio_flags *flags);
+
+#else /* CONFIG_OFTREE */
+
+static inline int of_get_named_gpio_flags(struct device_node *np,
+		const char *list_name, int index, enum of_gpio_flags *flags)
+{
+	return -ENOSYS;
+}
+
+#endif /* CONFIG_OFTREE */
+
+static inline int of_get_named_gpio(struct device_node *np,
+				const char *list_name, int index)
+{
+	return of_get_named_gpio_flags(np, list_name, index, NULL);
+}
+
+#endif
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
