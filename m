Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxr2Y-0007DQ-Es
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 12:06:38 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 14:06:00 +0200
Message-Id: <20200721120600.15114-15-jmaselbas@kalray.eu>
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
Subject: [PATCH v3 14/14] usb: dwc2: Add ulpi phy function
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 33 +++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.h |  3 +++
 2 files changed, 36 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index c4a3cc789..f83788d51 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1,6 +1,39 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include "dwc2.h"
 
+int dwc2_ulpi_read(struct dwc2 *dwc2, u8 addr)
+{
+	u32 gpvndctl;
+	int data;
+
+	gpvndctl = GPVNDCTL_NEWREGREQ;
+	gpvndctl |= (addr << GPVNDCTL_REGADDR_SHIFT) & GPVNDCTL_REGADDR_MASK;
+
+	dwc2_writel(dwc2, gpvndctl, GPVNDCTL);
+
+	if (dwc2_wait_bit_set(dwc2, GPVNDCTL, GPVNDCTL_VSTSDONE, 10000))
+		dwc2_err(dwc2, "Timeout: Waiting for phy read to complete\n");
+
+	gpvndctl = dwc2_readl(dwc2, GPVNDCTL);
+	data = (gpvndctl & GPVNDCTL_REGDATA_MASK) >> GPVNDCTL_REGDATA_SHIFT;
+
+	return data;
+}
+
+void dwc2_ulpi_write(struct dwc2 *dwc2, u32 addr, u32 data)
+{
+	u32 gpvndctl;
+
+	gpvndctl = GPVNDCTL_NEWREGREQ | GPVNDCTL_REGWR;
+	gpvndctl |= (addr << GPVNDCTL_REGADDR_SHIFT) & GPVNDCTL_REGADDR_MASK;
+	gpvndctl |= (data << GPVNDCTL_REGDATA_SHIFT) & GPVNDCTL_REGDATA_MASK;
+
+	dwc2_writel(dwc2, gpvndctl, GPVNDCTL);
+
+	if (dwc2_wait_bit_set(dwc2, GPVNDCTL, GPVNDCTL_VSTSDONE, 10000))
+		dwc2_err(dwc2, "Timeout: Waiting for phy write to complete\n");
+}
+
 /* Returns the controller's GHWCFG2.OTG_MODE. */
 static unsigned int dwc2_op_mode(struct dwc2 *dwc2)
 {
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 5e845f349..2475fd005 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -28,6 +28,9 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2);
 int dwc2_core_reset(struct dwc2 *dwc2);
 void dwc2_core_init(struct dwc2 *dwc2);
 
+int dwc2_ulpi_read(struct dwc2 *dwc2, u8 addr);
+void dwc2_ulpi_write(struct dwc2 *dwc2, u32 addr, u32 data);
+
 /* Host functions */
 #ifdef CONFIG_USB_DWC2_HOST
 int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
