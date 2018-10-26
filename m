Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mP-QR
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:34:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:38 +0200
Message-Id: <20181026093338.22751-9-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] usb: gadget: fsl_udc: pass controller instance to
 unregister
To: Barebox List <barebox@lists.infradead.org>

ci_udc_unregister() used to unregister "the controller". Since we
may register multiple chipidea devices we called ci_udc_unregister()
for each of them. This led to messages like:

ERROR: imx-usb 53f80000.usb: gadget not registered.

Fix this by returning the registered controller. This allows us to call
ci_udc_unregister() only when we actually registered one before.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c   | 30 ++++++++++++++++++++----------
 drivers/usb/imx/chipidea-imx.c | 13 ++++++++++---
 include/usb/fsl_usb2.h         |  6 ++++--
 3 files changed, 34 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 7782d4bdd9..061ee5185f 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -528,7 +528,6 @@ static void dump_msg(const char *label, const u8 * buf, unsigned int length)
 #define get_pipe_by_ep(EP)	(ep_index(EP) * 2 + ep_is_in(EP))
 
 static struct usb_dr_device __iomem *dr_regs;
-static struct fsl_udc *udc_controller = NULL;
 
 static const struct usb_endpoint_descriptor
 fsl_ep0_desc = {
@@ -2226,8 +2225,9 @@ static int __init struct_ep_setup(struct fsl_udc *udc, unsigned char index,
 	return 0;
 }
 
-int ci_udc_register(struct device_d *dev, void __iomem *regs)
+struct fsl_udc *ci_udc_register(struct device_d *dev, void __iomem *regs)
 {
+	struct fsl_udc *udc_controller;
 	int ret, i;
 	u32 dccparams;
 
@@ -2293,31 +2293,41 @@ int ci_udc_register(struct device_d *dev, void __iomem *regs)
 	if (ret)
 		goto err_out;
 
-	return 0;
+	return udc_controller;
 err_out:
-	return ret;
+	free(udc_controller);
+
+	return ERR_PTR(ret);
 }
 
-void ci_udc_unregister(void)
+void ci_udc_unregister(struct fsl_udc *udc)
 {
-	if (udc_controller)
-		usb_del_gadget_udc(&udc_controller->gadget);
-
+	usb_del_gadget_udc(&udc->gadget);
+	free(udc);
 }
 
 static int fsl_udc_probe(struct device_d *dev)
 {
+	struct fsl_udc *udc;
 	void __iomem *regs = dev_request_mem_region(dev, 0);
 
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 
-	return ci_udc_register(dev, regs);
+	udc = ci_udc_register(dev, regs);
+	if (IS_ERR(udc))
+		return PTR_ERR(udc);
+
+	dev->priv = udc;
+
+	return 0;
 }
 
 static void fsl_udc_remove(struct device_d *dev)
 {
-	ci_udc_unregister();
+	struct fsl_udc *udc = dev->priv;
+
+	ci_udc_unregister(udc);
 }
 
 static struct driver_d fsl_udc_driver = {
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 7bf2ef76c5..8792217706 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -47,6 +47,7 @@ struct imx_chipidea {
 	struct usb_phy *usbphy;
 	struct clk *clk;
 	struct ehci_host *ehci;
+	struct fsl_udc *udc;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -216,8 +217,14 @@ static int ci_register_role(struct imx_chipidea *ci)
 
 	if (ci->mode == IMX_USB_MODE_DEVICE) {
 		if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
+			struct fsl_udc *udc;
 			ci->role_registered = IMX_USB_MODE_DEVICE;
-			return ci_udc_register(ci->dev, ci->base);
+
+			udc = ci_udc_register(ci->dev, ci->base);
+			if (IS_ERR(udc))
+				return PTR_ERR(udc);
+
+			ci->udc = udc;
 		} else {
 			dev_err(ci->dev, "USB device support not available\n");
 			return -ENODEV;
@@ -369,8 +376,8 @@ static void imx_chipidea_remove(struct device_d *dev)
 	if (ci->ehci)
 		ehci_unregister(ci->ehci);
 
-	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
-		ci_udc_unregister();
+	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC) && ci->udc)
+		ci_udc_unregister(ci->udc);
 }
 
 static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
diff --git a/include/usb/fsl_usb2.h b/include/usb/fsl_usb2.h
index 881a5d4fdf..39757f71ad 100644
--- a/include/usb/fsl_usb2.h
+++ b/include/usb/fsl_usb2.h
@@ -23,7 +23,9 @@ struct fsl_usb2_platform_data {
 	unsigned int			port_enables;
 };
 
-int ci_udc_register(struct device_d *dev, void __iomem *regs);
-void ci_udc_unregister(void);
+struct fsl_udc;
+
+struct fsl_udc *ci_udc_register(struct device_d *dev, void __iomem *regs);
+void ci_udc_unregister(struct fsl_udc *);
 
 #endif /* __USB_FSL_USB2_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
