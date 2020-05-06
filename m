Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005wY-3n
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:15 +0200
Message-Id: <20200506081716.20143-12-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] usb: i.MX: Add i.MX28 support
To: Barebox List <barebox@lists.infradead.org>

The existing i.MX chipidea support can be used for i.MX28 as well. The
main difference is that the i.MX28 doesn't have a usbmisc unit, so the
bulk of this patch makes this unit optional in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/Kconfig        |  8 +++--
 drivers/usb/imx/Makefile       |  3 +-
 drivers/usb/imx/chipidea-imx.c | 60 +++++++++++++++++++++++++---------
 include/usb/chipidea-imx.h     | 13 ++++++++
 4 files changed, 66 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index 34f35e0ff6..2b9e63b21c 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -1,7 +1,7 @@
 
 config USB_IMX_CHIPIDEA
 	bool "i.MX USB support (read help)"
-	depends on ARCH_IMX
+	depends on ARCH_IMX || ARCH_MXS
 	select USB_OTGDEV
 	help
 	  The Freescale i.MX SoCs have a variant of the chipidea ci13xxx for
@@ -15,8 +15,12 @@ config USB_IMX_CHIPIDEA
 	  support to work.
 	  It's safe to say yes here. Also select EHCI support for USB host.
 
+config USB_IMX_CHIPIDEA_USBMISC
+	bool
+	default y if ARCH_IMX
+
 config USB_IMX_PHY
 	bool
-	default y if (ARCH_IMX6 || ARCH_VF610) && GENERIC_PHY
+	default y if (ARCH_IMX6 || ARCH_VF610 || ARCH_MXS) && GENERIC_PHY
 	select STMP_DEVICE
 	select MFD_SYSCON
diff --git a/drivers/usb/imx/Makefile b/drivers/usb/imx/Makefile
index e15bc711a9..ac17e91e99 100644
--- a/drivers/usb/imx/Makefile
+++ b/drivers/usb/imx/Makefile
@@ -1,2 +1,3 @@
-obj-$(CONFIG_USB_IMX_CHIPIDEA) += imx-usb-misc.o chipidea-imx.o
+obj-$(CONFIG_USB_IMX_CHIPIDEA) += chipidea-imx.o
+obj-$(CONFIG_USB_IMX_CHIPIDEA_USBMISC) += imx-usb-misc.o
 obj-$(CONFIG_USB_IMX_PHY) += imx-usb-phy.o
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 03301d9c3e..635be02929 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -31,6 +31,10 @@
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
+struct imx_chipidea_data {
+	bool have_usb_misc;
+};
+
 struct imx_chipidea {
 	struct device_d *dev;
 	void __iomem *base;
@@ -47,13 +51,14 @@ struct imx_chipidea {
 	struct clk *clk;
 	struct ehci_host *ehci;
 	struct fsl_udc *udc;
+	bool have_usb_misc;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
 {
 	struct imx_chipidea *ci = drvdata;
 	uint32_t portsc;
-	int ret;
+	int ret = 0;
 
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(ci->dev, "using ULPI phy\n");
@@ -72,9 +77,11 @@ static int imx_chipidea_port_init(void *drvdata)
 			return ret;
 	}
 
-	ret = imx_usbmisc_port_init(ci->usbmisc, ci->portno, ci->flags);
-	if (ret)
-		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
+	if (ci->have_usb_misc) {
+		ret = imx_usbmisc_port_init(ci->usbmisc, ci->portno, ci->flags);
+		if (ret)
+			dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
+	}
 
 	/* PFSC bit is reset by ehci_reset(), thus have to set it not in
 	 * probe but here, after ehci_reset() is already called */
@@ -90,11 +97,13 @@ static int imx_chipidea_port_init(void *drvdata)
 static int imx_chipidea_port_post_init(void *drvdata)
 {
 	struct imx_chipidea *ci = drvdata;
-	int ret;
+	int ret = 0;
 
-	ret = imx_usbmisc_port_post_init(ci->usbmisc, ci->portno, ci->flags);
-	if (ret)
-		dev_err(ci->dev, "post misc init failed: %s\n", strerror(-ret));
+	if (ci->have_usb_misc) {
+		ret = imx_usbmisc_port_post_init(ci->usbmisc, ci->portno, ci->flags);
+		if (ret)
+			dev_err(ci->dev, "post misc init failed: %s\n", strerror(-ret));
+	}
 
 	return ret;
 }
@@ -103,15 +112,18 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 {
 	struct of_phandle_args out_args;
 
-	if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
-					"#index-cells", 0, &out_args))
-		return -ENODEV;
+	if (ci->have_usb_misc) {
+		if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
+						"#index-cells", 0, &out_args))
+			return -ENODEV;
+
+		ci->usbmisc = of_find_device_by_node(out_args.np);
+		if (!ci->usbmisc)
+			return -ENODEV;
 
-	ci->usbmisc = of_find_device_by_node(out_args.np);
-	if (!ci->usbmisc)
-		return -ENODEV;
+		ci->portno = out_args.args[0];
+	}
 
-	ci->portno = out_args.args[0];
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
 	ci->mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
@@ -219,6 +231,7 @@ static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 static int imx_chipidea_probe(struct device_d *dev)
 {
 	struct resource *iores;
+	struct imx_chipidea_data *imx_data;
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	int ret;
 	void __iomem *base;
@@ -229,6 +242,10 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->dev = dev;
 	dev->priv = ci;
 
+	ret = dev_get_drvdata(dev, (const void **)&imx_data);
+	if (!ret)
+		ci->have_usb_misc = imx_data->have_usb_misc;
+
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
 		ret = imx_chipidea_probe_dt(ci);
 		if (ret)
@@ -319,11 +336,24 @@ static void imx_chipidea_remove(struct device_d *dev)
 		ci_udc_unregister(ci->udc);
 }
 
+static const struct imx_chipidea_data imx_data = {
+	.have_usb_misc = 1,
+};
+
+static const struct imx_chipidea_data imx28_data = {
+	.have_usb_misc = 0,
+};
+
 static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
 	{
 		.compatible = "fsl,imx27-usb",
+		.data = &imx_data,
+	}, {
+		.compatible = "fsl,imx28-usb",
+		.data = &imx28_data,
 	}, {
 		.compatible = "fsl,imx7d-usb",
+		.data = &imx_data,
 	}, {
 		/* sentinel */
 	},
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 5ea5fcc26d..d6939886fc 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -43,7 +43,20 @@ struct imxusb_platformdata {
 	enum usb_dr_mode mode;
 };
 
+#ifdef USB_IMX_CHIPIDEA_USBMISC
 int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags);
 int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags);
+#else
+static inline int imx_usbmisc_port_init(struct device_d *dev, int port,
+					unsigned flags)
+{
+	return 0;
+}
+static inline int imx_usbmisc_port_post_init(struct device_d *dev, int port,
+					     unsigned flags)
+{
+	return 0;
+}
+#endif
 
 #endif /* __USB_CHIPIDEA_IMX_H */
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
