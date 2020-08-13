Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVV-0003mD-3P
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:43 +0200
Message-Id: <20200813134257.24627-7-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/20] usb: Add a slice to usb host controllers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 12 +++++++-----
 include/usb/usb.h      |  8 +++++++-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 30c251f405..c068c64c6b 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -75,28 +75,30 @@ static int host_busnum = 1;
 
 static inline int usb_host_acquire(struct usb_host *host)
 {
-	if (host->sem)
+	if (slice_acquired(&host->slice))
 		return -EAGAIN;
-	host->sem++;
+
+	slice_acquire(&host->slice);
+
 	return 0;
 }
 
 static inline void usb_host_release(struct usb_host *host)
 {
-	if (host->sem > 0)
-		host->sem--;
+	slice_release(&host->slice);
 }
 
 int usb_register_host(struct usb_host *host)
 {
 	list_add_tail(&host->list, &host_list);
 	host->busnum = host_busnum++;
-	host->sem = 0;
+	slice_init(&host->slice, dev_name(host->hw_dev));
 	return 0;
 }
 
 void usb_unregister_host(struct usb_host *host)
 {
+	slice_exit(&host->slice);
 	list_del(&host->list);
 }
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index c2085eae87..39f4750916 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -20,6 +20,7 @@
 #define _USB_H_
 
 #include <driver.h>
+#include <slice.h>
 #include <usb/ch9.h>
 #include <usb/ch11.h>
 #include <usb/usb_defs.h>
@@ -163,13 +164,18 @@ struct usb_host {
 	struct device_d *hw_dev;
 	int busnum;
 	struct usb_device *root_dev;
-	int sem;
 	struct usb_phy *usbphy;
+	struct slice slice;
 };
 
 int usb_register_host(struct usb_host *);
 void usb_unregister_host(struct usb_host *host);
 
+static inline struct slice *usb_device_slice(struct usb_device *udev)
+{
+	return &udev->host->slice;
+}
+
 int usb_host_detect(struct usb_host *host);
 
 int usb_set_protocol(struct usb_device *dev, int ifnum, int protocol);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
