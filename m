Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoXU8-0005zF-RG
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:11:36 +0000
Received: by ewy3 with SMTP id 3so322853ewy.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 02:11:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 13:10:55 +0400
Message-Id: <1312362661-31340-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
References: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v9 06/12] MIPS: add Malta machine support to barebox
To: barebox@lists.infradead.org

The machine uses only big-endian mode.
Only supported peripheral is serial port.
The machine supports only MIPS32 CPUs.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                            |   22 ++++++++++++++
 arch/mips/Makefile                           |    2 +
 arch/mips/mach-malta/Kconfig                 |   12 ++++++++
 arch/mips/mach-malta/Makefile                |    1 +
 arch/mips/mach-malta/include/mach/debug_ll.h |   40 ++++++++++++++++++++++++++
 arch/mips/mach-malta/include/mach/hardware.h |   32 ++++++++++++++++++++
 arch/mips/mach-malta/reset.c                 |   36 +++++++++++++++++++++++
 7 files changed, 145 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/mach-malta/Kconfig
 create mode 100644 arch/mips/mach-malta/Makefile
 create mode 100644 arch/mips/mach-malta/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-malta/include/mach/hardware.h
 create mode 100644 arch/mips/mach-malta/reset.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index b6d2c5e..a84d469 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -21,6 +21,28 @@ config GENERIC_LINKER_SCRIPT
 	bool
 	default y
 
+menu "Machine selection"
+
+choice
+	prompt "System type"
+	default MACH_MIPS_MALTA
+
+config MACH_MIPS_MALTA
+	bool "MIPS Malta"
+	select CSRC_R4K_LIB
+	select DRIVER_SERIAL_NS16550
+	select SYS_HAS_CPU_MIPS32_R1
+	select SYS_HAS_CPU_MIPS32_R2
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_BIG_ENDIAN
+	select HAS_DEBUG_LL
+
+endchoice
+
+source arch/mips/mach-malta/Kconfig
+
+endmenu
+
 #
 # Endianess selection.  Sufficiently obscure so many users don't know what to
 # answer,so we try hard to limit the available choices.  Also the use of a
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 4cb5498..678c2b5 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -60,6 +60,8 @@ endif
 
 LDFLAGS_barebox += -nostdlib
 
+machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
+
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
new file mode 100644
index 0000000..6076a13
--- /dev/null
+++ b/arch/mips/mach-malta/Kconfig
@@ -0,0 +1,12 @@
+if MACH_MIPS_MALTA
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xa0800000
+
+choice
+	prompt "Board type"
+
+endchoice
+
+endif
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
new file mode 100644
index 0000000..f3cc668
--- /dev/null
+++ b/arch/mips/mach-malta/Makefile
@@ -0,0 +1 @@
+obj-y += reset.o
diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
new file mode 100644
index 0000000..32d13c1
--- /dev/null
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define   __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/hardware.h>
+
+#define rbr		0
+#define lsr		5
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+
+static __inline__ void putc(char ch)
+{
+	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
+	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
+}
+
+#endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
new file mode 100644
index 0000000..f827cc3
--- /dev/null
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __INCLUDE_ARCH_HARDWARE_H__
+#define   __INCLUDE_ARCH_HARDWARE_H__
+
+#define DEBUG_LL_UART_ADDR	0xb00003f8
+
+/*
+ * Reset register.
+ */
+#define SOFTRES_REG	0xbf000500
+#define GORESET		0x42
+
+#endif  /* __INCLUDE_ARCH_HARDWARE_H__ */
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
new file mode 100644
index 0000000..2818e7c
--- /dev/null
+++ b/arch/mips/mach-malta/reset.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * @brief Resetting an malta board
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <mach/hardware.h>
+
+void __noreturn reset_cpu(ulong addr)
+{
+	__raw_writel(GORESET, (char *)SOFTRES_REG);
+	while (1);
+	/*NOTREACHED*/
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
