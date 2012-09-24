Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG3sK-0003J1-SC
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 08:18:45 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 24 Sep 2012 10:18:32 +0200
Message-Id: <1348474714-5807-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
References: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/4] ARM OMAP3: rename arch_init_lowlevel to
 board_init_lowlevel
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

OMAP3 is the only architecture which has a arch_init_lowlevel in
which it invalidates the dcache. This can easily be done in
board_init_lowlevel aswell. Since on OMAP3 we are always executed
in SRAM we'll never need a board specific lowlevel_init. So the
easiest way of getting rid of this special handling is to just
rename the function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig      |    1 -
 arch/arm/mach-omap/omap3_core.S |    8 ++------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index d735284..9c76a96 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -37,7 +37,6 @@ config ARCH_OMAP3
 	select CPU_V7
 	select GENERIC_GPIO
 	select OMAP3_LOWLEVEL_INIT
-	select ARCH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index 6a9f44f..d1be6e5 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -12,7 +12,6 @@
  * functions.
  * @li Call architecture initialization function a_init
  *
- * arch_init_lowlevel is enabled if CONFIG_ARCH_HAS_LOWLEVEL_INIT is defined
  */
 /*
  * (C) Copyright 2006-2008
@@ -42,8 +41,7 @@
 #include <mach/wdt.h>
 #include <mach/clocks.h>
 
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-ENTRY(arch_init_lowlevel)
+ENTRY(board_init_lowlevel)
 	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
@@ -93,6 +91,4 @@ finished_inval:
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
 	/* back to arch calling code */
 	mov	pc,	lr
-ENDPROC(arch_init_lowlevel)
-
-#endif /* CONFIG_ARCH_HAS_LOWLEVEL_INIT */
+ENDPROC(board_init_lowlevel)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
