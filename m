Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn37e-0006Gy-Pk
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 10:52:15 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 28 Apr 2015 12:51:49 +0200
Message-Id: <1430218309-23741-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] usb: increase USB_CNTL_TIMEOUT to match linux
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

USB requests should be processed within a timeframe of 5s.
The linux kernel also uses this timeout value for the control packets.

For the musb the increase in timeout helps successfully probing USB devices
(at least on one test hardware), but on the other hand doesn't slow down the
system, if there are no devices, i.e. the timeout never hits. That means,
that the USB core correctly aborts instead of timing out.
Why and how the 100ms was chosen in the first place, can not be deduced from
the git history, just that it seems to work fine for most boards.

Change USB_CNTL_TIMEOUT to 5000ms and replace all occurences of
	`USB_CNTL_TIMEOUT * x`
with just
	`USB_CNTL_TIMEOUT`,
as the timeout is now large enough without it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/usb/core/usb.c | 4 ++--
 include/usb/usb.h      | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index d1c3e0394d44..9073fff4be72 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -663,7 +663,7 @@ int usb_clear_halt(struct usb_device *dev, int pipe)
 
 	result = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
 				 USB_REQ_CLEAR_FEATURE, USB_RECIP_ENDPOINT, 0,
-				 endp, NULL, 0, USB_CNTL_TIMEOUT * 3);
+				 endp, NULL, 0, USB_CNTL_TIMEOUT);
 
 	/* don't clear if failed */
 	if (result < 0)
@@ -748,7 +748,7 @@ int usb_set_interface(struct usb_device *dev, int interface, int alternate)
 	ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
 				USB_REQ_SET_INTERFACE, USB_RECIP_INTERFACE,
 				alternate, interface, NULL, 0,
-				USB_CNTL_TIMEOUT * 5);
+				USB_CNTL_TIMEOUT);
 	if (ret < 0)
 		return ret;
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 991f3d7dd1fe..8f3ce2aeff24 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -39,7 +39,7 @@
 #define USB_MAXCHILDREN			8	/* This is arbitrary */
 #define USB_MAX_HUB			16
 
-#define USB_CNTL_TIMEOUT 100 /* 100ms timeout */
+#define USB_CNTL_TIMEOUT 5000 /* 5000ms timeout */
 
 /* device request (setup) */
 struct devrequest {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
