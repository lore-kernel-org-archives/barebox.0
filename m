Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKxd-00021g-7b
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 07:31:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id q62so13314408ljq.7
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2019 00:31:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 10:30:58 +0300
Message-Id: <20190602073101.21352-2-antonynpavlov@gmail.com>
In-Reply-To: <20190602073101.21352-1-antonynpavlov@gmail.com>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 1/4] riscv: add initial LiteX SoC support
To: barebox@lists.infradead.org

LiteX is a Migen-based System on Chip, supporting softcore VexRiscv CPU,
 a 32-bits Linux Capable RISC-V CPU.

See https://github.com/enjoy-digital/litex for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |   6 +
 arch/riscv/Makefile                           |   1 +
 arch/riscv/dts/litex-generic.dts              |  17 +++
 arch/riscv/dts/litex.dtsi                     |  36 +++++
 arch/riscv/mach-litex/Kconfig                 |  11 ++
 arch/riscv/mach-litex/Makefile                |   3 +
 arch/riscv/mach-litex/include/mach/debug_ll.h | 124 ++++++++++++++++++
 7 files changed, 198 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 16c3eecce6..ca764d54d0 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -24,6 +24,11 @@ config MACH_ERIZO
 	select HAS_DEBUG_LL
 	select HAS_NMON
 
+config MACH_LITEX
+	bool "litex family"
+	select HAS_DEBUG_LL
+	select HAS_NMON
+
 endchoice
 
 choice
@@ -63,6 +68,7 @@ config BUILTIN_DTB_NAME
 	depends on BUILTIN_DTB
 
 source "arch/riscv/mach-erizo/Kconfig"
+source "arch/riscv/mach-litex/Kconfig"
 
 endmenu
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 643c0bc8eb..955a10cecb 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -12,6 +12,7 @@ LDFLAGS += $(ldflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
+machine-$(CONFIG_MACH_LITEX)	:= litex
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
diff --git a/arch/riscv/dts/litex-generic.dts b/arch/riscv/dts/litex-generic.dts
new file mode 100644
index 0000000000..7dc0fa6c79
--- /dev/null
+++ b/arch/riscv/dts/litex-generic.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "litex.dtsi"
+
+/ {
+	model = "LiteX VexRiscV";
+	compatible = "litex,vexriscv";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x00800000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/riscv/dts/litex.dtsi b/arch/riscv/dts/litex.dtsi
new file mode 100644
index 0000000000..dfd3d83404
--- /dev/null
+++ b/arch/riscv/dts/litex.dtsi
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+
+/ {
+	compatible = "litex,vexriscv", "litex-dev";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	clocks {
+		ref_clk: ref_clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <50000000>;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "spinalhdl,vexriscv", "riscv";
+			clocks = <&ref_clk>;
+			reg = <0>;
+		};
+	};
+
+	uart0: serial@e0001800 {
+		compatible = "litex,uart";
+		reg = <0xe0001800 0x18>;
+		status = "disabled";
+	};
+};
diff --git a/arch/riscv/mach-litex/Kconfig b/arch/riscv/mach-litex/Kconfig
new file mode 100644
index 0000000000..ab6cd2fa01
--- /dev/null
+++ b/arch/riscv/mach-litex/Kconfig
@@ -0,0 +1,11 @@
+if MACH_LITEX
+
+choice
+	prompt "Board type"
+
+config BOARD_LITEX_GENERIC
+	bool "litex generic board"
+
+endchoice
+
+endif
diff --git a/arch/riscv/mach-litex/Makefile b/arch/riscv/mach-litex/Makefile
new file mode 100644
index 0000000000..d9c51e74c3
--- /dev/null
+++ b/arch/riscv/mach-litex/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
diff --git a/arch/riscv/mach-litex/include/mach/debug_ll.h b/arch/riscv/mach-litex/include/mach/debug_ll.h
new file mode 100644
index 0000000000..aaf9f0b855
--- /dev/null
+++ b/arch/riscv/mach-litex/include/mach/debug_ll.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_LITEX_DEBUG_LL__
+#define __MACH_LITEX_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+
+#include <linux/kconfig.h>
+
+#define DEBUG_LL_UART_ADDR	0xe0001800
+#define UART_RXTX	0x00
+#define UART_TXFULL	0x04
+#define UART_RXEMPTY	0x08
+#define UART_EV_PENDING	0x10
+#define  UART_EV_RX	(1 << 1)
+#define UART_EV_ENABLE	0x14
+
+
+#ifndef __ASSEMBLY__
+
+/*
+ * C macros
+ */
+
+#include <asm/io.h>
+
+static inline void PUTC_LL(char ch)
+{
+#ifdef CONFIG_DEBUG_LL
+	/* wait for space */
+	while (__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_TXFULL))
+		;
+
+	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_RXTX);
+#endif /* CONFIG_DEBUG_LL */
+}
+#else /* __ASSEMBLY__ */
+/*
+ * Macros for use in assembly language code
+ */
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_outc_a0
+#ifdef CONFIG_DEBUG_LL
+
+	li	t0, DEBUG_LL_UART_ADDR
+
+201:
+	lbu	t1, UART_TXFULL(t0)	/* uart tx full ? */
+	andi	t1, t1, 0xff
+	bnez	t1, 201b		/* try again */
+
+	sb	a0, UART_RXTX(t0)	/* write the character */
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_outc_a0
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * check character in input buffer
+ * return value:
+ *  v0 = 0   no character in input buffer
+ *  v0 != 0  character in input buffer
+ */
+.macro	debug_ll_tstc
+#ifdef CONFIG_DEBUG_LL
+	li	t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lbu	s0, UART_RXEMPTY(t0)
+	bnez    s0, 243f
+	li	s0, 1
+	j	244f
+243:	li	s0, 0
+244:	nop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_getc
+#ifdef CONFIG_DEBUG_LL
+
+204:
+	debug_ll_tstc
+
+	/* try again */
+	beqz	s0, 204b
+
+	/* read a character */
+	lb	s0, UART_RXTX(t0)
+	li      t1, UART_EV_RX
+	sb	t1, UART_EV_PENDING(t0)
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+#endif /* __ASSEMBLY__ */
+
+#endif /* __MACH_LITEX_DEBUG_LL__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
