Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjM3B-0007zc-Lg
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 10:34:32 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 15 Jan 2019 11:34:21 +0100
Message-Id: <20190115103423.5233-1-rhi@pengutronix.de>
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
Subject: [PATCH v1 1/3] ARM: rpi: make locally used functions static
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

These functions are not meant to be a public interface, so they can well
be static. rpi_b_plus_init() was previously declared with a prototype,
which is no longer needed.

This fixes the following build warnings:

    .../arch/arm/boards/raspberry-pi/rpi-common.c:124:6: warning: no previous prototype for 'rpi_add_led' [-Wmissing-prototypes]
     void rpi_add_led(void)
          ^~~~~~~~~~~
    .../arch/arm/boards/raspberry-pi/rpi-common.c:141:6: warning: no previous prototype for 'rpi_b_init' [-Wmissing-prototypes]
     void rpi_b_init(void)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 6 +++---
 arch/arm/boards/raspberry-pi/rpi.h        | 1 -
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 650b26ce7d..2521bb7aa2 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -121,7 +121,7 @@ struct gpio_led rpi_leds[] = {
 	},
 };
 
-void rpi_add_led(void)
+static void rpi_add_led(void)
 {
 	int i;
 	struct gpio_led *l;
@@ -138,14 +138,14 @@ void rpi_add_led(void)
 		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
 }
 
-void rpi_b_init(void)
+static void rpi_b_init(void)
 {
 	rpi_leds[0].gpio = 16;
 	rpi_leds[0].active_low = 1;
 	rpi_set_usbethaddr();
 }
 
-void rpi_b_plus_init(void)
+static void rpi_b_plus_init(void)
 {
 	rpi_leds[0].gpio = 47;
 	rpi_leds[1].gpio = 35;
diff --git a/arch/arm/boards/raspberry-pi/rpi.h b/arch/arm/boards/raspberry-pi/rpi.h
index dd32fee809..b2a0401bd0 100644
--- a/arch/arm/boards/raspberry-pi/rpi.h
+++ b/arch/arm/boards/raspberry-pi/rpi.h
@@ -19,7 +19,6 @@ struct rpi_model {
 
 extern struct gpio_led rpi_leds[];
 
-void rpi_b_plus_init(void);
 void rpi_set_usbethaddr(void);
 
 #endif /* __ARCH_ARM_BOARDS_RPI_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
