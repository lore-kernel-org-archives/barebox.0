Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sp-0001vj-Nv
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:33 +0100
Message-Id: <1323946179-9883-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] remove unused watchdog header
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/board.c    |    1 -
 arch/ppc/lib/ppclinux.c |    1 -
 arch/ppc/lib/ticks.S    |    1 -
 commands/bootm.c        |    1 -
 include/watchdog.h      |   92 -----------------------------------------------
 lib/readline_simple.c   |    1 -
 net/net.c               |    1 -
 7 files changed, 0 insertions(+), 98 deletions(-)
 delete mode 100644 include/watchdog.h

diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 0e839eb..a840c75 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -23,7 +23,6 @@
 
 #include <debug_ll.h>
 #include <common.h>
-#include <watchdog.h>
 #include <command.h>
 #include <malloc.h>
 #include <memory.h>
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 471b303..025fd27 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -2,7 +2,6 @@
 
 #include <common.h>
 #include <command.h>
-#include <watchdog.h>
 #include <image.h>
 #include <init.h>
 #include <environment.h>
diff --git a/arch/ppc/lib/ticks.S b/arch/ppc/lib/ticks.S
index 5d6c427..453d889 100644
--- a/arch/ppc/lib/ticks.S
+++ b/arch/ppc/lib/ticks.S
@@ -26,7 +26,6 @@
 #include <asm/ppc_asm.tmpl>
 #include <asm/ppc_defs.h>
 #include <config.h>
-#include <watchdog.h>
 
 /*
  * unsigned long long get_ticks(void);
diff --git a/commands/bootm.c b/commands/bootm.c
index f97a842..453ae54 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -25,7 +25,6 @@
  * Boot support
  */
 #include <common.h>
-#include <watchdog.h>
 #include <driver.h>
 #include <command.h>
 #include <image.h>
diff --git a/include/watchdog.h b/include/watchdog.h
deleted file mode 100644
index 9265be9..0000000
--- a/include/watchdog.h
+++ /dev/null
@@ -1,92 +0,0 @@
-/*
- * (C) Copyright 2001
- * Erik Theisen,  Wave 7 Optics, etheisen@mindspring.com.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-/*
- * Watchdog functions and macros.
- */
-#ifndef _WATCHDOG_H_
-#define _WATCHDOG_H_
-
-#if defined(CONFIG_HW_WATCHDOG) && defined(CONFIG_WATCHDOG)
-#  error "Configuration error: CONFIG_HW_WATCHDOG and CONFIG_WATCHDOG can't be used together."
-#endif
-
-#if defined(__ASSEMBLY__) && defined(__NIOS__)
-#  error "Configuration error: WATCHDOG_RESET inside assembler not supported for Nios platforms."
-#endif
-
-/*
- * Hardware watchdog
- */
-#ifdef CONFIG_HW_WATCHDOG
-	#if defined(__ASSEMBLY__)
-		#define WATCHDOG_RESET bl hw_watchdog_reset
-	#else
-		extern void hw_watchdog_reset(void);
-
-		#define WATCHDOG_RESET hw_watchdog_reset
-	#endif /* __ASSEMBLY__ */
-#else
-	/*
-	 * Maybe a software watchdog?
-	 */
-	#if defined(CONFIG_WATCHDOG)
-		#if defined(__ASSEMBLY__)
-			#define WATCHDOG_RESET bl watchdog_reset
-		#else
-			extern void watchdog_reset(void);
-
-			#define WATCHDOG_RESET watchdog_reset
-		#endif
-	#else
-		/*
-		 * No hardware or software watchdog.
-		 */
-		#if defined(__ASSEMBLY__)
-			#define WATCHDOG_RESET /*XXX DO_NOT_DEL_THIS_COMMENT*/
-		#else
-			#define WATCHDOG_RESET() {}
-		#endif /* __ASSEMBLY__ */
-	#endif /* CONFIG_WATCHDOG && !__ASSEMBLY__ */
-#endif /* CONFIG_HW_WATCHDOG */
-
-/*
- * Prototypes from $(CPU)/cpu.c.
- */
-
-/* MPC 8xx */
-#if (defined(CONFIG_8xx) || defined(CONFIG_MPC860)) && !defined(__ASSEMBLY__)
-	void reset_8xx_watchdog(volatile immap_t *immr);
-#endif
-
-/* MPC 5xx */
-#if defined(CONFIG_5xx) && !defined(__ASSEMBLY__)
-	void reset_5xx_watchdog(volatile immap_t *immr);
-#endif
-
-/* AMCC 4xx */
-#if defined(CONFIG_4xx) && !defined(__ASSEMBLY__)
-	void reset_4xx_watchdog(void);
-#endif
-
-#endif /* _WATCHDOG_H_ */
diff --git a/lib/readline_simple.c b/lib/readline_simple.c
index 9dd2154..982e50e 100644
--- a/lib/readline_simple.c
+++ b/lib/readline_simple.c
@@ -1,5 +1,4 @@
 #include <common.h>
-#include <watchdog.h>
 
 static char erase_seq[] = "\b \b";		/* erase sequence	*/
 static char   tab_seq[] = "        ";		/* used to expand TABs	*/
diff --git a/net/net.c b/net/net.c
index 8416861..26ba44e 100644
--- a/net/net.c
+++ b/net/net.c
@@ -28,7 +28,6 @@
  */
 #include <common.h>
 #include <clock.h>
-#include <watchdog.h>
 #include <command.h>
 #include <environment.h>
 #include <param.h>
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
