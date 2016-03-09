Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward13h.cmail.yandex.net ([2a02:6b8:0:f35::9e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbku-0003Fl-QO
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:54:19 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward13h.cmail.yandex.net (Yandex) with ESMTP id 8F6052107A
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:53:52 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:17:52 +0300
Message-Id: <1457518672-30074-5-git-send-email-rndfax@yandex.ru>
In-Reply-To: <1457518672-30074-1-git-send-email-rndfax@yandex.ru>
References: <1457518672-30074-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v3 5/5] usb_kbd: lock is useless since pollers are atomic
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/input/usb_kbd.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index bdaf305..2acc95d 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -50,7 +50,6 @@ struct usb_kbd_pdata {
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
 	struct poller_async	poller;
 	struct usb_device	*usbdev;
-	int		lock;
 	unsigned long	intpipe;
 	int		intpktsize;
 	int		intinterval;
@@ -98,16 +97,11 @@ static void usb_kbd_poll(void *arg)
 	struct usb_device *usbdev = data->usbdev;
 	int ret, i;
 
-	if (data->lock)
-		return;
-
-	data->lock = 1;
-
 	ret = data->do_poll(data);
 	if (ret == -EAGAIN)
 		goto exit;
 	if (ret < 0) {
-		/* exit and lock forever */
+		/* exit with noreturn */
 		dev_err(&usbdev->dev,
 			"usb_submit_int_msg() failed. Keyboard disconnect?\n");
 		return;
@@ -144,7 +138,6 @@ static void usb_kbd_poll(void *arg)
 	memcpy(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
 
 exit:
-	data->lock = 0;
 	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_poll, data);
 }
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
