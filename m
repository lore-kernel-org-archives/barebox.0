Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004JE-UV
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:35 +0100
Message-Id: <1452699456-1025-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/15] input: gpio-keys: Use KEY_* keycodes
To: Barebox List <barebox@lists.infradead.org>

The gpio-keys driver takes ascii key codes from platform_data and Linux
keycodes from device tree. Convert the ascii keys over to Linux
keycodes to get rid of the special cases in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/board.c        |  5 +++--
 arch/arm/boards/at91sam9261ek/init.c    |  7 ++++---
 arch/arm/boards/at91sam9m10g45ek/init.c | 15 ++++++++-------
 arch/arm/boards/usb-a926x/init.c        |  9 +++++----
 drivers/input/gpio_keys.c               |  9 +--------
 5 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index f80714e..6f82f5e 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -26,6 +26,7 @@
 #include <gpio_keys.h>
 #include <twl6030_pwrbtn.h>
 #include <readkey.h>
+#include <input/input.h>
 #include "archos_features.h"
 
 #define GPIO_LCD_PWON     38
@@ -72,8 +73,8 @@ static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
 	.code = BB_KEY_ENTER
 };
 static struct gpio_keys_button keys[] = {
-	{ .code = BB_KEY_UP  , .gpio = 43, .active_low = 1 },
-	{ .code = BB_KEY_DOWN, .gpio = 44, .active_low = 1 },
+	{ .code = KEY_UP  , .gpio = 43, .active_low = 1 },
+	{ .code = KEY_DOWN, .gpio = 44, .active_low = 1 },
 };
 static struct gpio_keys_platform_data gk_data = {
 	.buttons = keys,
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index a0b0219..6cb1701 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -39,6 +39,7 @@
 #include <readkey.h>
 #include <led.h>
 #include <spi/spi.h>
+#include <input/input.h>
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
@@ -235,13 +236,13 @@ static void ek_add_device_lcdc(void) {}
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = BB_KEY_UP,
+		.code = KEY_UP,
 		.gpio = AT91_PIN_PA26,
 	}, {
-		.code = BB_KEY_DOWN,
+		.code = KEY_DOWN,
 		.gpio = AT91_PIN_PA25,
 	}, {
-		.code = BB_KEY_ENTER,
+		.code = KEY_ENTER,
 		.gpio = AT91_PIN_PA24,
 	},
 };
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index e00908b..fb444d8 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -40,6 +40,7 @@
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <spi/spi.h>
+#include <input/input.h>
 
 /*
  * board revision encoding
@@ -183,25 +184,25 @@ static void ek_device_add_leds(void) {}
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = BB_KEY_HOME,
+		.code = KEY_HOME,
 		.gpio = AT91_PIN_PB6,
 	}, {
-		.code = BB_KEY_RETURN,
+		.code = KEY_ENTER,
 		.gpio = AT91_PIN_PB7,
 	}, {
-		.code = BB_KEY_LEFT,
+		.code = KEY_LEFT,
 		.gpio = AT91_PIN_PB14,
 	}, {
-		.code = BB_KEY_RIGHT,
+		.code = KEY_RIGHT,
 		.gpio = AT91_PIN_PB15,
 	}, {
-		.code = BB_KEY_UP,
+		.code = KEY_UP,
 		.gpio = AT91_PIN_PB16,
 	}, {
-		.code = BB_KEY_DOWN,
+		.code = KEY_DOWN,
 		.gpio = AT91_PIN_PB17,
 	}, {
-		.code = BB_KEY_RETURN,
+		.code = KEY_ENTER,
 		.gpio = AT91_PIN_PB18,
 	},
 };
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 958c3c3..a9a0549 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -41,6 +41,7 @@
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <spi/spi.h>
+#include <input/input.h>
 
 static void usb_a9260_set_board_type(void)
 {
@@ -340,16 +341,16 @@ struct gpio_led dab_mmx_leds[] = {
 #ifdef CONFIG_KEYBOARD_GPIO
 struct gpio_keys_button keys[] = {
 	{
-		.code = BB_KEY_UP,
+		.code = KEY_UP,
 		.gpio = AT91_PIN_PB25,
 	}, {
-		.code = BB_KEY_HOME,
+		.code = KEY_HOME,
 		.gpio = AT91_PIN_PB13,
 	}, {
-		.code = BB_KEY_DOWN,
+		.code = KEY_DOWN,
 		.gpio = AT91_PIN_PA26,
 	}, {
-		.code = BB_KEY_ENTER,
+		.code = KEY_ENTER,
 		.gpio = AT91_PIN_PC9,
 	},
 };
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 5b03fd7..acb9e07 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -36,8 +36,6 @@ struct gpio_keys {
 	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 	struct console_device cdev;
-
-	int use_keycodes;
 };
 
 static inline struct gpio_keys *
@@ -91,10 +89,7 @@ static int gpio_keys_getc(struct console_device *cdev)
 
 	kfifo_get(gk->recv_fifo, (u_char*)&code, sizeof(int));
 
-	if (IS_ENABLED(CONFIG_OFDEVICE) && gk->use_keycodes)
-		return keycode_bb_keys[code];
-	else
-		return code;
+	return keycode_bb_keys[code];
 }
 
 static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
@@ -162,8 +157,6 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 		i++;
 	}
 
-	gk->use_keycodes = 1;
-
 	return 0;
 }
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
