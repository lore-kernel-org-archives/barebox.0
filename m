Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward8m.cmail.yandex.net ([5.255.216.201])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abV9Y-0007sM-DF
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 15:27:02 +0000
Received: from smtp4m.mail.yandex.net (smtp4m.mail.yandex.net
 [IPv6:2a02:6b8:0:2519::126])
 by forward8m.cmail.yandex.net (Yandex) with ESMTP id ECD25214CE
 for <barebox@lists.infradead.org>; Thu,  3 Mar 2016 18:26:36 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Thu,  3 Mar 2016 18:17:10 +0300
Message-Id: <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
In-Reply-To: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH 2/2] input: make the Input Core be the last in the poller queue
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

This prevents the case when Input Core and event providers
have to run "at one time" so Input Core will work with non-relevant
data since it will be called first.
---
 drivers/input/input.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 31a9c22..1a8efc6 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -178,11 +178,13 @@ static void input_console_notify(struct input_notifier *in,
 	if (ev->value) {
 		kfifo_putc(ic->fifo, ascii);
 		ic->current_key = ascii;
+		poller_async_register(&ic->poller);
 		poller_call_async(&ic->poller, 400 * MSECOND,
 				  input_console_repeat, ic);
 	} else {
 		ic->current_key = 0;
 		poller_async_cancel(&ic->poller);
+		poller_async_unregister(&ic->poller);
 	}
 }
 
@@ -199,7 +201,6 @@ static int input_init(void)
 	ic->fifo = kfifo_alloc(32);
 	ic->notifier.notify = input_console_notify;
 	input_register_notfier(&ic->notifier);
-	poller_async_register(&ic->poller);
 
 	return console_register(&ic->console);
 }
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
