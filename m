Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJONM-0006Tg-Mk
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:25:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 15:24:55 +0100
Message-Id: <1393597495-13896-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
References: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] led: Add default-on trigger
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/led-triggers.c | 3 +++
 include/led.h              | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 7555eee..5eaf732 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -124,6 +124,9 @@ int led_set_trigger(enum led_trigger trigger, struct led *led)
 
 	triggers[trigger].led = led;
 
+	if (trigger == LED_TRIGGER_DEFAULT_ON)
+		led_set(triggers[trigger].led, triggers[trigger].led->max_value);
+
 	return 0;
 }
 
diff --git a/include/led.h b/include/led.h
index 0217f4b..f17621e 100644
--- a/include/led.h
+++ b/include/led.h
@@ -33,6 +33,7 @@ enum led_trigger {
 	LED_TRIGGER_NET_RX,
 	LED_TRIGGER_NET_TX,
 	LED_TRIGGER_NET_TXRX,
+	LED_TRIGGER_DEFAULT_ON,
 	LED_TRIGGER_MAX,
 };
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
