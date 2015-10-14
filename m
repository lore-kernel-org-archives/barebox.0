Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmJ4V-0002aZ-87
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:14:11 +0000
Received: by lfaz124 with SMTP id z124so8771374lfa.1
 for <barebox@lists.infradead.org>; Wed, 14 Oct 2015 03:13:47 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 14 Oct 2015 13:15:49 +0300
Message-Id: <1444817749-20766-3-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
References: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 2/2] usb: core: return -EAGAIN on usb_* functions reentrance
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/core/usb.c | 40 +++++++++++++++++++++++++++++++++++++++-
 include/usb/usb.h      |  1 +
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index a3fb1e8..ce229f2 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -84,10 +84,25 @@ static void print_usb_device(struct usb_device *dev)
 
 static int host_busnum = 1;
 
+static inline int usb_host_acquire(struct usb_host *host)
+{
+	if (host->sem)
+		return -EAGAIN;
+	host->sem++;
+	return 0;
+}
+
+static inline void usb_host_release(struct usb_host *host)
+{
+	if (host->sem > 0)
+		host->sem--;
+}
+
 int usb_register_host(struct usb_host *host)
 {
 	list_add_tail(&host->list, &host_list);
 	host->busnum = host_busnum++;
+	host->sem = 0;
 	asynch_allowed = 1;
 	return 0;
 }
@@ -563,8 +578,17 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 			void *buffer, int transfer_len, int interval)
 {
 	struct usb_host *host = dev->host;
+	int ret;
+
+	ret = usb_host_acquire(host);
+	if (ret)
+		return ret;
+
+	ret = host->submit_int_msg(dev, pipe, buffer, transfer_len, interval);
 
-	return host->submit_int_msg(dev, pipe, buffer, transfer_len, interval);
+	usb_host_release(host);
+
+	return ret;
 }
 
 /*
@@ -590,6 +614,10 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 		return -1;
 	}
 
+	ret = usb_host_acquire(host);
+	if (ret)
+		return ret;
+
 	/* set setup command */
 	setup_packet->requesttype = requesttype;
 	setup_packet->request = request;
@@ -603,6 +631,9 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 
 	ret = host->submit_control_msg(dev, pipe, data, size, setup_packet,
 			timeout);
+
+	usb_host_release(host);
+
 	if (ret)
 		return ret;
 
@@ -623,8 +654,15 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 	if (len < 0)
 		return -1;
 
+	ret = usb_host_acquire(host);
+	if (ret)
+		return ret;
+
 	dev->status = USB_ST_NOT_PROC; /* not yet processed */
 	ret = host->submit_bulk_msg(dev, pipe, data, len, timeout);
+
+	usb_host_release(host);
+
 	if (ret)
 		return ret;
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 8f3ce2a..aedc527 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -152,6 +152,7 @@ struct usb_host {
 	struct device_d *hw_dev;
 	int busnum;
 	struct usb_device *root_dev;
+	int sem;
 };
 
 int usb_register_host(struct usb_host *);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
