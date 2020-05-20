Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLGh-0007y3-EL
 for barebox@lists.infradead.org; Wed, 20 May 2020 09:44:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 May 2020 11:43:54 +0200
Message-Id: <20200520094403.12651-11-s.hauer@pengutronix.de>
In-Reply-To: <20200520094403.12651-1-s.hauer@pengutronix.de>
References: <20200520094403.12651-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/19] usb: Add a slice to usb host controllers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 6 ++++++
 include/usb/usb.h      | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 30c251f405..f25e350f15 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -78,11 +78,16 @@ static inline int usb_host_acquire(struct usb_host *host)
 	if (host->sem)
 		return -EAGAIN;
 	host->sem++;
+
+	slice_acquire(&host->slice);
+
 	return 0;
 }
 
 static inline void usb_host_release(struct usb_host *host)
 {
+	slice_release(&host->slice);
+
 	if (host->sem > 0)
 		host->sem--;
 }
@@ -92,6 +97,7 @@ int usb_register_host(struct usb_host *host)
 	list_add_tail(&host->list, &host_list);
 	host->busnum = host_busnum++;
 	host->sem = 0;
+	slice_init(&host->slice, dev_name(host->hw_dev));
 	return 0;
 }
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index c2085eae87..1b51a00ddc 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -20,6 +20,7 @@
 #define _USB_H_
 
 #include <driver.h>
+#include <slice.h>
 #include <usb/ch9.h>
 #include <usb/ch11.h>
 #include <usb/usb_defs.h>
@@ -165,11 +166,17 @@ struct usb_host {
 	struct usb_device *root_dev;
 	int sem;
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
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
