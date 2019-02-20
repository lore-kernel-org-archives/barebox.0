Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKO-0002vl-F4
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id 101so11767976pld.6
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:18 -0800
Message-Id: <20190220072930.14300-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/25] usb: xhci-hcd: Check usb_pipein(pipe) only once in
 xhci_submit_normal()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplfy xhci_submit_normal()'s logic a bit by using helper variables
and making sure that usb_pipein(pipe) is only called once.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 6a6291620..c8327c88f 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1120,16 +1120,26 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 {
 	struct usb_host *host = udev->host;
 	struct xhci_hcd *xhci = to_xhci_hcd(host);
+	enum dma_data_direction dma_direction;
 	struct xhci_virtual_device *vdev;
 	struct xhci_slot_ctx *out_slot;
 	dma_addr_t buffer_dma;
 	union xhci_trb trb;
-	u8 epaddr = (usb_pipein(pipe) ? USB_DIR_IN : USB_DIR_OUT) |
-		usb_pipeendpoint(pipe);
-	u8 epi = xhci_get_endpoint_index(epaddr, usb_pipetype(pipe));
-	u32 flags;
+	u8 epaddr = usb_pipeendpoint(pipe);
+	u8 epi;
+	u32 flags = TRB_TYPE(TRB_NORMAL) | TRB_IOC;
 	int ret;
 
+	if (usb_pipein(pipe)) {
+		epaddr |= USB_DIR_IN;
+		flags |= TRB_ISP;
+		dma_direction = DMA_FROM_DEVICE;
+	} else {
+		epaddr |= USB_DIR_OUT;
+		dma_direction = DMA_TO_DEVICE;
+	}
+
+	epi = xhci_get_endpoint_index(epaddr, usb_pipetype(pipe));
 	vdev = xhci_find_virtdev(xhci, udev);
 	if (!vdev)
 		return -ENODEV;
@@ -1143,16 +1153,12 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 
 	/* pass ownership of data buffer to device */
 	buffer_dma = dma_map_single(xhci->dev, buffer, length,
-				    usb_pipein(pipe) ?
-				    DMA_FROM_DEVICE : DMA_TO_DEVICE);
+				    dma_direction);
 	if (dma_mapping_error(xhci->dev, buffer_dma))
 		return -EFAULT;
 
 	/* Normal TRB */
 	/* FIXME: TD remainder */
-	flags = TRB_TYPE(TRB_NORMAL) | TRB_IOC;
-	if (usb_pipein(pipe))
-		flags |= TRB_ISP;
 	xhci_init_event_cmd_trb(&trb,
 				buffer_dma,
 				TRB_LEN(length) | TRB_INTR_TARGET(0),
@@ -1164,9 +1170,7 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
 
 	/* Regain ownership of data buffer from device */
 	dma_unmap_single(xhci->dev, buffer_dma, length,
-			 usb_pipein(pipe) ?
-			 DMA_FROM_DEVICE : DMA_TO_DEVICE);
-
+			 dma_direction);
 	switch (ret) {
 	case -COMP_SHORT_TX:
 		udev->status = 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
