Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzc-0004Sv-D9
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:22 +0000
Received: by mail-wr0-x244.google.com with SMTP id r74so5329250wrb.13
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:12:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:41 +0300
Message-Id: <20170928231249.4158-3-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 02/10] RISC-V: add Erizo SoC support
To: barebox@lists.infradead.org

Erizo is an opensource hardware SoC for FPGA.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                         | 11 +++++++
 arch/riscv/Makefile                        |  3 ++
 arch/riscv/boards/erizo-generic/.gitignore |  1 +
 arch/riscv/boards/erizo-generic/Makefile   |  1 +
 arch/riscv/boards/erizo-generic/board.c    | 28 ++++++++++++++++++
 arch/riscv/dts/erizo.dtsi                  | 46 ++++++++++++++++++++++++++++++
 arch/riscv/dts/erizo_generic.dts           | 31 ++++++++++++++++++++
 arch/riscv/mach-erizo/Kconfig              | 11 +++++++
 arch/riscv/mach-erizo/Makefile             |  3 ++
 9 files changed, 135 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index b2f0817ef..f4bfbea7c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -20,6 +20,15 @@ config GENERIC_LINKER_SCRIPT
 
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
 	prompt "CPU selection"
 	default CPU_RV_GENERIC
@@ -62,6 +71,8 @@ config BUILTIN_DTB_NAME
 	string "DTB to build into the barebox image"
 	depends on BUILTIN_DTB
 
+source arch/riscv/mach-erizo/Kconfig
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 4e3318cf1..8947a1860 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -7,6 +7,9 @@ cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
 LDFLAGS += $(ldflags-y)
 LDFLAGS_barebox += -nostdlib
 
+machine-$(CONFIG_MACH_ERIZO)	:= erizo
+board-$(CONFIG_BOARD_ERIZO_GENERIC)	:= erizo-generic
+
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
diff --git a/arch/riscv/boards/erizo-generic/.gitignore b/arch/riscv/boards/erizo-generic/.gitignore
new file mode 100644
index 000000000..d1165788c
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/boards/erizo-generic/Makefile b/arch/riscv/boards/erizo-generic/Makefile
new file mode 100644
index 000000000..dcfc2937d
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/riscv/boards/erizo-generic/board.c b/arch/riscv/boards/erizo-generic/board.c
new file mode 100644
index 000000000..ecda85001
--- /dev/null
+++ b/arch/riscv/boards/erizo-generic/board.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
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
+	barebox_set_hostname("barebox");
+
+	return 0;
+}
+postcore_initcall(hostname_init);
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
new file mode 100644
index 000000000..1660ad104
--- /dev/null
+++ b/arch/riscv/dts/erizo.dtsi
@@ -0,0 +1,46 @@
+/dts-v1/;
+
+#include "skeleton.dtsi"
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
index 000000000..b2b1bdda5
--- /dev/null
+++ b/arch/riscv/dts/erizo_generic.dts
@@ -0,0 +1,31 @@
+#include "erizo.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "generic Erizo SoC board";
+	compatible = "miet-riscv-workgroup,erizo-generic-board";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x00800000>;
+	};
+
+	spi0 {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-sck  = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpio0 1 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpio0 2 GPIO_ACTIVE_HIGH>;
+		cs-gpios  = <&gpio0 3 GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+
+		m25p128@0 {
+			compatible = "m25p128", "jedec,spi-nor";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0>;
+			spi-max-frequency = <1000000>;
+		};
+	};
+};
diff --git a/arch/riscv/mach-erizo/Kconfig b/arch/riscv/mach-erizo/Kconfig
new file mode 100644
index 000000000..2400b4437
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
index 000000000..d9c51e74c
--- /dev/null
+++ b/arch/riscv/mach-erizo/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
