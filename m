Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mp-QU
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:31 +0200
Message-Id: <20181026093338.22751-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] usb: gadget: fsl_udc: Drop using global variable
To: Barebox List <barebox@lists.infradead.org>

No need to use the global udc_controller variable when we are provided
an usb_gadget.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c | 39 ++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 9b59669773..7782d4bdd9 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -450,6 +450,11 @@ struct fsl_udc {
 	u8 device_address;	/* Device USB address */
 };
 
+static inline struct fsl_udc *to_fsl_udc(struct usb_gadget *gadget)
+{
+	return container_of(gadget, struct fsl_udc, gadget);
+}
+
 /*-------------------------------------------------------------------------*/
 
 #ifdef DEBUG
@@ -1943,12 +1948,9 @@ static void dtd_complete_irq(struct fsl_udc *udc)
  */
 static void fsl_udc_gadget_poll(struct usb_gadget *gadget)
 {
-	struct fsl_udc *udc = udc_controller;
+	struct fsl_udc *udc = to_fsl_udc(gadget);
 	u32 irq_src;
 
-	if (!udc)
-		return;
-
 	/* Disable ISR for OTG host mode */
 	if (udc->stopped)
 		return;
@@ -1981,7 +1983,7 @@ static void fsl_udc_gadget_poll(struct usb_gadget *gadget)
 
 	/* Sleep Enable (Suspend) */
 	if (irq_src & USB_STS_SUSPEND)
-		udc->driver->disconnect(&udc_controller->gadget);
+		udc->driver->disconnect(gadget);
 
 	if (irq_src & (USB_STS_ERR | USB_STS_SYS_ERR))
 		printf("Error IRQ %x\n", irq_src);
@@ -1993,6 +1995,8 @@ static void fsl_udc_gadget_poll(struct usb_gadget *gadget)
 *----------------------------------------------------------------*/
 static int fsl_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
+	struct fsl_udc *udc = to_fsl_udc(gadget);
+
 	/*
 	 * We currently have PHY no driver which could call vbus_connect,
 	 * so when the USB gadget core calls usb_gadget_connect() the
@@ -2002,13 +2006,13 @@ static int fsl_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *dr
 	usb_gadget_vbus_connect(gadget);
 
 	/* hook up the driver */
-	udc_controller->driver = driver;
+	udc->driver = driver;
 
 	/* Enable DR IRQ reg and Set usbcmd reg  Run bit */
-	dr_controller_run(udc_controller);
-	udc_controller->usb_state = USB_STATE_ATTACHED;
-	udc_controller->ep0_state = WAIT_FOR_SETUP;
-	udc_controller->ep0_dir = 0;
+	dr_controller_run(udc);
+	udc->usb_state = USB_STATE_ATTACHED;
+	udc->ep0_state = WAIT_FOR_SETUP;
+	udc->ep0_dir = 0;
 
 	return 0;
 }
@@ -2016,20 +2020,21 @@ static int fsl_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *dr
 /* Disconnect from gadget driver */
 static int fsl_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
+	struct fsl_udc *udc = to_fsl_udc(gadget);
 	struct fsl_ep *loop_ep;
 
 	/* stop DR, disable intr */
-	dr_controller_stop(udc_controller);
+	dr_controller_stop(udc);
 
 	/* in fact, no needed */
-	udc_controller->usb_state = USB_STATE_ATTACHED;
-	udc_controller->ep0_state = WAIT_FOR_SETUP;
-	udc_controller->ep0_dir = 0;
+	udc->usb_state = USB_STATE_ATTACHED;
+	udc->ep0_state = WAIT_FOR_SETUP;
+	udc->ep0_dir = 0;
 
 	/* stand operation */
-	udc_controller->gadget.speed = USB_SPEED_UNKNOWN;
-	nuke(&udc_controller->eps[0], -ESHUTDOWN);
-	list_for_each_entry(loop_ep, &udc_controller->gadget.ep_list,
+	udc->gadget.speed = USB_SPEED_UNKNOWN;
+	nuke(&udc->eps[0], -ESHUTDOWN);
+	list_for_each_entry(loop_ep, &udc->gadget.ep_list,
 			ep.ep_list)
 		nuke(loop_ep, -ESHUTDOWN);
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
