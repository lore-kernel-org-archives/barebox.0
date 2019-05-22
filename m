Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLla-0002BN-MT
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id n19so878558pfa.1
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:01 -0700
Message-Id: <20190522073414.9308-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/18] usb: host: ehci: Drop unnecessary cleanup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This looks like a leftover from U-Boot. Analogous code there would
walk all qTDs and call ehci_free() on each one of them, but since we
don't have anything of the sort it seems the whole loop can be
dropped. Note that U-Boot dropped that code in
de98e8b22a10676fd226318c92a9be7f519208ca

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index fadb403a9..be875d402 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -308,9 +308,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			QT_TOKEN_PID(QT_TOKEN_PID_SETUP) |
 			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
 		td->qt_token = cpu_to_hc32(token);
-		if (ehci_td_buffer(td, req, sizeof(*req)) != 0) {
+		ret = ehci_td_buffer(td, req, sizeof(*req));
+		if (ret) {
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
-			goto fail;
+			return ret;
 		}
 		*tdp = cpu_to_hc32((uint32_t) td);
 		tdp = &td->qt_next;
@@ -331,9 +332,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 				     QT_TOKEN_PID_IN : QT_TOKEN_PID_OUT) |
 			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
 		td->qt_token = cpu_to_hc32(token);
-		if (ehci_td_buffer(td, buffer, length) != 0) {
+		ret = ehci_td_buffer(td, buffer, length);
+		if (ret) {
 			dev_err(ehci->dev, "unable construct DATA td\n");
-			goto fail;
+			return ret;
 		}
 		*tdp = cpu_to_hc32((uint32_t) td);
 		tdp = &td->qt_next;
@@ -377,7 +379,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ret = ehci_enable_async_schedule(ehci, true);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS set\n");
-		goto fail;
+		return ret;
 	}
 
 	ret = handshake(&ehci->hcor->or_usbsts, STS_USBINT, STS_USBINT,
@@ -401,7 +403,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ret = ehci_enable_async_schedule(ehci, false);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS reset\n");
-		goto fail;
+		return ret;
 	}
 
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
@@ -451,15 +453,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	return (dev->status != USB_ST_NOT_PROC) ? 0 : -1;
-
-fail:
-	dev_err(ehci->dev, "fail1\n");
-	td = (void *)hc32_to_cpu(qh->qt_next);
-	while (td != (void *)QT_NEXT_TERMINATE) {
-		qh->qt_next = td->qt_next;
-		td = (void *)hc32_to_cpu(qh->qt_next);
-	}
-	return -1;
 }
 
 #if defined(CONFIG_MACH_EFIKA_MX_SMARTBOOK) && defined(CONFIG_USB_ULPI)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
