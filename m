Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x233.google.com ([2607:f8b0:400e:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvgz-0001s6-Mq
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:50 +0000
Received: by mail-pf0-x233.google.com with SMTP id n1so2697446pfn.2
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:00 -0700
Message-Id: <1461649027-5046-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/9] OF: Port of_match_device() and of_device_get_match_data()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>

Port of_match_device() and of_device_get_match_data() from Linux kernel
code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/Makefile |  2 +-
 drivers/of/device.c | 33 +++++++++++++++++++++++++++++++++
 include/of_device.h | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 drivers/of/device.c
 create mode 100644 include/of_device.h

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 0dc2f8d..f31bb29 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,4 +1,4 @@
-obj-y += address.o base.o fdt.o platform.o
+obj-y += address.o base.o fdt.o platform.o device.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
diff --git a/drivers/of/device.c b/drivers/of/device.c
new file mode 100644
index 0000000..e2c3c02
--- /dev/null
+++ b/drivers/of/device.c
@@ -0,0 +1,33 @@
+#include <common.h>
+#include <of.h>
+
+
+/**
+ * of_match_device - Tell if a struct device matches an of_device_id list
+ * @ids: array of of device match structures to search in
+ * @dev: the of device structure to match against
+ *
+ * Used by a driver to check whether an platform_device present in the
+ * system is in its list of supported devices.
+ */
+const struct of_device_id *of_match_device(const struct of_device_id *matches,
+					   const struct device_d *dev)
+{
+	if ((!matches) || (!dev->device_node))
+		return NULL;
+
+	return of_match_node(matches, dev->device_node);
+}
+EXPORT_SYMBOL(of_match_device);
+
+const void *of_device_get_match_data(const struct device_d *dev)
+{
+	const struct of_device_id *match;
+
+	match = of_match_device(dev->driver->of_compatible, dev);
+	if (!match)
+		return NULL;
+
+	return match->data;
+}
+EXPORT_SYMBOL(of_device_get_match_data);
diff --git a/include/of_device.h b/include/of_device.h
new file mode 100644
index 0000000..e84fc9c
--- /dev/null
+++ b/include/of_device.h
@@ -0,0 +1,48 @@
+#ifndef __OF_DEVICE_H
+#define __OF_DEVICE_H
+
+#include <driver.h>
+#include <of.h>
+
+
+#ifdef CONFIG_OFTREE
+extern const struct of_device_id *of_match_device(
+	const struct of_device_id *matches, const struct device_d *dev);
+
+/**
+ * of_driver_match_device - Tell if a driver's of_match_table matches a device.
+ * @drv: the device_driver structure to test
+ * @dev: the device structure to match against
+ */
+static inline int of_driver_match_device(struct device_d *dev,
+					 const struct driver_d *drv)
+{
+	return of_match_device(drv->of_compatible, dev) != NULL;
+}
+
+extern const void *of_device_get_match_data(const struct device_d *dev);
+
+#else /* CONFIG_OF */
+
+static inline int of_driver_match_device(struct device_d *dev,
+					 const struct device_d *drv)
+{
+	return 0;
+}
+
+static inline const void *of_device_get_match_data(const struct device_d *dev)
+{
+	return NULL;
+}
+
+static inline const struct of_device_id *__of_match_device(
+		const struct of_device_id *matches, const struct device_d *dev)
+{
+	return NULL;
+}
+#define of_match_device(matches, dev)	\
+	__of_match_device(of_match_ptr(matches), (dev))
+
+#endif /* CONFIG_OF */
+
+#endif /* _LINUX_OF_DEVICE_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
