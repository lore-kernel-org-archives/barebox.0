Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQBQ-0003uM-7v
 for barebox@lists.infradead.org; Thu, 26 Sep 2019 09:35:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Sep 2019 11:35:24 +0200
Message-Id: <20190926093525.12371-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: at91: provide at91_mux_pio3_pin for use in first
 stage
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Low level init code may wish the ability to configure pins, e.g. for low
level debug UART. The pinctrl-at91 driver already exports an
at91_mux_pio3_pin function, but that one is only usable after driver
probe. Instead, provide an at91_mux_pio3_pin function, which can be used
at all times.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This is yet unused in the barebox tree.
But getting it upstream will decouple the sama5d2 second stage support
from the sama5d3 first stage support, so that both could be sent out
separately.
---
 arch/arm/mach-at91/include/mach/gpio.h  | 39 +++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/iomux.h |  9 +-----
 2 files changed, 40 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index f5ab47c0649a..b893dc220c94 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -7,8 +7,18 @@
 #ifndef __AT91_GPIO_H__
 #define __AT91_GPIO_H__
 
+#include <dt-bindings/gpio/gpio.h>
+
 #define MAX_NB_GPIO_PER_BANK	32
 
+enum at91_mux {
+	AT91_MUX_GPIO = 0,
+	AT91_MUX_PERIPH_A = 1,
+	AT91_MUX_PERIPH_B = 2,
+	AT91_MUX_PERIPH_C = 3,
+	AT91_MUX_PERIPH_D = 4,
+};
+
 static inline unsigned pin_to_bank(unsigned pin)
 {
 	return pin / MAX_NB_GPIO_PER_BANK;
@@ -136,4 +146,33 @@ static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
        return (pdsr & mask) != 0;
 }
 
+static inline void at91_mux_pio3_pin(void __iomem *pio, unsigned mask,
+				     enum at91_mux mux, int gpio_state)
+{
+	at91_mux_disable_interrupt(pio, mask);
+
+	switch(mux) {
+	case AT91_MUX_GPIO:
+		at91_mux_gpio_enable(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_A:
+		at91_mux_pio3_set_A_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_B:
+		at91_mux_pio3_set_B_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_C:
+		at91_mux_pio3_set_C_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_D:
+		at91_mux_pio3_set_D_periph(pio, mask);
+		break;
+	}
+	if (mux != AT91_MUX_GPIO)
+		at91_mux_gpio_disable(pio, mask);
+
+	at91_mux_set_pullup(pio, mask, gpio_state & GPIO_PULL_UP);
+	at91_mux_pio3_set_pulldown(pio, mask, gpio_state & GPIO_PULL_DOWN);
+}
+
 #endif /* __AT91_GPIO_H__ */
diff --git a/arch/arm/mach-at91/include/mach/iomux.h b/arch/arm/mach-at91/include/mach/iomux.h
index bac7ef65a210..0c91b22a8fac 100644
--- a/arch/arm/mach-at91/include/mach/iomux.h
+++ b/arch/arm/mach-at91/include/mach/iomux.h
@@ -17,6 +17,7 @@
 #include <asm-generic/errno.h>
 #include <mach/at91_pio.h>
 #include <mach/hardware.h>
+#include <mach/gpio.h>
 
 #define	AT91_PIN_PA0	(0x00 + 0)
 #define	AT91_PIN_PA1	(0x00 + 1)
@@ -183,14 +184,6 @@
 #define	AT91_PIN_PE30	(0x80 + 30)
 #define	AT91_PIN_PE31	(0x80 + 31)
 
-enum at91_mux {
-	AT91_MUX_GPIO = 0,
-	AT91_MUX_PERIPH_A = 1,
-	AT91_MUX_PERIPH_B = 2,
-	AT91_MUX_PERIPH_C = 3,
-	AT91_MUX_PERIPH_D = 4,
-};
-
 /*
  * mux the pin
  */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
