Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuu3F-0000Qg-Dq
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 06:34:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id a4-v6so1843667plm.13
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2018 23:33:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Aug 2018 23:33:32 -0700
Message-Id: <20180829063333.31026-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] USB: host: hub: Make sure to remove dangling pointers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When the call to usb_new_device() in usb_hub_port_connect_change()
fails and corresponding USB device is freed with usb_free_device(), we
need to make sure that the pointer to it stored in dev->children[port]
is removed as well, lest we risk usage-after-free.

This issue was observed when working with a device for which
usb_set_address() would fail and trying to do "usb" right afterwards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/core/hub.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index f44aea55a..70f633ed8 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -233,6 +233,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 		dev_dbg(&dev->dev, "hub: disabling port %d\n", port + 1);
 		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
 		usb_free_device(usb);
+		dev->children[port] = NULL;
 		return;
 	}
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
