Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0O-0005j7-EK
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:26:53 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:33 +0400
Message-Id: <1362994003-22653-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 03/13] ARM: clps711x: Replace numeric PLL option with boolean
 for raise CPU frequency
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/lowlevel.c |    8 +++++---
 arch/arm/mach-clps711x/Kconfig      |   13 ++++++-------
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index fcf8285..92fbb9b 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -14,13 +14,15 @@
 
 #include <mach/clps711x.h>
 
-#if (CONFIG_CLPS711X_CPU_PLL_MULT < 20) || (CONFIG_CLPS711X_CPU_PLL_MULT > 50)
-# error "CPU PLL multiplier out of range"
+#ifdef CONFIG_CLPS711X_RAISE_CPUFREQ
+# define CLPS711X_CPU_PLL_MULT	50
+#else
+# define CLPS711X_CPU_PLL_MULT	40
 #endif
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
 
-	clps711x_barebox_entry(CONFIG_CLPS711X_CPU_PLL_MULT);
+	clps711x_barebox_entry(CLPS711X_CPU_PLL_MULT);
 }
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index d2873b4..b774c54 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -12,14 +12,13 @@ endchoice
 
 menu "CLPS711X specific settings"
 
-config CLPS711X_CPU_PLL_MULT
-	int "CPU PLL multiplier (20-50)"
-	range 20 50
-	default "40"
+config CLPS711X_RAISE_CPUFREQ
+	bool "Raise CPU frequency to 90 MHz"
+	depends on MACH_CLEP7212
 	help
-	  Define CPU PLL multiplier. PLL is calculated by formula:
-	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
-	  Default value is 40, for achieve 73 MHz.
+	  Raise CPU frequency to 90 MHz. This operation can be performed
+	  only for devices which allow to operate at 90 MHz.
+	  If option is not selected, CPU frequency will set to default 73 MHz.
 
 endmenu
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
