Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze0xG-0007N9-BX
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 13:16:27 +0000
Received: by lbbmp1 with SMTP id mp1so50795114lbb.1
 for <barebox@lists.infradead.org>; Mon, 21 Sep 2015 06:16:04 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 Sep 2015 14:30:46 +0300
Message-Id: <1442835049-20829-3-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1442835049-20829-1-git-send-email-pmamonov@gmail.com>
References: <1442835049-20829-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 2/5] usb: ehci-hcd: detect re-entrance
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 43 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 14bb7d9..133f42e 100644
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
@@ -135,6 +137,16 @@ static struct descriptor {
 
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
@@ -1246,12 +1271,16 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
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
@@ -1267,13 +1296,17 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		dev_err(&dev->dev,
 			"got wrong buffer back (%p instead of %p)\n",
 			backbuffer, buffer);
+		ehci->sem--;
 		return -EINVAL;
 	}
 
 	ret = ehci_destroy_int_queue(dev, queue);
-	if (ret < 0)
+	if (ret < 0) {
+		ehci->sem--;
 		return ret;
+	}
 
+	ehci->sem--;
 	return result;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
