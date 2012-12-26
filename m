Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tnu8A-0003ZD-9d
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 16:46:59 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0B0AD104E768
 for <barebox@lists.infradead.org>; Wed, 26 Dec 2012 17:44:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Dec 2012 17:33:55 +0100
Message-Id: <1356539636-12782-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] at91sam9x5ek: switch heartbeat to d2 (pioD21)
To: barebox@lists.infradead.org

as d1 pioB18 is used for the one wire too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	to be applied before led-gpio switch to gpio_request/free
	otherwise we have a nice crash.

Best Regards,
J.

 arch/arm/boards/at91sam9x5ek/init.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 6d1ebe5..77c3ee3 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -224,7 +224,7 @@ static void __init ek_add_led(void)
 		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
 		led_gpio_register(&leds[i]);
 	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[1].led);
 }
 
 static int at91sam9x5ek_mem_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
