Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKd-0005Mb-66
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:39 +0200
Message-Id: <1369130267-8094-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] ARM: i.MX: iim: Add devicetree probe support
To: barebox@lists.infradead.org

Only adds the dt ids.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/README           |  6 +++
 .../devicetree/bindings/misc/fsl,imx-iim.txt       | 20 ++++++++
 arch/arm/mach-imx/iim.c                            | 58 ++++++++++++++++++++++
 3 files changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/README
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-iim.txt

diff --git a/Documentation/devicetree/bindings/README b/Documentation/devicetree/bindings/README
new file mode 100644
index 0000000..b818ee8
--- /dev/null
+++ b/Documentation/devicetree/bindings/README
@@ -0,0 +1,6 @@
+
+barebox uses the same devicetree bindings as the kernel. For
+the bindings derived from the kernel look in the kernel sources
+for reference.
+
+barebox specific bindings are documented here.
diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
new file mode 100644
index 0000000..ed3efcc
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
@@ -0,0 +1,20 @@
+Freescale i.MX IIM (Ic Identification Module)
+
+Required properties:
+
+- compatible: fsl,imx-iim
+- reg: physical register base and size
+
+Optional properties:
+
+- barebox,provide-mac-address: Provide MAC addresses for ethernet devices. This
+  can be multiple entries in the form <&phandle bankno fuseofs> to specify a MAC
+  address to a ethernet device.
+
+Example:
+
+iim: iim@83f98000 {
+	compatible = "fsl,imx51-iim", "fsl,imx-iim";
+	reg = <0x83f98000 0x4000>;
+	barebox,provide-mac-address = <&fec 1 9>;
+};
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index bb806d7..956811c 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -223,6 +223,54 @@ static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
 	return devfs_create(cdev);
 }
 
+#if IS_ENABLED(CONFIG_OFDEVICE)
+
+/*
+ * a single MAC address reference has the form
+ * <&phandle iim-bank-no offset>, so three cells
+ */
+#define MAC_ADDRESS_PROPLEN	(3 * sizeof(__be32))
+
+static void imx_iim_init_dt(struct device_d *dev)
+{
+	char mac[6];
+	const __be32 *prop;
+	struct device_node *node = dev->device_node;
+	int len, ret;
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
+		uint32_t phandle, bank, offset;
+
+		phandle = be32_to_cpup(prop++);
+
+		rnode = of_find_node_by_phandle(phandle);
+		bank = be32_to_cpup(prop++);
+		offset = be32_to_cpup(prop++);
+
+		ret = imx_iim_read(bank, offset, mac, 6);
+		if (ret == 6) {
+			of_eth_register_ethaddr(rnode, mac);
+		} else {
+			dev_err(dev, "cannot read: %s\n", strerror(-ret));
+		}
+
+		len -= MAC_ADDRESS_PROPLEN;
+	}
+}
+#else
+static inline void imx_iim_init_dt(struct device_d *dev)
+{
+}
+#endif
+
 static int imx_iim_probe(struct device_d *dev)
 {
 	int i;
@@ -234,6 +282,7 @@ static int imx_iim_probe(struct device_d *dev)
 		imx_iim_add_bank(dev, base, i);
 	}
 
+	imx_iim_init_dt(dev);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW))
 		dev_add_param_bool(dev, "permanent_write_enable",
@@ -245,9 +294,18 @@ static int imx_iim_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
+	{
+		.compatible = "fsl,imx-iim",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_iim_driver = {
 	.name	= DRIVERNAME,
 	.probe	= imx_iim_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_iim_dt_ids),
 };
 
 static int imx_iim_init(void)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
