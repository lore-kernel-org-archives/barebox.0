Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ7Uj-0007PN-Ee
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 05:57:50 +0000
Received: by mail-pa0-x229.google.com with SMTP id yy13so75859820pab.3
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 21:57:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 21:57:13 -0800
Message-Id: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [RFC 1/2] misc: Add MAC address mapper "driver"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add Barebox specific device tree provisions to allow specifying MAC
addresses for network interfaces via device tree.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../bindings/barebox/barebox,mac-address-map.rst   |  27 ++++
 drivers/misc/Makefile                              |   1 +
 drivers/misc/mac-address-map.c                     | 142 +++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
 create mode 100644 drivers/misc/mac-address-map.c

diff --git a/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst b/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
new file mode 100644
index 0000000..1ac3062
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
@@ -0,0 +1,27 @@
+barebox MAC address map
+=======================
+
+This driver allows to specify each network adapter's source of MAC address from the devicetree.
+
+Required properties:
+
+* ``compatible``: should be ``barebox,mac-address-map``
+
+Besides ``compatible`` property the node is expected to contain a
+number of children nodes each specifing a single "MAC source ->
+interface" mapping.
+
+Child node's required properties:
+* ``network-interface``: phandle corresponding to network interface
+* ``mac-location``: a pair of phandle to 'cdev' containing MAC address
+  and offset withing that 'cdev'
+
+Example::
+
+  mac-address-map {
+	compatible = "barebox,mac-address-map";
+	nic@0 {
+		network-interface = <&fec>;
+		mac-location = <&ocotp 0x88>;
+	};
+  };
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 487e4b8..94d2a4f 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -5,3 +5,4 @@
 obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
+obj-y += mac-address-map.o
diff --git a/drivers/misc/mac-address-map.c b/drivers/misc/mac-address-map.c
new file mode 100644
index 0000000..2161dc3
--- /dev/null
+++ b/drivers/misc/mac-address-map.c
@@ -0,0 +1,142 @@
+/*
+ * Copyright (C) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+#include <state.h>
+#include <io.h>
+#include <fcntl.h>
+#include <net.h>
+
+#include <linux/err.h>
+
+/*
+ * a single MAC address reference has the form
+ * <&phandle regoffset>
+ */
+#define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))
+#define MAC_ADDRESS_SIZE	8 /* FIXME ocotp driver is broken and
+				   * can't read non multiple of 4
+				   * quantities of data */
+
+static int mac_address_map_read_cdev(struct device_d *dev,
+				     struct cdev *cdev,
+				     size_t offset,
+				     uint8_t *addr)
+{
+	int ret;
+
+	ret = cdev_do_open(cdev, O_RDONLY);
+	if (ret < 0) {
+		dev_err(dev, "Failed to open %s\n", cdev->name);
+		return ret;
+	}
+
+	ret = cdev_read(cdev, addr, MAC_ADDRESS_SIZE, offset, 0);
+	cdev_close(cdev);
+
+	if (ret != MAC_ADDRESS_SIZE) {
+		dev_err(dev, "Failed to read MAC address\n");
+		return (ret < 0) ? ret : -EIO;
+	}
+
+	return 0;
+}
+
+static int mac_address_map_probe(struct device_d *dev)
+{
+	int ret;
+	struct device_node *np = dev->device_node;
+	struct device_node *child;
+
+	if (!np || !of_get_next_child(np, NULL))
+		return -EINVAL;
+
+	for_each_child_of_node(np, child) {
+		uint8_t addr[MAC_ADDRESS_SIZE];
+
+		struct {
+			const __be32 *prop;
+			int plen;
+			uint32_t phandle;
+			size_t offset;
+			struct cdev *cdev;
+			struct device_node *node;
+		} nvm;
+
+		struct device_node *nic_node;
+
+		nvm.prop = of_get_property(child, "mac-location", &nvm.plen);
+
+		if (!nvm.prop || nvm.plen != MAC_ADDRESS_PROPLEN) {
+			dev_err(dev, "'mac-location' lookup failed\n");
+			return -EINVAL;
+		}
+
+		nvm.phandle = be32_to_cpup(nvm.prop);
+		nvm.offset  = be32_to_cpup(++nvm.prop);
+
+		nvm.node = of_find_node_by_phandle(nvm.phandle);
+		if (!nvm.node) {
+			dev_err(dev, "'mac-location' lookup failed\n");
+			return -EINVAL;
+		}
+
+		nvm.cdev = cdev_by_device_node(nvm.node);
+		if (!nvm.cdev) {
+			dev_err(dev, "no OCOTP character device\n");
+			return -ENODEV;
+		}
+
+		nic_node = of_parse_phandle(child, "network-interface", 0);
+		if (!nic_node) {
+			dev_err(dev, "'network-interface' lookup failed\n");
+			return -EINVAL;
+		}
+
+		ret = mac_address_map_read_cdev(dev,
+						nvm.cdev, nvm.offset,
+						addr);
+		if (ret < 0)
+			return ret;
+
+		if (is_valid_ether_addr(addr))
+			of_eth_register_ethaddr(nic_node, addr);
+		else
+			dev_warn(dev,
+				 "%s @ 0x%x does not contain a vaild MAC address\n",
+				 nvm.node->name, nvm.offset);
+	}
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id mac_address_map_ids[] = {
+	{
+		.compatible = "barebox,mac-address-map",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d mac_address_map_driver = {
+	.name = "mac-address-map",
+	.probe = mac_address_map_probe,
+	.of_compatible = DRV_OF_COMPAT(mac_address_map_ids),
+};
+device_platform_driver(mac_address_map_driver);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
