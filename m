Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward10h.cmail.yandex.net ([87.250.230.221])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbkv-0003GL-Hx
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:54:21 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward10h.cmail.yandex.net (Yandex) with ESMTP id A423321484
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:53:51 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:17:50 +0300
Message-Id: <1457518672-30074-3-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v3 3/5] usb_kbd: style fixes
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/input/usb_kbd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index ff8e591..6f7a081 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -123,7 +123,6 @@ static void usb_kbd_poll(struct poller_struct *poller)
 		input_report_key_event(&data->input, usb_kbd_keycode[i + 224], (data->new[0] >> i) & 1);
 
 	for (i = 2; i < 8; i++) {
-
 		if (data->old[i] > 3 && memscan(data->new + 2, data->old[i], 6) == data->new + 8) {
 			if (usb_kbd_keycode[data->old[i]])
 				input_report_key_event(&data->input, usb_kbd_keycode[data->old[i]], 0);
@@ -143,7 +142,7 @@ static void usb_kbd_poll(struct poller_struct *poller)
 		}
 	}
 
-	memcpy(data->old, data->new, 8);
+	memcpy(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
 
 exit:
 	data->lock = 0;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
