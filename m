Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxlYS-0001oy-HI
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 06:15:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Jul 2020 08:14:58 +0200
Message-Id: <20200721061458.26739-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200721061458.26739-1-a.fatoum@pengutronix.de>
References: <20200721061458.26739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] mfd: add Atmel Flexcom support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This is a wrapper which embeds a SPI controller, a I2C controller and
a USART. Only one function can be used at a time. The choice is done
at boot time by the probe function of this MFD driver according to
a device tree property.

These IP cores are available in the sama5d2 and sam9x60. We already have
support for all three configurations, only thing we need is the MFD
selecting one of them. Add this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig         | 10 +++++
 drivers/mfd/Makefile        |  1 +
 drivers/mfd/atmel-flexcom.c | 73 +++++++++++++++++++++++++++++++++++++
 3 files changed, 84 insertions(+)
 create mode 100644 drivers/mfd/atmel-flexcom.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index d03d481898d8..d7a8949bafc8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -91,4 +91,14 @@ config MFD_STM32_TIMERS
 	  Select this to get regmap support for the timer blocks on STM32
 	  MCUs and MPUs.
 
+config MFD_ATMEL_FLEXCOM
+	tristate "Atmel Flexcom (Flexible Serial Communication Unit)"
+	depends on OFDEVICE
+	help
+	  Select this to get support for Atmel Flexcom. This is a wrapper
+	  which embeds a SPI controller, a I2C controller and a USART. Only
+	  one function can be used at a time. The choice is done at boot time
+	  by the probe function of this MFD driver according to a device tree
+	  property.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index a3b296a803f8..690e53693ebc 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
 obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
 obj-$(CONFIG_MFD_STM32_TIMERS)	+= stm32-timers.o
+obj-$(CONFIG_MFD_ATMEL_FLEXCOM)	+= atmel-flexcom.o
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
new file mode 100644
index 000000000000..996d4850ee81
--- /dev/null
+++ b/drivers/mfd/atmel-flexcom.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: (C) 2015 Atmel Corporation
+/*
+ * Driver for Atmel Flexcom
+ * Author: Cyrille Pitchen <cyrille.pitchen@atmel.com>
+ */
+
+#include <common.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <dt-bindings/mfd/atmel-flexcom.h>
+
+/* I/O register offsets */
+#define FLEX_MR		0x0	/* Mode Register */
+#define FLEX_VERSION	0xfc	/* Version Register */
+
+/* Mode Register bit fields */
+#define FLEX_MR_OPMODE_OFFSET	(0)  /* Operating Mode */
+#define FLEX_MR_OPMODE_MASK	(0x3 << FLEX_MR_OPMODE_OFFSET)
+#define FLEX_MR_OPMODE(opmode)	(((opmode) << FLEX_MR_OPMODE_OFFSET) &	\
+				 FLEX_MR_OPMODE_MASK)
+
+static int atmel_flexcom_probe(struct device_d *dev)
+{
+	struct resource *res;
+	struct clk *clk;
+	u32 opmode;
+	int err;
+
+	err = of_property_read_u32(dev->device_node,
+				   "atmel,flexcom-mode", &opmode);
+	if (err)
+		return err;
+
+	if (opmode < ATMEL_FLEXCOM_MODE_USART || opmode > ATMEL_FLEXCOM_MODE_TWI)
+		return -EINVAL;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	err = clk_enable(clk);
+	if (err)
+		return err;
+
+	/*
+	 * Set the Operating Mode in the Mode Register: only the selected device
+	 * is clocked. Hence, registers of the other serial devices remain
+	 * inaccessible and are read as zero. Also the external I/O lines of the
+	 * Flexcom are muxed to reach the selected device.
+	 */
+	writel(FLEX_MR_OPMODE(opmode), IOMEM(res->start) + FLEX_MR);
+
+	clk_disable(clk);
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static const struct of_device_id atmel_flexcom_of_match[] = {
+	{ .compatible = "atmel,sama5d2-flexcom" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d atmel_flexcom_driver = {
+	.probe		= atmel_flexcom_probe,
+	.name		= "atmel_flexcom",
+	.of_compatible	= atmel_flexcom_of_match,
+};
+coredevice_platform_driver(atmel_flexcom_driver);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
