Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNGwO-0003AX-U4
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 06:45:19 +0000
Received: from mail440.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 5DC3D1010054
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 08:44:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 08:46:04 +0200
Message-Id: <1379745967-4575-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130921064503.GI1137@ns203013.ovh.net>
References: <20130921064503.GI1137@ns203013.ovh.net>
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
Subject: [PATCH 1/4] misc: add bootcount framework
To: barebox@lists.infradead.org

The bootcount is always how many time the system start.
To determine since when, this will depend on the driver implementation
and your hardware feature.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/misc/Kconfig            |  2 ++
 drivers/misc/Makefile           |  1 +
 drivers/misc/bootcount/Kconfig  | 12 +++++++++
 drivers/misc/bootcount/Makefile |  1 +
 drivers/misc/bootcount/core.c   | 54 +++++++++++++++++++++++++++++++++++++++++
 include/bootcount.h             | 31 +++++++++++++++++++++++
 6 files changed, 101 insertions(+)
 create mode 100644 drivers/misc/bootcount/Kconfig
 create mode 100644 drivers/misc/bootcount/Makefile
 create mode 100644 drivers/misc/bootcount/core.c
 create mode 100644 include/bootcount.h

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 606490b..2532444 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -15,4 +15,6 @@ config JTAG
 	help
 	  Controls JTAG chains connected to I/O pins
 
+source "drivers/misc/bootcount/Kconfig"
+
 endif # MISC_DEVICES
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index b085577..6d94db0 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -3,3 +3,4 @@
 #
 
 obj-$(CONFIG_JTAG)		+= jtag.o
+obj-$(CONFIG_BOOTCOUNT)		+= bootcount/
diff --git a/drivers/misc/bootcount/Kconfig b/drivers/misc/bootcount/Kconfig
new file mode 100644
index 0000000..77a1140
--- /dev/null
+++ b/drivers/misc/bootcount/Kconfig
@@ -0,0 +1,12 @@
+#
+# Boot Count devices
+#
+
+menuconfig BOOTCOUNT
+	bool "Boot Count"
+	help
+	  Add support for boot count devices
+
+if BOOTCOUNT
+
+endif # BOOTCOUNT
diff --git a/drivers/misc/bootcount/Makefile b/drivers/misc/bootcount/Makefile
new file mode 100644
index 0000000..3c02ba1
--- /dev/null
+++ b/drivers/misc/bootcount/Makefile
@@ -0,0 +1 @@
+obj-y		+= core.o
diff --git a/drivers/misc/bootcount/core.c b/drivers/misc/bootcount/core.c
new file mode 100644
index 0000000..91274b3
--- /dev/null
+++ b/drivers/misc/bootcount/core.c
@@ -0,0 +1,54 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+
+#include <common.h>
+#include <init.h>
+#include <bootcount.h>
+
+static struct bootcount_driver *bd;
+
+static struct device_d bootcount_device = {
+	.name = "bootcount",
+	.id = DEVICE_ID_SINGLE,
+};
+
+static int bootcount_count_set(struct param_d *p, void *priv)
+{
+	struct bootcount_driver *bd = priv;
+
+	bd->set(bd);
+
+	return 0;
+}
+
+int register_bootcount(struct bootcount_driver *drv)
+{
+	if (bd)
+		return -EBUSY;
+
+	bootcount_device.parent = drv->parent;
+	register_device(&bootcount_device);
+
+	bd = drv;
+
+	bd->dev = &bootcount_device;
+	dev_add_param_int(bd->dev, "count", bootcount_count_set,
+				NULL, &bd->count, "%d", bd);
+
+	return 0;
+}
+
+static int bootcount_inc(void)
+{
+	if (!bd)
+		return 0;
+
+	bd->count++;
+	bd->set(bd);
+
+	return 0;
+}
+late_initcall(bootcount_inc);
diff --git a/include/bootcount.h b/include/bootcount.h
new file mode 100644
index 0000000..2ef36b5
--- /dev/null
+++ b/include/bootcount.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+
+#ifndef __BOOTCOUNT_H__
+#define __BOOTCOUNT_H__
+
+#include <driver.h>
+
+struct bootcount_driver {
+	void (*set)(struct bootcount_driver *d);
+	void *priv;
+
+	int count;
+
+	struct device_d *dev;
+	struct device_d *parent;
+};
+
+#ifdef CONFIG_BOOTCOUNT
+int register_bootcount(struct bootcount_driver *d);
+#else
+static inline int register_bootcount(struct bootcount_driver *d)
+{
+	return 0
+}
+#endif
+
+#endif /* __BOOTCOUNT_H__ */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
