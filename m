Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0d-0005oV-95
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:08 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:41 +0400
Message-Id: <1362994003-22653-11-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 11/13] Add system controller register driver (SYSCON)
To: barebox@lists.infradead.org

This patch adds support for system controller register driver (SYSCON).
Code taken from Linux Kernel and adapted for using in barebox.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mfd/Kconfig  |    5 +++
 drivers/mfd/Makefile |    1 +
 drivers/mfd/syscon.c |   92 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/syscon.h |   26 ++++++++++++++
 4 files changed, 124 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mfd/syscon.c
 create mode 100644 include/mfd/syscon.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index c506d67..afb87db 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -24,6 +24,11 @@ config MFD_STMPE
 	depends on I2C
 	bool "STMPE-i2c driver"
 
+config MFD_SYSCON
+	bool "System Controller Register"
+	help
+	  Select this option to enable accessing system control registers
+
 config MFD_TWLCORE
 	bool
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 542fb0f..1afd52b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
 obj-$(CONFIG_MFD_MC34708)	+= mc34708.o
 obj-$(CONFIG_MFD_MC9SDZ60)	+= mc9sdz60.o
 obj-$(CONFIG_MFD_STMPE)		+= stmpe-i2c.o
+obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
 obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
 obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
new file mode 100644
index 0000000..87d2f7c
--- /dev/null
+++ b/drivers/mfd/syscon.c
@@ -0,0 +1,92 @@
+/* System Control Driver
+ *
+ * Based on linux driver by:
+ *  Copyright (C) 2012 Freescale Semiconductor, Inc.
+ *  Copyright (C) 2012 Linaro Ltd.
+ *  Author: Dong Aisheng <dong.aisheng@linaro.org>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <io.h>
+#include <init.h>
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#include <linux/err.h>
+
+#include <mfd/syscon.h>
+
+struct syscon {
+	void __iomem *base;
+};
+
+void __iomem *syscon_base_lookup_by_pdevname(const char *s)
+{
+	struct syscon *syscon;
+	struct device_d *dev;
+
+	for_each_device(dev) {
+		if (!strcmp(dev_name(dev), s)) {
+			syscon = dev->priv;
+			return syscon->base;
+		}
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
+static int syscon_probe(struct device_d *dev)
+{
+	struct syscon *syscon;
+	struct resource *res;
+
+	syscon = xzalloc(sizeof(struct syscon));
+	if (!syscon)
+		return -ENOMEM;
+
+	res = dev_get_resource(dev, 0);
+	if (!res) {
+		free(syscon);
+		return -ENOENT;
+	}
+
+	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	if (!res) {
+		free(syscon);
+		return -EBUSY;
+	}
+
+	syscon->base = (void __iomem *)res->start;
+	dev->priv = syscon;
+
+	dev_info(dev, "map 0x%x-0x%x registered\n", res->start, res->end);
+
+	return 0;
+}
+
+static struct platform_device_id syscon_ids[] = {
+	{ "syscon", },
+	{ }
+};
+
+static struct driver_d syscon_driver = {
+	.name		= "syscon",
+	.probe		= syscon_probe,
+	.id_table	= syscon_ids,
+};
+
+static int __init syscon_init(void)
+{
+	return platform_driver_register(&syscon_driver);
+}
+core_initcall(syscon_init);
+
+MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
+MODULE_DESCRIPTION("System Control driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
new file mode 100644
index 0000000..68432b7
--- /dev/null
+++ b/include/mfd/syscon.h
@@ -0,0 +1,26 @@
+/* System Control Driver
+ *
+ * Based on linux driver by:
+ *  Copyright (C) 2012 Freescale Semiconductor, Inc.
+ *  Copyright (C) 2012 Linaro Ltd.
+ *  Author: Dong Aisheng <dong.aisheng@linaro.org>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __MFD_SYSCON_H__
+#define __MFD_SYSCON_H__
+
+#ifdef CONFIG_MFD_SYSCON
+void __iomem *syscon_base_lookup_by_pdevname(const char *);
+#else
+static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)
+{
+	return NULL;
+}
+#endif
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
