Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wj-0001LJ-Lm
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:51 +0000
Received: by mail-pg0-x242.google.com with SMTP id b5so4149668pgg.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:27 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:27 -0800
Message-Id: <20170306225356.31475-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/45] at91sam9x5ek: Configure LEDs in DT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     | 27 ---------------------------
 arch/arm/configs/at91sam9x5ek_defconfig |  1 +
 2 files changed, 1 insertion(+), 27 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 068897a..85f20a9 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -260,32 +260,6 @@ static void ek_add_device_usb(void)
 static void ek_add_device_usb(void) {}
 #endif
 
-struct gpio_led leds[] = {
-	{
-		.gpio	= AT91_PIN_PB18,
-		.active_low	= 1,
-		.led	= {
-			.name = "d1",
-		},
-	}, {
-		.gpio	= AT91_PIN_PD21,
-		.led	= {
-			.name = "d2",
-		},
-	},
-};
-
-static void __init ek_add_led(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++) {
-		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-		led_gpio_register(&leds[i]);
-	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[1].led);
-}
-
 static void ek_add_device_w1(void)
 {
 	at91_set_gpio_input(w1_pdata.pin, 0);
@@ -303,7 +277,6 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_spi();
 	ek_add_device_mci();
 	ek_add_device_usb();
-	ek_add_led();
 	ek_add_device_i2c();
 	ek_add_device_lcdc();
 
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 0691145..dd42755 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -90,3 +90,4 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_LED_GPIO_OF=y
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
