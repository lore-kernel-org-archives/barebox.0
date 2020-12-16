Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpdg7-0007Wm-2g
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 20:45:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdg0-0005TD-CS
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:36 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdfz-00027m-VS
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 16 Dec 2020 21:45:34 +0100
Message-Id: <20201216204534.8054-6-m.grzeschik@pengutronix.de>
In-Reply-To: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
References: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 5/5] usb: dwc2: add support to force gadget mode
To: barebox@lists.infradead.org

In case the driver is to be run in peripheral mode rather than otg, it
needs to be forced in hardware to the selected mode. This patch adds
support to set and clear that hardware override. The functions are
mostly copied from linux.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/gadget.c | 144 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index aa7447c9b4..b8ec37be78 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <dma.h>
 #include <usb/gadget.h>
+#include <linux/iopoll.h>
 #include "dwc2.h"
 
 #define to_dwc2 gadget_to_dwc2
@@ -2660,6 +2661,144 @@ static int dwc2_eps_alloc(struct dwc2 *dwc2)
 	return 0;
 }
 
+/**
+ * dwc2_wait_for_mode() - Waits for the controller mode.
+ * @dwc2:	Programming view of the DWC_otg controller.
+ * @host_mode:	If true, waits for host mode, otherwise device mode.
+ */
+static void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
+{
+	int val, ret;
+
+	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
+		 host_mode ? "host" : "device");
+
+	ret = readx_poll_timeout(dwc2_is_host_mode, dwc2, val,
+			val == host_mode, 110 * USEC_PER_MSEC);
+	if (ret)
+		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
+				 __func__, host_mode ? "host" : "device");
+
+	dev_vdbg(dwc2->dev, "%s mode set\n",
+		 host_mode ? "Host" : "Device");
+}
+
+/**
+ * dwc2_iddig_filter_enabled() - Returns true if the IDDIG debounce
+ * filter is enabled.
+ *
+ * @hsotg: Programming view of DWC_otg controller
+ */
+static bool dwc2_iddig_filter_enabled(struct dwc2 *dwc2)
+{
+	u32 gsnpsid;
+	u32 ghwcfg4;
+
+	/* Check if core configuration includes the IDDIG filter. */
+	ghwcfg4 = dwc2_readl(dwc2, GHWCFG4);
+	if (!(ghwcfg4 & GHWCFG4_IDDIG_FILT_EN))
+		return false;
+
+	/*
+	 * Check if the IDDIG debounce filter is bypassed. Available
+	 * in core version >= 3.10a.
+	 */
+	gsnpsid = dwc2_readl(dwc2, GSNPSID);
+	if (gsnpsid >= DWC2_CORE_REV_3_10a) {
+		u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
+
+		if (gotgctl & GOTGCTL_DBNCE_FLTR_BYPASS)
+			return false;
+	}
+
+	return true;
+}
+
+/**
+ * dwc2_force_mode() - Force the mode of the controller.
+ *
+ * Forcing the mode is needed for two cases:
+ *
+ * 1) If the dr_mode is set to either HOST or PERIPHERAL we force the
+ * controller to stay in a particular mode regardless of ID pin
+ * changes. We do this once during probe.
+ *
+ * 2) During probe we want to read reset values of the hw
+ * configuration registers that are only available in either host or
+ * device mode. We may need to force the mode if the current mode does
+ * not allow us to access the register in the mode that we want.
+ *
+ * In either case it only makes sense to force the mode if the
+ * controller hardware is OTG capable.
+ *
+ * Checks are done in this function to determine whether doing a force
+ * would be valid or not.
+ *
+ * If a force is done, it requires a IDDIG debounce filter delay if
+ * the filter is configured and enabled. We poll the current mode of
+ * the controller to account for this delay.
+ *
+ * @dwc2: Programming view of DWC_otg controller
+ * @host: Host mode flag
+ */
+static void dwc2_force_mode(struct dwc2 *dwc2, bool host)
+{
+	u32 gusbcfg;
+	u32 set;
+	u32 clear;
+
+	dev_dbg(dwc2->dev, "Forcing mode to %s\n", host ? "host" : "device");
+
+	/*
+	 * If dr_mode is either peripheral or host only, there is no
+	 * need to ever force the mode to the opposite mode.
+	 */
+	if (WARN_ON(host && dwc2->dr_mode == USB_DR_MODE_PERIPHERAL))
+		return;
+
+	if (WARN_ON(!host && dwc2->dr_mode == USB_DR_MODE_HOST))
+		return;
+
+	gusbcfg = dwc2_readl(dwc2, GUSBCFG);
+
+	set = host ? GUSBCFG_FORCEHOSTMODE : GUSBCFG_FORCEDEVMODE;
+	clear = host ? GUSBCFG_FORCEDEVMODE : GUSBCFG_FORCEHOSTMODE;
+
+	gusbcfg &= ~clear;
+	gusbcfg |= set;
+	dwc2_writel(dwc2, gusbcfg, GUSBCFG);
+
+	dwc2_wait_for_mode(dwc2, host);
+
+	return;
+}
+
+/**
+ * dwc2_clear_force_mode() - Clears the force mode bits.
+ *
+ * After clearing the bits, wait up to 100 ms to account for any
+ * potential IDDIG filter delay. We can't know if we expect this delay
+ * or not because the value of the connector ID status is affected by
+ * the force mode. We only need to call this once during probe if
+ * dr_mode == OTG.
+ *
+ * @dwc2: Programming view of DWC_otg controller
+ */
+static void dwc2_clear_force_mode(struct dwc2 *dwc2)
+{
+	u32 gusbcfg;
+
+	dev_dbg(dwc2->dev, "Clearing force mode bits\n");
+
+	gusbcfg = dwc2_readl(dwc2, GUSBCFG);
+	gusbcfg &= ~GUSBCFG_FORCEHOSTMODE;
+	gusbcfg &= ~GUSBCFG_FORCEDEVMODE;
+	dwc2_writel(dwc2, gusbcfg, GUSBCFG);
+
+	if (dwc2_iddig_filter_enabled(dwc2))
+		mdelay(100);
+}
+
 int dwc2_gadget_init(struct dwc2 *dwc2)
 {
 	u32 dctl;
@@ -2684,6 +2823,11 @@ int dwc2_gadget_init(struct dwc2 *dwc2)
 
 	dwc2->gadget.is_otg = (dwc2->dr_mode == USB_DR_MODE_OTG) ? 1 : 0;
 
+	if (dwc2->gadget.is_otg)
+		dwc2_clear_force_mode(dwc2);
+	else
+		dwc2_force_mode(dwc2, false);
+
 	ret = dwc2_eps_alloc(dwc2);
 	if (ret) {
 		dwc2_err(dwc2, "Endpoints allocation failed: %d\n", ret);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
