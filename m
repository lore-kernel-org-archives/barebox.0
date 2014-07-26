Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB3qT-0000bD-FH
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 15:25:14 +0000
Received: by mail-wi0-f173.google.com with SMTP id f8so2388777wiw.0
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 08:24:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat, 26 Jul 2014 17:24:39 +0200
Message-Id: <1406388285-1666-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 1/7] USB: Fix stale usb devices in usb_device_list
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

New usb devices are added to a list of usb devices, but when removing
the corresponding usb_device it was not removed from that list. Fix it
by deleting it properly from the usb_device_list.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/usb/core/usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 351e783b6536..2cc338465539 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -472,6 +472,7 @@ void usb_remove_device(struct usb_device *usbdev)
 		dev_err(&usbdev->dev, "failed to unregister\n");
 
 	usbdev->parent->children[usbdev->portnr - 1] = NULL;
+	list_del(&usbdev->list);
 	free(usbdev);
 }
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
