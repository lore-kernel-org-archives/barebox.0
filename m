Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRa1-0004QK-SI
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:43:05 +0000
Received: by mail-lf0-x243.google.com with SMTP id m12-v6so2890938lfc.10
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:45 +0300
Message-Id: <20180628073953.15384-5-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 04/12] RISC-V: add Erizo SoC support
To: barebox@lists.infradead.org

Erizo is an opensource hardware SoC for FPGA.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                         | 11 ++++++
 arch/riscv/Makefile                        |  3 ++
 arch/riscv/boards/erizo-generic/.gitignore |  1 +
 arch/riscv/boards/erizo-generic/Makefile   |  1 +
 arch/riscv/boards/erizo-generic/board.c    | 28 ++++++++++++++
 arch/riscv/dts/erizo.dtsi                  | 44 ++++++++++++++++++++++
 arch/riscv/dts/erizo_generic.dts           | 12 ++++++
 arch/riscv/mach-erizo/Kconfig              | 11 ++++++
 arch/riscv/mach-erizo/Makefile             |  3 ++
 9 files changed, 114 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8bbe52f232..bcca385e14 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -15,6 +15,15 @@ config ARCH_TEXT_BASE
 
 menu "Machine selection"
 
+choice
+	prompt "System type"
+	default MACH_ERIZO
+
+config MACH_ERIZO
+	bool "erizo family"
+
+endchoice
+
 choice
 	prompt "Base ISA"
 	default ARCH_RV32I
@@ -51,6 +60,8 @@ config BUILTIN_DTB_NAME
 	string "DTB to build into the barebox image"
 	depends on BUILTIN_DTB
 
+source arch/riscv/mach-erizo/Kconfig
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index e9c407354c..9a3921065c 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -11,6 +11,9 @@ cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
 LDFLAGS += $(ldflags-y)
 LDFLAGS_barebox += -nostdlib
 
+machine-$(CONFIG_MACH_ERIZO)	:= erizo
+board-$(CONFIG_BOARD_ERIZO_GENERIC)	:= erizo-generic
+
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
diff --git a/arch/riscv/boards/erizo-generic/.gitignore b/arch/riscv/boards/erizo-generic/.gitignore
new file mode 100644
index 0000000000..d1165788c9
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/boards/erizo-generic/Makefile b/arch/riscv/boards/erizo-generic/Makefile
new file mode 100644
index 0000000000..dcfc2937d3
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/riscv/boards/erizo-generic/board.c b/arch/riscv/boards/erizo-generic/board.c
new file mode 100644
index 0000000000..46c9ca34f0
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/board.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+
+static int hostname_init(void)
+{
+	barebox_set_hostname("erizo-generic");
+
+	return 0;
+}
+postcore_initcall(hostname_init);
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
new file mode 100644
index 0000000000..b7733c3813
--- /dev/null
+++ b/arch/riscv/dts/erizo.dtsi
@@ -0,0 +1,44 @@
+/dts-v1/;
+
+/ {
+	compatible = "miet-riscv-workgroup,erizo";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	clocks {
+		ref_clk: ref_clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <24000000>;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "cliffordwolf,picorv32";
+			clocks = <&ref_clk>;
+			reg = <0>;
+		};
+	};
+
+	uart0: uart@90000000 {
+		compatible = "ns16550a";
+		reg = <0x90000000 0x20>;
+		reg-shift = <2>;
+		clocks = <&ref_clk>;
+	};
+
+	gpio0: gpio@91000000 {
+		compatible = "wd,mbl-gpio";
+		reg-names = "dat", "dirout";
+		reg = <0x91000000 0x4>,
+			<0x91000004 0x4>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
diff --git a/arch/riscv/dts/erizo_generic.dts b/arch/riscv/dts/erizo_generic.dts
new file mode 100644
index 0000000000..fae265fd96
--- /dev/null
+++ b/arch/riscv/dts/erizo_generic.dts
@@ -0,0 +1,12 @@
+#include "erizo.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "generic Erizo SoC board";
+	compatible = "miet-riscv-workgroup,erizo-generic-board";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x80000000 0x00800000>;
+	};
+};
diff --git a/arch/riscv/mach-erizo/Kconfig b/arch/riscv/mach-erizo/Kconfig
new file mode 100644
index 0000000000..2400b4437b
--- /dev/null
+++ b/arch/riscv/mach-erizo/Kconfig
@@ -0,0 +1,11 @@
+if MACH_ERIZO
+
+choice
+	prompt "Board type"
+
+config BOARD_ERIZO_GENERIC
+	bool "erizo generic board"
+
+endchoice
+
+endif
diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Makefile
new file mode 100644
index 0000000000..d9c51e74c3
--- /dev/null
+++ b/arch/riscv/mach-erizo/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
