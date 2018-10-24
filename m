Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFPyh-0002e0-BL
 for barebox@lists.infradead.org; Wed, 24 Oct 2018 20:42:09 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994573AbeJXUlwNHYsP (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Wed, 24 Oct 2018 22:41:52 +0200
Date: Wed, 24 Oct 2018 22:41:47 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181024204147.GA15377@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] usb: gadget: set maxpacket_limit
To: barebox@lists.infradead.org

Gadget update to 3.15 imported Linux patch e117e742d310 ("usb:
gadget: add "maxpacket_limit" field to struct usb_ep"):

  This patch adds "maxpacket_limit" to struct usb_ep. This field contains
  maximum value of maxpacket supported by driver, and is set in driver probe.
  This value should be used by autoconfig() function, because value of field
  "maxpacket" is set to value from endpoint descriptor when endpoint becomes
  enabled. So when autoconfig() function will be called again for this endpoint,
  "maxpacket" value will contain wMaxPacketSize from descriptior instead of
  maximum packet size for this endpoint.

  For this reason this patch adds new field "maxpacket_limit" which contains
  value of maximum packet size (which defines maximum endpoint capabilities).
  This value is used in ep_matches() function used by autoconfig().

  Value of "maxpacket_limit" should be set in UDC driver probe function, using
  usb_ep_set_maxpacket_limit() function, defined in gadget.h. This function
  set choosen value to both "maxpacket_limit" and "maxpacket" fields.

However said update didn't bring in all driver changes. Do it now.

Fixes: 2776d53d7ac8 ("USB: gadget: Update to 3.15")
Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Please note, that this patch was created to fix
   simear4:/ usbgadget -a
   multi_bind: creating ACM function
   g_multi usbgadget: acm/23b68c88: can't bind, err -19
   g_multi udc0: failed to start g_multi: -19
   usbgadget: No such device
 on at91_udc (autoconfig() was failing).
 Thus fsl_udc and pxa27x_udc changes are untested.

 drivers/usb/gadget/at91_udc.c   | 2 +-
 drivers/usb/gadget/fsl_udc.c    | 3 ++-
 drivers/usb/gadget/pxa27x_udc.c | 5 ++++-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 18427114d..d3fbcda21 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -619,7 +619,7 @@ static void udc_reinit(struct at91_udc *udc)
 		ep->desc = NULL;
 		ep->stopped = 0;
 		ep->fifo_bank = 0;
-		ep->ep.maxpacket = ep->maxpacket;
+		usb_ep_set_maxpacket_limit(&ep->ep, ep->maxpacket);
 		ep->creg = (void __iomem *) udc->udp_baseaddr + AT91_UDP_CSR(i);
 		/* initialize one queue per endpoint */
 		INIT_LIST_HEAD(&ep->queue);
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 9b5966977..99e569a97 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -2270,7 +2270,8 @@ int ci_udc_register(struct device_d *dev, void __iomem *regs)
 	 * for other eps, gadget layer called ep_enable with defined desc
 	 */
 	udc_controller->eps[0].desc = &fsl_ep0_desc;
-	udc_controller->eps[0].ep.maxpacket = USB_MAX_CTRL_PAYLOAD;
+	usb_ep_set_maxpacket_limit(&udc_controller->eps[0].ep,
+				   USB_MAX_CTRL_PAYLOAD);
 
 	/* setup the udc->eps[] for non-control endpoints and link
 	 * to gadget.ep_list */
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 4e6b85886..442c90ca0 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -940,9 +940,12 @@ static __init void udc_init_data(struct pxa_udc *dev)
 	}
 
 	/* USB endpoints init */
-	for (i = 1; i < NR_USB_ENDPOINTS; i++)
+	for (i = 1; i < NR_USB_ENDPOINTS; i++) {
 		list_add_tail(&dev->udc_usb_ep[i].usb_ep.ep_list,
 				&dev->gadget.ep_list);
+		usb_ep_set_maxpacket_limit(&dev->udc_usb_ep[i].usb_ep,
+					   dev->udc_usb_ep[i].usb_ep.maxpacket);
+	}
 }
 
 static void udc_enable(struct pxa_udc *udc)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
