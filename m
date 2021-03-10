Delivery-date: Wed, 10 Mar 2021 09:49:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuX4-00018u-0o
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:30 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuX2-0001zX-Vp
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s7kq5+XvnQRQpPG29gwdte7Toc+zqetprbsyakFc3Q8=; b=qUI7IxnBCynAFI3dxya7fSFpZ
	vSTu0XxBGAjlB7rpK22romPXnLrsBwjKrBARh5C/47u3hcBL/ls6r+XpMNJ4uO5ktdBPwll2Evz6d
	6zFFruLZeod+pnqNt8GG8AAkGVJsrIFms8CvARh1XuWv5/5vSGNzkk0IhhQQcpO2vm8UrSQpTZtzU
	KenpwrzpzNzSm06Efwt79EeYN7WGRFX63xZQ/y94y7AkXvTgKNaP97HVTnxz8FvzRBKNgDaeyxn+K
	LjY5p4s/r13E6edD7wuAC6Qyz5nvOq6vyesINPi1SScQlx/zQUxxR+TEhlXTvYBz1nXJWyvn7Xr2B
	pZHCPmAtQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuW0-006LPT-E0; Wed, 10 Mar 2021 08:48:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVh-006LJe-9e
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001Tl-2h; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zs-Mw; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:48:00 +0100
Message-Id: <20210310084800.3584-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084805_491951_B9302F1B 
X-CRM114-Status: GOOD (  15.55  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 16/16] RFC: led: migrate from poller to bthread
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Not meant for merge, just to show how a mechanical transformation of
poller to bthread would look like.

Note that this changes behavior slightly: The heartbeat duration was
not affected by the time needed to toggle the LED, but now it is.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/led/core.c | 52 ++++++++++++++++++++++++----------------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index ab171c61845b..cfdc6c894f74 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -21,7 +21,7 @@
 #include <errno.h>
 #include <led.h>
 #include <init.h>
-#include <poller.h>
+#include <bthread.h>
 #include <clock.h>
 #include <linux/ctype.h>
 
@@ -119,35 +119,34 @@ int led_set(struct led *led, unsigned int value)
 	return __led_set(led, value);
 }
 
-static void led_blink_func(struct poller_struct *poller)
+static int led_blink_func(void *data)
 {
 	struct led *led;
 
-	list_for_each_entry(led, &leds, list) {
-		const uint64_t now = get_time_ns();
-		int on;
+	while (!bthread_should_stop()) {
+		list_for_each_entry(led, &leds, list) {
+			int on;
 
-		if (!led->blink && !led->flash)
-			continue;
+			if (!led->blink && !led->flash)
+				continue;
 
-		if (led->blink_next_event > now) {
-			continue;
-		}
+			on = !(led->blink_next_state % 2);
+			if (on)
+				on = led->max_value;
 
-		on = !(led->blink_next_state % 2);
-		if (on)
-			on = led->max_value;
+			if (led->flash && !on)
+				led->flash = 0;
 
-		led->blink_next_event = now +
-			(led->blink_states[led->blink_next_state] * MSECOND);
-		led->blink_next_state = (led->blink_next_state + 1) %
-					led->blink_nr_states;
+			__led_set(led, on);
 
-		if (led->flash && !on)
-			led->flash = 0;
+			led->blink_next_state = (led->blink_next_state + 1) %
+				led->blink_nr_states;
 
-		__led_set(led, on);
+			mdelay(led->blink_states[led->blink_next_state]);
+		}
 	}
+
+	return 0;
 }
 
 /**
@@ -203,13 +202,16 @@ int led_flash(struct led *led, unsigned int duration_ms)
 	return 0;
 }
 
-static struct poller_struct led_poller = {
-	.func = led_blink_func,
-};
-
 static int led_blink_init(void)
 {
-	return poller_register(&led_poller, "led");
+	struct bthread *led_bthread;
+
+	led_bthread = bthread_create(led_blink_func, NULL, "led");
+	if (!led_bthread)
+		return -ENOMEM;
+
+	bthread_wake(led_bthread);
+	return 0;
 }
 late_initcall(led_blink_init);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

