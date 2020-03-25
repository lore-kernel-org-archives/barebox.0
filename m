Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00053L-Fp
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:49 +0100
Message-Id: <20200325123111.9612-3-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/24] usb: hub: do not reset devices twice
To: Barebox List <barebox@lists.infradead.org>

U-Boot has this since 3ed9eb93c2 ("usb: Don't reset the USB hub a 2nd
time"), so do the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c |  4 ++--
 drivers/usb/core/hub.h |  7 -------
 drivers/usb/core/usb.c | 11 -----------
 3 files changed, 2 insertions(+), 20 deletions(-)
 delete mode 100644 drivers/usb/core/hub.h

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 4c9bcc4e5d..4c2e568066 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -26,7 +26,6 @@
 #include <usb/usb_defs.h>
 
 #include "usb.h"
-#include "hub.h"
 
 #define USB_BUFSIZ  512
 
@@ -139,7 +138,8 @@ static inline char *portspeed(int portstatus)
 		return "12 Mb/s";
 }
 
-int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
+static int hub_port_reset(struct usb_device *hub, int port,
+			  struct usb_device *usb)
 {
 	int tries;
 	struct usb_port_status portsts;
diff --git a/drivers/usb/core/hub.h b/drivers/usb/core/hub.h
deleted file mode 100644
index 74921b66fd..0000000000
--- a/drivers/usb/core/hub.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __CORE_HUB_H
-#define __CORE_HUB_H
-
-int hub_port_reset(struct usb_device *hub, int port,
-		   struct usb_device *usb);
-
-#endif /* __CORE_HUB_H */
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 1c3dcb79a8..8a144c9447 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -57,7 +57,6 @@
 #include <usb/ch9.h>
 
 #include "usb.h"
-#include "hub.h"
 
 #define USB_BUFSIZ	512
 
@@ -351,16 +350,6 @@ int usb_new_device(struct usb_device *dev)
 
 	dev->descriptor->bMaxPacketSize0 = desc->bMaxPacketSize0;
 
-	/* find the port number we're at */
-	if (parent) {
-		/* reset the port for the second time */
-		err = hub_port_reset(dev->parent, dev->portnr - 1, dev);
-		if (err < 0) {
-			printf("\n     Couldn't reset port %i\n", dev->portnr);
-			goto err_out;
-		}
-	}
-
 	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
 	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
 	switch (dev->descriptor->bMaxPacketSize0) {
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
