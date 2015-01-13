Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuwH-0002QF-Cd
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:26:54 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0F2E0FF9AE5
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:26:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:26:12 +0100
Message-Id: <1421130376-32428-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113062416.GB30554@ns203013.ovh.net>
 <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] raspberry-pi: add leds support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/raspberry-pi/rpi.c | 55 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index ae1e92a..7d866cc 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -21,6 +21,8 @@
 #include <linux/clkdev.h>
 #include <envfs.h>
 #include <malloc.h>
+#include <gpio.h>
+#include <led.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 
@@ -87,6 +89,49 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 }
 
 
+static struct gpio_led leds[] = {
+	{
+		.gpio	= -EINVAL,
+		.led	= {
+			.name = "ACT",
+		},
+	}, {
+		.gpio	= -EINVAL,
+		.led	= {
+			.name = "PWR",
+		},
+	},
+};
+
+static void rpi_add_led(void)
+{
+	int i;
+	struct gpio_led *l;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		l = &leds[i];
+
+		if (gpio_is_valid(l->gpio))
+			led_gpio_register(l);
+	}
+
+	l = &leds[0];
+	if (gpio_is_valid(l->gpio))
+		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
+}
+
+static void rpi_b_plus_init(void)
+{
+	leds[0].gpio = 47;
+	leds[1].gpio = 35;
+}
+
+static void rpi_b_init(void)
+{
+	leds[0].gpio = 16;
+	leds[0].active_low = 1;
+}
+
 #define RPI_MODEL(_id, _name, _init)	\
 	[_id] = {				\
 		.name			= _name,\
@@ -160,6 +205,15 @@ unknown_rev:
 	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
 }
 
+static void rpi_model_init(void)
+{
+	rpi_set_usbethaddr();
+	if (models[rpi_board_rev].init) {
+		models[rpi_board_rev].init();
+		rpi_add_led();
+	}
+}
+
 static int rpi_mem_init(void)
 {
 	u32 size = 0;
@@ -220,6 +274,7 @@ static int rpi_env_init(void)
 
 static int rpi_devices_init(void)
 {
+	rpi_model_init();
 	bcm2835_register_mci();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
