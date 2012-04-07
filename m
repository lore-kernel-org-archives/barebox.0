Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGMNA-0005iZ-Is
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:31:33 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A1DE0FF8895
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:32:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 05:14:59 +0200
Message-Id: <1333768501-25204-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120407031228.GF16306@game.jcrosoft.org>
References: <20120407031228.GF16306@game.jcrosoft.org>
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
Subject: [PATCH 2/4] at91sam9m10g45ek: add gpio keys support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c |   51 +++++++++++++++++++++++++++++++
 1 files changed, 51 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 6011bad..c4b1a97 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -41,6 +41,8 @@
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
+#include <gpio_keys.h>
+#include <readkey.h>
 
 /*
  * board revision encoding
@@ -164,6 +166,54 @@ static void ek_device_add_leds(void)
 static void ek_device_add_leds(void) {}
 #endif
 
+#ifdef CONFIG_KEYBOARD_GPIO
+struct gpio_keys_button keys[] = {
+	{
+		.code = KEY_HOME,
+		.gpio = AT91_PIN_PB6,
+	}, {
+		.code = KEY_RETURN,
+		.gpio = AT91_PIN_PB7,
+	}, {
+		.code = KEY_LEFT,
+		.gpio = AT91_PIN_PB14,
+	}, {
+		.code = KEY_RIGHT,
+		.gpio = AT91_PIN_PB15,
+	}, {
+		.code = KEY_UP,
+		.gpio = AT91_PIN_PB16,
+	}, {
+		.code = KEY_DOWN,
+		.gpio = AT91_PIN_PB17,
+	}, {
+		.code = KEY_RETURN,
+		.gpio = AT91_PIN_PB18,
+	},
+};
+
+struct gpio_keys_platform_data gk_pdata = {
+	.buttons = keys,
+	.nbuttons = ARRAY_SIZE(keys),
+};
+
+static void ek_device_add_keyboard(void)
+{
+	int i;
+
+	for (i = 0; i < gk_pdata.nbuttons; i++) {
+		/* user push button, pull up enabled */
+		keys[i].active_low = 1;
+		at91_set_GPIO_periph(keys[i].gpio, keys[i].active_low);
+		at91_set_deglitch(keys[i].gpio, 1);
+	}
+
+	add_gpio_keys_device(-1, &gk_pdata);
+}
+#else
+static void ek_device_add_keyboard(void) {}
+#endif
+
 static int at91sam9m10g45ek_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -178,6 +228,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	at91_add_device_eth(0, &macb_pdata);
 	ek_add_device_mci();
 	ek_device_add_leds();
+	ek_device_add_keyboard();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
