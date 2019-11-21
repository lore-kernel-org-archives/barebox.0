Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkNz-0000Nl-0v
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 11:12:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Nov 2019 12:12:24 +0100
Message-Id: <20191121111226.5036-3-s.hauer@pengutronix.de>
In-Reply-To: <20191121111226.5036-1-s.hauer@pengutronix.de>
References: <20191121111226.5036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] usb: dwc3: register otg device
To: Barebox List <barebox@lists.infradead.org>

When the role in the device tree is specified as "otg" then register
a otg device in barebox so that the user can configure the desired mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/Kconfig |  1 +
 drivers/usb/dwc3/core.c  | 14 +++++++++++---
 drivers/usb/dwc3/core.h  |  1 -
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 09da121374..2eb8e9c85a 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -2,6 +2,7 @@ config USB_DWC3
 	tristate "DesignWare USB3 DRD Core Support"
 	depends on USB && HAS_DMA
 	select USB_XHCI
+	select USB_OTGDEV
 	help
 	  Say Y or M here if your system has a Dual Role SuperSpeed
 	  USB controller based on the DesignWare USB3 IP Core.
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index ad84708da2..04b700d12d 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -936,12 +936,13 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 	return 0;
 }
 
-static int dwc3_core_init_mode(struct dwc3 *dwc)
+static int dwc3_set_mode(void *ctx, enum usb_dr_mode mode)
 {
+	struct dwc3 *dwc = ctx;
 	struct device_d *dev = dwc->dev;
 	int ret;
 
-	switch (dwc->dr_mode) {
+	switch (mode) {
 	case USB_DR_MODE_PERIPHERAL:
 		dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
 
@@ -963,13 +964,20 @@ static int dwc3_core_init_mode(struct dwc3 *dwc)
 		}
 		break;
 	default:
-		dev_err(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
+static int dwc3_core_init_mode(struct dwc3 *dwc)
+{
+	if (dwc->dr_mode == USB_DR_MODE_OTG)
+		return usb_register_otg_device(dwc->dev, dwc3_set_mode, dwc);
+	else
+		return dwc3_set_mode(dwc, dwc->dr_mode);
+}
+
 static void dwc3_get_properties(struct dwc3 *dwc)
 {
 	struct device_d		*dev = dwc->dev;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index df0a188a63..f2f7a311d1 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -1336,7 +1336,6 @@ struct dwc3_gadget_ep_cmd_params {
 /* prototypes */
 int dwc3_gadget_resize_tx_fifos(struct dwc3 *dwc);
 void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode);
-void dwc3_set_mode(struct dwc3 *dwc, u32 mode);
 
 /* check whether we are on the DWC_usb3 core */
 static inline bool dwc3_is_usb3(struct dwc3 *dwc)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
