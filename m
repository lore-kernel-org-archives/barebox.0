Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001Ry-AC
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:44 +0200
Message-Id: <1269947215-18214-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] make reset_cpu a __noreturn function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/clocksource.c      |    5 ++++-
 arch/arm/mach-ep93xx/clocksource.c    |    2 +-
 arch/arm/mach-imx/clocksource.c       |    2 +-
 arch/arm/mach-netx/generic.c          |    5 ++++-
 arch/arm/mach-omap/omap3_generic.c    |    2 +-
 arch/arm/mach-s3c24xx/generic.c       |    2 +-
 arch/blackfin/lib/cpu.c               |    5 ++++-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c           |    2 +-
 arch/sandbox/os/common.c              |    2 +-
 arch/x86/mach-i386/reset.c            |    2 +-
 include/common.h                      |    2 +-
 12 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-at91/clocksource.c b/arch/arm/mach-at91/clocksource.c
index 564b560..84df1a1 100644
--- a/arch/arm/mach-at91/clocksource.c
+++ b/arch/arm/mach-at91/clocksource.c
@@ -73,10 +73,13 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu through the reset controller
  */
-void reset_cpu (ulong ignored)
+void __noreturn reset_cpu (unsigned long ignored)
 {
 	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY |
 				     AT91_RSTC_PROCRST |
 				     AT91_RSTC_PERRST);
+
+	/* Not reached */
+	while (1);
 }
 EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index 2a7d90e..3aa8e14 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -72,7 +72,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu
  */
-void reset_cpu(ulong ignored)
+void __noreturn reset_cpu(unsigned long ignored)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
 	uint32_t value;
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 09d4318..4b400a0 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -95,7 +95,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu by setting up the watchdog timer and let it time out
  */
-void reset_cpu (ulong ignored)
+void __noreturn reset_cpu (unsigned long ignored)
 {
 	/* Disable watchdog and set Time-Out field to 0 */
 	WCR = 0x0000;
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 69cf196..de1e1b0 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -137,9 +137,12 @@ failure:
 	return COMMAND_ERROR_USAGE;
 }
 
-void reset_cpu(ulong addr)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	SYSTEM_REG(SYSTEM_RES_CR) = 0x01000008;
+
+	/* Not reached */
+	while (1);
 }
 
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 05c5c19..9893145 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -56,7 +56,7 @@
  *
  * @return void
  */
-void reset_cpu(ulong addr)
+void __noreturn reset_cpu(ulong addr)
 {
 	/* FIXME: Enable WDT and cause reset */
 	hang();
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
index 2de03ca..372904f 100644
--- a/arch/arm/mach-s3c24xx/generic.c
+++ b/arch/arm/mach-s3c24xx/generic.c
@@ -221,7 +221,7 @@ static int clocksource_init (void)
 }
 core_initcall(clocksource_init);
 
-void reset_cpu(ulong addr)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	/* Disable watchdog */
 	writew(0x0000, WTCON);
diff --git a/arch/blackfin/lib/cpu.c b/arch/blackfin/lib/cpu.c
index e81fa9a..f96d22d 100644
--- a/arch/blackfin/lib/cpu.c
+++ b/arch/blackfin/lib/cpu.c
@@ -32,7 +32,7 @@
 #include <asm/cpu.h>
 #include <init.h>
 
-void reset_cpu(ulong ignored)
+void __noreturn reset_cpu(ulong ignored)
 {
 	icache_disable();
 
@@ -43,6 +43,9 @@ void reset_cpu(ulong ignored)
 	:
 	: "r" (L1_ISRAM)
 	);
+
+	/* Not reached */
+	while (1);
 }
 
 void icache_disable(void)
diff --git a/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c b/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
index c7b77ab..3b1a25b 100644
--- a/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
+++ b/arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
@@ -27,7 +27,7 @@
 /**
  * Reset the cpu by setting up the watchdog timer and let it time out
  */
-void reset_cpu (ulong ignored)
+void __noreturn reset_cpu (unsigned long ignored)
 {
         while ( ignored ) { ; };
 
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 59b1538..7ee1954 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -71,7 +71,7 @@ int checkcpu (void)
 
 /* ------------------------------------------------------------------------- */
 
-void reset_cpu (ulong unused)
+void __noreturn reset_cpu (unsigned long unused)
 {
 	ulong msr;
 	/* Interrupts and MMU off */
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index d63a2f4..acfa35e 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -137,7 +137,7 @@ uint64_t linux_get_time(void)
 	return now;
 }
 
-int reset_cpu(int unused)
+void __attribute__((noreturn)) reset_cpu(int unused)
 {
 	cookmode();
 	exit(0);
diff --git a/arch/x86/mach-i386/reset.c b/arch/x86/mach-i386/reset.c
index a4eb364..cdd970e 100644
--- a/arch/x86/mach-i386/reset.c
+++ b/arch/x86/mach-i386/reset.c
@@ -25,7 +25,7 @@
 
 #include <common.h>
 
-void reset_cpu(ulong addr)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	/** How to reset the machine? */
 	while(1)
diff --git a/include/common.h b/include/common.h
index 76e9be9..3b3d2de 100644
--- a/include/common.h
+++ b/include/common.h
@@ -80,7 +80,7 @@ int	readline	(const char *prompt, char *buf, int len);
 long	get_ram_size  (volatile long *, long);
 
 /* $(CPU)/cpu.c */
-void	reset_cpu     (ulong addr);
+void __noreturn reset_cpu(unsigned long addr);
 
 /* $(CPU)/interrupts.c */
 //void	timer_interrupt	   (struct pt_regs *);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
