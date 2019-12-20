Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003je-MD
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:23 +0100
Message-Id: <20191220143232.28354-2-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] usb: Make timeout unit clear
To: Barebox List <barebox@lists.infradead.org>

The usb_*_msg() functions take a timeout parameter. Make clear which
unit is expected by adding a _ms suffix to the variable name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 8 ++++----
 include/usb/usb.h      | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index d29cd1328b..ad3bacf236 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -593,7 +593,7 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 			unsigned char request, unsigned char requesttype,
 			unsigned short value, unsigned short index,
-			void *data, unsigned short size, int timeout)
+			void *data, unsigned short size, int timeout_ms)
 {
 	struct usb_host *host = dev->host;
 	int ret;
@@ -615,7 +615,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	dev->status = USB_ST_NOT_PROC; /*not yet processed */
 
 	ret = host->submit_control_msg(dev, pipe, data, size, setup_packet,
-			timeout);
+			timeout_ms);
 
 	usb_host_release(host);
 
@@ -631,7 +631,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
  * synchronous behavior
  */
 int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
-			void *data, int len, int *actual_length, int timeout)
+			void *data, int len, int *actual_length, int timeout_ms)
 {
 	struct usb_host *host = dev->host;
 	int ret;
@@ -644,7 +644,7 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 		return ret;
 
 	dev->status = USB_ST_NOT_PROC; /* not yet processed */
-	ret = host->submit_bulk_msg(dev, pipe, data, len, timeout);
+	ret = host->submit_bulk_msg(dev, pipe, data, len, timeout_ms);
 
 	usb_host_release(host);
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index d39de71aff..95dedfd5b7 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -140,9 +140,9 @@ struct usb_host {
 	int (*init)(struct usb_host *);
 	int (*exit)(struct usb_host *);
 	int (*submit_bulk_msg)(struct usb_device *dev, unsigned long pipe,
-			void *buffer, int transfer_len, int timeout);
+			void *buffer, int transfer_len, int timeout_ms);
 	int (*submit_control_msg)(struct usb_device *dev, unsigned long pipe, void *buffer,
-			int transfer_len, struct devrequest *setup, int timeout);
+			int transfer_len, struct devrequest *setup, int timeout_ms);
 	int (*submit_int_msg)(struct usb_device *dev, unsigned long pipe, void *buffer,
 			int transfer_len, int interval);
 	void (*usb_event_poll)(void);
@@ -167,9 +167,9 @@ int usb_set_idle(struct usb_device *dev, int ifnum, int duration,
 int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 			unsigned char request, unsigned char requesttype,
 			unsigned short value, unsigned short index,
-			void *data, unsigned short size, int timeout);
+			void *data, unsigned short size, int timeout_ms);
 int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
-			void *data, int len, int *actual_length, int timeout);
+			void *data, int len, int *actual_length, int timeout_ms);
 int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 			void *buffer, int transfer_len, int interval);
 int usb_maxpacket(struct usb_device *dev, unsigned long pipe);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
