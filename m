Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQnZ-0004hH-P9
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:08 +0200
Message-Id: <1411719735-30949-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] USB: gadget: put poller into core
To: barebox@lists.infradead.org

Instead of letting each driver implement usb_gadget_poll directly
implement this function in the core which then calls into the
drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/at91_udc.c   | 23 ++++++---------------
 drivers/usb/gadget/fsl_udc.c    | 44 ++++++++---------------------------------
 drivers/usb/gadget/pxa27x_udc.c | 27 ++++++-------------------
 drivers/usb/gadget/udc-core.c   | 34 +++++++++++++++++++++++++++++++
 4 files changed, 54 insertions(+), 74 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 2b19be9..a6745cb 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -21,7 +21,6 @@
 #include <clock.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
-#include <poller.h>
 #include <gpio.h>
 
 #include <linux/list.h>
@@ -1257,6 +1256,8 @@ static int at91_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *dr
 	return 0;
 }
 
+static void at91_udc_gadget_poll(struct usb_gadget *gadget);
+
 static const struct usb_gadget_ops at91_udc_ops = {
 	.get_frame		= at91_get_frame,
 	.wakeup			= at91_wakeup,
@@ -1271,6 +1272,7 @@ static const struct usb_gadget_ops at91_udc_ops = {
 	/* .vbus_power		= at91_vbus_power, */
 	.udc_start		= at91_udc_start,
 	.udc_stop		= at91_udc_stop,
+	.udc_poll		= at91_udc_gadget_poll,
 };
 
 /*-------------------------------------------------------------------------*/
@@ -1350,13 +1352,13 @@ static int at91_udc_vbus_set(struct param_d *p, void *priv)
 	return -EROFS;
 }
 
-int usb_gadget_poll(void)
+static void at91_udc_gadget_poll(struct usb_gadget *gadget)
 {
 	struct at91_udc	*udc = &controller;
 	u32 value;
 
 	if (!udc->udp_baseaddr)
-		return -ENODEV;
+		return;
 
 	if (gpio_is_valid(udc->board.vbus_pin)) {
 		value = gpio_get_value(udc->board.vbus_pin);
@@ -1365,27 +1367,16 @@ int usb_gadget_poll(void)
 		udc->gpio_vbus_val = value;
 
 		if (!value)
-			return 0;
+			return;
 	}
 
 	value = at91_udp_read(udc, AT91_UDP_ISR) & (~(AT91_UDP_SOFINT));
 	if (value)
 		at91_udc_irq(udc);
-
-	return value;
 }
 
 /*-------------------------------------------------------------------------*/
 
-static void at91_udc_poller(struct poller_struct *poller)
-{
-	usb_gadget_poll();
-}
-
-static struct poller_struct poller = {
-	.func		= at91_udc_poller
-};
-
 static int __init at91udc_probe(struct device_d *dev)
 {
 	struct at91_udc	*udc = &controller;
@@ -1480,8 +1471,6 @@ static int __init at91udc_probe(struct device_d *dev)
 		udc->vbus = 1;
 	}
 
-	poller_register(&poller);
-
 	retval = usb_add_gadget_udc_release(dev, &udc->gadget, NULL);
 	if (retval)
 		goto fail0a;
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 5a625d1..324d328 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -7,7 +7,6 @@
 #include <usb/gadget.h>
 #include <usb/fsl_usb2.h>
 #include <io.h>
-#include <poller.h>
 #include <asm/byteorder.h>
 
 /* ### define USB registers here
@@ -1937,18 +1936,17 @@ static void dtd_complete_irq(struct fsl_udc *udc)
 /*
  * USB device controller interrupt handler
  */
-int usb_gadget_poll(void)
+static void fsl_udc_gadget_poll(struct usb_gadget *gadget)
 {
 	struct fsl_udc *udc = udc_controller;
 	u32 irq_src;
-	int status = 0;
 
 	if (!udc)
-		return -ENODEV;
+		return;
 
 	/* Disable ISR for OTG host mode */
 	if (udc->stopped)
-		return -EIO;
+		return;
 
 	irq_src = readl(&dr_regs->usbsts) & readl(&dr_regs->usbintr);
 	/* Clear notification bits */
@@ -1961,43 +1959,27 @@ int usb_gadget_poll(void)
 			tripwire_handler(udc, 0,
 					(u8 *) (&udc->local_setup_buff));
 			setup_received_irq(udc, &udc->local_setup_buff);
-			status = 1;
 		}
 
 		/* completion of dtd */
-		if (readl(&dr_regs->endptcomplete)) {
+		if (readl(&dr_regs->endptcomplete))
 			dtd_complete_irq(udc);
-			status = 1;
-		}
-	}
-
-	/* SOF (for ISO transfer) */
-	if (irq_src & USB_STS_SOF) {
-		status = 1;
 	}
 
 	/* Port Change */
-	if (irq_src & USB_STS_PORT_CHANGE) {
+	if (irq_src & USB_STS_PORT_CHANGE)
 		port_change_irq(udc);
-		status = 1;
-	}
 
 	/* Reset Received */
-	if (irq_src & USB_STS_RESET) {
+	if (irq_src & USB_STS_RESET)
 		reset_irq(udc);
-		status = 1;
-	}
 
 	/* Sleep Enable (Suspend) */
-	if (irq_src & USB_STS_SUSPEND) {
+	if (irq_src & USB_STS_SUSPEND)
 		udc->driver->disconnect(&udc_controller->gadget);
-		status = 1;
-	}
 
 	if (irq_src & (USB_STS_ERR | USB_STS_SYS_ERR))
 		printf("Error IRQ %x\n", irq_src);
-
-	return status;
 }
 
 /*----------------------------------------------------------------*
@@ -2196,6 +2178,7 @@ static struct usb_gadget_ops fsl_gadget_ops = {
 	.pullup = fsl_pullup,
 	.udc_start = fsl_udc_start,
 	.udc_stop = fsl_udc_stop,
+	.udc_poll = fsl_udc_gadget_poll,
 };
 
 /*----------------------------------------------------------------
@@ -2233,15 +2216,6 @@ static int __init struct_ep_setup(struct fsl_udc *udc, unsigned char index,
 	return 0;
 }
 
-static void fsl_udc_poller(struct poller_struct *poller)
-{
-	usb_gadget_poll();
-}
-
-static struct poller_struct poller = {
-	.func		= fsl_udc_poller
-};
-
 int ci_udc_register(struct device_d *dev, void __iomem *regs)
 {
 	int ret, i;
@@ -2304,8 +2278,6 @@ int ci_udc_register(struct device_d *dev, void __iomem *regs)
 		struct_ep_setup(udc_controller, i * 2 + 1, name, 1);
 	}
 
-	poller_register(&poller);
-
 	ret = usb_add_gadget_udc_release(dev, &udc_controller->gadget,
 			NULL);
 	if (ret)
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 6cc4dd7..3db3480 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -23,7 +23,6 @@
 #include <io.h>
 #include <gpio.h>
 #include <init.h>
-#include <poller.h>
 
 #include <usb/ch9.h>
 #include <usb/gadget.h>
@@ -884,6 +883,7 @@ static int pxa_udc_vbus_session(struct usb_gadget *_gadget, int is_active)
 
 static int pxa_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver);
 static int pxa_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver);
+static void pxa_udc_gadget_poll(struct usb_gadget *gadget);
 
 static const struct usb_gadget_ops pxa_udc_ops = {
 	.get_frame	= pxa_udc_get_frame,
@@ -892,6 +892,7 @@ static const struct usb_gadget_ops pxa_udc_ops = {
 	.vbus_session	= pxa_udc_vbus_session,
 	.udc_start	= pxa_udc_start,
 	.udc_stop	= pxa_udc_stop,
+	.udc_poll	= pxa_udc_gadget_poll,
 };
 
 static void clk_enable(void)
@@ -1366,14 +1367,13 @@ static void irq_udc_reset(struct pxa_udc *udc)
 	ep0_idle(udc);
 }
 
-int usb_gadget_poll(void)
+static void pxa_udc_gadget_poll(struct usb_gadget *gadget)
 {
-	struct pxa_udc *udc = the_controller;
+	struct pxa_udc *udc = to_gadget_udc(gadget);
 	u32 udcisr0 = udc_readl(udc, UDCISR0);
 	u32 udcisr1 = udc_readl(udc, UDCISR1);
 	u32 udccr = udc_readl(udc, UDCCR);
 	u32 udcisr1_spec;
-	int ret = 0;
 
 	udc->vbus_sensed = udc->mach->udc_is_connected();
 	if (should_enable_udc(udc))
@@ -1384,7 +1384,7 @@ int usb_gadget_poll(void)
 	}
 
 	if (!udc->enabled)
-		return -EIO;
+		return;
 
 	dev_dbg(udc->dev, "Interrupt, UDCISR0:0x%08x, UDCISR1:0x%08x, "
 		"UDCCR:0x%08x\n", udcisr0, udcisr1, udccr);
@@ -1398,15 +1398,9 @@ int usb_gadget_poll(void)
 		irq_udc_reconfig(udc);
 	if (unlikely(udcisr1_spec & UDCISR1_IRRS))
 		irq_udc_reset(udc);
-	if (udcisr1_spec)
-		ret = 1;
 
-	if ((udcisr0 & UDCCISR0_EP_MASK) | (udcisr1 & UDCCISR1_EP_MASK)) {
+	if ((udcisr0 & UDCCISR0_EP_MASK) | (udcisr1 & UDCCISR1_EP_MASK))
 		irq_handle_data(udc);
-		ret = 1;
-	}
-
-	return ret;
 }
 
 static struct pxa_udc memory = {
@@ -1453,14 +1447,6 @@ static struct pxa_udc memory = {
 	}
 };
 
-static void pxa27x_udc_poller(struct poller_struct *poller)
-{
-	usb_gadget_poll();
-}
-static struct poller_struct poller = {
-	.func		= pxa27x_udc_poller
-};
-
 static int __init pxa_udc_probe(struct device_d *dev)
 {
 	struct pxa_udc *udc = &memory;
@@ -1484,7 +1470,6 @@ static int __init pxa_udc_probe(struct device_d *dev)
 	the_controller = udc;
 	udc_init_data(udc);
 	pxa_eps_setup(udc);
-	poller_register(&poller);
 
 	ret = usb_add_gadget_udc_release(dev, &udc->gadget, NULL);
 	if (ret)
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index 2f62177..4f001e1 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
+#include <poller.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 
@@ -38,6 +39,7 @@ struct usb_udc {
 	struct usb_gadget		*gadget;
 	struct device_d			dev;
 	struct list_head		list;
+	struct poller_struct		poller;
 };
 
 static LIST_HEAD(udc_list);
@@ -146,6 +148,18 @@ static inline void usb_gadget_udc_stop(struct usb_gadget *gadget,
 	gadget->ops->udc_stop(gadget, driver);
 }
 
+int usb_gadget_poll(void)
+{
+	struct usb_udc		*udc;
+
+	list_for_each_entry(udc, &udc_list, list) {
+		if (udc->gadget->ops->udc_poll)
+			udc->gadget->ops->udc_poll(udc->gadget);
+	}
+
+	return 0;
+}
+
 /**
  * usb_add_gadget_udc_release - adds a new gadget to the udc class driver list
  * @parent: the parent device to this udc. Usually the controller driver's
@@ -223,6 +237,9 @@ static void usb_gadget_remove_driver(struct usb_udc *udc)
 	dev_dbg(&udc->dev, "unregistering UDC driver [%s]\n",
 			udc->gadget->name);
 
+	if (udc->gadget->ops->udc_poll)
+		poller_unregister(&udc->poller);
+
 	usb_gadget_disconnect(udc->gadget);
 	udc->driver->disconnect(udc->gadget);
 	udc->driver->unbind(udc->gadget);
@@ -267,6 +284,13 @@ EXPORT_SYMBOL_GPL(usb_del_gadget_udc);
 
 /* ------------------------------------------------------------------------- */
 
+static void udc_poll_driver(struct poller_struct *poller)
+{
+	struct usb_udc *udc = container_of(poller, struct usb_udc, poller);
+
+	udc->gadget->ops->udc_poll(udc->gadget);
+}
+
 static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *driver)
 {
 	int ret;
@@ -278,6 +302,13 @@ static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *dri
 	udc->dev.driver = &driver->driver;
 	udc->gadget->dev.driver = &driver->driver;
 
+	if (udc->gadget->ops->udc_poll) {
+		udc->poller.func = udc_poll_driver;
+		ret = poller_register(&udc->poller);
+		if (ret)
+			return ret;
+	}
+
 	ret = driver->bind(udc->gadget, driver);
 	if (ret)
 		goto err1;
@@ -291,6 +322,9 @@ static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *dri
 
 	return 0;
 err1:
+	if (udc->gadget->ops->udc_poll)
+		poller_unregister(&udc->poller);
+
 	if (ret != -EISNAM)
 		dev_err(&udc->dev, "failed to start %s: %d\n",
 			udc->driver->function, ret);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
