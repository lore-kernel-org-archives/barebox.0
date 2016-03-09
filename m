Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9h.cmail.yandex.net ([87.250.230.220])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbku-0003FJ-JO
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:54:19 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward9h.cmail.yandex.net (Yandex) with ESMTP id EB0BC21D89
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:53:49 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:17:48 +0300
Message-Id: <1457518672-30074-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v3 1/5] usb_kbd: remove unused fields
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/input/usb_kbd.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 74bc11f..e41266c 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -46,10 +46,8 @@
 struct usb_kbd_pdata;
 
 struct usb_kbd_pdata {
-	uint64_t	last_report;
 	uint8_t		*new;
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
-	uint8_t		flags;
 	struct poller_struct	poller;
 	struct usb_device	*usbdev;
 	int		lock;
@@ -173,7 +171,6 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	data->new = dma_alloc(USB_KBD_BOOT_REPORT_SIZE);
 
 	data->usbdev = usbdev;
-	data->last_report = get_time_ns();
 
 	data->ep = &iface->ep_desc[0];
 	data->intpipe = usb_rcvintpipe(usbdev, data->ep->bEndpointAddress);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
