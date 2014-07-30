Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmS-0005xZ-5z
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:12 +0000
Received: by mail-la0-f41.google.com with SMTP id s18so1183938lam.0
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:34 +0400
Message-Id: <1406741676-1641-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
References: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] led: triggers: fix crash on disabling "default-on" trigger
To: barebox@lists.infradead.org

Here is a sample crash log on Ritmix RZX-50:

    barebox:/ trigger
    0: panic
    1: heartbeat
    2: net rx
    3: net tx
    4: net
    5: default on (led 0)
    barebox:/ trigger -d 5
    ...
    Ooops, TLB miss on store!

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/led/led-triggers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 5eaf732..1a5a09f 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -124,7 +124,7 @@ int led_set_trigger(enum led_trigger trigger, struct led *led)
 
 	triggers[trigger].led = led;
 
-	if (trigger == LED_TRIGGER_DEFAULT_ON)
+	if (led && trigger == LED_TRIGGER_DEFAULT_ON)
 		led_set(triggers[trigger].led, triggers[trigger].led->max_value);
 
 	return 0;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
