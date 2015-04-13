Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhfGQ-0007T0-BP
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:23:03 +0000
Received: by wgsk9 with SMTP id k9so82688760wgs.3
 for <barebox@lists.infradead.org>; Mon, 13 Apr 2015 07:22:39 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 13 Apr 2015 16:22:30 +0200
Message-Id: <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

When working with non-coherent transfer buffers, we have to sync
device and cpu for outgoing and incoming buffers. Fix the driver where
non-coherent buffers are used in device context.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- balance dma_sync_single_foo() calls (Reported by Lucas Stach)

Cc: barebox@lists.infradead.org
Cc: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/host/xhci-hcd.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index c3d623e91f51..a44a1a4dffa5 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1024,6 +1024,11 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 		GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)), epi,
 		vdev->in_ctx, vdev->out_ctx);
 
+	/* pass ownership of data buffer to device */
+	dma_sync_single_for_device((unsigned long)buffer, length,
+				   usb_pipein(pipe) ?
+				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
+
 	/* Normal TRB */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	trb.event_cmd.cmd_trb = cpu_to_le64((dma_addr_t)buffer);
@@ -1037,6 +1042,11 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
 	xhci_print_trb(xhci, &trb, "Response Normal");
 
+	/* Regain ownership of data buffer from device */
+	dma_sync_single_for_cpu((unsigned long)buffer, length,
+				usb_pipein(pipe) ?
+				DMA_FROM_DEVICE : DMA_TO_DEVICE);
+
 	switch (ret) {
 	case -COMP_SHORT_TX:
 		udev->status = 0;
@@ -1094,6 +1104,11 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 			return ret;
 	}
 
+	/* Pass ownership of data buffer to device */
+	dma_sync_single_for_device((unsigned long)buffer, length,
+				   (req->requesttype & USB_DIR_IN) ?
+				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
+
 	/* Setup TRB */
 	memset(&trb, 0, sizeof(union xhci_trb));
 	trb.generic.field[0] = le16_to_cpu(req->value) << 16 |
@@ -1141,11 +1156,17 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
 		if (ret == -COMP_SHORT_TX)
 			length -= EVENT_TRB_LEN(trb.event_cmd.status);
 		else if (ret < 0)
-			return ret;
+			goto dma_regain;
 	}
 
 	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
 	xhci_print_trb(xhci, &trb, "Response Status");
+
+dma_regain:
+	/* Regain ownership of data buffer from device */
+	dma_sync_single_for_cpu((unsigned long)buffer, length,
+				(req->requesttype & USB_DIR_IN) ?
+				DMA_FROM_DEVICE : DMA_TO_DEVICE);
 	if (ret < 0)
 		return ret;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
