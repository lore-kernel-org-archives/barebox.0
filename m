Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUJ6O-0007Ov-76
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 21:19:08 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 22:18:36 +0100
Message-Id: <20171227211839.2359-2-sam@ravnborg.org>
In-Reply-To: <20171227211743.GA1084@ravnborg.org>
References: <20171227211743.GA1084@ravnborg.org>
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
Subject: [PATCH 2/5] at91sam9263ek: add DT file from Linux kernel v4.14-rc4
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include the at91sam9263ek.dts file from
linux kernel v4.14-rc4 and wire it up in the build.

Prepare at91sam9263ek lowlevel_init.c to use DT.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  22 ++-
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/at91sam9263ek.dts                | 246 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                    |   7 +
 4 files changed, 273 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/dts/at91sam9263ek.dts

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 3138bc7ca..86d7a79e9 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -99,7 +99,7 @@ static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init at91sam9263ek_init(void)
+static void __bare_init at91sam9263ek_init(void *fdt)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -112,14 +112,30 @@ static void __bare_init at91sam9263ek_init(void)
 	at91sam926x_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-	                  NULL);
+			  fdt);
 }
 
+#ifdef CONFIG_MACH_AT91SAM9263EK_DT
+extern char __dtb_at91sam9263ek_start[];
+
+ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	fdt = __dtb_at91sam9263ek_start - get_runtime_offset();
+
+	at91sam9263ek_init(fdt);
+}
+#else
 ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
 
-	at91sam9263ek_init();
+	at91sam9263ek_init(NULL);
 }
+#endif
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 4f13d4e37..0526a6f40 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -104,7 +104,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-cfu1-rev-a.dtb.o	\
 	vf610-zii-spu3-rev-a.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
-
+pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
new file mode 100644
index 000000000..224748ecc
--- /dev/null
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -0,0 +1,246 @@
+/*
+ * at91sam9263ek.dts - Device Tree file for Atmel at91sam9263 reference board
+ *
+ *  Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Licensed under GPLv2 only
+ */
+/dts-v1/;
+#include "arm/at91sam9263.dtsi"
+
+/ {
+	model = "Atmel at91sam9263ek";
+	compatible = "atmel,at91sam9263ek", "atmel,at91sam9263", "atmel,at91sam9";
+
+	chosen {
+		bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory {
+		reg = <0x20000000 0x4000000>;
+	};
+
+	clocks {
+		slow_xtal {
+			clock-frequency = <32768>;
+		};
+
+		main_xtal {
+			clock-frequency = <16367660>;
+		};
+	};
+
+	ahb {
+		apb {
+			dbgu: serial@ffffee00 {
+				status = "okay";
+			};
+
+			usart0: serial@fff8c000 {
+				pinctrl-0 = <
+					&pinctrl_usart0
+					&pinctrl_usart0_rts
+					&pinctrl_usart0_cts>;
+				status = "okay";
+			};
+
+			macb0: ethernet@fffbc000 {
+				phy-mode = "rmii";
+				status = "okay";
+			};
+
+			usb1: gadget@fff78000 {
+				atmel,vbus-gpio = <&pioA 25 GPIO_ACTIVE_HIGH>;
+				status = "okay";
+			};
+
+			mmc0: mmc@fff80000 {
+				pinctrl-0 = <
+					&pinctrl_board_mmc0
+					&pinctrl_mmc0_clk
+					&pinctrl_mmc0_slot0_cmd_dat0
+					&pinctrl_mmc0_slot0_dat1_3>;
+				status = "okay";
+				slot@0 {
+					reg = <0>;
+					bus-width = <4>;
+					cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
+					wp-gpios = <&pioE 19 GPIO_ACTIVE_HIGH>;
+				};
+			};
+
+			pinctrl@fffff200 {
+				mmc0 {
+					pinctrl_board_mmc0: mmc0-board {
+						atmel,pins =
+							<AT91_PIOE 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH 	/* PE18 gpio CD pin pull up and deglitch */
+							 AT91_PIOE 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;	/* PE19 gpio WP pin pull up */
+					};
+				};
+			};
+
+			spi0: spi@fffa4000 {
+				status = "okay";
+				cs-gpios = <&pioA 5 0>, <0>, <0>, <0>;
+				mtd_dataflash@0 {
+					compatible = "atmel,at45", "atmel,dataflash";
+					spi-max-frequency = <50000000>;
+					reg = <0>;
+				};
+			};
+
+			watchdog@fffffd40 {
+				status = "okay";
+			};
+		};
+
+		fb0: fb@0x00700000 {
+			display = <&display0>;
+			status = "okay";
+
+			display0: display {
+				bits-per-pixel = <16>;
+				atmel,lcdcon-backlight;
+				atmel,dmacon = <0x1>;
+				atmel,lcdcon2 = <0x80008002>;
+				atmel,guard-time = <1>;
+
+				display-timings {
+					native-mode = <&timing0>;
+					timing0: timing0 {
+						clock-frequency = <4965000>;
+						hactive = <240>;
+						vactive = <320>;
+						hback-porch = <1>;
+						hfront-porch = <33>;
+						vback-porch = <1>;
+						vfront-porch = <0>;
+						hsync-len = <5>;
+						vsync-len = <1>;
+						hsync-active = <1>;
+						vsync-active = <1>;
+					};
+				};
+			};
+		};
+
+		ebi0: ebi@10000000 {
+			status = "okay";
+
+			nand_controller: nand-controller {
+				status = "okay";
+				pinctrl-0 = <&pinctrl_nand_cs &pinctrl_nand_rb>;
+				pinctrl-names = "default";
+
+				nand@3 {
+					reg = <0x3 0x0 0x800000>;
+					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
+					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
+					nand-bus-width = <8>;
+					nand-ecc-mode = "soft";
+					nand-on-flash-bbt;
+					label = "atmel_nand";
+
+					partitions {
+						compatible = "fixed-partitions";
+						#address-cells = <1>;
+						#size-cells = <1>;
+
+						at91bootstrap@0 {
+							label = "at91bootstrap";
+							reg = <0x0 0x20000>;
+						};
+
+						barebox@20000 {
+							label = "barebox";
+							reg = <0x20000 0x40000>;
+						};
+
+						bareboxenv@60000 {
+							label = "bareboxenv";
+							reg = <0x60000 0x20000>;
+						};
+
+						bareboxenv2@80000 {
+							label = "bareboxenv2";
+							reg = <0x80000 0x20000>;
+						};
+
+						oftree@80000 {
+							label = "oftree";
+							reg = <0xa0000 0x20000>;
+						};
+
+						kernel@a0000 {
+							label = "kernel";
+							reg = <0xc0000 0x400000>;
+						};
+
+						rootfs@4a0000 {
+							label = "rootfs";
+							reg = <0x4c0000 0x7800000>;
+						};
+
+						data@7ca0000 {
+							label = "data";
+							reg = <0x7cc0000 0x8340000>;
+						};
+					};
+				};
+			};
+		};
+
+		usb0: ohci@00a00000 {
+			num-ports = <2>;
+			status = "okay";
+			atmel,vbus-gpio = <&pioA 24 GPIO_ACTIVE_HIGH
+					   &pioA 21 GPIO_ACTIVE_HIGH
+					  >;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		d3 {
+			label = "d3";
+			gpios = <&pioB 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		d2 {
+			label = "d2";
+			gpios = <&pioC 29 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "nand-disk";
+		};
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		left_click {
+			label = "left_click";
+			gpios = <&pioC 5 GPIO_ACTIVE_LOW>;
+			linux,code = <272>;
+			wakeup-source;
+		};
+
+		right_click {
+			label = "right_click";
+			gpios = <&pioC 4 GPIO_ACTIVE_LOW>;
+			linux,code = <273>;
+			wakeup-source;
+		};
+	};
+
+	i2c-gpio-0 {
+		status = "okay";
+
+		24c512@50 {
+			compatible = "24c512";
+			reg = <0x50>;
+			pagesize = <128>;
+		};
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f5160ade1..5e9c575cc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -20,6 +20,13 @@ config COMMON_CLK_AT91
 	select COMMON_CLK
 	select MFD_SYSCON
 
+config MACH_AT91SAM9263EK_DT
+	def_bool y
+	depends on MACH_AT91SAM9263EK && OFDEVICE
+	help
+	  Enabled for at91sam9263ek - evaluation kit.
+	  But only if we need the device tree (bootstrap do not use DT)
+
 config HAVE_AT91_SMD
 	bool
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
