Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxRBQ-0001qj-O0
 for barebox@lists.infradead.org; Wed, 05 Sep 2018 06:20:58 +0000
From: <Oleg.Karfich@wago.com>
Date: Wed, 5 Sep 2018 06:20:39 +0000
Message-ID: <1536128432-21031-3-git-send-email-oleg.karfich@wago.com>
References: <1536128432-21031-1-git-send-email-oleg.karfich@wago.com>
In-Reply-To: <1536128432-21031-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH 2/2] led: use max led value in case of led trigger
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

The led_poller function blink_func uses for flashing and blinking only the
values 1/0 for setting the leds. In case of an e.g. gpio led this is true. But
in case of pwm driven leds, where someone could dimm the leds, the value of 1
dimms the led. Use the max value for blinking and flashing of a led when enabling.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 drivers/led/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 6f66de0..a388e6b 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -127,7 +127,7 @@ static void led_blink_func(struct poller_struct *poller)
 	struct led *led;
 
 	list_for_each_entry(led, &leds, list) {
-		bool on;
+		int on;
 
 		if (!led->blink && !led->flash)
 			continue;
@@ -137,6 +137,8 @@ static void led_blink_func(struct poller_struct *poller)
 		}
 
 		on = !(led->blink_next_state % 2);
+		if (on)
+			on = led->max_value;
 
 		led->blink_next_event = get_time_ns() +
 			(led->blink_states[led->blink_next_state] * MSECOND);
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
