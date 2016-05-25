Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5dJd-0001Xk-MP
 for barebox@lists.infradead.org; Wed, 25 May 2016 18:13:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 25 May 2016 21:13:25 +0300
Message-Id: <1464200006-7963-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1464200006-7963-1-git-send-email-shc_work@mail.ru>
References: <1464200006-7963-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] usb: Add OHCI platform driver
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/host/Kconfig         |  3 +++
 drivers/usb/host/Makefile        |  1 +
 drivers/usb/host/ohci-platform.c | 57 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+)
 create mode 100644 drivers/usb/host/ohci-platform.c

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 54eaf46..6ff4afc 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -22,6 +22,9 @@ config USB_OHCI_AT91
 	depends on ARCH_AT91
 	bool "AT91 OHCI driver"
 
+config USB_OHCI_PLATFORM
+	bool "Platform OHCI driver"
+
 endif
 
 config USB_XHCI
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 0478d34..1b5319d 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -3,5 +3,6 @@ obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
+obj-$(CONFIG_USB_OHCI_PLATFORM)	+= ohci-platform.o
 obj-$(CONFIG_USB_XHCI)		+= xhci-hcd.o xhci-hub.o
 obj-$(CONFIG_USB_XHCI_PCI)	+= xhci-pci.o
diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
new file mode 100644
index 0000000..4c97330
--- /dev/null
+++ b/drivers/usb/host/ohci-platform.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2014 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+
+struct ohci_platform_data {
+	int (*probe)(struct device_d *, struct resource *);
+};
+
+static struct platform_device_id ohci_platform_ids[] = {
+	{ }
+};
+
+static int ohci_platform_probe(struct device_d *dev)
+{
+	struct ohci_platform_data *data;
+	struct resource *res;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (const void **)&data);
+	if (ret)
+		return ret;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	dev->priv = data;
+
+	if (data->probe) {
+		ret = data->probe(dev, res);
+		if (ret)
+			return ret;
+	}
+
+	add_generic_device_res("ohci", DEVICE_ID_SINGLE, res, 1, NULL);
+
+	return 0;
+}
+
+static struct driver_d ohci_platform_driver = {
+	.name		= "ohci-platform",
+	.id_table	= ohci_platform_ids,
+	.probe		= ohci_platform_probe,
+};
+device_platform_driver(ohci_platform_driver);
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
