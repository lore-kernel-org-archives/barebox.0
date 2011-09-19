Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6y-0000WQ-ND
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:19 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 38E7F1014188
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:47 +0200
Message-Id: <1316434549-15243-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/12] at91: add ohci support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |   18 ++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   13 ++++
 arch/arm/mach-at91/at91sam9261_devices.c |   17 +++++
 arch/arm/mach-at91/at91sam9263_devices.c |   25 ++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   25 ++++++++
 arch/arm/mach-at91/include/mach/board.h  |    7 ++
 drivers/usb/host/Makefile                |    1 +
 drivers/usb/host/ohci-at91.c             |   98 ++++++++++++++++++++++++++++++
 8 files changed, 204 insertions(+), 0 deletions(-)
 create mode 100644 drivers/usb/host/ohci-at91.c

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 453c10a..bd7d3f0 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -26,6 +26,24 @@ void at91_add_device_sdram(u32 size)
 }
 
 /* --------------------------------------------------------------------
+ *  USB Host
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	if (!data)
+		return;
+
+	add_generic_device("at91_ohci", -1, NULL, AT91RM9200_UHP_BASE, 1024 * 1024,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
+
+/* --------------------------------------------------------------------
  *  Ethernet
  * -------------------------------------------------------------------- */
 
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 4607646..7ffc97d 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -26,6 +26,19 @@ void at91_add_device_sdram(u32 size)
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	if (!data)
+		return;
+
+	add_generic_device("at91_ohci", -1, NULL, AT91SAM9260_UHP_BASE, 1024 * 1024,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_DRIVER_NET_MACB)
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index c6a3dba..3f69b18 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -26,6 +26,23 @@ void at91_add_device_sdram(u32 size)
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
+/* --------------------------------------------------------------------
+ *  USB Host
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	if (!data)
+		return;
+
+	add_generic_device("at91_ohci", -1, NULL, AT91SAM9261_UHP_BASE, 1024 * 1024,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_NAND_ATMEL)
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index f5058dc..994a975 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -26,6 +26,31 @@ void at91_add_device_sdram(u32 size)
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
+/* --------------------------------------------------------------------
+ *  USB Host
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	int i;
+
+	if (!data)
+		return;
+
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (data->vbus_pin[i])
+			at91_set_gpio_output(data->vbus_pin[i], 0);
+	}
+
+	add_generic_device("at91_ohci", -1, NULL, AT91SAM9263_UHP_BASE, 1024 * 1024,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_DRIVER_NET_MACB)
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 8bc1104..a569542 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -26,6 +26,31 @@ void at91_add_device_sdram(u32 size)
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_6, size);
 }
 
+/* --------------------------------------------------------------------
+ *  USB Host (OHCI)
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	int i;
+
+	if (!data)
+		return;
+
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (data->vbus_pin[i])
+			at91_set_gpio_output(data->vbus_pin[i], 0);
+	}
+
+	add_generic_device("at91_ohci", -1, NULL, AT91SAM9G45_OHCI_BASE, 1024 * 1024,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_DRIVER_NET_MACB)
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index f970ad8..546fe90 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -25,6 +25,13 @@
 #include <spi/spi.h>
 #include <linux/mtd/mtd.h>
 
+ /* USB Host */
+struct at91_usbh_data {
+	u8		ports;		/* number of ports on root hub */
+	u8		vbus_pin[2];	/* port power-control pin */
+};
+extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
+
 void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
 
  /* NAND / SmartMedia */
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index f1b1344..1c7e18f 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
+obj-$(CONFIG_ARCH_AT91)		+= ohci-at91.o
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
new file mode 100644
index 0000000..cae049a
--- /dev/null
+++ b/drivers/usb/host/ohci-at91.c
@@ -0,0 +1,98 @@
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <driver.h>
+#include <init.h>
+#include <usb/usb.h>
+#include <usb/usb_defs.h>
+#include <errno.h>
+#include <asm/io.h>
+
+#include "ohci.h"
+
+/* interface and function clocks; sometimes also an AHB clock */
+static struct clk *iclk, *fclk;
+
+static void at91_start_clock(void)
+{
+	clk_enable(iclk);
+	clk_enable(fclk);
+}
+
+static void at91_stop_clock(void)
+{
+	clk_disable(fclk);
+	clk_disable(iclk);
+}
+
+static int at91_ohci_probe(struct device_d *dev)
+{
+	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
+
+	iclk = clk_get(NULL, "ohci_clk");
+	fclk = clk_get(NULL, "uhpck");
+
+	/*
+	 * Start the USB clocks.
+	 */
+	at91_start_clock();
+
+	/*
+	 * The USB host controller must remain in reset.
+	 */
+	writel(0, &regs->control);
+
+	add_generic_device("ohci", -1, NULL, dev->resource[0].start,
+			   dev->resource[0].size, IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+
+static void at91_ohci_remove(struct device_d *dev)
+{
+	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
+
+	/*
+	 * Put the USB host controller into reset.
+	 */
+	writel(0, &regs->control);
+
+	/*
+	 * Stop the USB clocks.
+	 */
+	at91_stop_clock();
+}
+
+static struct driver_d at91_ohci_driver = {
+	.name = "at91_ohci",
+	.probe = at91_ohci_probe,
+	.remove = at91_ohci_remove,
+};
+
+static int at91_ohci_init(void)
+{
+	register_driver(&at91_ohci_driver);
+	return 0;
+}
+device_initcall(at91_ohci_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
