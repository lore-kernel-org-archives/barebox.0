Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDTI5-000721-LV
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 07:31:58 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 20 Jan 2015 15:31:25 +0800
Message-ID: <1421739085-21150-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: atmel: sama5d3xek: fix conflict between w1 and led
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

As the 1-wire and LED d2 use the same pin (PE25) on the EK board.
So, make LED enable only when the 1-wire is disabled.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/sama5d3xek/init.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 0b83147..ce05108 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -49,11 +49,13 @@
 
 #include "hw_version.h"
 
+#ifdef CONFIG_W1_MASTER_GPIO
 struct w1_gpio_platform_data w1_pdata = {
 	.pin = AT91_PIN_PE25,
 	.ext_pullup_enable_pin = -EINVAL,
 	.is_open_drain = 0,
 };
+#endif
 
 #if defined(CONFIG_NAND_ATMEL)
 static struct atmel_nand_data nand_pdata = {
@@ -323,11 +325,13 @@ struct gpio_led leds[] = {
 			.name = "d1",
 		},
 	}, {
+#ifndef CONFIG_W1_MASTER_GPIO
 		.gpio	= AT91_PIN_PE25,
 		.active_low	= 1,
 		.led	= {
 			.name = "d2",
 		},
+#endif
 	},
 };
 
@@ -353,6 +357,7 @@ static int at91sama5d3xek_mem_init(void)
 }
 mem_initcall(at91sama5d3xek_mem_init);
 
+#ifdef CONFIG_W1_MASTER_GPIO
 static void ek_add_device_w1(void)
 {
 	at91_set_gpio_input(w1_pdata.pin, 0);
@@ -361,6 +366,9 @@ static void ek_add_device_w1(void)
 
 	at91sama5d3xek_devices_detect_hw();
 }
+#else
+static void ek_add_device_w1(void) {}
+#endif
 
 #ifdef CONFIG_POLLER
 /*
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
