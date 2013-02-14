Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5uoq-0005QA-6U
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:09:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:09:25 +0100
Message-Id: <1360832965-7378-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] USB i.MX: Add chipidea gadget support
To: barebox@lists.infradead.org

This adds USB gadget support to the i.MX chipidea driver. Basically
we have to add a register function to the fsl udc driver and call
this from the chipidea driver if device mode is selected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c   |   11 +++++++++--
 drivers/usb/imx/chipidea-imx.c |    6 ++----
 include/usb/fsl_usb2.h         |    6 ++++++
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 0a7c3ae..968c58f 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2257,7 +2257,7 @@ static struct poller_struct poller = {
 	.func		= fsl_udc_poller
 };
 
-static int fsl_udc_probe(struct device_d *dev)
+int ci_udc_register(struct device_d *dev, void __iomem *regs)
 {
 	int ret, i;
 	u32 dccparams;
@@ -2265,7 +2265,7 @@ static int fsl_udc_probe(struct device_d *dev)
 	udc_controller = xzalloc(sizeof(*udc_controller));
 	udc_controller->stopped = 1;
 
-	dr_regs = dev_request_mem_region(dev, 0);
+	dr_regs = regs;
 
 	/* Read Device Controller Capability Parameters register */
 	dccparams = readl(&dr_regs->dccparams);
@@ -2326,6 +2326,13 @@ err_out:
 	return ret;
 }
 
+static int fsl_udc_probe(struct device_d *dev)
+{
+	void __iomem *regs = dev_request_mem_region(dev, 0);
+
+	return ci_udc_register(dev, regs);
+}
+
 static struct driver_d fsl_udc_driver = {
         .name   = "fsl-udc",
         .probe  = fsl_udc_probe,
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index de80c36..ec4db27 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -19,6 +19,7 @@
 #include <usb/ehci.h>
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
+#include <usb/fsl_usb2.h>
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
@@ -99,10 +100,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (pdata->mode == IMX_USB_MODE_HOST) {
 		ret = ehci_register(dev, &data);
 	} else {
-		/*
-		 * Not yet implemented. Register USB gadget driver here.
-		 */
-		ret = -ENOSYS;
+		ret = ci_udc_register(dev, base);
 	}
 
 	return ret;
diff --git a/include/usb/fsl_usb2.h b/include/usb/fsl_usb2.h
index fd37ade..dec3933 100644
--- a/include/usb/fsl_usb2.h
+++ b/include/usb/fsl_usb2.h
@@ -1,3 +1,6 @@
+#ifndef __USB_FSL_USB2_H
+#define __USB_FSL_USB2_H
+
 enum fsl_usb2_operating_modes {
 	FSL_USB2_MPH_HOST,
 	FSL_USB2_DR_HOST,
@@ -20,3 +23,6 @@ struct fsl_usb2_platform_data {
 	unsigned int			port_enables;
 };
 
+int ci_udc_register(struct device_d *dev, void __iomem *regs);
+
+#endif /* __USB_FSL_USB2_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
