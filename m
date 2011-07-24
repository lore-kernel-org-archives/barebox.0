Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql4G0-0004yr-FM
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 19:22:36 +0000
Received: by mail-fx0-f43.google.com with SMTP id 17so6336780fxg.16
	for <barebox@lists.infradead.org>; Sun, 24 Jul 2011 12:22:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 24 Jul 2011 23:22:14 +0400
Message-Id: <1311535336-4534-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 07/10] MIPS: add initial BCM47xx-based boards support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                              |   10 ++++++
 arch/mips/Makefile                             |    2 +
 arch/mips/mach-bcm47xx/Kconfig                 |   12 +++++++
 arch/mips/mach-bcm47xx/Makefile                |    1 +
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h |   40 ++++++++++++++++++++++++
 arch/mips/mach-bcm47xx/include/mach/hardware.h |   32 +++++++++++++++++++
 arch/mips/mach-bcm47xx/reset.c                 |   36 +++++++++++++++++++++
 7 files changed, 133 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/mach-bcm47xx/Kconfig
 create mode 100644 arch/mips/mach-bcm47xx/Makefile
 create mode 100644 arch/mips/mach-bcm47xx/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-bcm47xx/include/mach/hardware.h
 create mode 100644 arch/mips/mach-bcm47xx/reset.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index a84d469..50d734a 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -37,9 +37,19 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
 
+config MACH_MIPS_BCM47XX
+	bool "Broadcom BCM47xx-based boards"
+	select CSRC_R4K_LIB
+	select DRIVER_SERIAL_NS16550
+	select SYS_HAS_CPU_MIPS32_R1
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_LITTLE_ENDIAN
+	select HAS_DEBUG_LL
+
 endchoice
 
 source arch/mips/mach-malta/Kconfig
+source arch/mips/mach-bcm47xx/Kconfig
 
 endmenu
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index ca6aa56..b3554d2 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -37,6 +37,8 @@ LDFLAGS_barebox += -nostdlib
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
+machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
+
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
diff --git a/arch/mips/mach-bcm47xx/Kconfig b/arch/mips/mach-bcm47xx/Kconfig
new file mode 100644
index 0000000..5143a15
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/Kconfig
@@ -0,0 +1,12 @@
+if MACH_MIPS_BCM47XX
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
diff --git a/arch/mips/mach-bcm47xx/Makefile b/arch/mips/mach-bcm47xx/Makefile
new file mode 100644
index 0000000..f3cc668
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/Makefile
@@ -0,0 +1 @@
+obj-y += reset.o
diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
new file mode 100644
index 0000000..32d13c1
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
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
diff --git a/arch/mips/mach-bcm47xx/include/mach/hardware.h b/arch/mips/mach-bcm47xx/include/mach/hardware.h
new file mode 100644
index 0000000..703e7f7
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/include/mach/hardware.h
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
+#define DEBUG_LL_UART_ADDR	0xb8000300
+
+/*
+ * Reset register.
+ */
+#define SOFTRES_REG	0xbf000500
+#define GORESET		0x42
+
+#endif  /* __INCLUDE_ARCH_HARDWARE_H__ */
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
new file mode 100644
index 0000000..2818e7c
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/reset.c
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
