Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxJVw-0007pG-02
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 14:37:59 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2DA8AFFABF9
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2012 15:40:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Feb 2012 15:31:21 +0100
Message-Id: <1329229881-26751-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
References: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] usb-a926x: add DAB MMX Daughter board support
To: barebox@lists.infradead.org

 - gpio_keys support
 - leds
 - uarts 2 and 4 (for oled)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c |  108 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig       |    9 +++
 2 files changed, 117 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 364c1ba..af025b4 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -41,6 +41,8 @@
 #include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
+#include <gpio_keys.h>
+#include <readkey.h>
 
 static void usb_a9260_set_board_type(void)
 {
@@ -219,6 +221,101 @@ static void __init ek_add_device_button(void)
 	export_env_ull("dfu_button", AT91_PIN_PB10);
 }
 
+#ifdef CONFIG_CALAO_DAB_MMX
+struct gpio_led dab_mmx_leds[] = {
+	{
+		.gpio = AT91_PIN_PB20,
+		.led = {
+			.name = "user_led1",
+		},
+	}, {
+		.gpio = AT91_PIN_PB21,
+		.led = {
+			.name = "user_led2",
+		},
+	}, {
+		.gpio = AT91_PIN_PB22,
+		.led = {
+			.name = "user_led3",
+		},
+	}, {
+		.gpio = AT91_PIN_PB23,
+		.led = {
+			.name = "user_led4",
+		},
+	}, {
+		.gpio = AT91_PIN_PB24,
+		.led = {
+			.name = "red",
+		},
+	}, {
+		.gpio = AT91_PIN_PB30,
+		.led = {
+			.name = "orange",
+		},
+	}, {
+		.gpio = AT91_PIN_PB31,
+		.led = {
+			.name = "green",
+		},
+	},
+};
+
+#ifdef CONFIG_KEYBOARD_GPIO
+struct gpio_keys_button keys[] = {
+	{
+		.code = KEY_UP,
+		.gpio = AT91_PIN_PB25,
+	}, {
+		.code = KEY_HOME,
+		.gpio = AT91_PIN_PB13,
+	}, {
+		.code = KEY_DOWN,
+		.gpio = AT91_PIN_PA26,
+	}, {
+		.code = KEY_ENTER,
+		.gpio = AT91_PIN_PC9,
+	},
+};
+
+struct gpio_keys_platform_data gk_pdata = {
+	.buttons = keys,
+	.nbuttons = ARRAY_SIZE(keys),
+};
+
+static void usb_a9260_keyboard_device_dab_mmx(void)
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
+static void usb_a9260_keyboard_device_dab_mmx(void) {}
+#endif
+
+static void usb_a9260_device_dab_mmx(void)
+{
+	int i;
+
+	usb_a9260_keyboard_device_dab_mmx();
+
+	for (i = 0; i < ARRAY_SIZE(dab_mmx_leds); i++) {
+		dab_mmx_leds[i].active_low = 1;
+		at91_set_gpio_output(dab_mmx_leds[i].gpio, dab_mmx_leds[i].active_low);
+		led_gpio_register(&dab_mmx_leds[i]);
+	}
+}
+#else
+static void usb_a9260_device_dab_mmx(void) {}
+#endif
+
 static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
@@ -229,6 +326,7 @@ static int usb_a9260_devices_init(void)
 	ek_add_device_udc();
 	ek_add_led();
 	ek_add_device_button();
+	usb_a9260_device_dab_mmx();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
@@ -248,7 +346,17 @@ device_initcall(usb_a9260_devices_init);
 
 static int usb_a9260_console_init(void)
 {
+	struct device_d *dev;
+
 	at91_register_uart(0, 0);
+
+	if (IS_ENABLED(CONFIG_CALAO_DAB_MMX)) {
+		at91_register_uart(2, 0);
+
+		dev = at91_register_uart(4, 0);
+		dev_set_param(dev, "active", "");
+	}
+
 	return 0;
 }
 console_initcall(usb_a9260_console_init);
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 41e9b99..d2bb7bc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -93,6 +93,9 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0xF000 if ARCH_AT91SAM9G45
 	default 0xffffffff
 
+config SUPPORT_CALAO_DAB_MMX
+	bool
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
@@ -133,6 +136,7 @@ config MACH_TNY_A9260
 
 config MACH_USB_A9260
 	bool "CALAO USB-A9260"
+	select SUPPORT_CALAO_DAB_MMX
 	help
 	  Select this if you are using a Calao Systems USB-A9260.
 	  <http://www.calao-systems.com>
@@ -209,6 +213,7 @@ config MACH_TNY_A9G20
 
 config MACH_USB_A9G20
 	bool "CALAO USB-A9G20"
+	select SUPPORT_CALAO_DAB_MMX
 	help
 	  Select this if you are using a Calao Systems USB-A9G20.
 	  <http://www.calao-systems.com>
@@ -328,4 +333,8 @@ config LCD_LG_LB043WQ1
 
 endchoice
 
+config CALAO_DAB_MMX
+	bool "DAB MMX Daughter Board support"
+	depends on SUPPORT_CALAO_DAB_MMX
+
 endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
