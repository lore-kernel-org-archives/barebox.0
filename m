Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([185.7.73.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQXaW-0004jA-AG
 for barebox@lists.infradead.org; Thu, 08 Oct 2020 15:12:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 7713932B54A
 for <barebox@lists.infradead.org>; Thu,  8 Oct 2020 15:12:06 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KG0YLV4S
 for barebox@lists.infradead.org;
 Thu, 08 Oct 2020 15:12:06 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 4A4B2328C44
 for <barebox@lists.infradead.org>; Thu,  8 Oct 2020 15:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B198E27E089C
 for <barebox@lists.infradead.org>; Thu,  8 Oct 2020 17:12:05 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu,  8 Oct 2020 17:11:43 +0200
Message-Id: <20201008151143.30303-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] usb: dwc2: Uninitialize host and device on remove
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Device gadget must be properly uninitialized on poweroff however host
system might not detect barebox's usb gadget has beeing disconnected.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/dwc2.c   | 16 ++--------------
 drivers/usb/dwc2/dwc2.h   |  4 ++++
 drivers/usb/dwc2/gadget.c |  6 ++++++
 drivers/usb/dwc2/host.c   | 13 +++++++++++++
 4 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 7a8ba6c4f..894307bd4 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -15,19 +15,6 @@
 
 #include "dwc2.h"
 
-static void dwc2_uninit_common(struct dwc2 *dwc2)
-{
-	uint32_t hprt0;
-
-	hprt0 = dwc2_readl(dwc2, HPRT0);
-
-	/* Put everything in reset. */
-	hprt0 &= ~(HPRT0_ENA | HPRT0_ENACHG | HPRT0_CONNDET | HPRT0_OVRCURRCHG);
-	hprt0 |= HPRT0_RST;
-
-	dwc2_writel(dwc2, hprt0, HPRT0);
-}
-
 static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct dwc2 *dwc2 = ctx;
@@ -98,7 +85,8 @@ static void dwc2_remove(struct device_d *dev)
 {
 	struct dwc2 *dwc2 = dev->priv;
 
-	dwc2_uninit_common(dwc2);
+	dwc2_host_uninit(dwc2);
+	dwc2_gadget_uninit(dwc2);
 }
 
 static const struct of_device_id dwc2_platform_dt_ids[] = {
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 2475fd005..01a4ec2ca 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -37,13 +37,17 @@ int dwc2_submit_roothub(struct dwc2 *dwc2, struct usb_device *dev,
 		unsigned long pipe, void *buf, int len,
 		struct devrequest *setup);
 int dwc2_register_host(struct dwc2 *dwc2);
+void dwc2_host_uninit(struct dwc2 *dwc2);
 #else
 static inline int dwc2_register_host(struct dwc2 *dwc2) { return -ENODEV; }
+static inline void dwc2_host_uninit(struct dwc2 *dwc2) {};
 #endif
 
 /* Gadget functions */
 #ifdef CONFIG_USB_DWC2_GADGET
 int dwc2_gadget_init(struct dwc2 *dwc2);
+void dwc2_gadget_uninit(struct dwc2 *dwc2);
 #else
 static inline int dwc2_gadget_init(struct dwc2 *dwc2) { return -ENODEV; }
+static inline void dwc2_gadget_uninit(struct dwc2 *dwc2) {};
 #endif
diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 6a65b9b11..aa7447c9b 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -2734,3 +2734,9 @@ int dwc2_gadget_init(struct dwc2 *dwc2)
 
 	return 0;
 }
+
+void dwc2_gadget_uninit(struct dwc2 *dwc2)
+{
+	dwc2_core_disconnect(dwc2);
+	dwc2_gadget_disconnect(dwc2);
+}
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 59a2aac47..f95ec4e56 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -779,3 +779,16 @@ int dwc2_register_host(struct dwc2 *dwc2)
 
 	return usb_register_host(host);
 }
+
+void dwc2_host_uninit(struct dwc2 *dwc2)
+{
+	uint32_t hprt0;
+
+	hprt0 = dwc2_readl(dwc2, HPRT0);
+
+	/* Put everything in reset. */
+	hprt0 &= ~(HPRT0_ENA | HPRT0_ENACHG | HPRT0_CONNDET | HPRT0_OVRCURRCHG);
+	hprt0 |= HPRT0_RST;
+
+	dwc2_writel(dwc2, hprt0, HPRT0);
+}
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
