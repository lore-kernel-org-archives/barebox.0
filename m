Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5WMi-0002oj-0v
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 16:11:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 17:11:16 +0100
Message-Id: <20210129161116.9971-8-a.fatoum@pengutronix.de>
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 8/8] usb: host: ehci: remove duplicated usb_host_detect() calls
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the last patch adding a fallback detect, we no longer need the
duplication in the host controller drivers. Drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc2/host.c         |  9 ---------
 drivers/usb/host/ehci-atmel.c   |  8 --------
 drivers/usb/host/ehci-hcd.c     | 13 -------------
 drivers/usb/host/xhci.c         |  8 --------
 drivers/usb/imx/chipidea-imx.c  |  9 ---------
 drivers/usb/musb/musb_barebox.c |  9 ---------
 include/usb/ehci.h              |  6 ------
 7 files changed, 62 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 510a07dfb9a9..7a070d91f3bc 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -766,13 +766,6 @@ static int dwc2_host_init(struct usb_host *host)
 	return 0;
 }
 
-static int dwc2_detect(struct device_d *dev)
-{
-	struct dwc2 *dwc2 = dev->priv;
-
-	return usb_host_detect(&dwc2->host);
-}
-
 int dwc2_register_host(struct dwc2 *dwc2)
 {
 	struct usb_host *host;
@@ -784,8 +777,6 @@ int dwc2_register_host(struct dwc2 *dwc2)
 	host->submit_control_msg = dwc2_submit_control_msg;
 	host->submit_int_msg = dwc2_submit_int_msg;
 
-	dwc2->dev->detect = dwc2_detect;
-
 	return usb_register_host(host);
 }
 
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 192c5ef9d185..c3f8ab7ad591 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -57,13 +57,6 @@ static void atmel_stop_clock(struct atmel_ehci_priv *atehci)
 	clk_disable(atehci->uclk);
 }
 
-static int atmel_ehci_detect(struct device_d *dev)
-{
-	struct atmel_ehci_priv *atehci = dev->priv;
-
-	return ehci_detect(atehci->ehci);
-}
-
 static int atmel_ehci_probe(struct device_d *dev)
 {
 	int ret;
@@ -78,7 +71,6 @@ static int atmel_ehci_probe(struct device_d *dev)
 	atehci = xzalloc(sizeof(*atehci));
 	atehci->dev = dev;
 	dev->priv = atehci;
-	dev->detect = atmel_ehci_detect;
 
 	atehci->iclk = clk_get(dev, "ehci_clk");
 	if (IS_ERR(atehci->iclk)) {
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 287849102d68..8c4da9fd12e2 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1349,11 +1349,6 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return result;
 }
 
-int ehci_detect(struct ehci_host *ehci)
-{
-	return usb_host_detect(&ehci->host);
-}
-
 struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
@@ -1411,13 +1406,6 @@ void ehci_unregister(struct ehci_host *ehci)
 	free(ehci);
 }
 
-static int ehci_dev_detect(struct device_d *dev)
-{
-	struct ehci_host *ehci = dev->priv;
-
-	return ehci_detect(ehci);
-}
-
 static int ehci_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -1457,7 +1445,6 @@ static int ehci_probe(struct device_d *dev)
 		return PTR_ERR(ehci);
 
 	dev->priv = ehci;
-	dev->detect = ehci_dev_detect;
 
 	return 0;
 }
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 317000d65006..caab2400d8d6 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1389,13 +1389,6 @@ int xhci_deregister(struct xhci_ctrl *ctrl)
 	return 0;
 }
 
-static int xhci_detect(struct device_d *dev)
-{
-	struct xhci_ctrl *ctrl = dev->priv;
-
-	return usb_host_detect(&ctrl->host);
-}
-
 /*
  * xHCI platform driver
  */
@@ -1417,7 +1410,6 @@ static int xhci_probe(struct device_d *dev)
 		HC_LENGTH(xhci_readl(&(ctrl->hccr)->cr_capbase)));
 
 	dev->priv = ctrl;
-	dev->detect = xhci_detect;
 
 	return xhci_register(ctrl);
 }
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index b144f41437a9..7b87f302a921 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -178,13 +178,6 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	return 0;
 }
 
-static int ci_ehci_detect(struct device_d *dev)
-{
-	struct imx_chipidea *ci = dev->priv;
-
-	return ehci_detect(ci->ehci);
-}
-
 static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct imx_chipidea *ci = ctx;
@@ -205,8 +198,6 @@ static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 			}
 
 			ci->ehci = ehci;
-
-			ci->dev->detect = ci_ehci_detect;
 		} else {
 			dev_err(ci->dev, "Host support not available\n");
 			return -ENODEV;
diff --git a/drivers/usb/musb/musb_barebox.c b/drivers/usb/musb/musb_barebox.c
index b1f38c35ac0b..f54ad5e6e472 100644
--- a/drivers/usb/musb/musb_barebox.c
+++ b/drivers/usb/musb/musb_barebox.c
@@ -121,13 +121,6 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return submit_urb(dev, urb, 100);
 }
 
-static int musb_detect(struct device_d *dev)
-{
-	struct musb *musb = dev->priv;
-
-	return usb_host_detect(&musb->host);
-}
-
 int musb_register(struct musb *musb)
 {
 	struct usb_host *host;
@@ -139,8 +132,6 @@ int musb_register(struct musb *musb)
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
-	musb->controller->priv = musb;
-	musb->controller->detect = musb_detect;
 	usb_register_host(host);
 
 	return 0;
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 9ca9252eb1d2..327500d49aed 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -24,7 +24,6 @@ struct ehci_host;
 #ifdef CONFIG_USB_EHCI
 struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data);
 void ehci_unregister(struct ehci_host *);
-int ehci_detect(struct ehci_host *ehci);
 #else
 static inline struct ehci_host *ehci_register(struct device_d *dev,
 					      struct ehci_data *data)
@@ -35,11 +34,6 @@ static inline struct ehci_host *ehci_register(struct device_d *dev,
 static inline void ehci_unregister(struct ehci_host *ehci)
 {
 }
-
-static inline int ehci_detect(struct ehci_host *ehci)
-{
-	return 0;
-}
 #endif
 
 #endif  /* __USB_EHCI_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
