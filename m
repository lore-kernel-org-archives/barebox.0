Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxr2S-0007AF-G4
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 12:06:30 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 14:05:49 +0200
Message-Id: <20200721120600.15114-4-jmaselbas@kalray.eu>
In-Reply-To: <20200721120600.15114-1-jmaselbas@kalray.eu>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v3 03/14] usb: dwc2: host: Read dr_mode from device tree
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 95 +++++++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.c |  2 +
 drivers/usb/dwc2/dwc2.h |  1 +
 3 files changed, 98 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 0046e955f..6e8d30c22 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1,6 +1,33 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include "dwc2.h"
 
+/* Returns the controller's GHWCFG2.OTG_MODE. */
+static unsigned int dwc2_op_mode(struct dwc2 *dwc2)
+{
+	u32 ghwcfg2 = dwc2_readl(dwc2, GHWCFG2);
+
+	return (ghwcfg2 & GHWCFG2_OP_MODE_MASK) >>
+		GHWCFG2_OP_MODE_SHIFT;
+}
+
+/* Returns true if the controller is host-only. */
+static bool dwc2_hw_is_host(struct dwc2 *dwc2)
+{
+	unsigned int op_mode = dwc2_op_mode(dwc2);
+
+	return (op_mode == GHWCFG2_OP_MODE_SRP_CAPABLE_HOST) ||
+		(op_mode == GHWCFG2_OP_MODE_NO_SRP_CAPABLE_HOST);
+}
+
+/* Returns true if the controller is device-only. */
+static bool dwc2_hw_is_device(struct dwc2 *dwc2)
+{
+	unsigned int op_mode = dwc2_op_mode(dwc2);
+
+	return (op_mode == GHWCFG2_OP_MODE_SRP_CAPABLE_DEVICE) ||
+		(op_mode == GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE);
+}
+
 void dwc2_set_param_otg_cap(struct dwc2 *dwc2)
 {
 	u8 val;
@@ -493,6 +520,74 @@ void dwc2_gusbcfg_init(struct dwc2 *dwc2)
 	dwc2_writel(dwc2, usbcfg, GUSBCFG);
 }
 
+/*
+ * Check the dr_mode against the module configuration and hardware
+ * capabilities.
+ *
+ * The hardware, module, and dr_mode, can each be set to host, device,
+ * or otg. Check that all these values are compatible and adjust the
+ * value of dr_mode if possible.
+ *
+ *                      actual
+ *    HW  MOD dr_mode   dr_mode
+ *  ------------------------------
+ *   HST  HST  any    :  HST
+ *   HST  DEV  any    :  ---
+ *   HST  OTG  any    :  HST
+ *
+ *   DEV  HST  any    :  ---
+ *   DEV  DEV  any    :  DEV
+ *   DEV  OTG  any    :  DEV
+ *
+ *   OTG  HST  any    :  HST
+ *   OTG  DEV  any    :  DEV
+ *   OTG  OTG  any    :  dr_mode
+ */
+int dwc2_get_dr_mode(struct dwc2 *dwc2)
+{
+	enum usb_dr_mode mode;
+
+	mode = of_usb_get_dr_mode(dwc2->dev->device_node, NULL);
+	dwc2->dr_mode = mode;
+
+	if (dwc2_hw_is_device(dwc2)) {
+		dwc2_dbg(dwc2, "Controller is device only\n");
+		if (IS_ENABLED(CONFIG_USB_DWC2_HOST)) {
+			dwc2_err(dwc2,
+				"Controller does not support host mode.\n");
+			return -EINVAL;
+		}
+		mode = USB_DR_MODE_PERIPHERAL;
+	} else if (dwc2_hw_is_host(dwc2)) {
+		dwc2_dbg(dwc2, "Controller is host only\n");
+		if (IS_ENABLED(CONFIG_USB_DWC2_GADGET)) {
+			dwc2_err(dwc2,
+				"Controller does not support device mode.\n");
+			return -EINVAL;
+		}
+		mode = USB_DR_MODE_HOST;
+	} else {
+		dwc2_dbg(dwc2, "Controller is otg\n");
+		if (IS_ENABLED(CONFIG_USB_DWC2_HOST) &&
+		    IS_ENABLED(CONFIG_USB_DWC2_GADGET))
+			mode = dwc2->dr_mode;
+		else if (IS_ENABLED(CONFIG_USB_DWC2_HOST))
+			mode = USB_DR_MODE_HOST;
+		else if (IS_ENABLED(CONFIG_USB_DWC2_GADGET))
+			mode = USB_DR_MODE_PERIPHERAL;
+	}
+
+	if (mode != dwc2->dr_mode) {
+		dwc2_warn(dwc2,
+			 "Configuration mismatch. dr_mode forced to %s\n",
+			mode == USB_DR_MODE_HOST ? "host" : "device");
+
+		dwc2->dr_mode = mode;
+	}
+
+	return 0;
+}
+
 /*
  * Do core a soft reset of the core.  Be careful with this because it
  * resets all the internal state machines of the core.
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 52a790468..e058cb257 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -58,6 +58,8 @@ static int dwc2_probe(struct device_d *dev)
 	/* Detect config values from hardware */
 	dwc2_get_hwparams(dwc2);
 
+	dwc2_get_dr_mode(dwc2);
+
 	dwc2_set_default_params(dwc2);
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 35c0d1415..d18b10cbf 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -21,6 +21,7 @@ void dwc2_flush_all_fifo(struct dwc2 *dwc2);
 int dwc2_phy_init(struct dwc2 *dwc2, bool select_phy);
 int dwc2_gahbcfg_init(struct dwc2 *dwc2);
 void dwc2_gusbcfg_init(struct dwc2 *dwc2);
+int dwc2_get_dr_mode(struct dwc2 *dwc2);
 
 int dwc2_core_reset(struct dwc2 *dwc2);
 void dwc2_core_init(struct dwc2 *dwc2);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
