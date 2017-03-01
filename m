Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048k-93
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I2-0005ON-39
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:38 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:36 +0100
Message-Id: <20170301143137.11570-8-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: rpi: move debug UART base selection to Kconfig
To: barebox@lists.infradead.org

To let the user select the right base, when building multi-image.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-bcm283x/Kconfig                 | 20 ++++++++++++++++++++
 arch/arm/mach-bcm283x/include/mach/debug_ll.h |  6 +++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index d9be1a9b65c1..bb4fe95ab2f1 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -22,4 +22,24 @@ config MACH_RPI2
 
 endchoice
 
+config MACH_RPI_DEBUG_UART_BASE
+	hex
+	default 0x20201000 if MACH_RPI_DEBUG_UART_RPI
+	default 0x3f201000 if MACH_RPI_DEBUG_UART_RPI2
+
+if DEBUG_LL
+
+choice
+	prompt "Lowlevel debug UART"
+
+config MACH_RPI_DEBUG_UART_RPI
+	bool "use RaspberryPi 1 compatible base"
+
+config MACH_RPI_DEBUG_UART_RPI2
+	bool "use RaspberryPi 2 and 3 compatible base"
+
+endchoice
+
+endif
+
 endif
diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index be93cd95ad46..a625a8bdb71d 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -20,7 +20,11 @@
 
 #include <mach/platform.h>
 
-#define DEBUG_LL_UART_ADDR BCM2835_UART0_BASE
+#ifndef CONFIG_MACH_RPI_DEBUG_UART_BASE
+#define CONFIG_MACH_RPI_DEBUG_UART_BASE 0
+#endif
+
+#define DEBUG_LL_UART_ADDR CONFIG_MACH_RPI_DEBUG_UART_BASE
 
 #include <asm/debug_ll_pl011.h>
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
