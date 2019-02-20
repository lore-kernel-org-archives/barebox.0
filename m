Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKH-0002o5-A1
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id a3so1665605pff.11
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:12 -0800
Message-Id: <20190220072930.14300-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/25] usb: xhci-hcd: Don't try to DMA sync if buffer is NULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Driver's .submit_control() callback can and will be called with buffer
set to NULL (and length set to 0), so we need to make sure that we
don't try to DMA sync the buffer in that case. Add appropriate gurads
to make sure that doesn't happen.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 91ddcbb30..657a49f8a 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1200,10 +1200,12 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 			return ret;
 	}
 
-	/* Pass ownership of data buffer to device */
-	dma_sync_single_for_device((unsigned long)buffer, length,
-				   (req->requesttype & USB_DIR_IN) ?
-				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	if (length > 0) {
+		/* Pass ownership of data buffer to device */
+		dma_sync_single_for_device((unsigned long)buffer, length,
+					   (req->requesttype & USB_DIR_IN) ?
+					   DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	}
 
 	/* Setup TRB */
 	memset(&trb, 0, sizeof(union xhci_trb));
@@ -1259,10 +1261,13 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 	xhci_print_trb(xhci, &trb, "Response Status");
 
 dma_regain:
-	/* Regain ownership of data buffer from device */
-	dma_sync_single_for_cpu((unsigned long)buffer, length,
-				(req->requesttype & USB_DIR_IN) ?
-				DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	if (length > 0) {
+		/* Regain ownership of data buffer from device */
+		dma_sync_single_for_cpu((unsigned long)buffer, length,
+					(req->requesttype & USB_DIR_IN) ?
+					DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	}
+
 	if (ret < 0)
 		return ret;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
