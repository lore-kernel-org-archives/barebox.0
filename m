Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZqd-00047z-E4
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:04:01 +0100
Message-Id: <1329293044-9967-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] usb net: fix unregistration
To: barebox@lists.infradead.org

First call mii_unregister which is done in the drivers unbind function,
then eth_unregister. Also, remove unregister_device which is done in
eth_unregister.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 5ffd7a6..c7e3606 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -235,13 +235,11 @@ void usbnet_disconnect(struct usb_device *usbdev)
 	struct eth_device *edev = &undev->edev;
 	struct driver_info *info;
 
-	eth_unregister(edev);
-	unregister_device(&edev->dev);
-
 	info = undev->driver_info;
 	if (info->unbind)
 		info->unbind(undev);
 
+	eth_unregister(edev);
+
 	free(undev);
 }
-
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
