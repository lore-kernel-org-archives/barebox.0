Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXA0T-0001fL-4h
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 14:26:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Sep 2014 16:26:30 +0200
Message-Id: <1411655190-4430-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB: gadget: dfu: Add max_speed to dfu_driver
To: barebox@lists.infradead.org

The MUSB driver checks for this field. If it doesn't contain
something useful the driver bails out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index ddd765a..67a0703 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -722,6 +722,7 @@ static struct usb_composite_driver dfu_driver = {
 	.name		= "g_dfu",
 	.dev		= &dfu_dev_descriptor,
 	.strings	= dev_strings,
+	.max_speed	= USB_SPEED_HIGH,
 	.bind		= dfu_driver_bind,
 	.unbind		= dfu_driver_unbind,
 };
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
