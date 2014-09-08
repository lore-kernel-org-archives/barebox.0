Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQyvO-0002VM-NZ
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Sep 2014 15:23:40 +0200
Message-Id: <1410182622-22876-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
References: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: AT91: Make gpio mux functions inline
To: barebox@lists.infradead.org

Otherwise we get a unused function warning each time mach/gpio.h
is included.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |  1 -
 arch/arm/mach-at91/include/mach/gpio.h         | 42 ++++++++++++--------------
 2 files changed, 19 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 59ea83e..6452bdd 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -25,7 +25,6 @@
 #include <init.h>
 #include <sizes.h>
 
-#define __gpio_init inline
 #include "gpio.h"
 
 static void inline access_sdram(void)
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 6a6b9cd..4e9d686 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -9,10 +9,6 @@
 
 #include <asm-generic/gpio.h>
 
-#ifndef __gpio_init
-#define __gpio_init
-#endif
-
 #define MAX_NB_GPIO_PER_BANK	32
 
 static inline unsigned pin_to_bank(unsigned pin)
@@ -30,32 +26,32 @@ static inline unsigned pin_to_mask(unsigned pin)
 	return 1 << pin_to_bank_offset(pin);
 }
 
-static __gpio_init void at91_mux_disable_interrupt(void __iomem *pio, unsigned mask)
+static inline void at91_mux_disable_interrupt(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(mask, pio + PIO_IDR);
 }
 
-static __gpio_init void at91_mux_set_pullup(void __iomem *pio, unsigned mask, bool on)
+static inline void at91_mux_set_pullup(void __iomem *pio, unsigned mask, bool on)
 {
 	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
 }
 
-static __gpio_init void at91_mux_set_multidrive(void __iomem *pio, unsigned mask, bool on)
+static inline void at91_mux_set_multidrive(void __iomem *pio, unsigned mask, bool on)
 {
 	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
 }
 
-static __gpio_init void at91_mux_set_A_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_set_A_periph(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(mask, pio + PIO_ASR);
 }
 
-static __gpio_init void at91_mux_set_B_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_set_B_periph(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(mask, pio + PIO_BSR);
 }
 
-static __gpio_init void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned mask)
 {
 
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
@@ -64,7 +60,7 @@ static __gpio_init void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned m
 						pio + PIO_ABCDSR2);
 }
 
-static __gpio_init void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
 						pio + PIO_ABCDSR1);
@@ -72,31 +68,31 @@ static __gpio_init void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned m
 						pio + PIO_ABCDSR2);
 }
 
-static __gpio_init void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
 }
 
-static __gpio_init void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigned mask)
+static inline void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
 	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
 }
 
-static __gpio_init void at91_mux_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+static inline void at91_mux_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
 {
 	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
 }
 
-static __gpio_init void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+static inline void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
 {
 	if (is_on)
 		__raw_writel(mask, pio + PIO_IFSCDR);
 	at91_mux_set_deglitch(pio, mask, is_on);
 }
 
-static __gpio_init void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned mask,
+static inline void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned mask,
 				bool is_on, u32 div)
 {
 	if (is_on) {
@@ -108,38 +104,38 @@ static __gpio_init void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned m
 	}
 }
 
-static __gpio_init void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
+static inline void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
 {
 	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
 }
 
-static __gpio_init void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
+static inline void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
 }
 
-static __gpio_init void at91_mux_gpio_disable(void __iomem *pio, unsigned mask)
+static inline void at91_mux_gpio_disable(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(mask, pio + PIO_PDR);
 }
 
-static __gpio_init void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
+static inline void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
 {
 	__raw_writel(mask, pio + PIO_PER);
 }
 
-static __gpio_init void at91_mux_gpio_input(void __iomem *pio, unsigned mask, bool input)
+static inline void at91_mux_gpio_input(void __iomem *pio, unsigned mask, bool input)
 {
 	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
 }
 
-static __gpio_init void at91_mux_gpio_set(void __iomem *pio, unsigned mask,
+static inline void at91_mux_gpio_set(void __iomem *pio, unsigned mask,
 int value)
 {
 	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
 }
 
-static __gpio_init int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
+static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
 {
        u32 pdsr;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
