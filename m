Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uh5SH-0008Om-0y
 for barebox@lists.infradead.org; Mon, 27 May 2013 21:59:49 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so3488187bkc.41
 for <barebox@lists.infradead.org>; Mon, 27 May 2013 14:59:26 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Mon, 27 May 2013 23:59:11 +0200
Message-Id: <1369691952-3603-2-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1369691952-3603-1-git-send-email-philipp.zabel@gmail.com>
References: <1369691952-3603-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 2/3] USB: chipidea-imx: add basic device tree support
To: barebox@lists.infradead.org

This adds device tree support to the chipidea-imx driver.
There is no way to set flags or enable ULPI yet. Only host
mode is supported for now.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/usb/imx/chipidea-imx.c |   33 ++++++++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 1570f90..87e6a9d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -29,11 +29,11 @@ static int imx_chipidea_port_init(void *drvdata)
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	int ret;
 
-	ret = imx_usbmisc_port_init(dev->id, pdata->flags);
+	ret = imx_usbmisc_port_init(dev->id, pdata ? pdata->flags : 0);
 	if (ret)
 		dev_err(dev, "misc init failed: %s\n", strerror(-ret));
 
-	if (pdata->init)
+	if (pdata && pdata->init)
 		pdata->init(dev->id);
 
 	return ret;
@@ -45,7 +45,7 @@ static int imx_chipidea_port_post_init(void *drvdata)
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	int ret;
 
-	ret = imx_usbmisc_port_post_init(dev->id, pdata->flags);
+	ret = imx_usbmisc_port_post_init(dev->id, pdata ? pdata->flags : 0);
 	if (ret)
 		dev_err(dev, "post misc init failed: %s\n", strerror(-ret));
 
@@ -60,7 +60,16 @@ static int imx_chipidea_probe(struct device_d *dev)
 	struct ehci_data data = {};
 	uint32_t portsc;
 
-	if (!pdata) {
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+		const void *args;
+
+		ret = of_parse_phandles_with_args(dev->device_node,
+				"fsl,usbmisc", "#index-cells", 0, NULL, &args);
+		if (ret < 0)
+			return -EINVAL;
+
+		dev->id = be32_to_cpu(*((__be32 *)args));
+	} else if (!pdata) {
 		dev_err(dev, "no pdata!\n");
 		return -EINVAL;
 	}
@@ -75,12 +84,13 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
-	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
+	if (pdata)
+		portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
 	imx_chipidea_port_init(dev);
 
-	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
+	if (pdata && ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI)) {
 		dev_dbg(dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
 			ret = ulpi_setup(base + 0x170, 1);
@@ -97,7 +107,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	data.hcor = base + 0x140;
 	data.flags = EHCI_HAS_TT;
 
-	if (pdata->mode == IMX_USB_MODE_HOST && IS_ENABLED(CONFIG_USB_EHCI)) {
+	if (!pdata || (pdata->mode == IMX_USB_MODE_HOST && IS_ENABLED(CONFIG_USB_EHCI))) {
 		ret = ehci_register(dev, &data);
 	} else if (pdata->mode == IMX_USB_MODE_DEVICE && IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
 		ret = ci_udc_register(dev, base);
@@ -109,8 +119,17 @@ static int imx_chipidea_probe(struct device_d *dev)
 	return ret;
 };
 
+static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-usb",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_chipidea_driver = {
 	.name   = "imx-usb",
 	.probe  = imx_chipidea_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_chipidea_dt_ids),
 };
 device_platform_driver(imx_chipidea_driver);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
