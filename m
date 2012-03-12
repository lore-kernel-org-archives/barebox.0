Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73SL-0005Xx-37
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:30:26 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B6387DC6A57
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:57 +0100
Message-Id: <1331551082-7730-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/14] at91sam9261ek/9g10ek: add gpio Keyboard support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c     |   39 ++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9261ek_defconfig |    1 +
 arch/arm/configs/at91sam9g10ek_defconfig |    1 +
 3 files changed, 41 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 2952a76..acc71f4 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -39,6 +39,8 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <dm9000.h>
+#include <gpio_keys.h>
+#include <readkey.h>
 #include <led.h>
 
 static struct atmel_nand_data nand_pdata = {
@@ -152,11 +154,48 @@ static void ek_add_device_udc(void)
 static void ek_add_device_udc(void) {}
 #endif
 
+#ifdef CONFIG_KEYBOARD_GPIO
+struct gpio_keys_button keys[] = {
+	{
+		.code = KEY_UP,
+		.gpio = AT91_PIN_PA26,
+	}, {
+		.code = KEY_DOWN,
+		.gpio = AT91_PIN_PA25,
+	}, {
+		.code = KEY_ENTER,
+		.gpio = AT91_PIN_PA24,
+	},
+};
+
+struct gpio_keys_platform_data gk_pdata = {
+	.buttons = keys,
+	.nbuttons = ARRAY_SIZE(keys),
+};
+
+static void ek_add_device_keyboard_buttons(void)
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
+static void ek_add_device_keyboard_buttons(void) {}
+#endif
+
 static void __init ek_add_device_buttons(void)
 {
 	at91_set_gpio_input(AT91_PIN_PA27, 1);
 	at91_set_deglitch(AT91_PIN_PA27, 1);
 	export_env_ull("dfu_button", AT91_PIN_PA27);
+	ek_add_device_keyboard_buttons();
 }
 
 #ifdef CONFIG_LED_GPIO
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 3796e42..c778f7d 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -56,3 +56,4 @@ CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 0d677b0..aba7a90 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -49,3 +49,4 @@ CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
