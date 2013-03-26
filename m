Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKPyS-0004M8-1M
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:15:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Mar 2013 10:15:15 +0100
Message-Id: <1364289316-1998-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] of/net: Add net related of helpers
To: barebox@lists.infradead.org

of_get_phy_mode to parse the phy mode from the devicetree and
of_get_mac_address to parse a MAC address from the devicetree.
Directly taken from the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Kconfig  |  4 +++
 drivers/of/Makefile |  1 +
 drivers/of/of_net.c | 93 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of_net.h    | 14 ++++++++
 4 files changed, 112 insertions(+)
 create mode 100644 drivers/of/of_net.c
 create mode 100644 include/of_net.h

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index d304148..56762e4 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -8,3 +8,7 @@ config OFDEVICE
 	select OFTREE
 	select DTC
 	bool "Enable probing of devices from the devicetree"
+
+config OF_NET
+	depends on NET
+	def_bool y
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 9de1ca7..d16a946 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,3 +1,4 @@
 obj-y += base.o fdt.o
 obj-$(CONFIG_GPIOLIB) += gpio.o
 obj-y += partition.o
+obj-y += of_net.o
diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
new file mode 100644
index 0000000..de93fbc
--- /dev/null
+++ b/drivers/of/of_net.c
@@ -0,0 +1,93 @@
+/*
+ * OF helpers for network devices.
+ *
+ * This file is released under the GPLv2
+ *
+ * Initially copied out of arch/powerpc/kernel/prom_parse.c
+ */
+#include <common.h>
+#include <net.h>
+#include <of_net.h>
+#include <linux/phy.h>
+
+/**
+ * It maps 'enum phy_interface_t' found in include/linux/phy.h
+ * into the device tree binding of 'phy-mode', so that Ethernet
+ * device driver can get phy interface from device tree.
+ */
+static const char *phy_modes[] = {
+	[PHY_INTERFACE_MODE_NA]		= "",
+	[PHY_INTERFACE_MODE_MII]	= "mii",
+	[PHY_INTERFACE_MODE_GMII]	= "gmii",
+	[PHY_INTERFACE_MODE_SGMII]	= "sgmii",
+	[PHY_INTERFACE_MODE_TBI]	= "tbi",
+	[PHY_INTERFACE_MODE_RMII]	= "rmii",
+	[PHY_INTERFACE_MODE_RGMII]	= "rgmii",
+	[PHY_INTERFACE_MODE_RGMII_ID]	= "rgmii-id",
+	[PHY_INTERFACE_MODE_RGMII_RXID]	= "rgmii-rxid",
+	[PHY_INTERFACE_MODE_RGMII_TXID] = "rgmii-txid",
+	[PHY_INTERFACE_MODE_RTBI]	= "rtbi",
+	[PHY_INTERFACE_MODE_SMII]	= "smii",
+};
+
+/**
+ * of_get_phy_mode - Get phy mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets phy interface string from property 'phy-mode',
+ * and return its index in phy_modes table, or errno in error case.
+ */
+int of_get_phy_mode(struct device_node *np)
+{
+	const char *pm;
+	int err, i;
+
+	err = of_property_read_string(np, "phy-mode", &pm);
+	if (err < 0)
+		return err;
+
+	for (i = 0; i < ARRAY_SIZE(phy_modes); i++)
+		if (!strcmp(pm, phy_modes[i]))
+			return i;
+
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(of_get_phy_mode);
+
+/**
+ * Search the device tree for the best MAC address to use.  'mac-address' is
+ * checked first, because that is supposed to contain to "most recent" MAC
+ * address. If that isn't set, then 'local-mac-address' is checked next,
+ * because that is the default address.  If that isn't set, then the obsolete
+ * 'address' is checked, just in case we're using an old device tree.
+ *
+ * Note that the 'address' property is supposed to contain a virtual address of
+ * the register set, but some DTS files have redefined that property to be the
+ * MAC address.
+ *
+ * All-zero MAC addresses are rejected, because those could be properties that
+ * exist in the device tree, but were not set by U-Boot.  For example, the
+ * DTS could define 'mac-address' and 'local-mac-address', with zero MAC
+ * addresses.  Some older U-Boots only initialized 'local-mac-address'.  In
+ * this case, the real MAC is in 'local-mac-address', and 'mac-address' exists
+ * but is all zeros.
+*/
+const void *of_get_mac_address(struct device_node *np)
+{
+	struct property *pp;
+
+	pp = of_find_property(np, "mac-address");
+	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
+		return pp->value;
+
+	pp = of_find_property(np, "local-mac-address");
+	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
+		return pp->value;
+
+	pp = of_find_property(np, "address");
+	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
+		return pp->value;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_mac_address);
diff --git a/include/of_net.h b/include/of_net.h
new file mode 100644
index 0000000..0f6ef20
--- /dev/null
+++ b/include/of_net.h
@@ -0,0 +1,14 @@
+/*
+ * OF helpers for network devices.
+ *
+ * This file is released under the GPLv2
+ */
+
+#ifndef __LINUX_OF_NET_H
+#define __LINUX_OF_NET_H
+
+#include <of.h>
+int of_get_phy_mode(struct device_node *np);
+const void *of_get_mac_address(struct device_node *np);
+
+#endif /* __LINUX_OF_NET_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
