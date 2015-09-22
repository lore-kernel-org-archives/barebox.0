Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeQIb-0007Tw-RP
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 16:20:11 +0000
Received: by lahg1 with SMTP id g1so19433435lah.1
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 09:19:47 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 Sep 2015 18:58:32 +0300
Message-Id: <1442937514-19675-4-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 3/5] usb: ehci-hcd: detect re-entrance
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 38 ++++++++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index e6748b0..d6df7b8 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -51,6 +51,8 @@ struct ehci_priv {
 	int periodic_schedules;
 	struct QH *periodic_queue;
 	uint32_t *periodic_list;
+	int sem;
+	struct device_d *usedby;
 };
 
 struct int_queue {
@@ -136,6 +138,16 @@ static struct descriptor {
 
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
+#define ehci_reentrance_detect(ehci) \
+	if (ehci->sem) \
+		dev_err(&dev->dev, "%s: re-entrance %d (%s:%s)\n", \
+			__func__, \
+			ehci->sem, \
+			ehci->usedby->driver->name, \
+			ehci->usedby->name); \
+	ehci->sem++; \
+	ehci->usedby = &dev->dev;
+
 static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 {
 	uint32_t result;
@@ -893,12 +905,18 @@ submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 {
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
+	int ret;
+
+	ehci_reentrance_detect(ehci);
 
 	if (usb_pipetype(pipe) != PIPE_BULK) {
 		dev_dbg(ehci->dev, "non-bulk pipe (type=%lu)", usb_pipetype(pipe));
+		ehci->sem--;
 		return -1;
 	}
-	return ehci_submit_async(dev, pipe, buffer, length, NULL);
+	ret = ehci_submit_async(dev, pipe, buffer, length, NULL);
+	ehci->sem--;
+	return ret;
 }
 
 static int
@@ -907,6 +925,9 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 {
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
+	int ret;
+
+	ehci_reentrance_detect(ehci);
 
 	if (usb_pipetype(pipe) != PIPE_CONTROL) {
 		dev_dbg(ehci->dev, "non-control pipe (type=%lu)", usb_pipetype(pipe));
@@ -916,9 +937,13 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (usb_pipedevice(pipe) == ehci->rootdev) {
 		if (ehci->rootdev == 0)
 			dev->speed = USB_SPEED_HIGH;
-		return ehci_submit_root(dev, pipe, buffer, length, setup);
+		ret = ehci_submit_root(dev, pipe, buffer, length, setup);
+		ehci->sem--;
+		return ret;
 	}
-	return ehci_submit_async(dev, pipe, buffer, length, setup);
+	ret = ehci_submit_async(dev, pipe, buffer, length, setup);
+	ehci->sem--;
+	return ret;
 }
 
 static int
@@ -1241,12 +1266,16 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	void *backbuffer;
 	int result = 0, ret;
 
+	ehci_reentrance_detect(ehci);
+
 	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
 	      dev, pipe, buffer, length, interval);
 
 	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
-	if (!queue)
+	if (!queue) {
+		ehci->sem--;
 		return -EINVAL;
+	}
 
 	start = get_time_ns();
 	while ((backbuffer = ehci_poll_int_queue(dev, queue)) == NULL)
@@ -1269,6 +1298,7 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ret = ehci_destroy_int_queue(dev, queue);
 	if (!result)
 		result = ret;
+	ehci->sem--;
 	return result;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
