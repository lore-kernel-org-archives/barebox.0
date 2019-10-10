Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITbj-00032h-Sr
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 08:15:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id AFC2C27E11B0
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 10:15:31 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Oct 2019 10:14:59 +0200
Message-Id: <20191010081503.15254-2-jmaselbas@kalray.eu>
In-Reply-To: <20191010081503.15254-1-jmaselbas@kalray.eu>
References: <20191010081503.15254-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 2/6] usb: hub: Only clear port reset status if set
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/core/hub.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 91a938567..910a87021 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -158,7 +158,8 @@ int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 		return -1;
 	}
 
-	usb_clear_port_feature(hub, port + 1, USB_PORT_FEAT_C_RESET);
+	if (portstatus & USB_PORT_STAT_C_RESET)
+		usb_clear_port_feature(hub, port + 1, USB_PORT_FEAT_C_RESET);
 
 	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
 		usb->speed = USB_SPEED_HIGH;
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
