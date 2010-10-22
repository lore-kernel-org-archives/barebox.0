Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0002c9-0M
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:56 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:44:53 +0200
Message-Id: <1287765924-1856-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 01/32] reset_cpu: unify declaration
To: barebox@lists.infradead.org

include/common.h declares this as "unsigned long addr", so we unify it.
This also silences a doxygen warning.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/mach-at91/at91sam926x_time.c |    2 +-
 arch/arm/mach-ep93xx/clocksource.c    |    2 +-
 arch/arm/mach-imx/clocksource.c       |    2 +-
 arch/arm/mach-omap/omap3_generic.c    |    4 ++--
 arch/arm/mach-stm/reset-imx23.c       |    2 +-
 arch/blackfin/lib/cpu.c               |    2 +-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c           |    2 +-
 arch/sandbox/os/common.c              |    2 +-
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 84df1a1..c1b42f9 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -73,7 +73,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu through the reset controller
  */
-void __noreturn reset_cpu (unsigned long ignored)
+void __noreturn reset_cpu (unsigned long addr)
 {
 	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY |
 				     AT91_RSTC_PROCRST |
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index 3aa8e14..a1e315d 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -72,7 +72,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu
  */
-void __noreturn reset_cpu(unsigned long ignored)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
 	uint32_t value;
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index b8101e9..5b1bad5 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -118,7 +118,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu by setting up the watchdog timer and let it time out
  */
-void __noreturn reset_cpu (unsigned long ignored)
+void __noreturn reset_cpu (unsigned long addr)
 {
 	/* Disable watchdog and set Time-Out field to 0 */
 	writew(0x0, IMX_WDT_BASE + WDOG_WCR);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 9893145..f780794 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -52,11 +52,11 @@
  *
  * In case of crashes, reset the CPU
  *
- * @param[in] addr -Cause of crash
+ * @param addr Cause of crash
  *
  * @return void
  */
-void __noreturn reset_cpu(ulong addr)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	/* FIXME: Enable WDT and cause reset */
 	hang();
diff --git a/arch/arm/mach-stm/reset-imx23.c b/arch/arm/mach-stm/reset-imx23.c
index db0b3f2..b35f796 100644
--- a/arch/arm/mach-stm/reset-imx23.c
+++ b/arch/arm/mach-stm/reset-imx23.c
@@ -48,7 +48,7 @@
  * TODO There is a much easier way to reset the CPU: Refer bit 2 in
  *       the HW_CLKCTRL_RESET register, data sheet page 106/4-30
  */
-void __noreturn reset_cpu (unsigned long ignored)
+void __noreturn reset_cpu (unsigned long addr)
 {
 	writel(WDOG_COUNTER_RATE, IMX_WDT_BASE + HW_RTC_WATCHDOG);
 	writel(BM_RTC_CTRL_WATCHDOGEN, IMX_WDT_BASE + HW_RTC_CTRL_SET);
diff --git a/arch/blackfin/lib/cpu.c b/arch/blackfin/lib/cpu.c
index f96d22d..aed0864 100644
--- a/arch/blackfin/lib/cpu.c
+++ b/arch/blackfin/lib/cpu.c
@@ -32,7 +32,7 @@
 #include <asm/cpu.h>
 #include <init.h>
 
-void __noreturn reset_cpu(ulong ignored)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	icache_disable();
 
diff --git a/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c b/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
index 3b1a25b..d4659d2 100644
--- a/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
+++ b/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
@@ -27,7 +27,7 @@
 /**
  * Reset the cpu by setting up the watchdog timer and let it time out
  */
-void __noreturn reset_cpu (unsigned long ignored)
+void __noreturn reset_cpu (unsigned long addr)
 {
         while ( ignored ) { ; };
 
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 7ee1954..4d08c55 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -71,7 +71,7 @@ int checkcpu (void)
 
 /* ------------------------------------------------------------------------- */
 
-void __noreturn reset_cpu (unsigned long unused)
+void __noreturn reset_cpu (unsigned long addr)
 {
 	ulong msr;
 	/* Interrupts and MMU off */
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 89b2e5c..287be0d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -138,7 +138,7 @@ uint64_t linux_get_time(void)
 	return now;
 }
 
-void __attribute__((noreturn)) reset_cpu(int unused)
+void __attribute__((noreturn)) reset_cpu(unsigned long addr)
 {
 	cookmode();
 	exit(0);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
