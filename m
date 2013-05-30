Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0U1-0004Qo-BT
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:53:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:52:47 +0200
Message-Id: <1369911168-15654-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
References: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] usb: i.MX chipidea: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 133 +++++++++++++++++++++++++++++++++--------
 drivers/usb/imx/imx-usb-misc.c |  49 +++++++++++++++
 drivers/usb/imx/imx-usb-phy.c  |  11 +++-
 3 files changed, 166 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 1570f90..508dbd8 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <io.h>
 #include <driver.h>
+#include <usb/usb.h>
 #include <usb/ehci.h>
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
@@ -23,64 +24,135 @@
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
+struct imx_chipidea {
+	struct device_d *dev;
+	struct ehci_data data;
+	unsigned long flags;
+	enum imx_usb_mode mode;
+	int (*init)(int port);
+	int portno;
+};
+
 static int imx_chipidea_port_init(void *drvdata)
 {
-	struct device_d *dev = drvdata;
-	struct imxusb_platformdata *pdata = dev->platform_data;
+	struct imx_chipidea *ci = drvdata;
 	int ret;
 
-	ret = imx_usbmisc_port_init(dev->id, pdata->flags);
+	ret = imx_usbmisc_port_init(ci->portno, ci->flags);
 	if (ret)
-		dev_err(dev, "misc init failed: %s\n", strerror(-ret));
+		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
 
-	if (pdata->init)
-		pdata->init(dev->id);
+	if (ci->init)
+		ci->init(ci->portno);
 
 	return ret;
 }
 
 static int imx_chipidea_port_post_init(void *drvdata)
 {
-	struct device_d *dev = drvdata;
-	struct imxusb_platformdata *pdata = dev->platform_data;
+	struct imx_chipidea *ci = drvdata;
 	int ret;
 
-	ret = imx_usbmisc_port_post_init(dev->id, pdata->flags);
+	ret = imx_usbmisc_port_post_init(ci->portno, ci->flags);
 	if (ret)
-		dev_err(dev, "post misc init failed: %s\n", strerror(-ret));
+		dev_err(ci->dev, "post misc init failed: %s\n", strerror(-ret));
 
 	return ret;
 }
 
+static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
+{
+	const void *out_args;
+	struct device_node *usbmisc_np;
+	enum usb_dr_mode mode;
+	enum usb_phy_interface phymode;
+
+	of_parse_phandles_with_args(ci->dev->device_node, "fsl,usbmisc",
+			"#index-cells", 0, &usbmisc_np, &out_args);
+
+	ci->portno = be32_to_cpup(out_args);
+
+	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
+
+	mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
+
+	switch (mode) {
+	case USB_DR_MODE_HOST:
+	default:
+		ci->mode = IMX_USB_MODE_HOST;
+		break;
+	case USB_DR_MODE_PERIPHERAL:
+		ci->mode = IMX_USB_MODE_DEVICE;
+		break;
+	}
+
+	phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
+	switch (phymode) {
+	case USBPHY_INTERFACE_MODE_UTMI:
+		ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
+		break;
+	case USBPHY_INTERFACE_MODE_UTMIW:
+		ci->flags = MXC_EHCI_MODE_UTMI_16_BIT;
+		break;
+	case USBPHY_INTERFACE_MODE_ULPI:
+		ci->flags = MXC_EHCI_MODE_ULPI;
+		break;
+	case USBPHY_INTERFACE_MODE_SERIAL:
+		ci->flags = MXC_EHCI_MODE_SERIAL;
+		break;
+	case USBPHY_INTERFACE_MODE_HSIC:
+		ci->flags = MXC_EHCI_MODE_HSIC;
+		break;
+	default:
+		dev_err(ci->dev, "no or invalid phy mode setting\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int imx_chipidea_probe(struct device_d *dev)
 {
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	int ret;
 	void __iomem *base;
-	struct ehci_data data = {};
+	struct imx_chipidea *ci;
 	uint32_t portsc;
 
-	if (!pdata) {
-		dev_err(dev, "no pdata!\n");
-		return -EINVAL;
+	ci = xzalloc(sizeof(*ci));
+	ci->dev = dev;
+
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+		ret = imx_chipidea_probe_dt(ci);
+		if (ret)
+			return ret;
+	} else {
+		if (!pdata) {
+			dev_err(dev, "no pdata!\n");
+			return -EINVAL;
+		}
+		ci->portno = dev->id;
+		ci->flags = pdata->flags;
+		ci->init = pdata->init;
+		ci->mode = pdata->mode;
 	}
 
 	base = dev_request_mem_region(dev, 0);
 	if (!base)
 		return -ENODEV;
 
-	data.init = imx_chipidea_port_init;
-	data.post_init = imx_chipidea_port_post_init;
-	data.drvdata = dev;
+	ci->data.init = imx_chipidea_port_init;
+	ci->data.post_init = imx_chipidea_port_post_init;
+	ci->data.drvdata = ci;
 
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
-	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
+	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
-	imx_chipidea_port_init(dev);
+	imx_chipidea_port_init(ci);
 
-	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
+	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
 			ret = ulpi_setup(base + 0x170, 1);
@@ -93,13 +165,13 @@ static int imx_chipidea_probe(struct device_d *dev)
 			return ret;
 	}
 
-	data.hccr = base + 0x100;
-	data.hcor = base + 0x140;
-	data.flags = EHCI_HAS_TT;
+	ci->data.hccr = base + 0x100;
+	ci->data.hcor = base + 0x140;
+	ci->data.flags = EHCI_HAS_TT;
 
-	if (pdata->mode == IMX_USB_MODE_HOST && IS_ENABLED(CONFIG_USB_EHCI)) {
-		ret = ehci_register(dev, &data);
-	} else if (pdata->mode == IMX_USB_MODE_DEVICE && IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
+	if (ci->mode == IMX_USB_MODE_HOST && IS_ENABLED(CONFIG_USB_EHCI)) {
+		ret = ehci_register(dev, &ci->data);
+	} else if (ci->mode == IMX_USB_MODE_DEVICE && IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
 		ret = ci_udc_register(dev, base);
 	} else {
 		dev_err(dev, "No supported role\n");
@@ -109,8 +181,17 @@ static int imx_chipidea_probe(struct device_d *dev)
 	return ret;
 };
 
+static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-usb",
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d imx_chipidea_driver = {
 	.name   = "imx-usb",
 	.probe  = imx_chipidea_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_chipidea_dt_ids),
 };
 device_platform_driver(imx_chipidea_driver);
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 901ced4..2729684 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -463,6 +463,54 @@ static struct platform_device_id imx_usbmisc_ids[] = {
 	},
 };
 
+static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
+#ifdef CONFIG_ARCH_IMX25
+	{
+		.compatible = "fsl,imx25-usbmisc",
+		.data = (unsigned long)&mx25_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	{
+		.compatible = "fsl,imx27-usbmisc",
+		.data = (unsigned long)&mx27_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	{
+		.compatible = "fsl,imx31-usbmisc",
+		.data = (unsigned long)&mx31_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	{
+		.compatible = "fsl,imx35-usbmisc",
+		.data = (unsigned long)&mx35_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX51
+	{
+		.compatible = "fsl,imx51-usbmisc",
+		.data = (unsigned long)&mx5_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX53
+	{
+		.compatible = "fsl,imx53-usbmisc",
+		.data = (unsigned long)&mx5_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX6
+	{
+		.compatible = "fsl,imx6q-usbmisc",
+		.data = (unsigned long)&mx6_data,
+	},
+#endif
+	{
+		/* sentinel */
+	},
+};
+
 static struct imx_usb_misc_data *imxusbmisc_data;
 static void __iomem *usbmisc_base;
 
@@ -510,6 +558,7 @@ static struct driver_d imx_usbmisc_driver = {
 	.name   = "imx-usbmisc",
 	.probe  = imx_usbmisc_probe,
 	.id_table = imx_usbmisc_ids,
+	.of_compatible = DRV_OF_COMPAT(imx_usbmisc_dt_ids),
 };
 
 static int imx_usbmisc_init(void)
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index ce9c93f..776bfe5 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -93,13 +93,22 @@ err_free:
 	return ret;
 };
 
+static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
+	{
+		.compatible = "fsl,imx23-usbphy",
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d imx_usbphy_driver = {
 	.name   = "imx-usb-phy",
 	.probe  = imx_usbphy_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_usbphy_dt_ids),
 };
 
 static int imx_usbphy_init(void)
 {
 	return platform_driver_register(&imx_usbphy_driver);
 }
-coredevice_initcall(imx_usbphy_init);
+fs_initcall(imx_usbphy_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
