Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJuPV-0007j7-Na
 for barebox@lists.infradead.org; Wed, 29 Nov 2017 04:55:51 +0000
Received: by mail-pg0-x242.google.com with SMTP id y6so989877pgp.4
 for <barebox@lists.infradead.org>; Tue, 28 Nov 2017 20:55:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Nov 2017 20:55:04 -0800
Message-Id: <20171129045506.17149-3-andrew.smirnov@gmail.com>
In-Reply-To: <20171129045506.17149-1-andrew.smirnov@gmail.com>
References: <20171129045506.17149-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] net: phy: Port MDIO bus miltiplexer framework from Linux
 kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port mdio-mux.c from Linux kernel to Barebox, to support adding
dirvers that rely on that infrastructure/API.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/Kconfig    |   8 +++
 drivers/net/phy/Makefile   |   2 +
 drivers/net/phy/mdio-mux.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mdio-mux.h   |  30 ++++++++++
 4 files changed, 185 insertions(+)
 create mode 100644 drivers/net/phy/mdio-mux.c
 create mode 100644 include/linux/mdio-mux.h

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index ea2e06265..f423d9ba3 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -66,6 +66,14 @@ config MDIO_GPIO
 	---help---
 	  Supports GPIO lib-based MDIO busses.
 
+config MDIO_BUS_MUX
+       	bool
+	help
+	  This module provides a driver framework for MDIO bus
+	  multiplexers which connect one of several child MDIO busses
+	  to a parent bus.  Switching between child busses is done by
+	  device specific drivers.
+
 endif
 
 endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 13b8f6545..89b4b80be 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -10,3 +10,5 @@ obj-$(CONFIG_SMSC_PHY)		+= smsc.o
 obj-$(CONFIG_MDIO_MVEBU)	+= mdio-mvebu.o
 obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
 obj-$(CONFIG_MDIO_GPIO)		+= mdio-gpio.o
+obj-$(CONFIG_MDIO_BUS_MUX)	+= mdio-mux.o
+
diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
new file mode 100644
index 000000000..5c6363d00
--- /dev/null
+++ b/drivers/net/phy/mdio-mux.c
@@ -0,0 +1,145 @@
+/*
+ * Copyright (c) 2017 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * Based on analogous code from Linux kernel
+ *
+ * Copyright (C) 2011, 2012 Cavium, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <linux/mdio-mux.h>
+#include <linux/phy.h>
+
+struct mdio_mux_parent_bus {
+	struct mii_bus *mii_bus;
+	int current_child;
+	int parent_id;
+	void *switch_data;
+	int (*switch_fn)(int current_child, int desired_child, void *data);
+};
+
+struct mdio_mux_child_bus {
+	struct mii_bus mii_bus;
+	struct mdio_mux_parent_bus *parent;
+	struct mdio_mux_child_bus *next;
+	int bus_number;
+};
+
+static int mdio_mux_read_or_write(struct mii_bus *bus, int phy_id,
+		       int regnum, u16 *val)
+{
+	struct mdio_mux_child_bus *cb = bus->priv;
+	struct mdio_mux_parent_bus *pb = cb->parent;
+	int r;
+
+	r = pb->switch_fn(pb->current_child, cb->bus_number, pb->switch_data);
+	if (!r) {
+		pb->current_child = cb->bus_number;
+		if (val)
+			r = pb->mii_bus->write(pb->mii_bus, phy_id,
+					       regnum, *val);
+		else
+			r = pb->mii_bus->read(pb->mii_bus, phy_id,
+					      regnum);
+	}
+	return r;
+}
+
+static int mdio_mux_read(struct mii_bus *bus, int phy_id, int regnum)
+{
+	return mdio_mux_read_or_write(bus, phy_id, regnum, NULL);
+}
+
+static int mdio_mux_write(struct mii_bus *bus, int phy_id,
+			  int regnum, u16 val)
+{
+	return mdio_mux_read_or_write(bus, phy_id, regnum, &val);
+}
+
+int mdio_mux_init(struct device_d *dev,
+		  struct device_node *mux_node,
+		  int (*switch_fn)(int cur, int desired, void *data),
+		  void *data,
+		  struct mii_bus *mux_bus)
+{
+	static int parent_count = 0;
+
+	struct device_node *parent_bus_node;
+	struct device_node *child_bus_node;
+	struct mdio_mux_parent_bus *pb;
+	struct mdio_mux_child_bus *cb;
+	struct mii_bus *parent_bus;
+	int r;
+
+	if (!mux_node)
+		return -ENODEV;
+
+	if (!mux_bus) {
+		parent_bus_node = of_parse_phandle(mux_node,
+						   "mdio-parent-bus", 0);
+
+		if (!parent_bus_node)
+			return -ENODEV;
+
+		parent_bus = of_mdio_find_bus(parent_bus_node);
+
+		if (!parent_bus)
+			return -EPROBE_DEFER;
+	} else {
+		parent_bus_node = NULL;
+		parent_bus = mux_bus;
+	}
+
+	pb = xzalloc(sizeof(*pb));
+
+	pb->switch_data   = data;
+	pb->switch_fn     = switch_fn;
+	pb->current_child = -1;
+	pb->parent_id     = parent_count++;
+	pb->mii_bus       = parent_bus;
+
+	for_each_available_child_of_node(mux_node, child_bus_node) {
+		int v;
+
+		r = of_property_read_u32(child_bus_node, "reg", &v);
+		if (r) {
+			dev_err(dev,
+				"Error: Failed to find reg for child %pOF\n",
+				child_bus_node);
+			continue;
+		}
+
+		/*
+		  FIXME:
+		 */
+		cb = xzalloc(sizeof(*cb));
+		cb->bus_number = v;
+		cb->parent     = pb;
+
+		cb->mii_bus.priv   = cb;
+		cb->mii_bus.parent = dev;
+		cb->mii_bus.read   = mdio_mux_read;
+		cb->mii_bus.write  = mdio_mux_write;
+		cb->mii_bus.dev.device_node = child_bus_node;
+
+		r = mdiobus_register(&cb->mii_bus);
+		if (r) {
+			dev_err(dev,
+				"Error: Failed to register MDIO bus for child %pOF\n",
+				child_bus_node);
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(mdio_mux_init);
diff --git a/include/linux/mdio-mux.h b/include/linux/mdio-mux.h
new file mode 100644
index 000000000..1730939bf
--- /dev/null
+++ b/include/linux/mdio-mux.h
@@ -0,0 +1,30 @@
+/*
+ * MDIO bus multiplexer framwork.
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 2011, 2012 Cavium, Inc.
+ */
+#ifndef __LINUX_MDIO_MUX_H
+#define __LINUX_MDIO_MUX_H
+#include <driver.h>
+#include <linux/phy.h>
+
+/* mdio_mux_init() - Initialize a MDIO mux
+ * @dev		The device owning the MDIO mux
+ * @mux_node	The device node of the MDIO mux
+ * @switch_fn	The function called for switching target MDIO child
+ * @data	Private data used by switch_fn()
+ * @mux_bus	An optional parent bus (Other case are to use parent_bus property)
+ */
+int mdio_mux_init(struct device_d *dev,
+		  struct device_node *mux_node,
+		  int (*switch_fn) (int cur, int desired, void *data),
+		  void *data,
+		  struct mii_bus *mux_bus);
+
+void mdio_mux_uninit(void *mux_handle);
+
+#endif /* __LINUX_MDIO_MUX_H */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
