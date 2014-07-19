Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003is-Ak
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:15:56 +0200
Message-Id: <1405761367-23724-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] USB: i.MX chipidea: Implement OTG support for the poor
To: barebox@lists.infradead.org

For situations when we don't know the desired mode for the OTG port
we register a otg device which has a mode parameter to specifiy the
desired mode on the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 101 +++++++++++++++++++++++++++++++++++++----
 include/usb/chipidea-imx.h     |   1 +
 2 files changed, 93 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 9b6829b..62feae8 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -20,6 +20,7 @@
 #include <driver.h>
 #include <usb/usb.h>
 #include <usb/ehci.h>
+#include <regulator.h>
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
 #include <usb/fsl_usb2.h>
@@ -31,9 +32,12 @@ struct imx_chipidea {
 	void __iomem *base;
 	struct ehci_data data;
 	unsigned long flags;
-	enum imx_usb_mode mode;
+	uint32_t mode;
 	int portno;
 	enum usb_phy_interface phymode;
+	struct param_d *param_mode;
+	int role_registered;
+	struct regulator *vbus;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -99,6 +103,19 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	case USB_DR_MODE_PERIPHERAL:
 		ci->mode = IMX_USB_MODE_DEVICE;
 		break;
+	case USB_DR_MODE_OTG:
+		ci->mode = IMX_USB_MODE_OTG;
+		break;
+	case USB_DR_MODE_UNKNOWN:
+		/*
+		 * No dr_mode specified. This means it can either be OTG
+		 * for port 0 or host mode for the other host-only ports.
+		 */
+		if (ci->portno == 0)
+			ci->mode = IMX_USB_MODE_OTG;
+		else
+			ci->mode = IMX_USB_MODE_HOST;
+		break;
 	}
 
 	ci->phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
@@ -129,6 +146,72 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	return 0;
 }
 
+static int ci_register_role(struct imx_chipidea *ci)
+{
+	if (ci->role_registered)
+		return -EBUSY;
+
+	if (ci->mode == IMX_USB_MODE_HOST) {
+		if (IS_ENABLED(CONFIG_USB_EHCI)) {
+			ci->role_registered = 1;
+			return ehci_register(ci->dev, &ci->data);
+		} else {
+			dev_err(ci->dev, "Host support not available\n");
+			return -ENODEV;
+		}
+	}
+
+	if (ci->mode == IMX_USB_MODE_DEVICE) {
+		if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
+			ci->role_registered = 1;
+			return ci_udc_register(ci->dev, ci->base);
+		} else {
+			dev_err(ci->dev, "USB device support not available\n");
+			return -ENODEV;
+		}
+	}
+
+	return 0;
+}
+
+static int ci_set_mode(struct param_d *param, void *priv)
+{
+	struct imx_chipidea *ci = priv;
+
+	if (ci->role_registered)
+		return -EBUSY;
+
+	return ci_register_role(ci);
+}
+
+static const char *ci_mode_names[] = {
+	"host", "peripheral", "otg"
+};
+
+static struct device_d imx_otg_device = {
+	.name = "otg",
+	.id = DEVICE_ID_SINGLE,
+};
+
+static int ci_register_otg_device(struct imx_chipidea *ci)
+{
+	int ret;
+
+	if (imx_otg_device.parent)
+		return -EBUSY;
+
+	imx_otg_device.parent = ci->dev;
+
+	ret = register_device(&imx_otg_device);
+	if (ret)
+		return ret;
+
+	ci->param_mode = dev_add_param_enum(&imx_otg_device, "mode",
+			ci_set_mode, NULL, &ci->mode,
+			ci_mode_names, ARRAY_SIZE(ci_mode_names), ci);
+	return 0;
+}
+
 static int imx_chipidea_probe(struct device_d *dev)
 {
 	struct imxusb_platformdata *pdata = dev->platform_data;
@@ -154,6 +237,10 @@ static int imx_chipidea_probe(struct device_d *dev)
 		ci->mode = pdata->mode;
 	}
 
+	ci->vbus = regulator_get(dev, "vbus");
+
+	regulator_enable(ci->vbus);
+
 	base = dev_request_mem_region(dev, 0);
 	if (!base)
 		return -ENODEV;
@@ -178,14 +265,10 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.hcor = base + 0x140;
 	ci->data.flags = EHCI_HAS_TT;
 
-	if (ci->mode == IMX_USB_MODE_HOST && IS_ENABLED(CONFIG_USB_EHCI)) {
-		ret = ehci_register(dev, &ci->data);
-	} else if (ci->mode == IMX_USB_MODE_DEVICE && IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
-		ret = ci_udc_register(dev, base);
-	} else {
-		dev_err(dev, "No supported role\n");
-		ret = -ENODEV;
-	}
+	if (ci->mode == IMX_USB_MODE_OTG)
+		ret = ci_register_otg_device(ci);
+	else
+		ret = ci_register_role(ci);
 
 	return ret;
 };
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 487217c..09e19af 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -37,6 +37,7 @@
 enum imx_usb_mode {
 	IMX_USB_MODE_HOST,
 	IMX_USB_MODE_DEVICE,
+	IMX_USB_MODE_OTG,
 };
 
 struct imxusb_platformdata {
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
