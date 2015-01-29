Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeUU-0000Vj-4I
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:05:55 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0T25TaF010016
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:05:29 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t0T25UA08143
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:05:30 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:05:25 +0900
Message-Id: <1422497125-21734-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] usb: abolish wait_ms() function
To: barebox@lists.infradead.org

This function is only used in drivers/usb/*.
It is equivalent to mdelay().

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 drivers/usb/core/hub.c          | 8 ++++----
 drivers/usb/core/usb.c          | 2 +-
 drivers/usb/host/ehci-hcd.c     | 6 +++---
 drivers/usb/storage/transport.c | 8 ++++----
 drivers/usb/storage/usb.c       | 2 +-
 include/usb/usb.h               | 4 ----
 6 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index d42b47c..dd3c10e 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -122,7 +122,7 @@ int hub_port_reset(struct usb_device *dev, int port,
 	for (tries = 0; tries < MAX_TRIES; tries++) {
 
 		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_RESET);
-		wait_ms(200);
+		mdelay(200);
 
 		if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
 			dev_dbg(&dev->dev, "get_port_status failed status %lX\n",
@@ -149,7 +149,7 @@ int hub_port_reset(struct usb_device *dev, int port,
 		if (portstatus & USB_PORT_STAT_ENABLE)
 			break;
 
-		wait_ms(200);
+		mdelay(200);
 	}
 
 	if (tries == MAX_TRIES) {
@@ -196,7 +196,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
 		usb_remove_device(dev->children[port]);
 
-	wait_ms(200);
+	mdelay(200);
 
 	/* Reset the port */
 	if (hub_port_reset(dev, port, &portstatus) < 0) {
@@ -204,7 +204,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		return;
 	}
 
-	wait_ms(200);
+	mdelay(200);
 
 	/* Allocate a new device struct for it */
 	usb = usb_alloc_new_device();
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 3f3d595..d1c3e03 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -372,7 +372,7 @@ int usb_new_device(struct usb_device *dev)
 		goto err_out;
 	}
 
-	wait_ms(10);	/* Let the SET_ADDRESS settle */
+	mdelay(10);	/* Let the SET_ADDRESS settle */
 
 	tmp = sizeof(*dev->descriptor);
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 1335616..7b91327 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -646,7 +646,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * root
 				 */
 				ehci_powerup_fixup(ehci);
-				wait_ms(50);
+				mdelay(50);
 				ehci->portreset |= 1 << le16_to_cpu(req->index);
 				/* terminate the reset */
 				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
@@ -709,7 +709,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto unknown;
 	}
 
-	wait_ms(1);
+	mdelay(1);
 	len = min3(srclen, (int)le16_to_cpu(req->length), length);
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
@@ -804,7 +804,7 @@ static int ehci_init(struct usb_host *host)
 	ehci_writel(&ehci->hcor->or_configflag, cmd);
 	/* unblock posted write */
 	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
-	wait_ms(5);
+	mdelay(5);
 
 	ehci->rootdev = 0;
 
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 1cceecc..ac1fe79 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -133,7 +133,7 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 	/* DATA STAGE */
 	/* send/receive data payload, if there is any */
 
-	wait_ms(1);
+	mdelay(1);
 
 	data_actlen = 0;
 	if (srb->datalen) {
@@ -229,17 +229,17 @@ int usb_stor_Bulk_reset(struct us_data *us)
 		US_DEBUGP("Soft reset stalled: %d\n", result);
 		return result;
 	}
-	wait_ms(150);
+	mdelay(150);
 
 	/* clear the bulk endpoints halt */
 	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-in");
 	pipe = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
 	result = usb_clear_halt(us->pusb_dev, pipe);
-	wait_ms(150);
+	mdelay(150);
 	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-out");
 	pipe = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
 	result2 = usb_clear_halt(us->pusb_dev, pipe);
-	wait_ms(150);
+	mdelay(150);
 
 	if (result >= 0)
 		result = result2;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 5149761..9d1ffa3 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -101,7 +101,7 @@ static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(srb, us);
-		wait_ms(100);
+		mdelay(100);
 	} while (retries--);
 
 	return -1;
diff --git a/include/usb/usb.h b/include/usb/usb.h
index f02f1fb..991f3d7 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -171,10 +171,6 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 			void *buffer, int transfer_len, int interval);
 void usb_disable_asynch(int disable);
 int usb_maxpacket(struct usb_device *dev, unsigned long pipe);
-static inline void wait_ms(unsigned long ms)
-{
-	mdelay(ms);
-};
 int usb_get_configuration_no(struct usb_device *dev, unsigned char *buffer,
 				int cfgno);
 int usb_get_report(struct usb_device *dev, int ifnum, unsigned char type,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
