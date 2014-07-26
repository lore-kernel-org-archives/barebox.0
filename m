Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB3qY-0000bc-6f
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 15:25:18 +0000
Received: by mail-we0-f180.google.com with SMTP id w61so5447122wes.11
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 08:24:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat, 26 Jul 2014 17:24:45 +0200
Message-Id: <1406388285-1666-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 7/7] USB: host: add xHCI PCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a driver for PCI-attached xHCI controllers.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/Kconfig    |  7 +++++++
 drivers/usb/host/Makefile   |  1 +
 drivers/usb/host/xhci-pci.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 drivers/usb/host/xhci-pci.c

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 8c64a3b99c11..c5dc2ea532c4 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -33,3 +33,10 @@ config USB_XHCI
 
 	  This driver currently only supports virtual USB 2.0 ports, if you
 	  plan to use USB 3.0 devices, use a USB 2.0 cable in between.
+
+config USB_XHCI_PCI
+	depends on PCI
+	select USB_XHCI
+	bool "PCI xHCI driver"
+	help
+	  Enables support for PCI attached xHCI controllers.
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index a5c009ebd6a8..0478d342720d 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_XHCI)		+= xhci-hcd.o xhci-hub.o
+obj-$(CONFIG_USB_XHCI_PCI)	+= xhci-pci.o
diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
new file mode 100644
index 000000000000..a140b1dd07d3
--- /dev/null
+++ b/drivers/usb/host/xhci-pci.c
@@ -0,0 +1,45 @@
+/*
+ * PCI driver for xHCI controllers
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/pci.h>
+#include <usb/xhci.h>
+
+static int xhci_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct xhci_data data = {};
+
+	pci_enable_device(pdev);
+	pci_set_master(pdev);
+
+	data.regs = pci_iomap(pdev, 0);
+
+	return xhci_register(&pdev->dev, &data);
+}
+
+static DEFINE_PCI_DEVICE_TABLE(xhci_pci_tbl) = {
+	/* handle any USB 3.0 xHCI controller */
+	{ PCI_DEVICE_CLASS(PCI_CLASS_SERIAL_USB_XHCI, ~0), },
+	{ },
+};
+
+static struct pci_driver xhci_pci_driver = {
+	.name = "xHCI PCI",
+	.id_table = xhci_pci_tbl,
+	.probe = xhci_pci_probe,
+};
+
+static int xhci_pci_init(void)
+{
+	return pci_register_driver(&xhci_pci_driver);
+}
+device_initcall(xhci_pci_init);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
