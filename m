Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUjqh-0002xT-T5
 for barebox@lists.infradead.org; Wed, 16 May 2012 19:25:30 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so968940laa.36
 for <barebox@lists.infradead.org>; Wed, 16 May 2012 12:25:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 May 2012 23:25:14 +0400
Message-Id: <1337196316-8632-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
References: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 2/4] MIPS: XBurst: add JZ4755 CPU support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/Kconfig                      |    3 +
 arch/mips/mach-xburst/Makefile                     |    1 +
 arch/mips/mach-xburst/csrc-jz4750.c                |   61 +++++++++++++++
 .../mach-xburst/include/mach/debug_ll_jz4755.h     |   29 +++++++
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |   80 ++++++++++++++++++++
 arch/mips/mach-xburst/reset-jz4750.c               |   46 +++++++++++
 6 files changed, 220 insertions(+)
 create mode 100644 arch/mips/mach-xburst/Makefile
 create mode 100644 arch/mips/mach-xburst/csrc-jz4750.c
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h
 create mode 100644 arch/mips/mach-xburst/include/mach/jz4750d_regs.h
 create mode 100644 arch/mips/mach-xburst/reset-jz4750.c

diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 7228b8f..0306f2e 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -4,4 +4,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
+config CPU_JZ4755
+	bool
+
 endif
diff --git a/arch/mips/mach-xburst/Makefile b/arch/mips/mach-xburst/Makefile
new file mode 100644
index 0000000..e5634ba
--- /dev/null
+++ b/arch/mips/mach-xburst/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_CPU_JZ4755) += csrc-jz4750.o reset-jz4750.o
diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
new file mode 100644
index 0000000..f625b70
--- /dev/null
+++ b/arch/mips/mach-xburst/csrc-jz4750.c
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/**
+ * @file
+ * @brief Clocksource based on JZ475x OS timer
+ */
+
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <mach/jz4750d_regs.h>
+
+#define JZ_TIMER_CLOCK 40000
+
+static uint64_t jz4750_cs_read(void)
+{
+	return (uint64_t)__raw_readl((void *)TCU_OSTCNT);
+}
+
+static struct clocksource jz4750_cs = {
+	.read	= jz4750_cs_read,
+	.mask   = CLOCKSOURCE_MASK(32),
+	.shift  = 10,
+};
+
+static int clocksource_init(void)
+{
+	jz4750_cs.mult = clocksource_hz2mult(JZ_TIMER_CLOCK, jz4750_cs.shift);
+	init_clock(&jz4750_cs);
+
+	__raw_writel(TCU_OSTCSR_PRESCALE1 | TCU_OSTCSR_EXT_EN,
+		(void *)TCU_OSTCSR);
+	__raw_writel(0, (void *)TCU_OSTCNT);
+	__raw_writel(0xffffffff, (void *)TCU_OSTDR);
+
+	/* enable timer clock */
+	__raw_writel(TCU_TSCR_OSTSC, (void *)TCU_TSCR);
+	/* start counting up */
+	__raw_writel(TCU_TESR_OSTST, (void *)TCU_TESR);
+
+	return 0;
+}
+core_initcall(clocksource_init);
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h
new file mode 100644
index 0000000..babe296
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef __INCLUDE_DEBUG_LL_JZ4755_H__
+#define __INCLUDE_DEBUG_LL_JZ4755_H__
+
+#include <mach/jz4750d_regs.h>
+
+#define DEBUG_LL_UART_ADDR	UART1_BASE
+#define DEBUG_LL_UART_SHIFT	2
+
+#endif  /* __INCLUDE_DEBUG_LL_JZ4755_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
new file mode 100644
index 0000000..717493b
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
@@ -0,0 +1,80 @@
+/*
+ * based on linux/include/asm-mips/mach-jz4750d/regs.h
+ *
+ * JZ4750D register definition.
+ *
+ * Copyright (C) 2008 Ingenic Semiconductor Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __JZ4750D_REGS_H__
+#define __JZ4750D_REGS_H__
+
+#define TCU_BASE        0xb0002000
+#define WDT_BASE        0xb0002000
+#define UART1_BASE      0xb0031000
+
+/*************************************************************************
+ * TCU (Timer Counter Unit)
+ *************************************************************************/
+#define TCU_TESR        (TCU_BASE + 0x14) /* Timer Counter Enable Set Register */
+ #define TCU_TESR_OSTST		(1 << 15)
+ #define TCU_TESR_TCST5		(1 << 5)
+ #define TCU_TESR_TCST4		(1 << 4)
+ #define TCU_TESR_TCST3		(1 << 3)
+ #define TCU_TESR_TCST2		(1 << 2)
+ #define TCU_TESR_TCST1		(1 << 1)
+ #define TCU_TESR_TCST0		(1 << 0)
+
+#define TCU_TSCR        (TCU_BASE + 0x3c) /* Timer Stop Clear Register */
+ #define TCU_TSCR_WDTSC		(1 << 16)
+ #define TCU_TSCR_OSTSC		(1 << 15)
+ #define TCU_TSCR_STPC5		(1 << 5)
+ #define TCU_TSCR_STPC4		(1 << 4)
+ #define TCU_TSCR_STPC3		(1 << 3)
+ #define TCU_TSCR_STPC2		(1 << 2)
+ #define TCU_TSCR_STPC1		(1 << 1)
+ #define TCU_TSCR_STPC0		(1 << 0)
+
+/* Operating System Timer */
+#define TCU_OSTDR	(TCU_BASE + 0xe0)
+#define TCU_OSTCNT      (TCU_BASE + 0xe8)
+#define TCU_OSTCSR	(TCU_BASE + 0xec)
+#define TCU_OSTCSR_PRESCALE_BIT		3
+#define TCU_OSTCSR_PRESCALE_MASK	(0x7 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE1		(0x0 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE4		(0x1 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE16		(0x2 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE64		(0x3 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE256		(0x4 << TCU_OSTCSR_PRESCALE_BIT)
+ #define TCU_OSTCSR_PRESCALE1024	(0x5 << TCU_OSTCSR_PRESCALE_BIT)
+#define TCU_OSTCSR_EXT_EN		(1 << 2) /* select extal as the timer clock input */
+#define TCU_OSTCSR_RTC_EN		(1 << 1) /* select rtcclk as the timer clock input */
+#define TCU_OSTCSR_PCK_EN		(1 << 0) /* select pclk as the timer clock input */
+
+/*************************************************************************
+ * WDT (WatchDog Timer)
+ *************************************************************************/
+#define WDT_TDR		(WDT_BASE + 0x00)
+#define WDT_TCER	(WDT_BASE + 0x04)
+#define WDT_TCNT	(WDT_BASE + 0x08)
+#define WDT_TCSR	(WDT_BASE + 0x0c)
+
+#define WDT_TCSR_PRESCALE_BIT	3
+#define WDT_TCSR_PRESCALE_MASK	(0x7 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE1	(0x0 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE4	(0x1 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE16	(0x2 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE64	(0x3 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE256	(0x4 << WDT_TCSR_PRESCALE_BIT)
+ #define WDT_TCSR_PRESCALE1024	(0x5 << WDT_TCSR_PRESCALE_BIT)
+#define WDT_TCSR_EXT_EN		(1 << 2)
+#define WDT_TCSR_RTC_EN		(1 << 1)
+#define WDT_TCSR_PCK_EN		(1 << 0)
+
+#define WDT_TCER_TCEN		(1 << 0)
+
+#endif /* __JZ4750D_REGS_H__ */
diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
new file mode 100644
index 0000000..3540ca9
--- /dev/null
+++ b/arch/mips/mach-xburst/reset-jz4750.c
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/**
+ * @file
+ * @brief Resetting an JZ4755-based board
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/jz4750d_regs.h>
+
+#define JZ_EXTAL 24000000
+
+void __noreturn reset_cpu(ulong addr)
+{
+	__raw_writew(WDT_TCSR_PRESCALE4 | WDT_TCSR_EXT_EN, (u16 *)WDT_TCSR);
+	__raw_writew(0, (u16 *)WDT_TCNT);
+
+	/* reset after 4ms */
+	__raw_writew(JZ_EXTAL / 1000, (u16 *)WDT_TDR);
+	/* enable wdt clock */
+	__raw_writel(TCU_TSCR_WDTSC, (u32 *)TCU_TSCR);
+	/* start wdt */
+	__raw_writeb(WDT_TCER_TCEN, (u8 *)WDT_TCER);
+
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
