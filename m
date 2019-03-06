Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T4W-0006qb-C2
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:42:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2019 10:42:39 +0100
Message-Id: <20190306094239.29413-6-s.hauer@pengutronix.de>
In-Reply-To: <20190306094239.29413-1-s.hauer@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: rpi: Add mini UART debug_ll support
To: Barebox List <barebox@lists.infradead.org>

The raspberry pi 3 comes up with the mini UART as default, so allow to
use it for debug_ll output.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm283x/include/mach/debug_ll.h | 37 +++++++++++++++++++
 common/Kconfig                                |  6 +++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index 2d2103e338..99c59d011b 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -22,14 +22,51 @@
 
 #ifdef CONFIG_DEBUG_RPI1_UART
 
+static inline void debug_ll_init(void)
+{
+	/* Configured by ROM */
+}
+
 #define DEBUG_LL_UART_ADDR BCM2835_PL011_BASE
 #include <debug_ll/pl011.h>
 
 #elif defined CONFIG_DEBUG_RPI2_3_UART
 
+static inline void debug_ll_init(void)
+{
+	/* Configured by ROM */
+}
+
 #define DEBUG_LL_UART_ADDR BCM2836_PL011_BASE
 #include <debug_ll/pl011.h>
 
+#elif defined CONFIG_DEBUG_RPI3_MINI_UART
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	return readb(BCM2836_MINIUART_BASE + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	writeb(val, BCM2836_MINIUART_BASE + (reg << 2));
+}
+
+#define BCM2836_AUX_CLOCK_ENB		0x3f215004 /* BCM2835 AUX Clock enable register */
+#define BCM2836_AUX_CLOCK_EN_UART	BIT(0) /* Bit 0 enables the Miniuart */
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	uint16_t divisor;
+
+	writeb(BCM2836_AUX_CLOCK_EN_UART, BCM2836_AUX_CLOCK_ENB);
+
+	divisor = debug_ll_ns16550_calc_divisor(250000000 * 2);
+	debug_ll_ns16550_init(divisor);
+}
+
 #endif
 
 #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
diff --git a/common/Kconfig b/common/Kconfig
index 563cf15fb1..0c6acfcddb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1173,6 +1173,12 @@ config DEBUG_RPI2_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 2 and 3 boards.
 
+config DEBUG_RPI3_MINI_UART
+	bool "RaspberryPi 3 mini UART
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 3 board mini UART.
 endchoice
 
 config DEBUG_IMX_UART_PORT
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
