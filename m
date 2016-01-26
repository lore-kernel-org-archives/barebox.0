Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcK-0004hs-GY
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:43 +0000
Received: by mail-pa0-x243.google.com with SMTP id yy13so7442892pab.1
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:53 -0800
Message-Id: <1453787758-12688-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/7] net: Port bitbanged MDIO code from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

Port bitbanged MDIO framework and gpiolib MDIO bus driver that uses it
from Linux kernel.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/Kconfig        |  15 +++
 drivers/net/phy/Makefile       |   2 +
 drivers/net/phy/mdio-bitbang.c | 228 ++++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/mdio-gpio.c    | 231 +++++++++++++++++++++++++++++++++++++++++
 include/linux/mdio-bitbang.h   |  45 ++++++++
 5 files changed, 521 insertions(+)
 create mode 100644 drivers/net/phy/mdio-bitbang.c
 create mode 100644 drivers/net/phy/mdio-gpio.c
 create mode 100644 include/linux/mdio-bitbang.h

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index d0a02c1..d30f65b 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -46,6 +46,21 @@ config MDIO_MVEBU
 	---help---
 	  Driver for the MDIO bus found on Marvell EBU SoCs.
 
+config MDIO_BITBANG
+        bool "Support for bitbanged MDIO buses"
+	---help---
+          This module implements the MDIO bus protocol in software,
+          for use by low level drivers that export the ability to
+          drive the relevant pins.
+
+          If in doubt, say N.
+
+config MDIO_GPIO
+	bool "Support for GPIO lib-based bitbanged MDIO buses"
+	depends on MDIO_BITBANG && GPIOLIB
+	---help---
+	  Supports GPIO lib-based MDIO busses.
+
 endif
 
 endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 94b9be8..10732f8 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -7,3 +7,5 @@ obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
 
 obj-$(CONFIG_MDIO_MVEBU)	+= mdio-mvebu.o
+obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
+obj-$(CONFIG_MDIO_GPIO)		+= mdio-gpio.o
diff --git a/drivers/net/phy/mdio-bitbang.c b/drivers/net/phy/mdio-bitbang.c
new file mode 100644
index 0000000..4f610e3
--- /dev/null
+++ b/drivers/net/phy/mdio-bitbang.c
@@ -0,0 +1,228 @@
+/*
+ * Bitbanged MDIO support.
+ *
+ * Author: Scott Wood <scottwood@freescale.com>
+ * Copyright (c) 2007 Freescale Semiconductor
+ *
+ * Based on CPM2 MDIO code which is:
+ *
+ * Copyright (c) 2003 Intracom S.A.
+ *  by Pantelis Antoniou <panto@intracom.gr>
+ *
+ * 2005 (c) MontaVista Software, Inc.
+ * Vitaly Bordug <vbordug@ru.mvista.com>
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2. This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <linux/phy.h>
+#include <linux/mdio-bitbang.h>
+
+#define MDIO_READ 2
+#define MDIO_WRITE 1
+
+#define MDIO_C45 (1<<15)
+#define MDIO_C45_ADDR (MDIO_C45 | 0)
+#define MDIO_C45_READ (MDIO_C45 | 3)
+#define MDIO_C45_WRITE (MDIO_C45 | 1)
+
+#define MDIO_SETUP_TIME 10
+#define MDIO_HOLD_TIME 10
+
+/* Minimum MDC period is 400 ns, plus some margin for error.  MDIO_DELAY
+ * is done twice per period.
+ */
+#define MDIO_DELAY 250
+
+/* The PHY may take up to 300 ns to produce data, plus some margin
+ * for error.
+ */
+#define MDIO_READ_DELAY 350
+
+/* MDIO must already be configured as output. */
+static void mdiobb_send_bit(struct mdiobb_ctrl *ctrl, int val)
+{
+	const struct mdiobb_ops *ops = ctrl->ops;
+
+	ops->set_mdio_data(ctrl, val);
+	ndelay(MDIO_DELAY);
+	ops->set_mdc(ctrl, 1);
+	ndelay(MDIO_DELAY);
+	ops->set_mdc(ctrl, 0);
+}
+
+/* MDIO must already be configured as input. */
+static int mdiobb_get_bit(struct mdiobb_ctrl *ctrl)
+{
+	const struct mdiobb_ops *ops = ctrl->ops;
+
+	ndelay(MDIO_DELAY);
+	ops->set_mdc(ctrl, 1);
+	ndelay(MDIO_READ_DELAY);
+	ops->set_mdc(ctrl, 0);
+
+	return ops->get_mdio_data(ctrl);
+}
+
+/* MDIO must already be configured as output. */
+static void mdiobb_send_num(struct mdiobb_ctrl *ctrl, u16 val, int bits)
+{
+	int i;
+
+	for (i = bits - 1; i >= 0; i--)
+		mdiobb_send_bit(ctrl, (val >> i) & 1);
+}
+
+/* MDIO must already be configured as input. */
+static u16 mdiobb_get_num(struct mdiobb_ctrl *ctrl, int bits)
+{
+	int i;
+	u16 ret = 0;
+
+	for (i = bits - 1; i >= 0; i--) {
+		ret <<= 1;
+		ret |= mdiobb_get_bit(ctrl);
+	}
+
+	return ret;
+}
+
+/* Utility to send the preamble, address, and
+ * register (common to read and write).
+ */
+static void mdiobb_cmd(struct mdiobb_ctrl *ctrl, int op, u8 phy, u8 reg)
+{
+	const struct mdiobb_ops *ops = ctrl->ops;
+	int i;
+
+	ops->set_mdio_dir(ctrl, 1);
+
+	/*
+	 * Send a 32 bit preamble ('1's) with an extra '1' bit for good
+	 * measure.  The IEEE spec says this is a PHY optional
+	 * requirement.  The AMD 79C874 requires one after power up and
+	 * one after a MII communications error.  This means that we are
+	 * doing more preambles than we need, but it is safer and will be
+	 * much more robust.
+	 */
+
+	for (i = 0; i < 32; i++)
+		mdiobb_send_bit(ctrl, 1);
+
+	/* send the start bit (01) and the read opcode (10) or write (10).
+	   Clause 45 operation uses 00 for the start and 11, 10 for
+	   read/write */
+	mdiobb_send_bit(ctrl, 0);
+	if (op & MDIO_C45)
+		mdiobb_send_bit(ctrl, 0);
+	else
+		mdiobb_send_bit(ctrl, 1);
+	mdiobb_send_bit(ctrl, (op >> 1) & 1);
+	mdiobb_send_bit(ctrl, (op >> 0) & 1);
+
+	mdiobb_send_num(ctrl, phy, 5);
+	mdiobb_send_num(ctrl, reg, 5);
+}
+
+/* In clause 45 mode all commands are prefixed by MDIO_ADDR to specify the
+   lower 16 bits of the 21 bit address. This transfer is done identically to a
+   MDIO_WRITE except for a different code. To enable clause 45 mode or
+   MII_ADDR_C45 into the address. Theoretically clause 45 and normal devices
+   can exist on the same bus. Normal devices should ignore the MDIO_ADDR
+   phase. */
+static int mdiobb_cmd_addr(struct mdiobb_ctrl *ctrl, int phy, u32 addr)
+{
+	unsigned int dev_addr = (addr >> 16) & 0x1F;
+	unsigned int reg = addr & 0xFFFF;
+	mdiobb_cmd(ctrl, MDIO_C45_ADDR, phy, dev_addr);
+
+	/* send the turnaround (10) */
+	mdiobb_send_bit(ctrl, 1);
+	mdiobb_send_bit(ctrl, 0);
+
+	mdiobb_send_num(ctrl, reg, 16);
+
+	ctrl->ops->set_mdio_dir(ctrl, 0);
+	mdiobb_get_bit(ctrl);
+
+	return dev_addr;
+}
+
+static int mdiobb_read(struct mii_bus *bus, int phy, int reg)
+{
+	struct mdiobb_ctrl *ctrl = bus->priv;
+	int ret, i;
+
+	if (reg & MII_ADDR_C45) {
+		reg = mdiobb_cmd_addr(ctrl, phy, reg);
+		mdiobb_cmd(ctrl, MDIO_C45_READ, phy, reg);
+	} else
+		mdiobb_cmd(ctrl, MDIO_READ, phy, reg);
+
+	ctrl->ops->set_mdio_dir(ctrl, 0);
+
+	/* check the turnaround bit: the PHY should be driving it to zero, if this
+	 * PHY is listed in phy_ignore_ta_mask as having broken TA, skip that
+	 */
+	if (mdiobb_get_bit(ctrl) != 0) {
+		/* PHY didn't drive TA low -- flush any bits it
+		 * may be trying to send.
+		 */
+		for (i = 0; i < 32; i++)
+			mdiobb_get_bit(ctrl);
+
+		return 0xffff;
+	}
+
+	ret = mdiobb_get_num(ctrl, 16);
+	mdiobb_get_bit(ctrl);
+	return ret;
+}
+
+static int mdiobb_write(struct mii_bus *bus, int phy, int reg, u16 val)
+{
+	struct mdiobb_ctrl *ctrl = bus->priv;
+
+	if (reg & MII_ADDR_C45) {
+		reg = mdiobb_cmd_addr(ctrl, phy, reg);
+		mdiobb_cmd(ctrl, MDIO_C45_WRITE, phy, reg);
+	} else
+		mdiobb_cmd(ctrl, MDIO_WRITE, phy, reg);
+
+	/* send the turnaround (10) */
+	mdiobb_send_bit(ctrl, 1);
+	mdiobb_send_bit(ctrl, 0);
+
+	mdiobb_send_num(ctrl, val, 16);
+
+	ctrl->ops->set_mdio_dir(ctrl, 0);
+	mdiobb_get_bit(ctrl);
+	return 0;
+}
+
+static int mdiobb_reset(struct mii_bus *bus)
+{
+	struct mdiobb_ctrl *ctrl = bus->priv;
+	if (ctrl->reset)
+		ctrl->reset(bus);
+	return 0;
+}
+
+struct mii_bus *alloc_mdio_bitbang(struct mdiobb_ctrl *ctrl)
+{
+	struct mii_bus *bus;
+
+	bus = xzalloc(sizeof(*bus));
+
+	bus->read = mdiobb_read;
+	bus->write = mdiobb_write;
+	bus->reset = mdiobb_reset;
+	bus->priv = ctrl;
+
+	return bus;
+}
+EXPORT_SYMBOL(alloc_mdio_bitbang);
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
new file mode 100644
index 0000000..a839f2d
--- /dev/null
+++ b/drivers/net/phy/mdio-gpio.c
@@ -0,0 +1,231 @@
+/*
+ * GPIO based MDIO bitbang driver.
+ * Supports OpenFirmware.
+ *
+ * (C) Copyright 2015
+ *  CogentEmbedded, Andrey Gusakov <andrey.gusakov@cogentembedded.com>
+ *
+ * based on mvmdio driver from Linux
+ *  Copyright (c) 2008 CSE Semaphore Belgium.
+ *   by Laurent Pinchart <laurentp@cse-semaphore.com>
+ *
+ * Copyright (C) 2008, Paulius Zaleckas <paulius.zaleckas@teltonika.lt>
+ *
+ * Based on earlier work by
+ *
+ * Copyright (c) 2003 Intracom S.A.
+ *  by Pantelis Antoniou <panto@intracom.gr>
+ *
+ * 2005 (c) MontaVista Software, Inc.
+ * Vitaly Bordug <vbordug@ru.mvista.com>
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2. This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+
+#define DEBUG
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <of_gpio.h>
+#include <linux/phy.h>
+#include <gpio.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#include <linux/mdio-bitbang.h>
+
+struct mdio_gpio_info {
+	struct mdiobb_ctrl ctrl;
+	int mdc, mdio, mdo;
+	int mdc_active_low, mdio_active_low, mdo_active_low;
+};
+
+struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
+{
+	int ret;
+	enum of_gpio_flags flags;
+	struct mdio_gpio_info *info;
+
+	info = xzalloc(sizeof(*info));
+
+	ret = of_get_gpio_flags(dev->device_node, 0, &flags);
+	if (ret < 0) {
+		dev_dbg(dev, "failed to get MDC inforamtion from DT\n");
+		goto free_info;
+	}
+
+	info->mdc = ret;
+	info->mdc_active_low = flags & OF_GPIO_ACTIVE_LOW;
+
+	ret = of_get_gpio_flags(dev->device_node, 1, &flags);
+	if (ret < 0) {
+		dev_dbg(dev, "failed to get MDIO inforamtion from DT\n");
+		goto free_info;
+	}
+
+	info->mdio = ret;
+	info->mdio_active_low = flags & OF_GPIO_ACTIVE_LOW;
+
+	ret = of_get_gpio_flags(dev->device_node, 2, &flags);
+	if (ret > 0) {
+		dev_dbg(dev, "found MDO information in DT\n");
+		info->mdo = ret;
+		info->mdo_active_low = flags & OF_GPIO_ACTIVE_LOW;
+	}
+
+	return info;
+
+free_info:
+	free(info);
+	return ERR_PTR(ret);
+}
+
+static void mdio_dir(struct mdiobb_ctrl *ctrl, int dir)
+{
+	struct mdio_gpio_info *bitbang =
+		container_of(ctrl, struct mdio_gpio_info, ctrl);
+
+	if (bitbang->mdo) {
+		/* Separate output pin. Always set its value to high
+		 * when changing direction. If direction is input,
+		 * assume the pin serves as pull-up. If direction is
+		 * output, the default value is high.
+		 */
+		gpio_set_value(bitbang->mdo,
+				1 ^ bitbang->mdo_active_low);
+		return;
+	}
+
+	if (dir)
+		gpio_direction_output(bitbang->mdio,
+				      1 ^ bitbang->mdio_active_low);
+	else
+		gpio_direction_input(bitbang->mdio);
+}
+
+static int mdio_get(struct mdiobb_ctrl *ctrl)
+{
+	struct mdio_gpio_info *bitbang =
+		container_of(ctrl, struct mdio_gpio_info, ctrl);
+
+	return gpio_get_value(bitbang->mdio) ^
+		bitbang->mdio_active_low;
+}
+
+static void mdio_set(struct mdiobb_ctrl *ctrl, int what)
+{
+	struct mdio_gpio_info *bitbang =
+		container_of(ctrl, struct mdio_gpio_info, ctrl);
+
+	if (bitbang->mdo)
+		gpio_set_value(bitbang->mdo,
+				what ^ bitbang->mdo_active_low);
+	else
+		gpio_set_value(bitbang->mdio,
+				what ^ bitbang->mdio_active_low);
+}
+
+static void mdc_set(struct mdiobb_ctrl *ctrl, int what)
+{
+	struct mdio_gpio_info *bitbang =
+		container_of(ctrl, struct mdio_gpio_info, ctrl);
+
+	gpio_set_value(bitbang->mdc, what ^ bitbang->mdc_active_low);
+}
+
+static struct mdiobb_ops mdio_gpio_ops = {
+	.set_mdc = mdc_set,
+	.set_mdio_dir = mdio_dir,
+	.set_mdio_data = mdio_set,
+	.get_mdio_data = mdio_get,
+};
+
+static int mdio_gpio_probe(struct device_d *dev)
+{
+	int ret;
+	struct device_node *np = dev->device_node;
+	struct mdio_gpio_info *info;
+	struct mii_bus *bus;
+
+	info = mdio_gpio_of_get_info(dev);
+	if (IS_ERR(info))
+		return PTR_ERR(info);
+
+	info->ctrl.ops = &mdio_gpio_ops;
+
+	ret = gpio_request(info->mdc, "mdc");
+	if (ret < 0) {
+		dev_dbg(dev, "failed to request MDC\n");
+		goto free_info;
+	}
+
+	ret = gpio_request(info->mdio, "mdio");
+	if (ret < 0) {
+		dev_dbg(dev, "failed to request MDIO\n");
+		goto free_mdc;
+	}
+
+	if (info->mdo) {
+		ret = gpio_request(info->mdo, "mdo");
+		if (ret < 0) {
+			dev_dbg(dev, "failed to request MDO\n");
+			goto free_mdio;
+		}
+
+		ret = gpio_direction_output(info->mdo, 1);
+		if (ret < 0) {
+			dev_dbg(dev, "failed to set MDO as output\n");
+			goto free_mdo;
+		}
+
+		ret = gpio_direction_input(info->mdio);
+		if (ret < 0) {
+			dev_dbg(dev, "failed to set MDIO as input\n");
+			goto free_mdo;
+		}
+	}
+
+	ret = gpio_direction_output(info->mdc, 0);
+	if (ret < 0) {
+		dev_dbg(dev, "failed to set MDC as output\n");
+		goto free_mdo;
+	}
+
+	bus = alloc_mdio_bitbang(&info->ctrl);
+	bus->parent = dev;
+	bus->dev.device_node = np;
+
+	dev->priv = bus;
+
+	ret = mdiobus_register(bus);
+	if (!ret)
+		return 0;
+
+	free(bus);
+free_mdo:
+	gpio_free(info->mdo);
+free_mdc:
+	gpio_free(info->mdc);
+free_mdio:
+	gpio_free(info->mdio);
+free_info:
+	free(info);
+	return ret;
+}
+
+static const struct of_device_id gpio_mdio_dt_ids[] = {
+	{ .compatible = "virtual,mdio-gpio", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d mdio_gpio_driver = {
+	.name = "mdio-gpio",
+	.probe = mdio_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(gpio_mdio_dt_ids),
+};
+device_platform_driver(mdio_gpio_driver);
diff --git a/include/linux/mdio-bitbang.h b/include/linux/mdio-bitbang.h
new file mode 100644
index 0000000..76f52bb
--- /dev/null
+++ b/include/linux/mdio-bitbang.h
@@ -0,0 +1,45 @@
+#ifndef __LINUX_MDIO_BITBANG_H
+#define __LINUX_MDIO_BITBANG_H
+
+#include <linux/phy.h>
+
+struct module;
+
+struct mdiobb_ctrl;
+
+struct mdiobb_ops {
+	struct module *owner;
+
+	/* Set the Management Data Clock high if level is one,
+	 * low if level is zero.
+	 */
+	void (*set_mdc)(struct mdiobb_ctrl *ctrl, int level);
+
+	/* Configure the Management Data I/O pin as an input if
+	 * "output" is zero, or an output if "output" is one.
+	 */
+	void (*set_mdio_dir)(struct mdiobb_ctrl *ctrl, int output);
+
+	/* Set the Management Data I/O pin high if value is one,
+	 * low if "value" is zero.  This may only be called
+	 * when the MDIO pin is configured as an output.
+	 */
+	void (*set_mdio_data)(struct mdiobb_ctrl *ctrl, int value);
+
+	/* Retrieve the state Management Data I/O pin. */
+	int (*get_mdio_data)(struct mdiobb_ctrl *ctrl);
+};
+
+struct mdiobb_ctrl {
+	const struct mdiobb_ops *ops;
+	/* reset callback */
+	int (*reset)(struct mii_bus *bus);
+};
+
+/* The returned bus is not yet registered with the phy layer. */
+struct mii_bus *alloc_mdio_bitbang(struct mdiobb_ctrl *ctrl);
+
+/* The bus must already have been unregistered. */
+void free_mdio_bitbang(struct mii_bus *bus);
+
+#endif
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
