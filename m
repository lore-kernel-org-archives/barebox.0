Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7QZG-0000JN-4U
 for barebox@lists.infradead.org; Sun, 16 Aug 2020 21:51:56 +0000
Received: from radon.fritz.box (a89-183-41-155.net-htp.de [89.183.41.155])
 by lynxeye.de (Postfix) with ESMTPA id F159EE7420C
 for <barebox@lists.infradead.org>; Sun, 16 Aug 2020 23:42:45 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 16 Aug 2020 23:42:41 +0200
Message-Id: <20200816214242.137168-2-dev@lynxeye.de>
In-Reply-To: <20200816214242.137168-1-dev@lynxeye.de>
References: <20200816214242.137168-1-dev@lynxeye.de>
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
Subject: [PATCH 2/3] ARM: vexpress: allow to select debug UART address
To: barebox@lists.infradead.org

DEBUG_LL currently doesn't work on the Vexpress platform for multiple
reasons: the addresses defined in the header aren't the real UART base
addresses but only the bus base address, also the referenced MP define
is never set.

Add two options to allow the user to select the correct debug UART
address for both supported Vexpress platforms.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-vexpress/include/mach/debug_ll.h | 11 +++++------
 common/Kconfig                                 | 15 +++++++++++++++
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/arch/arm/mach-vexpress/include/mach/debug_ll.h
index d59f68ea1973..a9c0d9850db8 100644
--- a/arch/arm/mach-vexpress/include/mach/debug_ll.h
+++ b/arch/arm/mach-vexpress/include/mach/debug_ll.h
@@ -10,13 +10,12 @@
 #include <linux/amba/serial.h>
 #include <io.h>
 
-#define DEBUG_LL_PHYS_BASE		0x10000000
-#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
+#ifdef CONFIG_DEBUG_VEXPRESS_CA9_UART
+#define DEBUG_LL_UART_ADDR 0x10009000
+#endif
 
-#ifdef MP
-#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
-#else
-#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
+#ifdef CONFIG_DEBUG_VEXPRESS_CA15_UART
+#define DEBUG_LL_UART_ADDR 0x1c090000
 #endif
 
 #include <debug_ll/pl011.h>
diff --git a/common/Kconfig b/common/Kconfig
index 658437f01c5e..09b36f6f7880 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1287,6 +1287,21 @@ config DEBUG_RPI3_MINI_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 3 board mini UART.
+
+config DEBUG_VEXPRESS_CA9_UART
+	bool "Vexpress CA9 debug UART"
+	depends on ARCH_VEXPRESS
+	help
+	  Say Y here if you want low-level debugging support on the
+	  Cortex-A9 based Vexpress boards.
+
+config DEBUG_VEXPRESS_CA15_UART
+	bool "Vexpress CA15 debug UART"
+	depends	on ARCH_VEXPRESS
+	help
+	  Say Y	here if	you want low-level debugging support on	the
+	  Cortex-A15 based Vexpress boards.
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
