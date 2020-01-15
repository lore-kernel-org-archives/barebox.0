Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgFB-0006rZ-53
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 10:49:54 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 15 Jan 2020 11:26:48 +0100
Message-Id: <20200115102650.11739-4-cleger@kalray.eu>
In-Reply-To: <20200115102650.11739-1-cleger@kalray.eu>
References: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: [PATCH 3/5] k1c: Add support for device tree
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Add dts folder with minimal device tree for kalray K200 board.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/k1c/Kconfig      |  20 ++++++++++
 arch/k1c/Makefile     |   1 +
 arch/k1c/dts/Makefile |  13 +++++++
 arch/k1c/dts/k200.dts | 105 ++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 139 insertions(+)
 create mode 100644 arch/k1c/dts/Makefile
 create mode 100644 arch/k1c/dts/k200.dts

diff --git a/arch/k1c/Kconfig b/arch/k1c/Kconfig
index f0f9d1728..cf5c7beff 100644
--- a/arch/k1c/Kconfig
+++ b/arch/k1c/Kconfig
@@ -43,3 +43,23 @@ config MALLOC_SIZE
 	default 0x800000
 	prompt "malloc area size"
 endmenu
+
+menu "Board configuration"
+
+config BUILTIN_DTB
+	bool "link a DTB into the barebox image"
+	depends on OFTREE
+
+config BUILTIN_DTB_NAME
+	string "DTB to build into the barebox image"
+	depends on BUILTIN_DTB
+
+choice
+	prompt "Select your board"
+
+config BOARD_K200
+	bool "K200 Network card"
+
+endchoice
+
+endmenu
diff --git a/arch/k1c/Makefile b/arch/k1c/Makefile
index 10852406f..6eb28d1b2 100644
--- a/arch/k1c/Makefile
+++ b/arch/k1c/Makefile
@@ -26,6 +26,7 @@ PHONY += maketools
 
 common-y += arch/k1c/lib/
 common-y += arch/k1c/cpu/
+common-$(CONFIG_OFTREE) += arch/k1c/dts/
 
 lds-y += arch/k1c/cpu/barebox.lds
 
diff --git a/arch/k1c/dts/Makefile b/arch/k1c/dts/Makefile
new file mode 100644
index 000000000..9d5e94ae1
--- /dev/null
+++ b/arch/k1c/dts/Makefile
@@ -0,0 +1,13 @@
+# just to build a built-in.o. Otherwise compilation fails when no devicetree is
+# created.
+obj- += dummy.o
+
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
+ifneq ($(BUILTIN_DTB),)
+obj-dtb-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+endif
+
+obj-dtb-$(CONFIG_BOARD_K200) += k200.dtb.o
+
+always := $(dtb-y)
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/k1c/dts/k200.dts b/arch/k1c/dts/k200.dts
new file mode 100644
index 000000000..fc9a21ad4
--- /dev/null
+++ b/arch/k1c/dts/k200.dts
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Kalray, Inc.
+ */
+
+/dts-v1/;
+
+/ {
+	model = "KONIC 200 (K200)";
+	compatible = "kalray,board-k200";
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	/* Standard nodes (choosen, cpus, memory, etc) */
+	chosen {
+		bootargs = "earlycon norandmaps console=ttyS0";
+		stdout-path = &serial0;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "kalray,k1c-pe";
+			reg = <0>;
+			clocks = <&core_clk>;
+			clock-names = "cpu";
+		};
+
+	};
+
+	clocks {
+		ref_clk: ref_clk@0 {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			/* 100 MHz clock */
+			clock-frequency = <100000000>;
+		};
+
+		core_clk: core_clk@0 {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			/* 1 GHz clock */
+			clock-frequency = <1000000000>;
+		};
+	};
+
+	ddr: memory@100000000 {
+		device_type = "memory";
+		/* Declare 4G of DDR starting at 4G */
+		reg = <0x1 0x00000000 0x1 0x00000000>;
+	};
+
+	smem: memory@0 {
+		device_type = "memory";
+		/* 4M of SMEM starting at @0 */
+		reg = <0x0 0x0 0x0 0x400000>;
+	};
+
+	core_timer {
+		compatible = "kalray,k1c-core-timer";
+		clocks = <&core_clk>;
+	};
+
+	core_watchdog {
+		compatible = "kalray,k1c-core-watchdog";
+		clocks = <&core_clk>;
+	};
+
+	axi {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		ranges;
+
+		pmx_gpio0: pinmux@20230008 {
+			compatible = "pinctrl-single";
+			reg = <0x0 0x20230008 0x0 0x4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#pinctrl-cells = <2>;
+			pinctrl-single,bit-per-mux;
+			pinctrl-single,register-width = <32>;
+			pinctrl-single,function-mask = <0x1>;
+
+			uart0_pins: pinmux_uart0_pins {
+				pinctrl-single,bits = <0x00 0x00000003 0x00000003>;
+			};
+		};
+
+		serial0: uart0@20210000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20210000 0x0 0x100>;
+			clocks = <&ref_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart0_pins>;
+		};
+	};
+};
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
