Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1E-00049Y-J3
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:16:57 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:37 +0200
Message-Id: <20200811151637.17705-14-jmaselbas@kalray.eu>
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 13/13] usb: dwc2: Use register_otg_device
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/dwc2.c | 29 ++++++++++++++++++++++++++---
 drivers/usb/dwc2/dwc2.h |  4 ++--
 2 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 45be2c070..908d62479 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -28,6 +28,27 @@ static void dwc2_uninit_common(struct dwc2 *dwc2)
 	dwc2_writel(dwc2, hprt0, HPRT0);
 }
 
+static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
+{
+	struct dwc2 *dwc2 = ctx;
+	int ret = -ENODEV;
+
+	if (mode == USB_DR_MODE_HOST || mode == USB_DR_MODE_OTG) {
+		if (IS_ENABLED(CONFIG_USB_DWC2_HOST))
+			ret = dwc2_register_host(dwc2);
+		else
+			dwc2_err(dwc2, "Host support not available\n");
+	}
+	if (mode == USB_DR_MODE_PERIPHERAL || mode == USB_DR_MODE_OTG) {
+		if (IS_ENABLED(CONFIG_USB_DWC2_GADGET))
+			ret = dwc2_gadget_init(dwc2);
+		else
+			dwc2_err(dwc2, "Peripheral support not available\n");
+	}
+
+	return ret;
+}
+
 static int dwc2_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -57,16 +78,18 @@ static int dwc2_probe(struct device_d *dev)
 	/* Detect config values from hardware */
 	dwc2_get_hwparams(dwc2);
 
-	dwc2_get_dr_mode(dwc2);
+	ret = dwc2_get_dr_mode(dwc2);
 
 	dwc2_set_default_params(dwc2);
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 	dev->priv = dwc2;
 
-	ret = dwc2_register_host(dwc2);
+	if (dwc2->dr_mode == USB_DR_MODE_OTG)
+		ret = usb_register_otg_device(dwc2->dev, dwc2_set_mode, dwc2);
+	else
+		ret = dwc2_set_mode(dwc2, dwc2->dr_mode);
 
-	ret = dwc2_gadget_init(dwc2);
 error:
 	return ret;
 }
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 0ec21a5ac..5e845f349 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -35,12 +35,12 @@ int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
 		struct devrequest *setup);
 int dwc2_register_host(struct dwc2 *dwc2);
 #else
-static inline int dwc2_register_host(struct dwc2 *dwc2) { return 0; }
+static inline int dwc2_register_host(struct dwc2 *dwc2) { return -ENODEV; }
 #endif
 
 /* Gadget functions */
 #ifdef CONFIG_USB_DWC2_GADGET
 int dwc2_gadget_init(struct dwc2 *dwc2);
 #else
-static inline int dwc2_gadget_init(struct dwc2 *dwc2) { return 0; }
+static inline int dwc2_gadget_init(struct dwc2 *dwc2) { return -ENODEV; }
 #endif
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
