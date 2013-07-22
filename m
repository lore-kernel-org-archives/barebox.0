Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlA-0003gx-1d
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:19 +0200
Message-Id: <1374501981-27403-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
References: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: i.MX6: Add ocotp driver
To: barebox@lists.infradead.org

The only functionality at the moment is to register a MAC Address for
an ethernet device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/misc/fsl,imx-ocotp.txt     |  20 ++++
 arch/arm/mach-imx/Kconfig                          |   9 ++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/ocotp.c                          | 105 +++++++++++++++++++++
 4 files changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt
 create mode 100644 arch/arm/mach-imx/ocotp.c

diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt
new file mode 100644
index 0000000..b7a3ee5
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt
@@ -0,0 +1,20 @@
+Freescale i.MX OCOTP (On-Chip OTP)
+
+Required properties:
+
+- compatible: fsl,imx6q-ocotp
+- reg: physical register base and size
+
+Optional properties:
+
+- barebox,provide-mac-address: Provide MAC addresses for ethernet devices. This
+  can be multiple entries in the form <&phandle regofs> to specify a MAC
+  address to a ethernet device.
+
+Example:
+
+ocotp1: ocotp@021bc000 {
+	compatible = "fsl,imx6q-ocotp";
+	reg = <0x021bc000 0x4000>;
+	barebox,provide-mac-address = <&fec 0x620>;
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 282b94e..72fa922 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -613,6 +613,15 @@ config IMX_IIM_FUSE_BLOW
 	  enable it:
 	    imx_iim0.permanent_write_enable=1
 
+config IMX_OCOTP
+	tristate "i.MX6 On Chip OTP controller"
+	depends on ARCH_IMX6
+	depends on OFDEVICE
+	help
+	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
+	  only supported functionality is reading the MAC address and assigning
+	  it to an ethernet device.
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index db74d4e..b3f00f9 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -12,6 +12,7 @@ pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
+obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
new file mode 100644
index 0000000..04feb84
--- /dev/null
+++ b/arch/arm/mach-imx/ocotp.c
@@ -0,0 +1,105 @@
+/*
+ * ocotp.c - i.MX6 ocotp fusebox driver
+ *
+ * Provide an interface for programming and sensing the information that are
+ * stored in on-chip fuse elements. This functionality is part of the IC
+ * Identification Module (IIM), which is present on some i.MX CPUs.
+ *
+ * Copyright (c) 2010 Baruch Siach <baruch@tkos.co.il>,
+ * 	Orex Computed Radiography
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <init.h>
+#include <net.h>
+#include <io.h>
+
+/*
+ * a single MAC address reference has the form
+ * <&phandle regoffset>
+ */
+#define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))
+
+static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
+{
+	char mac[6];
+	const __be32 *prop;
+	struct device_node *node = dev->device_node;
+	int len;
+
+	if (!node)
+		return;
+
+	prop = of_get_property(node, "barebox,provide-mac-address", &len);
+	if (!prop)
+		return;
+
+	while (len >= MAC_ADDRESS_PROPLEN) {
+		struct device_node *rnode;
+		uint32_t phandle, offset, value;
+
+		phandle = be32_to_cpup(prop++);
+
+		rnode = of_find_node_by_phandle(phandle);
+		offset = be32_to_cpup(prop++);
+
+		value = readl(base + offset + 0x10);
+		mac[0] = (value >> 8);
+		mac[1] = value;
+		value = readl(base + offset);
+		mac[2] = value >> 24;
+		mac[3] = value >> 16;
+		mac[4] = value >> 8;
+		mac[5] = value;
+
+		of_eth_register_ethaddr(rnode, mac);
+
+		len -= MAC_ADDRESS_PROPLEN;
+	}
+}
+
+static int imx_ocotp_probe(struct device_d *dev)
+{
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
+
+	imx_ocotp_init_dt(dev, base);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-ocotp",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx_ocotp_driver = {
+	.name	= "imx_ocotp",
+	.probe	= imx_ocotp_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_ocotp_dt_ids),
+};
+
+static int imx_ocotp_init(void)
+{
+	platform_driver_register(&imx_ocotp_driver);
+
+	return 0;
+}
+coredevice_initcall(imx_ocotp_init);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
