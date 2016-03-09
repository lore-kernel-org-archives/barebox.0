Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6h.cmail.yandex.net ([87.250.230.217])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbkv-0003GC-9R
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:54:22 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward6h.cmail.yandex.net (Yandex) with ESMTP id C34E920E24
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:53:50 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:17:49 +0300
Message-Id: <1457518672-30074-2-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v3 2/5] usb_kbd: check for registering error
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/input/usb_kbd.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index e41266c..ff8e591 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -196,7 +196,11 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	} else
 		dev_dbg(&usbdev->dev, "poll keyboard via int ep\n");
 
-	input_device_register(&data->input);
+	ret = input_device_register(&data->input);
+	if (ret) {
+		dev_err(&usbdev->dev, "can't register input\n");
+		return ret;
+	}
 
 	data->poller.func = usb_kbd_poll;
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
