Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxc-0003B1-5x
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id b2so10624574pgl.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:26 -0800
Message-Id: <20190307080036.28028-17-andrew.smirnov@gmail.com>
In-Reply-To: <20190307080036.28028-1-andrew.smirnov@gmail.com>
References: <20190307080036.28028-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/26] usb: storage: Drop unused fields in struct us_data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Only bulk-only transport is supported by the currennt codebase, so
ep_bInterval and recv_intr_ep are not really used. Remove them and all
related code. While at it remove flags and subclass as well since they
are not really used anywhere in the codebase.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 14 ++------------
 drivers/usb/storage/usb.h |  4 ----
 2 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 849bce510..c04a202bb 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -433,7 +433,6 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 	struct usb_endpoint_descriptor *ep;
 	struct usb_endpoint_descriptor *ep_in = NULL;
 	struct usb_endpoint_descriptor *ep_out = NULL;
-	struct usb_endpoint_descriptor *ep_int = NULL;
 
 	/*
 	 * Find the first endpoint of each type we need.
@@ -454,12 +453,8 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 					ep_out = ep;
 			}
 		}
-		else if (USB_EP_IS_INT_IN(ep)) {
-			if (!ep_int)
-				ep_int = ep;
-		}
 	}
-	if (!ep_in || !ep_out || (us->protocol == US_PR_CBI && !ep_int)) {
+	if (!ep_in || !ep_out || us->protocol == US_PR_CBI) {
 		dev_dbg(dev, "Endpoint sanity check failed! Rejecting dev.\n");
 		return -EIO;
 	}
@@ -467,10 +462,7 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 	/* Store the pipe values */
 	us->send_bulk_ep = USB_EP_NUM(ep_out);
 	us->recv_bulk_ep = USB_EP_NUM(ep_in);
-	if (ep_int) {
-		us->recv_intr_ep = USB_EP_NUM(ep_int);
-		us->ep_bInterval = ep_int->bInterval;
-	}
+
 	return 0;
 }
 
@@ -533,9 +525,7 @@ static int usb_stor_probe(struct usb_device *usbdev,
 
 	/* initialize the us_data structure */
 	us->pusb_dev = usbdev;
-	us->flags = 0;
 	us->ifnum = intf->desc.bInterfaceNumber;
-	us->subclass = intf->desc.bInterfaceSubClass;
 	us->protocol = intf->desc.bInterfaceProtocol;
 	INIT_LIST_HEAD(&us->blk_dev_list);
 
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 3aff15da2..cd4904f03 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -54,17 +54,13 @@ typedef int (*trans_reset)(struct us_data *data);
 /* one us_data object allocated per usb storage device */
 struct us_data {
 	struct usb_device	*pusb_dev;	/* this usb_device */
-	unsigned int		flags;		/* from filter */
 	unsigned char		send_bulk_ep;	/* used endpoints */
 	unsigned char		recv_bulk_ep;
-	unsigned char		recv_intr_ep;
 	unsigned char		ifnum;		/* interface number */
 
-	unsigned char		subclass;
 	unsigned char		protocol;
 
 	unsigned char		max_lun;
-	unsigned char		ep_bInterval;
 
 	char			*transport_name;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
