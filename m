Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6x-0000W2-0Y
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:14 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id D8ACD10142D5
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:45 +0200
Message-Id: <1316434549-15243-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/12] usb: honour timeout fields
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c      |   18 +++++-------------
 drivers/usb/host/ehci-hcd.c |    4 ++--
 include/usb/usb.h           |    4 ++--
 3 files changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 24fa94a..ff60fea 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -531,6 +531,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 			void *data, unsigned short size, int timeout)
 {
 	struct usb_host *host = dev->host;
+	int ret;
 
 	if ((timeout == 0) && (!asynch_allowed)) {
 		/* request for a asynch control pipe is not allowed */
@@ -548,18 +549,9 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 		   request, requesttype, value, index, size);
 	dev->status = USB_ST_NOT_PROC; /*not yet processed */
 
-	host->submit_control_msg(dev, pipe, data, size, &setup_packet);
-	if (timeout == 0)
-		return (int)size;
-
-	if (dev->status != 0) {
-		/*
-		 * Let's wait a while for the timeout to elapse.
-		 * It has no real use, but it keeps the interface happy.
-		 */
-		wait_ms(timeout);
-		return -1;
-	}
+	ret = host->submit_control_msg(dev, pipe, data, size, &setup_packet, timeout);
+	if (ret)
+		return ret;
 
 	return dev->act_len;
 }
@@ -579,7 +571,7 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 		return -1;
 
 	dev->status = USB_ST_NOT_PROC; /* not yet processed */
-	ret = host->submit_bulk_msg(dev, pipe, data, len);
+	ret = host->submit_bulk_msg(dev, pipe, data, len, timeout);
 	if (ret)
 		return ret;
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 60fc181..828c5d9 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -850,7 +850,7 @@ static int ehci_init(struct usb_host *host)
 
 static int
 submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
-		int length)
+		int length, int timeout)
 {
 
 	if (usb_pipetype(pipe) != PIPE_BULK) {
@@ -862,7 +862,7 @@ submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 static int
 submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
-		   int length, struct devrequest *setup)
+		   int length, struct devrequest *setup, int timeout)
 {
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 6ef9977..6715786 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -205,9 +205,9 @@ struct usb_host {
 	int (*init)(struct usb_host *);
 	int (*exit)(struct usb_host *);
 	int (*submit_bulk_msg)(struct usb_device *dev, unsigned long pipe,
-			void *buffer, int transfer_len);
+			void *buffer, int transfer_len, int timeout);
 	int (*submit_control_msg)(struct usb_device *dev, unsigned long pipe, void *buffer,
-			int transfer_len, struct devrequest *setup);
+			int transfer_len, struct devrequest *setup, int timeout);
 	int (*submit_int_msg)(struct usb_device *dev, unsigned long pipe, void *buffer,
 			int transfer_len, int interval);
 	void (*usb_event_poll)(void);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
