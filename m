Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5dJd-0001Xl-MQ
 for barebox@lists.infradead.org; Wed, 25 May 2016 18:14:00 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 25 May 2016 21:13:26 +0300
Message-Id: <1464200006-7963-3-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] usb: Replace AT91 OHCI driver with platform OHCI driver
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pm9g45/init.c        |  2 +-
 arch/arm/configs/animeo_ip_defconfig |  2 +-
 arch/arm/configs/dss11_defconfig     |  2 +-
 arch/arm/configs/pm9g45_defconfig    |  2 +-
 drivers/usb/host/Kconfig             |  9 +---
 drivers/usb/host/Makefile            |  1 -
 drivers/usb/host/ohci-at91.c         | 81 ------------------------------------
 drivers/usb/host/ohci-platform.c     | 27 ++++++++++++
 8 files changed, 32 insertions(+), 94 deletions(-)
 delete mode 100644 drivers/usb/host/ohci-at91.c

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 524fe53..58d84dc 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -100,7 +100,7 @@ static void pm9g45_add_device_mci(void) {}
 /*
  * USB OHCI Host port
  */
-#ifdef CONFIG_USB_OHCI_AT91
+#ifdef CONFIG_USB_OHCI_PLATFORM
 static struct at91_usbh_data  __initdata usbh_data = {
 	.ports		= 2,
 	.vbus_pin	= { AT91_PIN_PD0,  -EINVAL },
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 825c5e4..4f5e959 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -68,7 +68,7 @@ CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
-CONFIG_USB_OHCI_AT91=y
+CONFIG_USB_OHCI_PLATFORM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index f15fb6b..ddf7acf 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -33,7 +33,7 @@ CONFIG_UBI=y
 CONFIG_DISK_WRITE=y
 CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
-CONFIG_USB_OHCI_AT91=y
+CONFIG_USB_OHCI_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index d3a5624..7661644 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -52,7 +52,7 @@ CONFIG_UBI=y
 CONFIG_DISK_ATA=y
 CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
-CONFIG_USB_OHCI_AT91=y
+CONFIG_USB_OHCI_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 6ff4afc..117cb2e 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -16,16 +16,9 @@ config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU
 
-if USB_OHCI
-
-config USB_OHCI_AT91
-	depends on ARCH_AT91
-	bool "AT91 OHCI driver"
-
 config USB_OHCI_PLATFORM
 	bool "Platform OHCI driver"
-
-endif
+	depends on USB_OHCI
 
 config USB_XHCI
 	bool "xHCI driver"
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 1b5319d..cf30655 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -2,7 +2,6 @@ obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
-obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_OHCI_PLATFORM)	+= ohci-platform.o
 obj-$(CONFIG_USB_XHCI)		+= xhci-hcd.o xhci-hub.o
 obj-$(CONFIG_USB_XHCI_PCI)	+= xhci-pci.o
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
deleted file mode 100644
index 0a6e5ca..0000000
--- a/drivers/usb/host/ohci-at91.c
+++ /dev/null
@@ -1,81 +0,0 @@
-/*
- * (C) Copyright 2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <linux/clk.h>
-#include <driver.h>
-#include <init.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
-#include <errno.h>
-#include <io.h>
-
-#include "ohci.h"
-
-/* interface and function clocks; sometimes also an AHB clock */
-static struct clk *iclk, *fclk;
-
-static void at91_start_clock(void)
-{
-	clk_enable(iclk);
-	clk_enable(fclk);
-}
-
-static void at91_stop_clock(void)
-{
-	clk_disable(fclk);
-	clk_disable(iclk);
-}
-
-static int at91_ohci_probe(struct device_d *dev)
-{
-	iclk = clk_get(NULL, "ohci_clk");
-	fclk = clk_get(NULL, "uhpck");
-
-	/*
-	 * Start the USB clocks.
-	 */
-	at91_start_clock();
-
-	add_generic_device("ohci", DEVICE_ID_DYNAMIC, NULL, dev->resource[0].start,
-			   resource_size(&dev->resource[0]), IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-
-static void at91_ohci_remove(struct device_d *dev)
-{
-	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
-
-	/*
-	 * Put the USB host controller into reset.
-	 */
-	writel(0, &regs->control);
-
-	/*
-	 * Stop the USB clocks.
-	 */
-	at91_stop_clock();
-}
-
-static struct driver_d at91_ohci_driver = {
-	.name = "at91_ohci",
-	.probe = at91_ohci_probe,
-	.remove = at91_ohci_remove,
-};
-device_platform_driver(at91_ohci_driver);
diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
index 4c97330..5765373 100644
--- a/drivers/usb/host/ohci-platform.c
+++ b/drivers/usb/host/ohci-platform.c
@@ -18,7 +18,34 @@ struct ohci_platform_data {
 	int (*probe)(struct device_d *, struct resource *);
 };
 
+static int at91_ohci_probe(struct device_d *dev, struct resource *res)
+{
+	struct clk *iclk, *fclk;
+
+	iclk = clk_get(NULL, "ohci_clk");
+	if (IS_ERR(iclk))
+		return PTR_ERR(iclk);
+
+	fclk = clk_get(NULL, "uhpck");
+	if (IS_ERR(fclk))
+		return PTR_ERR(fclk);
+
+	/* Start the USB clocks */
+	clk_enable(iclk);
+	clk_enable(fclk);
+
+	return 0;
+}
+
+static struct ohci_platform_data at91_ohci_data = {
+	.probe	= at91_ohci_probe,
+};
+
 static struct platform_device_id ohci_platform_ids[] = {
+	{
+		.name		= "at91_ohci",
+		.driver_data	= (unsigned long)&at91_ohci_data,
+	},
 	{ }
 };
 
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
