Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmJ4O-0002ZO-S4
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:14:05 +0000
Received: by lbcao8 with SMTP id ao8so42570438lbc.3
 for <barebox@lists.infradead.org>; Wed, 14 Oct 2015 03:13:43 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 14 Oct 2015 13:15:48 +0300
Message-Id: <1444817749-20766-2-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
References: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 1/2] input: usb_kbd: skip poll on -EAGAIN error
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Skip poll if either usb_submit_int_msg() or usb_get_report()
returned -EAGAIN.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/input/usb_kbd.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 8c08aba..655d0c7 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -274,7 +274,7 @@ static void usb_kbd_poll(struct poller_struct *poller)
 	struct usb_kbd_pdata *data = container_of(poller,
 						  struct usb_kbd_pdata, poller);
 	struct usb_device *usbdev = data->usbdev;
-	int diff, tout;
+	int diff, tout, ret;
 
 	if (data->lock)
 		return;
@@ -284,7 +284,10 @@ static void usb_kbd_poll(struct poller_struct *poller)
 		goto exit;
 	data->last_poll = get_time_ns();
 
-	if (0 > data->do_poll(data)) {
+	ret = data->do_poll(data);
+	if (ret == -EAGAIN)
+		goto exit;
+	if (ret < 0) {
 		/* exit and lock forever */
 		dev_err(&usbdev->dev,
 			"usb_submit_int_msg() failed. Keyboard disconnect?\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
