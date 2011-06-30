Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDe7-0005Xw-Td
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:34:53 +0000
Received: by fxg17 with SMTP id 17so1866611fxg.16
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 02:33:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 30 Jun 2011 13:32:43 +0400
Message-Id: <1309426364-22124-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3 v3] MIPS: add Malta machine support to barebox
To: barebox@lists.infradead.org

The machine uses only big-endian mode.
Only supported peripheral is serial port.
The machine supports only MIPS32 CPUs.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                                |   21 +++++++++++++
 arch/mips/Makefile                               |    2 +
 arch/mips/mach-mti-malta/Kconfig                 |   15 +++++++++
 arch/mips/mach-mti-malta/Makefile                |    1 +
 arch/mips/mach-mti-malta/include/mach/hardware.h |   32 +++++++++++++++++++
 arch/mips/mach-mti-malta/reset.c                 |   36 ++++++++++++++++++++++
 6 files changed, 107 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/mach-mti-malta/Kconfig
 create mode 100644 arch/mips/mach-mti-malta/Makefile
 create mode 100644 arch/mips/mach-mti-malta/include/mach/hardware.h
 create mode 100644 arch/mips/mach-mti-malta/reset.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index f35aa8c..c2834eb 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -21,6 +21,27 @@ config GENERIC_LINKER_SCRIPT
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
+
+endchoice
+
+source arch/mips/mach-mti-malta/Kconfig
+
+endmenu
+
 #
 # Endianess selection.  Sufficiently obscure so many users don't know what to
 # answer,so we try hard to limit the available choices.  Also the use of a
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 34ac8ad..7bcc518 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -34,6 +34,8 @@ endif
 
 LDFLAGS_barebox += -nostdlib
 
+machine-$(CONFIG_MACH_MIPS_MALTA)	:= mti-malta
+
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
diff --git a/arch/mips/mach-mti-malta/Kconfig b/arch/mips/mach-mti-malta/Kconfig
new file mode 100644
index 0000000..c2ee6f3
--- /dev/null
+++ b/arch/mips/mach-mti-malta/Kconfig
@@ -0,0 +1,15 @@
+if MACH_MIPS_MALTA
+
+config ARCH_TEXT_BASE
+        hex
+        default 0xa0800000
+
+config DEBUG_LL
+	bool "DEBUG_LL messages"
+
+choice
+	prompt "Board type"
+
+endchoice
+
+endif
diff --git a/arch/mips/mach-mti-malta/Makefile b/arch/mips/mach-mti-malta/Makefile
new file mode 100644
index 0000000..f3cc668
--- /dev/null
+++ b/arch/mips/mach-mti-malta/Makefile
@@ -0,0 +1 @@
+obj-y += reset.o
diff --git a/arch/mips/mach-mti-malta/include/mach/hardware.h b/arch/mips/mach-mti-malta/include/mach/hardware.h
new file mode 100644
index 0000000..42e8116
--- /dev/null
+++ b/arch/mips/mach-mti-malta/include/mach/hardware.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (c) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This file is part of barebox.
+ *
+ * barebox is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation, either version 3 of the License, or
+ * (at your option) any later version.
+ *
+ * barebox is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with barebox.  If not, see <http://www.gnu.org/licenses/>.
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
diff --git a/arch/mips/mach-mti-malta/reset.c b/arch/mips/mach-mti-malta/reset.c
new file mode 100644
index 0000000..3fcf7aa
--- /dev/null
+++ b/arch/mips/mach-mti-malta/reset.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief Resetting an CPU
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
