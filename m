Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zcavf-0007I8-NL
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 15:16:56 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 17 Sep 2015 17:16:25 +0200
Message-Id: <1442502985-21988-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] usb: chipidea: Add udc unregister for device removal
To: barebox@lists.infradead.org

The host may assume that the usb device is still up and running after
booting if we do not deregister the udc here. I observed issues when the
linux kernel was using a usb gadget directly where the complete USB Hub
got disconnected through this.

This patch adds a proper USB disconnect for gadget devices.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c   | 13 +++++++++++++
 drivers/usb/imx/chipidea-imx.c |  6 ++++++
 include/usb/fsl_usb2.h         |  1 +
 3 files changed, 20 insertions(+)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 19f3da65bbc6..9b59669773af 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2293,6 +2293,13 @@ err_out:
 	return ret;
 }
 
+void ci_udc_unregister(void)
+{
+	if (udc_controller)
+		usb_del_gadget_udc(&udc_controller->gadget);
+
+}
+
 static int fsl_udc_probe(struct device_d *dev)
 {
 	void __iomem *regs = dev_request_mem_region(dev, 0);
@@ -2303,8 +2310,14 @@ static int fsl_udc_probe(struct device_d *dev)
 	return ci_udc_register(dev, regs);
 }
 
+static void fsl_udc_remove(struct device_d *dev)
+{
+	ci_udc_unregister();
+}
+
 static struct driver_d fsl_udc_driver = {
         .name   = "fsl-udc",
         .probe  = fsl_udc_probe,
+	.remove = fsl_udc_remove,
 };
 device_platform_driver(fsl_udc_driver);
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 1dca6bfe1db5..e971df011f51 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -275,6 +275,11 @@ static int imx_chipidea_probe(struct device_d *dev)
 	return ret;
 };
 
+static void imx_chipidea_remove(struct device_d *dev)
+{
+	ci_udc_unregister();
+}
+
 static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
 	{
 		.compatible = "fsl,imx27-usb",
@@ -287,5 +292,6 @@ static struct driver_d imx_chipidea_driver = {
 	.name   = "imx-usb",
 	.probe  = imx_chipidea_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_chipidea_dt_ids),
+	.remove = imx_chipidea_remove,
 };
 device_platform_driver(imx_chipidea_driver);
diff --git a/include/usb/fsl_usb2.h b/include/usb/fsl_usb2.h
index dec3933d82ed..881a5d4fdfd9 100644
--- a/include/usb/fsl_usb2.h
+++ b/include/usb/fsl_usb2.h
@@ -24,5 +24,6 @@ struct fsl_usb2_platform_data {
 };
 
 int ci_udc_register(struct device_d *dev, void __iomem *regs);
+void ci_udc_unregister(void);
 
 #endif /* __USB_FSL_USB2_H */
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
