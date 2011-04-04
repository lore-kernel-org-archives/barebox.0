Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002CA-5u
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:14:03 +0200
Message-Id: <1301922843-12118-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM omap: make gpio support mandatory
To: barebox@lists.infradead.org

If compiled without gpio support the linker will throw the
gpio functions away anyway, so make the omap kconfig entries
a bit easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig  |   10 +---------
 arch/arm/mach-omap/Makefile |    3 +--
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 3fb85b5..d171a6f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -32,6 +32,7 @@ choice
 config ARCH_OMAP3
 	bool "OMAP3"
 	select CPU_V7
+	select GENERIC_GPIO
 	select ARCH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
@@ -82,15 +83,6 @@ config OMAP_GPMC
 	  Controller(GPMC). GPMC allows you to configure devices such as NOR,
 	  NAND, OneNAND etc.
 
-config GPIO
-	prompt "Support for GPIO configuration"
-	bool
-	select GENERIC_GPIO
-	depends on  (ARCH_OMAP2 || ARCH_OMAP3)
-	default y
-	help
-	  Enable this if you use Texas Instrument's General Purpose IO
-
 config ARCH_TEXT_BASE
 	hex
 	default 0x80e80000 if MACH_OMAP343xSDP
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 5527f48..13c327c 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -24,5 +24,4 @@ obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
-obj-$(CONFIG_GPIO) += gpio.o
-obj-y += omap-uart.o
+obj-y += omap-uart.o gpio.o
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
