Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPMF-0000fG-Rs
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:53 +0100
Message-Id: <1327584413-23055-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
References: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] Add dump_stack function
To: barebox@lists.infradead.org

At least ARM allows us to dump the stack, but we currently
have no prototype for this. Add a dump_stack prototype and
provide a static inline function for architectures without
stack dump support. Also, call dump_stack() in panic() to
provide more information in the case of a panic.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c      |    5 +++++
 arch/arm/include/asm/barebox.h |   39 +++------------------------------------
 include/common.h               |    9 +++++++++
 lib/vsprintf.c                 |    2 ++
 4 files changed, 19 insertions(+), 36 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 3d2077f..c4f9113 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -73,6 +73,11 @@ void show_regs (struct pt_regs *regs)
 #endif
 }
 
+void dump_stack(void)
+{
+	unwind_backtrace(NULL);
+}
+
 static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
 	show_regs(pt_regs);
diff --git a/arch/arm/include/asm/barebox.h b/arch/arm/include/asm/barebox.h
index c9372da..2b08d68 100644
--- a/arch/arm/include/asm/barebox.h
+++ b/arch/arm/include/asm/barebox.h
@@ -1,41 +1,8 @@
-/*
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Marius Groeger <mgroeger@sysgo.de>
- *
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Alex Zuepke <azu@sysgo.de>
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
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- ********************************************************************
- * NOTE: This header file defines an interface to barebox. Including
- * this (unmodified) header file in another file is considered normal
- * use of barebox, and does *not* fall under the heading of "derived
- * work".
- ********************************************************************
- */
-
 #ifndef _BAREBOX_H_
 #define _BAREBOX_H_	1
 
-//typedef struct bd_info {} bd_t;
+#ifdef CONFIG_ARM_UNWIND
+#define ARCH_HAS_STACK_DUMP
+#endif
 
 #endif	/* _BAREBOX_H_ */
diff --git a/include/common.h b/include/common.h
index 2f37dd8..74a697d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -119,6 +119,15 @@ uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
 /* common/console.c */
 int	ctrlc (void);
 
+#ifdef ARCH_HAS_STACK_DUMP
+void dump_stack(void);
+#else
+static inline void dump_stack(void)
+{
+	printf("no stack data available\n");
+}
+#endif
+
 #define MEMAREA_SIZE_SPECIFIED 1
 
 struct memarea_info {
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 4165f97..9763515 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -625,6 +625,8 @@ void __noreturn panic(const char *fmt, ...)
 	putchar('\n');
 	va_end(args);
 
+	dump_stack();
+
 	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
 
 #if defined (CONFIG_PANIC_HANG)
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
