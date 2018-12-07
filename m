Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAbU-0000Yx-ED
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:31:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id q1so1524657pfi.5
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:31:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:30:57 -0800
Message-Id: <20181207073059.1703-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] led: core: Don't call get_time_us() twice
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The code doesn't seem to be time-sensitive enough to warrant calling
get_time_ns() twice instead of caching its value and using it no both
places.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/led/core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index a388e6b36..f11504ace 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -127,12 +127,13 @@ static void led_blink_func(struct poller_struct *poller)
 	struct led *led;
 
 	list_for_each_entry(led, &leds, list) {
+		const uint64_t now = get_time_ns();
 		int on;
 
 		if (!led->blink && !led->flash)
 			continue;
 
-		if (led->blink_next_event > get_time_ns()) {
+		if (led->blink_next_event > now) {
 			continue;
 		}
 
@@ -140,7 +141,7 @@ static void led_blink_func(struct poller_struct *poller)
 		if (on)
 			on = led->max_value;
 
-		led->blink_next_event = get_time_ns() +
+		led->blink_next_event = now +
 			(led->blink_states[led->blink_next_state] * MSECOND);
 		led->blink_next_state = (led->blink_next_state + 1) %
 					led->blink_nr_states;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
