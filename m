Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NH-No
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:24 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:51 +0100
Message-Id: <1358798996-26595-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/9] ehci: add atmel support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/host/Kconfig      |    5 +++
 drivers/usb/host/Makefile     |    1 +
 drivers/usb/host/ehci-atmel.c |   96 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+)
 create mode 100644 drivers/usb/host/ehci-atmel.c

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 439d8eb..3927d3a 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -6,6 +6,11 @@ config USB_EHCI_OMAP
 	depends on USB_TWL4030
 	bool "OMAP EHCI driver"
 
+config USB_EHCI_ATMEL
+	depends on ARCH_AT91
+	depends on USB_EHCI
+	bool "Atmel EHCI driver"
+
 config USB_OHCI
 	bool "OHCI driver"
 
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 00f5e24..156fc7f 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
+obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
new file mode 100644
index 0000000..5957b8e
--- /dev/null
+++ b/drivers/usb/host/ehci-atmel.c
@@ -0,0 +1,96 @@
+/*
+ * (C) Copyright 2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <driver.h>
+#include <init.h>
+#include <usb/usb.h>
+#include <usb/usb_defs.h>
+#include <usb/ehci.h>
+#include <errno.h>
+#include <io.h>
+
+#include "ehci.h"
+
+/* interface and function clocks; sometimes also an AHB clock */
+static struct clk *iclk, *fclk;
+
+static void atmel_start_clock(void)
+{
+	clk_enable(iclk);
+	clk_enable(fclk);
+}
+
+static void atmel_stop_clock(void)
+{
+	clk_disable(fclk);
+	clk_disable(iclk);
+}
+
+static int atmel_ehci_probe(struct device_d *dev)
+{
+	struct ehci_data data;
+
+	iclk = clk_get(dev, "ehci_clk");
+	if (IS_ERR(iclk)) {
+		dev_err(dev, "Error getting interface clock\n");
+		return -ENOENT;
+	}
+
+	fclk = clk_get(dev, "uhpck");
+	if (IS_ERR(fclk)) {
+		dev_err(dev, "Error getting function clock\n");
+		return -ENOENT;
+	}
+
+	/*
+	 * Start the USB clocks.
+	 */
+	atmel_start_clock();
+
+	data.flags = 0;
+
+	data.hccr = dev_request_mem_region(dev, 0);
+
+	ehci_register(dev, &data);
+
+	return 0;
+}
+
+static void atmel_ehci_remove(struct device_d *dev)
+{
+	/*
+	 * Stop the USB clocks.
+	 */
+	atmel_stop_clock();
+}
+
+static struct driver_d atmel_ehci_driver = {
+	.name = "atmel-ehci",
+	.probe = atmel_ehci_probe,
+	.remove = atmel_ehci_remove,
+};
+
+static int atmel_ehci_init(void)
+{
+	platform_driver_register(&atmel_ehci_driver);
+	return 0;
+}
+device_initcall(atmel_ehci_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
