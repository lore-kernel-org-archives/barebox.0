Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001na-3U
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:37 +0100
Message-Id: <1355418044-27452-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] USB i.MX: Add chipidea driver support
To: barebox@lists.infradead.org

For proper USB function the usbmisc registers have to be initialized.
This patch adds a driver which matches for the usbmisc registers. This
driver is called from a new driver which binds to the USB ports to
configure the misc registers. After that the driver registers the EHCI
driver and an ULPI transceiver if necessary. Currently only host mode
is supported, but device support can be added later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/Kconfig            |    2 +
 drivers/usb/Makefile           |    1 +
 drivers/usb/imx/Kconfig        |   15 ++
 drivers/usb/imx/Makefile       |    1 +
 drivers/usb/imx/chipidea-imx.c |   91 +++++++++
 drivers/usb/imx/imx-usb-misc.c |  410 ++++++++++++++++++++++++++++++++++++++++
 include/usb/chipidea-imx.h     |   46 +++++
 7 files changed, 566 insertions(+)
 create mode 100644 drivers/usb/imx/Kconfig
 create mode 100644 drivers/usb/imx/Makefile
 create mode 100644 drivers/usb/imx/chipidea-imx.c
 create mode 100644 drivers/usb/imx/imx-usb-misc.c
 create mode 100644 include/usb/chipidea-imx.h

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index acdb4c6..0b349bf 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -3,6 +3,8 @@ menuconfig USB
 
 if USB
 
+source drivers/usb/imx/Kconfig
+
 source drivers/usb/host/Kconfig
 
 source drivers/usb/otg/Kconfig
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index be4b371..3cefab7 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_USB)		+= core/
+obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
new file mode 100644
index 0000000..2c52e72
--- /dev/null
+++ b/drivers/usb/imx/Kconfig
@@ -0,0 +1,15 @@
+
+config USB_IMX_CHIPIDEA
+	bool "i.MX USB support (read help)"
+	depends on ARCH_IMX
+	help
+	  The Freescale i.MX SoCs have a variant of the chipidea ci13xxx for
+	  USB support. Traditionally in barebox this is supported through the
+	  EHCI driver for USB host and the ARC USB gadget driver for device.
+	  This option instead enables support for i.MX chipidea support which
+	  acts as a toplevel driver for the i.MX USB support. The chipidea
+	  support also configures the usbmisc registers which traditionally
+	  are configured in the board file.
+	  This driver is recommended for new designs, but it needs board
+	  support to work.
+	  It's safe to say yes here. Also select EHCI support for USB host.
diff --git a/drivers/usb/imx/Makefile b/drivers/usb/imx/Makefile
new file mode 100644
index 0000000..e37361c
--- /dev/null
+++ b/drivers/usb/imx/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_USB_IMX_CHIPIDEA) += imx-usb-misc.o chipidea-imx.o
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
new file mode 100644
index 0000000..66eb1ad
--- /dev/null
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -0,0 +1,91 @@
+/*
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2 of the License, or (at your
+ * option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
+ * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
+ * for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <driver.h>
+#include <usb/ehci.h>
+#include <usb/chipidea-imx.h>
+#include <usb/ulpi.h>
+
+#define MXC_EHCI_PORTSC_MASK (0xf << 28)
+
+static int imx_chipidea_probe(struct device_d *dev)
+{
+	struct imxusb_platformdata *pdata = dev->platform_data;
+	int ret;
+	void __iomem *base;
+	struct ehci_data data;
+	uint32_t portsc;
+
+	if (!pdata) {
+		dev_err(dev, "no pdata!\n");
+		return -EINVAL;
+	}
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -ENODEV;
+
+	portsc = readl(base + 0x184);
+	portsc &= ~MXC_EHCI_PORTSC_MASK;
+	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
+	writel(portsc, base + 0x184);
+
+	ret = imx_usbmisc_port_init(dev->id, pdata->flags);
+	if (ret) {
+		dev_err(dev, "failed to init misc regs: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
+		dev_dbg(dev, "using ULPI phy\n");
+		if (IS_ENABLED(CONFIG_USB_ULPPI)) {
+			ret = ulpi_setup(base + 0x170, 1);
+		} else {
+			dev_err(dev, "no ULPI support available\n");
+			ret = -ENODEV;
+		}
+
+		if (ret)
+			return ret;
+	}
+
+	data.hccr = base + 0x100;
+	data.hcor = base + 0x140;
+	data.flags = EHCI_HAS_TT;
+
+	if (pdata->mode == IMX_USB_MODE_HOST) {
+		ret = ehci_register(dev, &data);
+	} else {
+		/*
+		 * Not yet implemented. Register USB gadget driver here.
+		 */
+		ret = -ENOSYS;
+	}
+
+	return ret;
+};
+
+static struct driver_d imx_chipidea_driver = {
+	.name   = "imx-usb",
+	.probe  = imx_chipidea_probe,
+};
+
+static int imx_chipidea_init(void)
+{
+	return platform_driver_register(&imx_chipidea_driver);
+}
+device_initcall(imx_chipidea_init);
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
new file mode 100644
index 0000000..7c0ba5c
--- /dev/null
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -0,0 +1,410 @@
+/*
+ * Copyright (c) 2009 Daniel Mack <daniel@caiaq.de>
+ * Copyright (C) 2010 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2 of the License, or (at your
+ * option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
+ * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
+ * for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <usb/chipidea-imx.h>
+
+#define MX25_OTG_SIC_SHIFT	29
+#define MX25_OTG_SIC_MASK	(0x3 << MX25_OTG_SIC_SHIFT)
+#define MX25_OTG_PM_BIT		(1 << 24)
+#define MX25_OTG_PP_BIT		(1 << 11)
+#define MX25_OTG_OCPOL_BIT	(1 << 3)
+
+#define MX25_H1_SIC_SHIFT	21
+#define MX25_H1_SIC_MASK	(0x3 << MX25_H1_SIC_SHIFT)
+#define MX25_H1_PP_BIT		(1 << 18)
+#define MX25_H1_PM_BIT		(1 << 8)
+#define MX25_H1_IPPUE_UP_BIT	(1 << 7)
+#define MX25_H1_IPPUE_DOWN_BIT	(1 << 6)
+#define MX25_H1_TLL_BIT		(1 << 5)
+#define MX25_H1_USBTE_BIT	(1 << 4)
+#define MX25_H1_OCPOL_BIT	(1 << 2)
+
+static __maybe_unused int mx25_initialize_usb_hw(void __iomem *base, int port, unsigned int flags)
+{
+	unsigned int v;
+
+	v = readl(base);
+
+	switch (port) {
+	case 0:	/* OTG port */
+		v &= ~(MX25_OTG_SIC_MASK | MX25_OTG_PM_BIT | MX25_OTG_PP_BIT |
+			MX25_OTG_OCPOL_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX25_OTG_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX25_OTG_PM_BIT;
+
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			v |= MX25_OTG_PP_BIT;
+
+		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
+			v |= MX25_OTG_OCPOL_BIT;
+
+		break;
+	case 1: /* H1 port */
+		v &= ~(MX25_H1_SIC_MASK | MX25_H1_PM_BIT | MX25_H1_PP_BIT |
+			MX25_H1_OCPOL_BIT | MX25_H1_TLL_BIT | MX25_H1_USBTE_BIT |
+			MX25_H1_IPPUE_DOWN_BIT | MX25_H1_IPPUE_UP_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX25_H1_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX25_H1_PM_BIT;
+
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			v |= MX25_H1_PP_BIT;
+
+		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
+			v |= MX25_H1_OCPOL_BIT;
+
+		if (!(flags & MXC_EHCI_TLL_ENABLED))
+			v |= MX25_H1_TLL_BIT;
+
+		if (flags & MXC_EHCI_INTERNAL_PHY)
+			v |= MX25_H1_USBTE_BIT;
+
+		if (flags & MXC_EHCI_IPPUE_DOWN)
+			v |= MX25_H1_IPPUE_DOWN_BIT;
+
+		if (flags & MXC_EHCI_IPPUE_UP)
+			v |= MX25_H1_IPPUE_UP_BIT;
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(v, base);
+
+	return 0;
+}
+
+#define MX27_OTG_SIC_SHIFT	29
+#define MX27_OTG_SIC_MASK	(0x3 << MX27_OTG_SIC_SHIFT)
+#define MX27_OTG_PM_BIT		(1 << 24)
+
+#define MX27_H2_SIC_SHIFT	21
+#define MX27_H2_SIC_MASK	(0x3 << MX27_H2_SIC_SHIFT)
+#define MX27_H2_PM_BIT		(1 << 16)
+#define MX27_H2_DT_BIT		(1 << 5)
+
+#define MX27_H1_SIC_SHIFT	13
+#define MX27_H1_SIC_MASK	(0x3 << MX27_H1_SIC_SHIFT)
+#define MX27_H1_PM_BIT		(1 << 8)
+#define MX27_H1_DT_BIT		(1 << 4)
+
+static __maybe_unused int mx27_mx31_initialize_usb_hw(void __iomem *base, int port, unsigned int flags)
+{
+	unsigned int v;
+
+	v = readl(base);
+
+	switch (port) {
+	case 0:	/* OTG port */
+		v &= ~(MX27_OTG_SIC_MASK | MX27_OTG_PM_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_OTG_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX27_OTG_PM_BIT;
+		break;
+	case 1: /* H1 port */
+		v &= ~(MX27_H1_SIC_MASK | MX27_H1_PM_BIT | MX27_H1_DT_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_H1_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX27_H1_PM_BIT;
+
+		if (!(flags & MXC_EHCI_TLL_ENABLED))
+			v |= MX27_H1_DT_BIT;
+
+		break;
+	case 2:	/* H2 port */
+		v &= ~(MX27_H2_SIC_MASK | MX27_H2_PM_BIT | MX27_H2_DT_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX27_H2_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX27_H2_PM_BIT;
+
+		if (!(flags & MXC_EHCI_TLL_ENABLED))
+			v |= MX27_H2_DT_BIT;
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(v, base);
+
+	return 0;
+}
+
+#define USBCTRL_OTGBASE_OFFSET	0x600
+
+#define MX35_OTG_SIC_SHIFT	29
+#define MX35_OTG_SIC_MASK	(0x3 << MX35_OTG_SIC_SHIFT)
+#define MX35_OTG_PM_BIT		(1 << 24)
+#define MX35_OTG_PP_BIT		(1 << 11)
+#define MX35_OTG_OCPOL_BIT	(1 << 3)
+
+#define MX35_H1_SIC_SHIFT	21
+#define MX35_H1_SIC_MASK	(0x3 << MX35_H1_SIC_SHIFT)
+#define MX35_H1_PP_BIT		(1 << 18)
+#define MX35_H1_PM_BIT		(1 << 8)
+#define MX35_H1_IPPUE_UP_BIT	(1 << 7)
+#define MX35_H1_IPPUE_DOWN_BIT	(1 << 6)
+#define MX35_H1_TLL_BIT		(1 << 5)
+#define MX35_H1_USBTE_BIT	(1 << 4)
+#define MX35_H1_OCPOL_BIT	(1 << 2)
+
+static __maybe_unused int mx35_initialize_usb_hw(void __iomem *base, int port, unsigned int flags)
+{
+	unsigned int v;
+
+	v = readl(base);
+
+	switch (port) {
+	case 0:	/* OTG port */
+		v &= ~(MX35_OTG_SIC_MASK | MX35_OTG_PM_BIT | MX35_OTG_PP_BIT |
+			MX35_OTG_OCPOL_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX35_OTG_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX35_OTG_PM_BIT;
+
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			v |= MX35_OTG_PP_BIT;
+
+		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
+			v |= MX35_OTG_OCPOL_BIT;
+
+		break;
+	case 1: /* H1 port */
+		v &= ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_PP_BIT |
+			MX35_H1_OCPOL_BIT | MX35_H1_TLL_BIT | MX35_H1_USBTE_BIT |
+			MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);
+		v |= (flags & MXC_EHCI_INTERFACE_MASK) << MX35_H1_SIC_SHIFT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX35_H1_PM_BIT;
+
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			v |= MX35_H1_PP_BIT;
+
+		if (!(flags & MXC_EHCI_OC_PIN_ACTIVE_LOW))
+			v |= MX35_H1_OCPOL_BIT;
+
+		if (!(flags & MXC_EHCI_TLL_ENABLED))
+			v |= MX35_H1_TLL_BIT;
+
+		if (flags & MXC_EHCI_INTERNAL_PHY)
+			v |= MX35_H1_USBTE_BIT;
+
+		if (flags & MXC_EHCI_IPPUE_DOWN)
+			v |= MX35_H1_IPPUE_DOWN_BIT;
+
+		if (flags & MXC_EHCI_IPPUE_UP)
+			v |= MX35_H1_IPPUE_UP_BIT;
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(v, base);
+
+	return 0;
+}
+
+/* USB_CTRL */
+#define MX5_OTG_UCTRL_OWIE_BIT		(1 << 27)	/* OTG wakeup intr enable */
+#define MX5_OTG_UCTRL_OPM_BIT		(1 << 24)	/* OTG power mask */
+#define MX5_H1_UCTRL_H1UIE_BIT		(1 << 12)	/* Host1 ULPI interrupt enable */
+#define MX5_H1_UCTRL_H1WIE_BIT		(1 << 11)	/* HOST1 wakeup intr enable */
+#define MX5_H1_UCTRL_H1PM_BIT		(1 <<  8)	/* HOST1 power mask */
+
+/* USB_PHY_CTRL_FUNC */
+#define MX5_OTG_PHYCTRL_OC_POL_BIT	(1 << 9)	/* OTG Polarity of Overcurrent */
+#define MX5_OTG_PHYCTRL_OC_DIS_BIT	(1 << 8)	/* OTG Disable Overcurrent Event */
+#define MX5_H1_OC_POL_BIT		(1 << 6)	/* UH1 Polarity of Overcurrent */
+#define MX5_H1_OC_DIS_BIT		(1 << 5)	/* UH1 Disable Overcurrent Event */
+#define MX5_OTG_PHYCTRL_PWR_POL_BIT	(1 << 3)	/* OTG Power Pin Polarity */
+
+/* USBH2CTRL */
+#define MX5_H2_UCTRL_H2UIE_BIT		(1 << 8)
+#define MX5_H2_UCTRL_H2WIE_BIT		(1 << 7)
+#define MX5_H2_UCTRL_H2PM_BIT		(1 << 4)
+
+#define MX5_USBCTRL_OFFSET		0x0
+#define MX5_UTMI_PHY_CTRL_0		0x8
+#define MX5_UTMI_PHY_CTRL_1		0xc
+#define MX5_USBH2CTRL_OFFSET		0x14
+
+static __maybe_unused int mx5_initialize_usb_hw(void __iomem *base, int port,
+		unsigned int flags)
+{
+	unsigned int v;
+
+	switch (port) {
+	case 0:	/* OTG port */
+		if (!(flags & MXC_EHCI_INTERNAL_PHY))
+			return 0;
+
+		/* Adjust UTMI PHY frequency to 24MHz */
+		v = readl(base + MX5_UTMI_PHY_CTRL_1);
+		v = (v & ~0x3) | 0x01;
+		writel(v, base + MX5_UTMI_PHY_CTRL_1);
+
+		v = readl(base + MX5_UTMI_PHY_CTRL_0);
+		v &= ~MX5_OTG_PHYCTRL_OC_POL_BIT;
+		v &= ~MX5_OTG_PHYCTRL_OC_DIS_BIT;
+		v &= ~MX5_OTG_PHYCTRL_PWR_POL_BIT;
+
+		if (flags & MXC_EHCI_OC_PIN_ACTIVE_LOW)
+			v |= MX5_OTG_PHYCTRL_OC_POL_BIT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX5_OTG_PHYCTRL_OC_DIS_BIT;
+
+		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
+			v |= MX5_OTG_PHYCTRL_PWR_POL_BIT;
+
+		writel(v, base + MX5_UTMI_PHY_CTRL_0);
+
+		v = readl(base + MX5_USBCTRL_OFFSET);
+		v &= ~MX5_OTG_UCTRL_OWIE_BIT;
+		v &= ~MX5_OTG_UCTRL_OPM_BIT;
+
+		if (flags & MXC_EHCI_WAKEUP_ENABLED)
+			v |= MX5_OTG_UCTRL_OWIE_BIT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX5_OTG_UCTRL_OPM_BIT;
+
+		writel(v, base + MX5_USBCTRL_OFFSET);
+
+		break;
+	case 1:	/* H1 port */
+		v = readl(base + MX5_USBCTRL_OFFSET);
+		v &= ~MX5_H1_UCTRL_H1PM_BIT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX5_H1_UCTRL_H1PM_BIT;
+
+		writel(v, base + MX5_USBCTRL_OFFSET);
+
+		break;
+	case 2: /* H2 port */
+		v = readl(base + MX5_USBH2CTRL_OFFSET);
+		v &= ~MX5_H2_UCTRL_H2PM_BIT;
+
+		if (!(flags & MXC_EHCI_POWER_PINS_ENABLED))
+			v |= MX5_H2_UCTRL_H2PM_BIT;
+
+		writel(v, base + MX5_USBH2CTRL_OFFSET);
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static struct platform_device_id imx_usbmisc_ids[] = {
+#ifdef CONFIG_ARCH_IMX25
+	{
+		.name = "imx25-usb-misc",
+		.driver_data = (unsigned long)&mx25_initialize_usb_hw,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	{
+		.name = "imx27-usb-misc",
+		.driver_data = (unsigned long)&mx27_mx31_initialize_usb_hw,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	{
+		.name = "imx31-usb-misc",
+		.driver_data = (unsigned long)&mx27_mx31_initialize_usb_hw,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	{
+		.name = "imx35-usb-misc",
+		.driver_data = (unsigned long)&mx35_initialize_usb_hw,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX51
+	{
+		.name = "imx51-usb-misc",
+		.driver_data = (unsigned long)&mx5_initialize_usb_hw,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX53
+	{
+		.name = "imx53-usb-misc",
+		.driver_data = (unsigned long)&mx5_initialize_usb_hw,
+	},
+#endif
+	{
+                /* sentinel */
+	},
+};
+
+static int (*__imx_usbmisc_port_init)(void __iomem *base, int port, unsigned flags);
+static void __iomem *usbmisc_base;
+
+int imx_usbmisc_port_init(int port, unsigned flags)
+{
+	if (!__imx_usbmisc_port_init)
+		return -ENODEV;
+
+	return __imx_usbmisc_port_init(usbmisc_base, port, flags);
+}
+
+static int imx_usbmisc_probe(struct device_d *dev)
+{
+	struct imx_serial_devtype_data *devtype;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		return ret;
+
+	usbmisc_base = dev_request_mem_region(dev, 0);
+	if (!usbmisc_base)
+		return -ENOMEM;
+
+	__imx_usbmisc_port_init = (void *)devtype;
+
+	return 0;
+}
+
+static struct driver_d imx_usbmisc_driver = {
+	.name   = "imx-usbmisc",
+	.probe  = imx_usbmisc_probe,
+	.id_table = imx_usbmisc_ids,
+};
+
+static int imx_usbmisc_init(void)
+{
+	platform_driver_register(&imx_usbmisc_driver);
+	return 0;
+}
+
+coredevice_initcall(imx_usbmisc_init);
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
new file mode 100644
index 0000000..e98cc89
--- /dev/null
+++ b/include/usb/chipidea-imx.h
@@ -0,0 +1,46 @@
+#ifndef __USB_CHIPIDEA_IMX_H
+#define __USB_CHIPIDEA_IMX_H
+
+/*
+ * POTSC flags
+ */
+#define MXC_EHCI_SERIAL			(1 << 29)
+#define MXC_EHCI_MODE_UTMI_8BIT		(0 << 30)
+#define MXC_EHCI_MODE_UTMI_16_BIT	((0 << 30) | (1 << 28))
+#define MXC_EHCI_MODE_PHILIPS		(1 << 30)
+#define MXC_EHCI_MODE_ULPI		(2 << 30)
+#define MXC_EHCI_MODE_SERIAL		(3 << 30)
+
+/*
+ * USB misc flags
+ */
+#define MXC_EHCI_INTERFACE_DIFF_UNI	(0 << 0)
+#define MXC_EHCI_INTERFACE_DIFF_BI	(1 << 0)
+#define MXC_EHCI_INTERFACE_SINGLE_UNI	(2 << 0)
+#define MXC_EHCI_INTERFACE_SINGLE_BI	(3 << 0)
+#define MXC_EHCI_INTERFACE_MASK		(0xf)
+
+#define MXC_EHCI_POWER_PINS_ENABLED	(1 << 5)
+#define MXC_EHCI_PWR_PIN_ACTIVE_HIGH	(1 << 6)
+#define MXC_EHCI_OC_PIN_ACTIVE_LOW	(1 << 7)
+#define MXC_EHCI_TLL_ENABLED		(1 << 8)
+
+#define MXC_EHCI_INTERNAL_PHY		(1 << 9)
+#define MXC_EHCI_IPPUE_DOWN		(1 << 10)
+#define MXC_EHCI_IPPUE_UP		(1 << 11)
+#define MXC_EHCI_WAKEUP_ENABLED		(1 << 12)
+#define MXC_EHCI_ITC_NO_THRESHOLD	(1 << 13)
+
+enum imx_usb_mode {
+	IMX_USB_MODE_HOST,
+	IMX_USB_MODE_DEVICE,
+};
+
+struct imxusb_platformdata {
+	unsigned long flags;
+	enum imx_usb_mode mode;
+};
+
+int imx_usbmisc_port_init(int port, unsigned flags);
+
+#endif /* __USB_CHIPIDEA_IMX_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
