Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X87X4-0006im-4b
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:45:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:44:39 +0200
Message-Id: <1405687479-3507-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
References: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] USB: Remove conflicting USB_SPEED_* definitions
To: barebox@lists.infradead.org

We have USB_SPEED_* definitions as macros in usb_defs.h and as an enum
in ch9.h. The defines in usb.h correspond to hardware bits in the
ehci controller. Get rid of them and keep the hardware independent
enums.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 17 +++++++++++++++--
 drivers/usb/host/ohci-hcd.c |  2 +-
 include/usb/usb.h           |  2 --
 include/usb/usb_defs.h      |  6 ------
 4 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 2da3edd..d30c3aa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -229,16 +229,29 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 	qh = &ehci->qh_list[1];
 	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-	c = (usb_pipespeed(pipe) != USB_SPEED_HIGH &&
+	c = (dev->speed != USB_SPEED_HIGH &&
 	     usb_pipeendpoint(pipe) == 0) ? 1 : 0;
 	endpt = (8 << 28) |
 	    (c << 27) |
 	    (usb_maxpacket(dev, pipe) << 16) |
 	    (0 << 15) |
 	    (1 << 14) |
-	    (usb_pipespeed(pipe) << 12) |
 	    (usb_pipeendpoint(pipe) << 8) |
 	    (0 << 7) | (usb_pipedevice(pipe) << 0);
+	switch (dev->speed) {
+	case USB_SPEED_FULL:
+		endpt |= 0 << 12;
+		break;
+	case USB_SPEED_LOW:
+		endpt |= 1 << 12;
+		break;
+	case USB_SPEED_HIGH:
+		endpt |= 2 << 12;
+		break;
+	default:
+		return -EINVAL;
+	}
+
 	qh->qh_endpt1 = cpu_to_hc32(endpt);
 	endpt = (1 << 30) |
 	    (dev->portnr << 23) |
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 8bf20d0..3d18a73 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -794,7 +794,7 @@ static struct ed *ep_add_ed(struct usb_device *usb_dev, unsigned long pipe,
 			| (usb_pipeisoc(pipe) ? 0x8000 : 0)
 			| (usb_pipecontrol(pipe) ? 0 : \
 					   (usb_pipeout(pipe) ? 0x800 : 0x1000))
-			| usb_pipeslow(pipe) << 13
+			| (usb_dev->speed == USB_SPEED_LOW) << 13
 			| usb_maxpacket(usb_dev, pipe) << 16);
 
 	if (ed->type == PIPE_INTERRUPT && ed->state == ED_UNLINK) {
diff --git a/include/usb/usb.h b/include/usb/usb.h
index a0bc1d2..ff5242b 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -301,8 +301,6 @@ void usb_rescan(int force);
 #define usb_pipe_endpdev(pipe)	(((pipe) >> 8) & 0x7ff)
 #define usb_pipeendpoint(pipe)	(((pipe) >> 15) & 0xf)
 #define usb_pipedata(pipe)	(((pipe) >> 19) & 1)
-#define usb_pipespeed(pipe)	(((pipe) >> 26) & 3)
-#define usb_pipeslow(pipe)	(usb_pipespeed(pipe) == USB_SPEED_LOW)
 #define usb_pipetype(pipe)	(((pipe) >> 30) & 3)
 #define usb_pipeisoc(pipe)	(usb_pipetype((pipe)) == PIPE_ISOCHRONOUS)
 #define usb_pipeint(pipe)	(usb_pipetype((pipe)) == PIPE_INTERRUPT)
diff --git a/include/usb/usb_defs.h b/include/usb/usb_defs.h
index 13eb330..ace20e4 100644
--- a/include/usb/usb_defs.h
+++ b/include/usb/usb_defs.h
@@ -76,12 +76,6 @@
 #define USB_DIR_OUT           0
 #define USB_DIR_IN            0x80
 
-/* USB device speeds */
-#define USB_SPEED_FULL		0x0	/* 12Mbps */
-#define USB_SPEED_LOW		0x1	/* 1.5Mbps */
-#define USB_SPEED_HIGH		0x2	/* 480Mbps */
-#define USB_SPEED_RESERVED	0x3
-
 /* Descriptor types */
 #define USB_DT_DEVICE        0x01
 #define USB_DT_CONFIG        0x02
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
