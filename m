Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wj-0001LI-LD
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:50 +0000
Received: by mail-pg0-x243.google.com with SMTP id 25so20992058pgy.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:27 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:26 -0800
Message-Id: <20170306225356.31475-16-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/45] at91sam9x5ek: Remove at91sam9x5ek_mem_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RAM device is created based on OF data now, so there's no need to call
this function.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 796ae84..068897a 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -286,14 +286,6 @@ static void __init ek_add_led(void)
 	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[1].led);
 }
 
-static int at91sam9x5ek_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(at91sam9x5ek_mem_init);
-
 static void ek_add_device_w1(void)
 {
 	at91_set_gpio_input(w1_pdata.pin, 0);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
