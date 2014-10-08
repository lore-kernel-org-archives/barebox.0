Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbrrq-0006vT-VM
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:05:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:05:03 +0200
Message-Id: <1412777104-19569-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] led: trigger: use max_value to turn on led instead of
 hardcoded '1'
To: barebox@lists.infradead.org

For PWM LEDs '1' may be really dark. Use max_value instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/led-triggers.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index c5484d5..adcb9e0 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -90,13 +90,13 @@ void led_trigger(enum led_trigger trigger, enum trigger_type type)
 
 	if (type == TRIGGER_FLASH) {
 		if (is_timeout(triggers[trigger].flash_start, 400 * MSECOND)) {
-			led_set(triggers[trigger].led, 1);
+			led_set(triggers[trigger].led, triggers[trigger].led->max_value);
 			triggers[trigger].flash_start = get_time_ns();
 		}
 		return;
 	}
 
-	led_set(triggers[trigger].led, type == TRIGGER_ENABLE ? 1 : 0);
+	led_set(triggers[trigger].led, type == TRIGGER_ENABLE ? triggers[trigger].led->max_value : 0);
 }
 
 /**
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
