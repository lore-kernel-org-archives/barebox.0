Delivery-date: Thu, 15 Jun 2023 17:03:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9oVC-0088xV-2X
	for lore@lore.pengutronix.de; Thu, 15 Jun 2023 17:03:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9oV8-0003yZ-Ov
	for lore@pengutronix.de; Thu, 15 Jun 2023 17:03:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MKXjUzUqbamndC9gVKe49XUyrwvOO6rMTl/0dnst0H4=; b=oFbBhPWfjvUy3AEXgeCJyshI8I
	FdMssfuWCzNdaHVfZRtLOMAFpnzU4AGStP+/BYotUXv0jkRoYy6Tn1/ZrBiIJgWxv+z0b4g/KWRLr
	hHbqrOZVgPC5E97fDV5KhonmghF2Qy1U/yAk/jorC/+hmKFyCPdnHUifJJkSvW+bjHahERqS4qN/h
	T/W7v1bbG9H16Psr1uxiikRscyJdXGwYfCIxhqA4aD9r07wJ3C3x70FUyIbNRUuLr/F6F0PcdjPyv
	9QXIC87EqBquOHxN/H1EmXAy+xkjA22AAWzHrJSf3t32RIfI4FdzmONvJmwoY6/38Ga8anxwknwJZ
	IErcNaFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9oTU-00FF6T-2g;
	Thu, 15 Jun 2023 15:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9oTQ-00FF5c-2j
	for barebox@lists.infradead.org;
	Thu, 15 Jun 2023 15:01:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9oTO-0003s4-IF; Thu, 15 Jun 2023 17:01:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9oTN-007bvI-TW; Thu, 15 Jun 2023 17:01:17 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9oTN-001Cn6-4T; Thu, 15 Jun 2023 17:01:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Jun 2023 17:01:16 +0200
Message-Id: <20230615150116.287480-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_080121_206712_7BE2D07F 
X-CRM114-Status: GOOD (  31.44  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: add basic TUSB320 Type-C controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code or user scripts may want to base their decisions on how
a USB-C connector is connected:

  - Is the USB role that of a USB device or of a USB host?
  - Is the board being powered externally?
  - Is a debug accessory attached?

For this reason, let's import the Linux TUSB320 driver along with
a very simplified Type-C driver core that just registers a device and
populates it with three parameters:

  - $dev.usb_role = { device, host }
  - $dev.pwr_role = { sink, source }
  - $dev.accessory = { none, audio, debug }

These variables are updated by struct typec_operations::poll, which
corresponds to the IRQ handler for the Linux drivers. The poll function
is called on every variable access and early exits if no IRQ was
indicated.

In future, we may elect to register the poll function with the poller
framework, so it's called cyclically, like we do for e.g. Ethernet link
detection, but for now, this is probably sufficient.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/usb.rst        |  15 ++
 drivers/usb/Kconfig               |   2 +
 drivers/usb/Makefile              |   1 +
 drivers/usb/typec/Kconfig         |  13 ++
 drivers/usb/typec/Makefile        |   3 +
 drivers/usb/typec/class.c         | 179 ++++++++++++++++++++++++
 drivers/usb/typec/tusb320.c       | 220 ++++++++++++++++++++++++++++++
 include/linux/usb/typec.h         |  54 ++++++++
 include/linux/usb/typec_altmode.h |  44 ++++++
 9 files changed, 531 insertions(+)
 create mode 100644 drivers/usb/typec/Kconfig
 create mode 100644 drivers/usb/typec/Makefile
 create mode 100644 drivers/usb/typec/class.c
 create mode 100644 drivers/usb/typec/tusb320.c
 create mode 100644 include/linux/usb/typec.h
 create mode 100644 include/linux/usb/typec_altmode.h

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 402f76d8da33..95d6dd7e3630 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -280,6 +280,21 @@ mode. Once a specific mode has been selected it can't be changed later anymore.
   musb-hdrc: 28/31 max ep, 16384/16384 memory
   barebox:/
 
+USB Type-C support
+------------------
+
+barebox can usually stay oblivious to the type of connector used. Sometimes though,
+board code and user scripts may want to base their decisions on how a USB-C connector
+is connected. Type C drivers can thus register with the Type C driver core to
+export a number of device parameters:
+
+- ``$typec0.usb_role`` = { ``none``, ``device``, ``host`` }
+- ``$typec0.pwr_role`` = { ``sink``, ``source`` }
+- ``$typec0.accessory`` = { ``none``, ``audio``, ``debug`` }
+
+Currently, only the TUSB320 is supported, but it's straight-forward to port more
+drivers from Linux.
+
 USB Gadget autostart Support
 ----------------------------
 
diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index e43c28113f41..d66a75635d46 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -24,6 +24,8 @@ source "drivers/usb/misc/Kconfig"
 
 endif
 
+source "drivers/usb/typec/Kconfig"
+
 source "drivers/usb/gadget/Kconfig"
 
 source "drivers/usb/musb/Kconfig"
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 8f1557d5d497..0cac50c0f39b 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -8,5 +8,6 @@ obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
 obj-y += otg/
 obj-y += gadget/
+obj-y += typec/
 obj-$(CONFIG_USB)		+= misc/
 
diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
new file mode 100644
index 000000000000..82590dfd2be7
--- /dev/null
+++ b/drivers/usb/typec/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+
+config TYPEC
+	bool
+
+config TYPEC_TUSB320
+	tristate "TI TUSB320 Type-C port controller"
+	depends on I2C
+	select REGMAP_I2C
+	select TYPEC
+	help
+	  Say Y or here if your system has a TI TUSB320 Type-C port controller.
diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
new file mode 100644
index 000000000000..456b94afbf6f
--- /dev/null
+++ b/drivers/usb/typec/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_TYPEC)		+= class.o
+obj-$(CONFIG_TYPEC_TUSB320)	+= tusb320.o
diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
new file mode 100644
index 000000000000..7f498550f80e
--- /dev/null
+++ b/drivers/usb/typec/class.c
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * USB Type-C Connector Class
+ *
+ * Copyright (C) 2017, Intel Corporation
+ * Author: Heikki Krogerus <heikki.krogerus@linux.intel.com>
+ */
+
+#include <module.h>
+#include <driver.h>
+#include <linux/usb/role.h>
+#include <linux/usb/typec.h>
+#include <linux/usb/typec_altmode.h>
+#include <param.h>
+
+enum typec_param_accessory {
+	TYPEC_PARAM_ACCESSORY_NONE,
+	TYPEC_PARAM_ACCESSORY_AUDIO,
+	TYPEC_PARAM_ACCESSORY_DEBUG,
+};
+
+struct typec_port {
+	struct device dev;
+	const struct typec_operations *ops;
+	int pwr_role;		/* enum typec_role */
+	int usb_role;		/* enum usb_role role */
+	int accessory;		/* enum typec_param_accessory */
+};
+
+/**
+ * typec_set_pwr_role - Report power role change
+ * @port: The USB Type-C Port where the role was changed
+ * @role: The new data role
+ *
+ * This routine is used by the port drivers to report power role changes.
+ */
+void typec_set_pwr_role(struct typec_port *port, enum typec_role role)
+{
+	port->pwr_role = role;
+}
+EXPORT_SYMBOL_GPL(typec_set_pwr_role);
+
+static inline enum typec_param_accessory typec_mode_to_accessory(int mode)
+{
+	switch (mode) {
+	case TYPEC_MODE_AUDIO:
+		return TYPEC_PARAM_ACCESSORY_AUDIO;
+	case TYPEC_MODE_DEBUG:
+		return TYPEC_PARAM_ACCESSORY_DEBUG;
+	default:
+		return TYPEC_PARAM_ACCESSORY_NONE;
+	}
+}
+
+/**
+ * typec_set_mode - Set mode of operation for USB Type-C connector
+ * @port: USB Type-C connector
+ * @mode: Accessory Mode, USB Operation or Safe State
+ *
+ * Configure @port for Accessory Mode @mode. This function will configure the
+ * muxes needed for @mode.
+ */
+int typec_set_mode(struct typec_port *port, int mode)
+{
+	port->accessory = typec_mode_to_accessory(mode);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(typec_set_mode);
+
+/**
+ * typec_set_role - Set USB role for a Type-C connector
+ * @port: USB Type-C connector
+ * @role: USB role to be switched to
+ *
+ * Set USB role @role for @sw. This is equivalent to Linux
+ * usb_role_switch_set_role();
+ */
+int typec_set_role(struct typec_port *port, enum usb_role role)
+{
+	port->usb_role = role;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(typec_set_role);
+
+/**
+ * typec_get_drvdata - Return private driver data pointer
+ * @port: USB Type-C port
+ */
+void *typec_get_drvdata(struct typec_port *port)
+{
+	return port->dev.priv;
+}
+EXPORT_SYMBOL_GPL(typec_get_drvdata);
+
+static int typec_register_port_dev(struct typec_port *port, const char *name, int id)
+{
+	port->dev.id = id;
+	dev_set_name(&port->dev, name);
+
+	return register_device(&port->dev);
+}
+
+static const char * const usb_role_names[] = {
+	[USB_ROLE_NONE]		= "none",
+	[USB_ROLE_HOST]		= "host",
+	[USB_ROLE_DEVICE]	= "device",
+};
+
+static const char * const pwr_role_names[] = {
+	[TYPEC_SINK]		= "sink",
+	[TYPEC_SOURCE]		= "source",
+};
+
+static const char * const accessory_names[] = {
+	[TYPEC_PARAM_ACCESSORY_NONE]	= "none",
+	[TYPEC_PARAM_ACCESSORY_AUDIO]	= "audio", /* analog */
+	[TYPEC_PARAM_ACCESSORY_DEBUG]	= "debug",
+};
+
+static int typec_param_update(struct param_d *p, void *priv)
+{
+	struct typec_port *port = priv;
+
+	return port->ops->poll(port);
+}
+
+/**
+ * typec_register_port - Register a USB Type-C Port
+ * @parent: Parent device
+ * @cap: Description of the port
+ *
+ * Registers a device for USB Type-C Port described in @cap.
+ *
+ * Returns handle to the port on success or ERR_PTR on failure.
+ */
+struct typec_port *typec_register_port(struct device *parent,
+				       const struct typec_capability *cap)
+{
+	struct typec_port *port;
+	struct device *dev;
+	const char *alias;
+	int ret;
+
+	port = kzalloc(sizeof(*port), GFP_KERNEL);
+	if (!port)
+		return ERR_PTR(-ENOMEM);
+
+	port->ops = cap->ops;
+	dev = &port->dev;
+	dev->parent = parent;
+	dev->of_node = cap->of_node;
+	dev->priv = cap->driver_data;
+
+	alias = dev->of_node ? of_alias_get(dev->of_node) : NULL;
+	if (alias)
+		ret = typec_register_port_dev(port, alias, DEVICE_ID_SINGLE);
+	if (!alias || ret)
+		ret = typec_register_port_dev(port, "typec", DEVICE_ID_DYNAMIC);
+
+	if (ret)
+		return ERR_PTR(ret);
+
+	of_platform_device_dummy_drv(dev);
+	if (dev->of_node)
+		dev->of_node->dev = dev;
+
+	dev_add_param_enum(dev, "usb_role", param_set_readonly, typec_param_update,
+			   &port->usb_role, usb_role_names,
+			   ARRAY_SIZE(usb_role_names), port);
+	dev_add_param_enum(dev, "pwr_role", param_set_readonly, typec_param_update,
+			   &port->pwr_role, pwr_role_names,
+			   ARRAY_SIZE(pwr_role_names), port);
+	dev_add_param_enum(dev, "accessory", param_set_readonly, typec_param_update,
+			   &port->accessory, accessory_names,
+			   ARRAY_SIZE(accessory_names), port);
+
+	return port;
+}
+EXPORT_SYMBOL_GPL(typec_register_port);
diff --git a/drivers/usb/typec/tusb320.c b/drivers/usb/typec/tusb320.c
new file mode 100644
index 000000000000..0f84021b641b
--- /dev/null
+++ b/drivers/usb/typec/tusb320.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on the Linux driver:
+ *   drivers/typec/typec-tusb320.c - TUSB320 typec driver
+ *
+ * Copyright (C) 2020 National Instruments Corporation
+ * Author: Michael Auchter <michael.auchter@ni.com>
+ */
+
+#include <linux/bitfield.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <module.h>
+#include <regmap.h>
+#include <linux/usb/typec.h>
+#include <linux/usb/typec_altmode.h>
+
+#define TUSB320_REG8				0x8
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE	GENMASK(7, 6)
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_USB	0x0
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_15A	0x1
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_30A	0x2
+#define TUSB320_REG8_CURRENT_MODE_DETECT	GENMASK(5, 4)
+#define TUSB320_REG8_CURRENT_MODE_DETECT_DEF	0x0
+#define TUSB320_REG8_CURRENT_MODE_DETECT_MED	0x1
+#define TUSB320_REG8_CURRENT_MODE_DETECT_ACC	0x2
+#define TUSB320_REG8_CURRENT_MODE_DETECT_HI	0x3
+#define TUSB320_REG8_ACCESSORY_CONNECTED	GENMASK(3, 1)
+#define TUSB320_REG8_ACCESSORY_CONNECTED_NONE	0x0
+#define TUSB320_REG8_ACCESSORY_CONNECTED_AUDIO	0x4
+#define TUSB320_REG8_ACCESSORY_CONNECTED_ACHRG	0x5
+#define TUSB320_REG8_ACCESSORY_CONNECTED_DBGDFP	0x6
+#define TUSB320_REG8_ACCESSORY_CONNECTED_DBGUFP	0x7
+#define TUSB320_REG8_ACTIVE_CABLE_DETECTION	BIT(0)
+
+#define TUSB320_REG9				0x9
+#define TUSB320_REG9_ATTACHED_STATE		GENMASK(7, 6)
+#define TUSB320_REG9_CABLE_DIRECTION		BIT(5)
+#define TUSB320_REG9_INTERRUPT_STATUS		BIT(4)
+
+enum tusb320_attached_state {
+	TUSB320_ATTACHED_STATE_NONE,
+	TUSB320_ATTACHED_STATE_DFP,
+	TUSB320_ATTACHED_STATE_UFP,
+	TUSB320_ATTACHED_STATE_ACC,
+};
+
+struct tusb320_priv {
+	struct device *dev;
+	struct regmap *regmap;
+	struct typec_port *port;
+	struct typec_capability	cap;
+};
+
+static int tusb320_typec_irq_handler(struct tusb320_priv *priv, u8 reg9)
+{
+	struct typec_port *port = priv->port;
+	int typec_mode;
+	enum typec_role pwr_role;
+	enum usb_role usb_role;
+	u8 state, accessory;
+	int ret, reg8;
+
+	ret = regmap_read(priv->regmap, TUSB320_REG8, &reg8);
+	if (ret)
+		return ret;
+
+	state = FIELD_GET(TUSB320_REG9_ATTACHED_STATE, reg9);
+	accessory = FIELD_GET(TUSB320_REG8_ACCESSORY_CONNECTED, reg8);
+
+	switch (state) {
+	case TUSB320_ATTACHED_STATE_DFP:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_HOST;
+		pwr_role = TYPEC_SOURCE;
+		break;
+	case TUSB320_ATTACHED_STATE_UFP:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_DEVICE;
+		pwr_role = TYPEC_SINK;
+		break;
+	case TUSB320_ATTACHED_STATE_ACC:
+		/*
+		 * Accessory detected. For debug accessories, just make some
+		 * qualified guesses as to the role for lack of a better option.
+		 */
+		if (accessory == TUSB320_REG8_ACCESSORY_CONNECTED_AUDIO ||
+		    accessory == TUSB320_REG8_ACCESSORY_CONNECTED_ACHRG) {
+			typec_mode = TYPEC_MODE_AUDIO;
+			usb_role = USB_ROLE_NONE;
+			pwr_role = TYPEC_SINK;
+			break;
+		} else if (accessory ==
+			   TUSB320_REG8_ACCESSORY_CONNECTED_DBGDFP) {
+			typec_mode = TYPEC_MODE_DEBUG;
+			pwr_role = TYPEC_SOURCE;
+			usb_role = USB_ROLE_HOST;
+			break;
+		} else if (accessory ==
+			   TUSB320_REG8_ACCESSORY_CONNECTED_DBGUFP) {
+			typec_mode = TYPEC_MODE_DEBUG;
+			pwr_role = TYPEC_SINK;
+			usb_role = USB_ROLE_DEVICE;
+			break;
+		}
+
+		dev_warn(priv->dev, "unexpected ACCESSORY_CONNECTED state %d\n",
+			 accessory);
+
+		fallthrough;
+	default:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_NONE;
+		pwr_role = TYPEC_SINK;
+		break;
+	}
+
+	typec_set_pwr_role(port, pwr_role);
+	typec_set_mode(port, typec_mode);
+	typec_set_role(port, usb_role);
+
+	return 0;
+}
+
+static int tusb320_state_update_handler(struct tusb320_priv *priv,
+					bool force_update)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(priv->regmap, TUSB320_REG9, &reg);
+	if (ret)
+		return ret;
+
+	if (!force_update && !(reg & TUSB320_REG9_INTERRUPT_STATUS))
+		return 0;
+
+	ret = tusb320_typec_irq_handler(priv, reg);
+
+	regmap_write(priv->regmap, TUSB320_REG9, reg);
+
+	return ret;
+}
+
+static irqreturn_t tusb320_irq_handler(struct typec_port *port)
+{
+	struct tusb320_priv *priv = typec_get_drvdata(port);
+
+	return tusb320_state_update_handler(priv, false);
+}
+
+static const struct typec_operations tusb320_typec_ops = {
+	.poll	= tusb320_irq_handler,
+};
+
+static const struct regmap_config tusb320_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static int tusb320_typec_probe(struct i2c_client *client,
+			       struct tusb320_priv *priv)
+{
+	struct device_node *connector;
+
+	connector = of_get_child_by_name(client->dev.of_node, "connector");
+
+	priv->cap.driver_data		= priv;
+	priv->cap.ops			= &tusb320_typec_ops;
+	priv->cap.of_node		= connector;
+
+	priv->port = typec_register_port(&client->dev, &priv->cap);
+
+	return PTR_ERR_OR_ZERO(priv->port);
+}
+
+static int tusb320_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct tusb320_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->dev = &client->dev;
+	i2c_set_clientdata(client, priv);
+
+	priv->regmap = regmap_init_i2c(client, &tusb320_regmap_config);
+	if (IS_ERR(priv->regmap))
+		return PTR_ERR(priv->regmap);
+
+	ret = tusb320_typec_probe(client, priv);
+	if (ret)
+		return ret;
+
+	/* update initial state */
+	tusb320_state_update_handler(priv, true);
+
+	return ret;
+}
+
+static const struct of_device_id tusb320_typec_dt_match[] = {
+	{ .compatible = "ti,tusb320" },
+	{ .compatible = "ti,tusb320l" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, tusb320_typec_dt_match);
+
+static struct driver tusb320_typec_driver = {
+	.name		= "typec-tusb320",
+	.of_match_table = tusb320_typec_dt_match,
+	.probe		= tusb320_probe,
+};
+device_i2c_driver(tusb320_typec_driver);
+
+MODULE_AUTHOR("Michael Auchter <michael.auchter@ni.com>");
+MODULE_DESCRIPTION("TI TUSB320 Type-C driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
new file mode 100644
index 000000000000..315dee95e47f
--- /dev/null
+++ b/include/linux/usb/typec.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __LINUX_USB_TYPEC_H
+#define __LINUX_USB_TYPEC_H
+
+#include <linux/types.h>
+#include <linux/usb/role.h>
+
+struct typec_port;
+
+struct device;
+struct device_node;
+
+enum typec_role {
+	TYPEC_SINK,
+	TYPEC_SOURCE,
+};
+
+enum typec_accessory {
+	TYPEC_ACCESSORY_NONE,
+	TYPEC_ACCESSORY_AUDIO,
+	TYPEC_ACCESSORY_DEBUG,
+};
+
+struct typec_operations {
+	int (*poll)(struct typec_port *port);
+};
+
+/*
+ * struct typec_capability - USB Type-C Port Capabilities
+ * @driver_data: Private pointer for driver specific info
+ * @ops: Port operations vector
+ *
+ * Static capabilities of a single USB Type-C port.
+ */
+struct typec_capability {
+	void			*driver_data;
+
+	const struct typec_operations	*ops;
+	struct device_node	*of_node;
+};
+
+struct typec_port *typec_register_port(struct device *parent,
+				       const struct typec_capability *cap);
+
+void typec_set_pwr_role(struct typec_port *port, enum typec_role role);
+
+int typec_set_mode(struct typec_port *port, int mode);
+
+int typec_set_role(struct typec_port *port, enum usb_role role);
+
+void *typec_get_drvdata(struct typec_port *port);
+
+#endif /* __LINUX_USB_TYPEC_H */
diff --git a/include/linux/usb/typec_altmode.h b/include/linux/usb/typec_altmode.h
new file mode 100644
index 000000000000..ffa4a8f75420
--- /dev/null
+++ b/include/linux/usb/typec_altmode.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __USB_TYPEC_ALTMODE_H
+#define __USB_TYPEC_ALTMODE_H
+
+/*
+ * These are the connector states (USB, Safe and Alt Mode) defined in USB Type-C
+ * Specification. SVID specific connector states are expected to follow and
+ * start from the value TYPEC_STATE_MODAL.
+ */
+enum {
+	TYPEC_STATE_SAFE,	/* USB Safe State */
+	TYPEC_STATE_USB,	/* USB Operation */
+	TYPEC_STATE_MODAL,	/* Alternate Modes */
+};
+
+/*
+ * For the muxes there is no difference between Accessory Modes and Alternate
+ * Modes, so the Accessory Modes are supplied with specific modal state values
+ * here. Unlike with Alternate Modes, where the mux will be linked with the
+ * alternate mode device, the mux for Accessory Modes will be linked with the
+ * port device instead.
+ *
+ * Port drivers can use TYPEC_MODE_AUDIO and TYPEC_MODE_DEBUG as the mode
+ * value for typec_set_mode() when accessory modes are supported.
+ *
+ * USB4 also requires that the pins on the connector are repurposed, just like
+ * Alternate Modes. USB4 mode is however not entered with the Enter Mode Command
+ * like the Alternate Modes are, but instead with a special Enter_USB Message.
+ * The Enter_USB Message can also be used for setting to connector to operate in
+ * USB 3.2 or in USB 2.0 mode instead of USB4.
+ *
+ * The Enter_USB specific "USB Modes" are also supplied here as special modal
+ * state values, just like the Accessory Modes.
+ */
+enum {
+	TYPEC_MODE_USB2 = TYPEC_STATE_MODAL,	/* USB 2.0 mode */
+	TYPEC_MODE_USB3,			/* USB 3.2 mode */
+	TYPEC_MODE_USB4,			/* USB4 mode */
+	TYPEC_MODE_AUDIO,			/* Audio Accessory */
+	TYPEC_MODE_DEBUG,			/* Debug Accessory */
+};
+
+#endif /* __USB_TYPEC_ALTMODE_H */
-- 
2.39.2



