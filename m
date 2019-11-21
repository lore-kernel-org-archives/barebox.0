Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkNz-0000Nm-06
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 11:12:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Nov 2019 12:12:25 +0100
Message-Id: <20191121111226.5036-4-s.hauer@pengutronix.de>
In-Reply-To: <20191121111226.5036-1-s.hauer@pengutronix.de>
References: <20191121111226.5036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] usb: i.MX: Use usb_register_otg_device()
To: Barebox List <barebox@lists.infradead.org>

We now have usb_register_otg_device() to register an "otg" device. Use
it and drop the custom code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |  4 +-
 .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  4 +-
 drivers/usb/imx/Kconfig                       |  1 +
 drivers/usb/imx/chipidea-imx.c                | 85 +++----------------
 include/usb/chipidea-imx.h                    |  8 +-
 5 files changed, 18 insertions(+), 84 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 76d6f5ba86..77d92f0403 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -145,14 +145,14 @@ static iomux_v3_cfg_t eukrea_cpuimx25_pads[] = {
 #ifndef CONFIG_USB_GADGET
 struct imxusb_platformdata otg_pdata = {
 	.flags = MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = IMX_USB_MODE_HOST,
+	.mode = USB_DR_MODE_HOST,
 	.phymode = USBPHY_INTERFACE_MODE_UTMI,
 };
 #endif
 
 struct imxusb_platformdata hs_pdata = {
 	.flags = MXC_EHCI_INTERFACE_SINGLE_UNI | MXC_EHCI_INTERNAL_PHY | MXC_EHCI_IPPUE_DOWN,
-	.mode = IMX_USB_MODE_HOST,
+	.mode = USB_DR_MODE_HOST,
 };
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index a10763780e..220a484bde 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -95,14 +95,14 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 #ifndef CONFIG_USB_GADGET
 struct imxusb_platformdata otg_pdata = {
 	.flags = MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = IMX_USB_MODE_HOST,
+	.mode = USB_DR_MODE_HOST,
 	.phymode = USBPHY_INTERFACE_MODE_UTMI,
 };
 #endif
 
 struct imxusb_platformdata hs_pdata = {
 	.flags = MXC_EHCI_INTERFACE_SINGLE_UNI | MXC_EHCI_INTERNAL_PHY | MXC_EHCI_IPPUE_DOWN,
-	.mode = IMX_USB_MODE_HOST,
+	.mode = USB_DR_MODE_HOST,
 };
 #endif
 
diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index 05f17fbd2f..34f35e0ff6 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -2,6 +2,7 @@
 config USB_IMX_CHIPIDEA
 	bool "i.MX USB support (read help)"
 	depends on ARCH_IMX
+	select USB_OTGDEV
 	help
 	  The Freescale i.MX SoCs have a variant of the chipidea ci13xxx for
 	  USB support. Traditionally in barebox this is supported through the
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 6c60c383f0..3cf5d26dcd 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -36,12 +36,11 @@ struct imx_chipidea {
 	void __iomem *base;
 	struct ehci_data data;
 	unsigned long flags;
-	uint32_t mode;
+	enum usb_dr_mode mode;
 	int portno;
 	struct device_d *usbmisc;
 	enum usb_phy_interface phymode;
 	struct param_d *param_mode;
-	int role_registered;
 	struct regulator *vbus;
 	struct phy *phy;
 	struct usb_phy *usbphy;
@@ -103,7 +102,6 @@ static int imx_chipidea_port_post_init(void *drvdata)
 static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 {
 	struct of_phandle_args out_args;
-	enum usb_dr_mode mode;
 
 	if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
 					"#index-cells", 0, &out_args))
@@ -116,29 +114,17 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	ci->portno = out_args.args[0];
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
-	mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
+	ci->mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
 
-	switch (mode) {
-	case USB_DR_MODE_HOST:
-	default:
-		ci->mode = IMX_USB_MODE_HOST;
-		break;
-	case USB_DR_MODE_PERIPHERAL:
-		ci->mode = IMX_USB_MODE_DEVICE;
-		break;
-	case USB_DR_MODE_OTG:
-		ci->mode = IMX_USB_MODE_OTG;
-		break;
-	case USB_DR_MODE_UNKNOWN:
+	if (ci->mode == USB_DR_MODE_UNKNOWN) {
 		/*
 		 * No dr_mode specified. This means it can either be OTG
 		 * for port 0 or host mode for the other host-only ports.
 		 */
 		if (ci->portno == 0)
-			ci->mode = IMX_USB_MODE_OTG;
+			ci->mode = USB_DR_MODE_OTG;
 		else
-			ci->mode = IMX_USB_MODE_HOST;
-		break;
+			ci->mode = USB_DR_MODE_HOST;
 	}
 
 	ci->phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
@@ -184,18 +170,15 @@ static int ci_ehci_detect(struct device_d *dev)
 	return ehci_detect(ci->ehci);
 }
 
-static int ci_register_role(struct imx_chipidea *ci)
+static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 {
+	struct imx_chipidea *ci = ctx;
 	int ret;
 
-	if (ci->role_registered != IMX_USB_MODE_OTG)
-		return -EBUSY;
-
-	if (ci->mode == IMX_USB_MODE_HOST) {
+	if (mode == USB_DR_MODE_HOST) {
 		if (IS_ENABLED(CONFIG_USB_EHCI)) {
 			struct ehci_host *ehci;
 
-			ci->role_registered = IMX_USB_MODE_HOST;
 			ret = regulator_enable(ci->vbus);
 			if (ret)
 				return ret;
@@ -215,10 +198,9 @@ static int ci_register_role(struct imx_chipidea *ci)
 		}
 	}
 
-	if (ci->mode == IMX_USB_MODE_DEVICE) {
+	if (mode == USB_DR_MODE_PERIPHERAL) {
 		if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
 			struct fsl_udc *udc;
-			ci->role_registered = IMX_USB_MODE_DEVICE;
 
 			udc = ci_udc_register(ci->dev, ci->base);
 			if (IS_ERR(udc))
@@ -234,48 +216,6 @@ static int ci_register_role(struct imx_chipidea *ci)
 	return 0;
 }
 
-static int ci_set_mode(struct param_d *param, void *priv)
-{
-	struct imx_chipidea *ci = priv;
-
-	if (ci->role_registered != IMX_USB_MODE_OTG) {
-		if (ci->role_registered == ci->mode)
-			return 0;
-		else
-			return -EBUSY;
-	}
-
-	return ci_register_role(ci);
-}
-
-static const char *ci_mode_names[] = {
-	"host", "peripheral", "otg"
-};
-
-static struct device_d imx_otg_device = {
-	.name = "otg",
-	.id = DEVICE_ID_SINGLE,
-};
-
-static int ci_register_otg_device(struct imx_chipidea *ci)
-{
-	int ret;
-
-	if (imx_otg_device.parent)
-		return -EBUSY;
-
-	imx_otg_device.parent = ci->dev;
-
-	ret = register_device(&imx_otg_device);
-	if (ret)
-		return ret;
-
-	ci->param_mode = dev_add_param_enum(&imx_otg_device, "mode",
-			ci_set_mode, NULL, &ci->mode,
-			ci_mode_names, ARRAY_SIZE(ci_mode_names), ci);
-	return 0;
-}
-
 static int imx_chipidea_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -288,7 +228,6 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci = xzalloc(sizeof(*ci));
 	ci->dev = dev;
 	dev->priv = ci;
-	ci->role_registered = IMX_USB_MODE_OTG;
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
 		ret = imx_chipidea_probe_dt(ci);
@@ -361,10 +300,10 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.hcor = base + 0x140;
 	ci->data.flags = EHCI_HAS_TT;
 
-	if (ci->mode == IMX_USB_MODE_OTG)
-		ret = ci_register_otg_device(ci);
+	if (ci->mode == USB_DR_MODE_OTG)
+		ret = usb_register_otg_device(ci->dev, ci_set_mode, ci);
 	else
-		ret = ci_register_role(ci);
+		ret = ci_set_mode(ci, ci->mode);
 
 	return ret;
 };
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 973aee6a0e..5ea5fcc26d 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -37,16 +37,10 @@
 
 #define MXC_EHCI_DISABLE_OVERCURRENT	(1 << 14)
 
-enum imx_usb_mode {
-	IMX_USB_MODE_HOST,
-	IMX_USB_MODE_DEVICE,
-	IMX_USB_MODE_OTG,
-};
-
 struct imxusb_platformdata {
 	unsigned long flags;
 	enum usb_phy_interface phymode;
-	enum imx_usb_mode mode;
+	enum usb_dr_mode mode;
 };
 
 int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
