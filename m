Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ9fn-0002g9-VU
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:20:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id v15-v6so13230561ljh.13
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2018 23:20:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Dec 2018 10:19:35 +0300
Message-Id: <20181218071943.2560-3-antonynpavlov@gmail.com>
In-Reply-To: <20181218071943.2560-1-antonynpavlov@gmail.com>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 02/10] RISC-V: add Erizo SoC support
To: barebox@lists.infradead.org

Erizo is an opensource hardware SoC for FPGA.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig               | 11 ++++++++
 arch/riscv/Makefile              |  2 ++
 arch/riscv/dts/Makefile          |  2 ++
 arch/riscv/dts/erizo-generic.dts | 14 ++++++++++
 arch/riscv/dts/erizo.dtsi        | 46 ++++++++++++++++++++++++++++++++
 arch/riscv/mach-erizo/Kconfig    | 11 ++++++++
 arch/riscv/mach-erizo/Makefile   |  3 +++
 7 files changed, 89 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c9719dfeca..ee532ac11a 100644
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
@@ -51,4 +60,6 @@ config BUILTIN_DTB_NAME
 	string "DTB to build into the barebox image"
 	depends on BUILTIN_DTB
 
+source arch/riscv/mach-erizo/Kconfig
+
 endmenu
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 28eb414452..d5a392de05 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -11,6 +11,8 @@ cflags-y += -Wall -Wstrict-prototypes \
 LDFLAGS += $(ldflags-y)
 LDFLAGS_barebox += -nostdlib
 
+machine-$(CONFIG_MACH_ERIZO)	:= erizo
+
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 0a88af1603..903fe8ff34 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -3,6 +3,8 @@ ifneq ($(BUILTIN_DTB),)
 obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
+obj-dtb-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
diff --git a/arch/riscv/dts/erizo-generic.dts b/arch/riscv/dts/erizo-generic.dts
new file mode 100644
index 0000000000..d1f8d57168
--- /dev/null
+++ b/arch/riscv/dts/erizo-generic.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
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
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
new file mode 100644
index 0000000000..07534798ac
--- /dev/null
+++ b/arch/riscv/dts/erizo.dtsi
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
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
2.20.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
