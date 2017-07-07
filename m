Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTbZx-0006UO-2P
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 22:18:29 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id AB2E480391
 for <barebox@lists.infradead.org>; Sat,  8 Jul 2017 00:18:01 +0200 (CEST)
Date: Sat, 8 Jul 2017 00:17:59 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170707221759.GA29219@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Next step to enable DT support for at91sam9263ek?
To: Barebox List <barebox@lists.infradead.org>

Hi all.

I have now spent some time trying to dive into how to enable DT
support for at91sam9263ek - but so far with only limited success.
I have copied the device tree from the kernel and included
the tree in the build. This step was simple.

I also updated the ENTRY_FUNCTION to take a pointer to the ftd.
Also simple.

There was a few build issues that I then had to fix.
But when running the resulting barebox nothing was printed to
the console.
I ended up dropping following from the build:
arch/arm/boards/at91sam9263ek/init.c
arch/arm/mach-at91/at91sam9263.c
arch/arm/mach-at91/at91sam9263_devices.c

Thein I got following output when booting:

barebox 2017.07.0-00082-g265d9e416-dirty #27 Sat Jul 8 00:00:54 CEST 2017


Board: Atmel at91sam9263ek
fset: 10000000
Main crystal frequency not set, using approximate value
AT91: Detected soc type: at91sam9263
AT91: Detected soc subtype: Unknown
comparing usart with usart
Main crystal frequency not set, using approximate value
comparing usart with usart
Main crystal frequency not set, using approximate value
gpio-at91 fffff200.gpio: AT91 gpio driver registered
gpio-at91 fffff400.gpio: AT91 gpio driver registered
gpio-at91 fffff600.gpio: AT91 gpio driver registered
gpio-at91 fffff800.gpio: AT91 gpio driver registered
gpio-at91 fffffa00.gpio: AT91 gpio driver registered
pinctrl-at91 pinctrl.2: AT91 pinctrl registered
comparing macb_clk with hclk
comparing macb_clk with pclk
macb fffbc000.ethernet: no macb_clk
macb fffbc000.ethernet: probe failed: Invalid argument
of_get_named_gpio_flags: cannot parse cd-gpios property: -2
comparing mci_clk with mci_clk
Main crystal frequency not set, using approximate value
atmel_mci fff80000.mmc: version: 0x210
atmel_mci fff80000.mmc: registered as fff80000.mmc
malloc space: 0x23afad80 -> 0x23efad7f (size 4 MiB)
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...
\e[?25h
Hit any key to stop autoboot:    1

This does not look entirely correct...

Right now I am a bit stuck for what would be next step - any hints
would be highly appreciated.

	Sam

The current patch looks like this (with some hacks included):

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 3138bc7ca..569f9b025 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -99,7 +99,7 @@ static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init at91sam9263ek_init(void)
+static void __bare_init at91sam9263ek_init(void *fdt)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -112,14 +112,19 @@ static void __bare_init at91sam9263ek_init(void)
 	at91sam926x_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-	                  NULL);
+			  fdt);
 }
 
+extern char __dtb_at91sam9263ek_start[];
+
 ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	fdt = __dtb_at91sam9263ek_start - get_runtime_offset();
 
-	at91sam9263ek_init();
+	at91sam9263ek_init(fdt);
 }
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index c509290b5..a476fbd26 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -37,6 +37,7 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CLK=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
@@ -44,6 +45,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d8abe452b..5d307de10 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -97,7 +97,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-cfu1-rev-a.dtb.o	\
 	vf610-zii-spu3-rev-a.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
-
+pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
 
diff --git a/arch/arm/dts/at91sam9263.dtsi b/arch/arm/dts/at91sam9263.dtsi
new file mode 100644
index 000000000..ed4b564f8
--- /dev/null
+++ b/arch/arm/dts/at91sam9263.dtsi
@@ -0,0 +1,1081 @@
+/*
+ * at91sam9263.dtsi - Device Tree Include file for AT91SAM9263 family SoC
+ *
+ *  Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Licensed under GPLv2 only.
+ */
+
+#include "skeleton.dtsi"
+#include <dt-bindings/pinctrl/at91.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/clock/at91.h>
+
+/ {
+	model = "Atmel AT91SAM9263 family SoC";
+	compatible = "atmel,at91sam9263";
+	interrupt-parent = <&aic>;
+
+	aliases {
+		serial0 = &dbgu;
+		serial1 = &usart0;
+		serial2 = &usart1;
+		serial3 = &usart2;
+		gpio0 = &pioA;
+		gpio1 = &pioB;
+		gpio2 = &pioC;
+		gpio3 = &pioD;
+		gpio4 = &pioE;
+		tcb0 = &tcb0;
+		i2c0 = &i2c0;
+		ssc0 = &ssc0;
+		ssc1 = &ssc1;
+		pwm0 = &pwm0;
+	};
+
+	cpus {
+		#address-cells = <0>;
+		#size-cells = <0>;
+
+		cpu {
+			compatible = "arm,arm926ej-s";
+			device_type = "cpu";
+		};
+	};
+
+	memory {
+		reg = <0x20000000 0x08000000>;
+	};
+
+	clocks {
+		main_xtal: main_xtal {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <0>;
+		};
+
+		slow_xtal: slow_xtal {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <0>;
+		};
+	};
+
+	sram0: sram@00300000 {
+		compatible = "mmio-sram";
+		reg = <0x00300000 0x14000>;
+	};
+
+	sram1: sram@00500000 {
+		compatible = "mmio-sram";
+		reg = <0x00500000 0x4000>;
+	};
+
+	ahb {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		apb {
+			compatible = "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			aic: interrupt-controller@fffff000 {
+				#interrupt-cells = <3>;
+				compatible = "atmel,at91rm9200-aic";
+				interrupt-controller;
+				reg = <0xfffff000 0x200>;
+				atmel,external-irqs = <30 31>;
+			};
+
+			pmc: pmc@fffffc00 {
+				compatible = "atmel,at91rm9200-pmc", "syscon";
+				reg = <0xfffffc00 0x100>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main_osc: main_osc {
+					compatible = "atmel,at91rm9200-clk-main-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				main: mainck {
+					compatible = "atmel,at91rm9200-clk-main";
+					#clock-cells = <0>;
+					clocks = <&main_osc>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0 1>,
+								<190000000 240000000 2 1>;
+				};
+
+				pllb: pllbck {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKB>;
+					clocks = <&main>;
+					reg = <1>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0 1>,
+								<190000000 240000000 2 1>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91rm9200-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+					atmel,clk-output-range = <0 120000000>;
+					atmel,clk-divisors = <1 2 4 0>;
+				};
+
+				usb: usbck {
+					compatible = "atmel,at91rm9200-clk-usb";
+					#clock-cells = <0>;
+					atmel,clk-divisors = <1 2 4 0>;
+					clocks = <&pllb>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91rm9200-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+
+					prog2: prog2 {
+						#clock-cells = <0>;
+						reg = <2>;
+						interrupts = <AT91_PMC_PCKRDY(2)>;
+					};
+
+					prog3: prog3 {
+						#clock-cells = <0>;
+						reg = <3>;
+						interrupts = <AT91_PMC_PCKRDY(3)>;
+					};
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					uhpck: uhpck {
+						#clock-cells = <0>;
+						reg = <6>;
+						clocks = <&usb>;
+					};
+
+					udpck: udpck {
+						#clock-cells = <0>;
+						reg = <7>;
+						clocks = <&usb>;
+					};
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+
+					pck2: pck2 {
+						#clock-cells = <0>;
+						reg = <10>;
+						clocks = <&prog2>;
+					};
+
+					pck3: pck3 {
+						#clock-cells = <0>;
+						reg = <11>;
+						clocks = <&prog3>;
+					};
+				};
+
+				periphck {
+					compatible = "atmel,at91rm9200-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioA_clk: pioA_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioB_clk: pioB_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					pioCDE_clk: pioCDE_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <9>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					mci1_clk: mci1_clk {
+						#clock-cells = <0>;
+						reg = <11>;
+					};
+
+					can_clk: can_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					twi0_clk: twi0_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					spi1_clk: spi1_clk {
+						#clock-cells = <0>;
+						reg = <15>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <16>;
+					};
+
+					ssc1_clk: ssc1_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					ac97_clk: ac97_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					tcb_clk: tcb_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					pwm_clk: pwm_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					macb0_clk: macb0_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+
+					g2de_clk: g2de_clk {
+						#clock-cells = <0>;
+						reg = <23>;
+					};
+
+					udc_clk: udc_clk {
+						#clock-cells = <0>;
+						reg = <24>;
+					};
+
+					isi_clk: isi_clk {
+						#clock-cells = <0>;
+						reg = <25>;
+					};
+
+					lcd_clk: lcd_clk {
+						#clock-cells = <0>;
+						reg = <26>;
+					};
+
+					dma_clk: dma_clk {
+						#clock-cells = <0>;
+						reg = <27>;
+					};
+
+					ohci_clk: ohci_clk {
+						#clock-cells = <0>;
+						reg = <29>;
+					};
+				};
+			};
+
+			ramc0: ramc@ffffe200 {
+				compatible = "atmel,at91sam9260-sdramc";
+				reg = <0xffffe200 0x200>;
+			};
+
+			smc0: smc@ffffe400 {
+				compatible = "atmel,at91sam9260-smc", "syscon";
+				reg = <0xffffe400 0x200>;
+			};
+
+			ramc1: ramc@ffffe800 {
+				compatible = "atmel,at91sam9260-sdramc";
+				reg = <0xffffe800 0x200>;
+			};
+
+			smc1: smc@ffffea00 {
+				compatible = "atmel,at91sam9260-smc", "syscon";
+				reg = <0xffffea00 0x200>;
+			};
+
+			matrix: matrix@ffffec00 {
+				compatible = "atmel,at91sam9263-matrix", "syscon";
+				reg = <0xffffec00 0x200>;
+			};
+
+			pit: timer@fffffd30 {
+				compatible = "atmel,at91sam9260-pit";
+				reg = <0xfffffd30 0xf>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&mck>;
+			};
+
+			tcb0: timer@fff7c000 {
+				compatible = "atmel,at91rm9200-tcb";
+				reg = <0xfff7c000 0x100>;
+				interrupts = <19 IRQ_TYPE_LEVEL_HIGH 0>;
+				clocks = <&tcb_clk>, <&slow_xtal>;
+				clock-names = "t0_clk", "slow_clk";
+			};
+
+			rstc@fffffd00 {
+				compatible = "atmel,at91sam9260-rstc";
+				reg = <0xfffffd00 0x10>;
+				clocks = <&slow_xtal>;
+			};
+
+			shdwc@fffffd10 {
+				compatible = "atmel,at91sam9260-shdwc";
+				reg = <0xfffffd10 0x10>;
+				clocks = <&slow_xtal>;
+			};
+
+			pinctrl@fffff200 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				compatible = "atmel,at91rm9200-pinctrl", "simple-bus";
+				ranges = <0xfffff200 0xfffff200 0xa00>;
+
+				atmel,mux-mask = <
+				      /*    A         B     */
+				       0xfffffffb 0xffffe07f  /* pioA */
+				       0x0007ffff 0x39072fff  /* pioB */
+				       0xffffffff 0x3ffffff8  /* pioC */
+				       0xfffffbff 0xffffffff  /* pioD */
+				       0xffe00fff 0xfbfcff00  /* pioE */
+				      >;
+
+				/* shared pinctrl settings */
+				dbgu {
+					pinctrl_dbgu: dbgu-0 {
+						atmel,pins =
+							<AT91_PIOC 30 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
+							 AT91_PIOC 31 AT91_PERIPH_A AT91_PINCTRL_NONE>;
+					};
+				};
+
+				usart0 {
+					pinctrl_usart0: usart0-0 {
+						atmel,pins =
+							<AT91_PIOA 26 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA26 periph A with pullup */
+							 AT91_PIOA 27 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA27 periph A */
+					};
+
+					pinctrl_usart0_rts: usart0_rts-0 {
+						atmel,pins =
+							<AT91_PIOA 28 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA28 periph A */
+					};
+
+					pinctrl_usart0_cts: usart0_cts-0 {
+						atmel,pins =
+							<AT91_PIOA 29 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA29 periph A */
+					};
+				};
+
+				usart1 {
+					pinctrl_usart1: usart1-0 {
+						atmel,pins =
+							<AT91_PIOD 0 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PD0 periph A with pullup */
+							 AT91_PIOD 1 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PD1 periph A */
+					};
+
+					pinctrl_usart1_rts: usart1_rts-0 {
+						atmel,pins =
+							<AT91_PIOD 7 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PD7 periph B */
+					};
+
+					pinctrl_usart1_cts: usart1_cts-0 {
+						atmel,pins =
+							<AT91_PIOD 8 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PD8 periph B */
+					};
+				};
+
+				usart2 {
+					pinctrl_usart2: usart2-0 {
+						atmel,pins =
+							<AT91_PIOD 2 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PD2 periph A with pullup */
+							 AT91_PIOD 3 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PD3 periph A */
+					};
+
+					pinctrl_usart2_rts: usart2_rts-0 {
+						atmel,pins =
+							<AT91_PIOD 5 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PD5 periph B */
+					};
+
+					pinctrl_usart2_cts: usart2_cts-0 {
+						atmel,pins =
+							<AT91_PIOD 6 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PD6 periph B */
+					};
+				};
+
+				nand {
+					pinctrl_nand_rb: nand-rb-0 {
+						atmel,pins =
+							<AT91_PIOA 22 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
+
+					pinctrl_nand_cs: nand-cs-0 {
+						atmel,pins =
+							 <AT91_PIOD 15 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
+				};
+
+				macb {
+					pinctrl_macb_rmii: macb_rmii-0 {
+						atmel,pins =
+							<AT91_PIOC 25 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC25 periph B */
+							 AT91_PIOE 21 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE21 periph A */
+							 AT91_PIOE 23 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE23 periph A */
+							 AT91_PIOE 24 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE24 periph A */
+							 AT91_PIOE 25 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE25 periph A */
+							 AT91_PIOE 26 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE26 periph A */
+							 AT91_PIOE 27 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE27 periph A */
+							 AT91_PIOE 28 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE28 periph A */
+							 AT91_PIOE 29 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PE29 periph A */
+							 AT91_PIOE 30 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PE30 periph A */
+					};
+
+					pinctrl_macb_rmii_mii: macb_rmii_mii-0 {
+						atmel,pins =
+							<AT91_PIOC 20 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC20 periph B */
+							 AT91_PIOC 21 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC21 periph B */
+							 AT91_PIOC 22 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC22 periph B */
+							 AT91_PIOC 23 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC23 periph B */
+							 AT91_PIOC 24 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC24 periph B */
+							 AT91_PIOC 25 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC25 periph B */
+							 AT91_PIOC 27 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC27 periph B */
+							 AT91_PIOE 22 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PE22 periph B */
+					};
+				};
+
+				mmc0 {
+					pinctrl_mmc0_clk: mmc0_clk-0 {
+						atmel,pins =
+							<AT91_PIOA 12 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA12 periph A */
+					};
+
+					pinctrl_mmc0_slot0_cmd_dat0: mmc0_slot0_cmd_dat0-0 {
+						atmel,pins =
+							<AT91_PIOA 1 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA1 periph A with pullup */
+							 AT91_PIOA 0 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA0 periph A with pullup */
+					};
+
+					pinctrl_mmc0_slot0_dat1_3: mmc0_slot0_dat1_3-0 {
+						atmel,pins =
+							<AT91_PIOA 3 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA3 periph A with pullup */
+							 AT91_PIOA 4 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA4 periph A with pullup */
+							 AT91_PIOA 5 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA5 periph A with pullup */
+					};
+
+					pinctrl_mmc0_slot1_cmd_dat0: mmc0_slot1_cmd_dat0-0 {
+						atmel,pins =
+							<AT91_PIOA 16 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA16 periph A with pullup */
+							 AT91_PIOA 17 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA17 periph A with pullup */
+					};
+
+					pinctrl_mmc0_slot1_dat1_3: mmc0_slot1_dat1_3-0 {
+						atmel,pins =
+							<AT91_PIOA 18 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA18 periph A with pullup */
+							 AT91_PIOA 19 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA19 periph A with pullup */
+							 AT91_PIOA 20 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA20 periph A with pullup */
+					};
+				};
+
+				mmc1 {
+					pinctrl_mmc1_clk: mmc1_clk-0 {
+						atmel,pins =
+							<AT91_PIOA 6 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA6 periph A */
+					};
+
+					pinctrl_mmc1_slot0_cmd_dat0: mmc1_slot0_cmd_dat0-0 {
+						atmel,pins =
+							<AT91_PIOA 7 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA7 periph A with pullup */
+							 AT91_PIOA 8 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA8 periph A with pullup */
+					};
+
+					pinctrl_mmc1_slot0_dat1_3: mmc1_slot0_dat1_3-0 {
+						atmel,pins =
+							<AT91_PIOA 9 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA9 periph A with pullup */
+							 AT91_PIOA 10 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA10 periph A with pullup */
+							 AT91_PIOA 11 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA11 periph A with pullup */
+					};
+
+					pinctrl_mmc1_slot1_cmd_dat0: mmc1_slot1_cmd_dat0-0 {
+						atmel,pins =
+							<AT91_PIOA 21 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA21 periph A with pullup */
+							 AT91_PIOA 22 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA22 periph A with pullup */
+					};
+
+					pinctrl_mmc1_slot1_dat1_3: mmc1_slot1_dat1_3-0 {
+						atmel,pins =
+							<AT91_PIOA 23 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA23 periph A with pullup */
+							 AT91_PIOA 24 AT91_PERIPH_A AT91_PINCTRL_PULL_UP	/* PA24 periph A with pullup */
+							 AT91_PIOA 25 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;	/* PA25 periph A with pullup */
+					};
+				};
+
+				ssc0 {
+					pinctrl_ssc0_tx: ssc0_tx-0 {
+						atmel,pins =
+							<AT91_PIOB 0 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PB0 periph B */
+							 AT91_PIOB 1 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PB1 periph B */
+							 AT91_PIOB 2 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PB2 periph B */
+					};
+
+					pinctrl_ssc0_rx: ssc0_rx-0 {
+						atmel,pins =
+							<AT91_PIOB 3 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PB3 periph B */
+							 AT91_PIOB 4 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PB4 periph B */
+							 AT91_PIOB 5 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PB5 periph B */
+					};
+				};
+
+				ssc1 {
+					pinctrl_ssc1_tx: ssc1_tx-0 {
+						atmel,pins =
+							<AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB6 periph A */
+							 AT91_PIOB 7 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB7 periph A */
+							 AT91_PIOB 8 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PB8 periph A */
+					};
+
+					pinctrl_ssc1_rx: ssc1_rx-0 {
+						atmel,pins =
+							<AT91_PIOB 9 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB9 periph A */
+							 AT91_PIOB 10 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB10 periph A */
+							 AT91_PIOB 11 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PB11 periph A */
+					};
+				};
+
+				spi0 {
+					pinctrl_spi0: spi0-0 {
+						atmel,pins =
+							<AT91_PIOA 0 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PA0 periph B SPI0_MISO pin */
+							 AT91_PIOA 1 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PA1 periph B SPI0_MOSI pin */
+							 AT91_PIOA 2 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PA2 periph B SPI0_SPCK pin */
+					};
+				};
+
+				spi1 {
+					pinctrl_spi1: spi1-0 {
+						atmel,pins =
+							<AT91_PIOB 12 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB12 periph A SPI1_MISO pin */
+							 AT91_PIOB 13 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB13 periph A SPI1_MOSI pin */
+							 AT91_PIOB 14 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PB14 periph A SPI1_SPCK pin */
+					};
+				};
+
+				tcb0 {
+					pinctrl_tcb0_tclk0: tcb0_tclk0-0 {
+						atmel,pins = <AT91_PIOB 28 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tclk1: tcb0_tclk1-0 {
+						atmel,pins = <AT91_PIOC 28 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tclk2: tcb0_tclk2-0 {
+						atmel,pins = <AT91_PIOA 15 AT91_PERIPH_A AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tioa0: tcb0_tioa0-0 {
+						atmel,pins = <AT91_PIOE 18 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tioa1: tcb0_tioa1-0 {
+						atmel,pins = <AT91_PIOE 8 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tioa2: tcb0_tioa2-0 {
+						atmel,pins = <AT91_PIOB 17 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tiob0: tcb0_tiob0-0 {
+						atmel,pins = <AT91_PIOE 19 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tiob1: tcb0_tiob1-0 {
+						atmel,pins = <AT91_PIOE 9 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+
+					pinctrl_tcb0_tiob2: tcb0_tiob2-0 {
+						atmel,pins = <AT91_PIOB 18 AT91_PERIPH_B AT91_PINCTRL_NONE>;
+					};
+				};
+
+				fb {
+					pinctrl_fb: fb-0 {
+						atmel,pins =
+							<AT91_PIOC 1 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC1 periph A */
+							 AT91_PIOC 2 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC2 periph A */
+							 AT91_PIOC 3 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC3 periph A */
+							 AT91_PIOB 9 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PB9 periph B */
+							 AT91_PIOC 6 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC6 periph A */
+							 AT91_PIOC 7 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC7 periph A */
+							 AT91_PIOC 8 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC8 periph A */
+							 AT91_PIOC 9 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC9 periph A */
+							 AT91_PIOC 10 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC10 periph A */
+							 AT91_PIOC 11 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC11 periph A */
+							 AT91_PIOC 14 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC14 periph A */
+							 AT91_PIOC 15 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC15 periph A */
+							 AT91_PIOC 16 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC16 periph A */
+							 AT91_PIOC 12 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC12 periph B */
+							 AT91_PIOC 18 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC18 periph A */
+							 AT91_PIOC 19 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC19 periph A */
+							 AT91_PIOC 22 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC22 periph A */
+							 AT91_PIOC 23 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC23 periph A */
+							 AT91_PIOC 24 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC24 periph A */
+							 AT91_PIOC 17 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC17 periph B */
+							 AT91_PIOC 26 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PC26 periph A */
+							 AT91_PIOC 27 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PC27 periph A */
+					};
+				};
+
+				can {
+					pinctrl_can_rx_tx: can_rx_tx {
+						atmel,pins =
+							<AT91_PIOA 14 AT91_PERIPH_A AT91_PINCTRL_NONE	/* CANRX, conflicts with IRQ0 */
+							 AT91_PIOA 13 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* CANTX, conflicts with PCK0 */
+					};
+				};
+
+				ac97 {
+					pinctrl_ac97: ac97-0 {
+						atmel,pins =
+							<AT91_PIOB 0 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB12 periph A AC97FS pin */
+							 AT91_PIOB 1 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB13 periph A AC97CK pin */
+							 AT91_PIOB 2 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PB14 periph A AC97TX pin */
+							 AT91_PIOB 3 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PB14 periph A AC97RX pin */
+					};
+				};
+
+				pioA: gpio@fffff200 {
+					compatible = "atmel,at91rm9200-gpio";
+					reg = <0xfffff200 0x200>;
+					interrupts = <2 IRQ_TYPE_LEVEL_HIGH 1>;
+					#gpio-cells = <2>;
+					gpio-controller;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					clocks = <&pioA_clk>;
+				};
+
+				pioB: gpio@fffff400 {
+					compatible = "atmel,at91rm9200-gpio";
+					reg = <0xfffff400 0x200>;
+					interrupts = <3 IRQ_TYPE_LEVEL_HIGH 1>;
+					#gpio-cells = <2>;
+					gpio-controller;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					clocks = <&pioB_clk>;
+				};
+
+				pioC: gpio@fffff600 {
+					compatible = "atmel,at91rm9200-gpio";
+					reg = <0xfffff600 0x200>;
+					interrupts = <4 IRQ_TYPE_LEVEL_HIGH 1>;
+					#gpio-cells = <2>;
+					gpio-controller;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					clocks = <&pioCDE_clk>;
+				};
+
+				pioD: gpio@fffff800 {
+					compatible = "atmel,at91rm9200-gpio";
+					reg = <0xfffff800 0x200>;
+					interrupts = <4 IRQ_TYPE_LEVEL_HIGH 1>;
+					#gpio-cells = <2>;
+					gpio-controller;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					clocks = <&pioCDE_clk>;
+				};
+
+				pioE: gpio@fffffa00 {
+					compatible = "atmel,at91rm9200-gpio";
+					reg = <0xfffffa00 0x200>;
+					interrupts = <4 IRQ_TYPE_LEVEL_HIGH 1>;
+					#gpio-cells = <2>;
+					gpio-controller;
+					interrupt-controller;
+					#interrupt-cells = <2>;
+					clocks = <&pioCDE_clk>;
+				};
+			};
+
+			dbgu: serial@ffffee00 {
+				compatible = "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart";
+				reg = <0xffffee00 0x200>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_dbgu>;
+				clocks = <&mck>;
+				clock-names = "usart";
+				status = "disabled";
+			};
+
+			usart0: serial@fff8c000 {
+				compatible = "atmel,at91sam9260-usart";
+				reg = <0xfff8c000 0x200>;
+				interrupts = <7 IRQ_TYPE_LEVEL_HIGH 5>;
+				atmel,use-dma-rx;
+				atmel,use-dma-tx;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_usart0>;
+				clocks = <&usart0_clk>;
+				clock-names = "usart";
+				status = "disabled";
+			};
+
+			usart1: serial@fff90000 {
+				compatible = "atmel,at91sam9260-usart";
+				reg = <0xfff90000 0x200>;
+				interrupts = <8 IRQ_TYPE_LEVEL_HIGH 5>;
+				atmel,use-dma-rx;
+				atmel,use-dma-tx;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_usart1>;
+				clocks = <&usart1_clk>;
+				clock-names = "usart";
+				status = "disabled";
+			};
+
+			usart2: serial@fff94000 {
+				compatible = "atmel,at91sam9260-usart";
+				reg = <0xfff94000 0x200>;
+				interrupts = <9 IRQ_TYPE_LEVEL_HIGH 5>;
+				atmel,use-dma-rx;
+				atmel,use-dma-tx;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_usart2>;
+				clocks = <&usart2_clk>;
+				clock-names = "usart";
+				status = "disabled";
+			};
+
+			ssc0: ssc@fff98000 {
+				compatible = "atmel,at91rm9200-ssc";
+				reg = <0xfff98000 0x4000>;
+				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
+				clocks = <&ssc0_clk>;
+				clock-names = "pclk";
+				status = "disabled";
+			};
+
+			ssc1: ssc@fff9c000 {
+				compatible = "atmel,at91rm9200-ssc";
+				reg = <0xfff9c000 0x4000>;
+				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 5>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_ssc1_tx &pinctrl_ssc1_rx>;
+				clocks = <&ssc1_clk>;
+				clock-names = "pclk";
+				status = "disabled";
+			};
+
+			ac97: sound@fffa0000 {
+				compatible = "atmel,at91sam9263-ac97c";
+				reg = <0xfffa0000 0x4000>;
+				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 5>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_ac97>;
+				clocks = <&ac97_clk>;
+				clock-names = "ac97_clk";
+				status = "disabled";
+			};
+
+			macb0: ethernet@fffbc000 {
+				compatible = "cdns,at91sam9260-macb", "cdns,macb";
+				reg = <0xfffbc000 0x100>;
+				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 3>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_macb_rmii>;
+				clocks = <&macb0_clk>, <&macb0_clk>;
+				clock-names = "hclk", "pclk";
+				status = "disabled";
+			};
+
+			usb1: gadget@fff78000 {
+				compatible = "atmel,at91sam9263-udc";
+				reg = <0xfff78000 0x4000>;
+				interrupts = <24 IRQ_TYPE_LEVEL_HIGH 2>;
+				clocks = <&udc_clk>, <&udpck>;
+				clock-names = "pclk", "hclk";
+				status = "disabled";
+			};
+
+			i2c0: i2c@fff88000 {
+				compatible = "atmel,at91sam9260-i2c";
+				reg = <0xfff88000 0x100>;
+				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 6>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&twi0_clk>;
+				status = "disabled";
+			};
+
+			mmc0: mmc@fff80000 {
+				compatible = "atmel,hsmci";
+				reg = <0xfff80000 0x600>;
+				interrupts = <10 IRQ_TYPE_LEVEL_HIGH 0>;
+				pinctrl-names = "default";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&mci0_clk>;
+				clock-names = "mci_clk";
+				status = "disabled";
+			};
+
+			mmc1: mmc@fff84000 {
+				compatible = "atmel,hsmci";
+				reg = <0xfff84000 0x600>;
+				interrupts = <11 IRQ_TYPE_LEVEL_HIGH 0>;
+				pinctrl-names = "default";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&mci1_clk>;
+				clock-names = "mci_clk";
+				status = "disabled";
+			};
+
+			watchdog@fffffd40 {
+				compatible = "atmel,at91sam9260-wdt";
+				reg = <0xfffffd40 0x10>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&slow_xtal>;
+				atmel,watchdog-type = "hardware";
+				atmel,reset-type = "all";
+				atmel,dbg-halt;
+				status = "disabled";
+			};
+
+			spi0: spi@fffa4000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "atmel,at91rm9200-spi";
+				reg = <0xfffa4000 0x200>;
+				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 3>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_spi0>;
+				clocks = <&spi0_clk>;
+				clock-names = "spi_clk";
+				status = "disabled";
+			};
+
+			spi1: spi@fffa8000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "atmel,at91rm9200-spi";
+				reg = <0xfffa8000 0x200>;
+				interrupts = <15 IRQ_TYPE_LEVEL_HIGH 3>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_spi1>;
+				clocks = <&spi1_clk>;
+				clock-names = "spi_clk";
+				status = "disabled";
+			};
+
+			pwm0: pwm@fffb8000 {
+				compatible = "atmel,at91sam9rl-pwm";
+				reg = <0xfffb8000 0x300>;
+				interrupts = <20 IRQ_TYPE_LEVEL_HIGH 4>;
+				#pwm-cells = <3>;
+				clocks = <&pwm_clk>;
+				clock-names = "pwm_clk";
+				status = "disabled";
+			};
+
+			can: can@fffac000 {
+				compatible = "atmel,at91sam9263-can";
+				reg = <0xfffac000 0x300>;
+				interrupts = <12 IRQ_TYPE_LEVEL_HIGH 3>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_can_rx_tx>;
+				clocks = <&can_clk>;
+				clock-names = "can_clk";
+			};
+
+			rtc@fffffd20 {
+				compatible = "atmel,at91sam9260-rtt";
+				reg = <0xfffffd20 0x10>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&slow_xtal>;
+				status = "disabled";
+			};
+
+			rtc@fffffd50 {
+				compatible = "atmel,at91sam9260-rtt";
+				reg = <0xfffffd50 0x10>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&slow_xtal>;
+				status = "disabled";
+			};
+
+			gpbr: syscon@fffffd60 {
+				compatible = "atmel,at91sam9260-gpbr", "syscon";
+				reg = <0xfffffd60 0x50>;
+				status = "disabled";
+			};
+		};
+
+		fb0: fb@0x00700000 {
+			compatible = "atmel,at91sam9263-lcdc";
+			reg = <0x00700000 0x1000>;
+			interrupts = <26 IRQ_TYPE_LEVEL_HIGH 3>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fb>;
+			clocks = <&lcd_clk>, <&lcd_clk>;
+			clock-names = "lcdc_clk", "hclk";
+			status = "disabled";
+		};
+
+		usb0: ohci@00a00000 {
+			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
+			reg = <0x00a00000 0x100000>;
+			interrupts = <29 IRQ_TYPE_LEVEL_HIGH 2>;
+			clocks = <&ohci_clk>, <&ohci_clk>, <&uhpck>;
+			clock-names = "ohci_clk", "hclk", "uhpck";
+			status = "disabled";
+		};
+
+		ebi0: ebi@10000000 {
+			compatible = "atmel,at91sam9263-ebi0";
+			#address-cells = <2>;
+			#size-cells = <1>;
+			atmel,smc = <&smc0>;
+			atmel,matrix = <&matrix>;
+			reg = <0x10000000 0x80000000>;
+			ranges = <0x0 0x0 0x10000000 0x10000000
+				  0x1 0x0 0x20000000 0x10000000
+				  0x2 0x0 0x30000000 0x10000000
+				  0x3 0x0 0x40000000 0x10000000
+				  0x4 0x0 0x50000000 0x10000000
+				  0x5 0x0 0x60000000 0x10000000>;
+			clocks = <&mck>;
+			status = "disabled";
+
+			nand_controller0: nand-controller {
+				compatible = "atmel,at91sam9260-nand-controller";
+				#address-cells = <2>;
+				#size-cells = <1>;
+				ranges;
+				status = "disabled";
+			};
+		};
+
+		ebi1: ebi@70000000 {
+			compatible = "atmel,at91sam9263-ebi1";
+			#address-cells = <2>;
+			#size-cells = <1>;
+			atmel,smc = <&smc1>;
+			atmel,matrix = <&matrix>;
+			reg = <0x80000000 0x20000000>;
+			ranges = <0x0 0x0 0x80000000 0x10000000
+				  0x1 0x0 0x90000000 0x10000000>;
+			clocks = <&mck>;
+			status = "disabled";
+
+			nand_controller1: nand-controller {
+				compatible = "atmel,at91sam9260-nand-controller";
+				#address-cells = <2>;
+				#size-cells = <1>;
+				ranges;
+				status = "disabled";
+			};
+		};
+	};
+
+	i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		gpios = <&pioB 4 GPIO_ACTIVE_HIGH /* sda */
+			 &pioB 5 GPIO_ACTIVE_HIGH /* scl */
+			>;
+		i2c-gpio,sda-open-drain;
+		i2c-gpio,scl-open-drain;
+		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
new file mode 100644
index 000000000..10a0925da
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
+#include "at91sam9263.dtsi"
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
index 50b4d88e5..75907c511 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -522,6 +522,9 @@ if AT91_MULTI_BOARDS
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
 	depends on ARCH_AT91SAM9263
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	select HAVE_AT91_USB_CLK
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
 	help
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index de4d75690..82666e499 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,4 +1,4 @@
-obj-y += init.o
+obj-n += init.o
 
 lwl-y += lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9263ek
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index a5e839248..9467e05d9 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,3 +1,5 @@
+EXTRA_CFLAGS := -DVERBOSE_DEBUG
+
 obj-y += setup.o irq_fixup.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
@@ -17,7 +19,7 @@ obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9263)x += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 8f32af043..de86c7a90 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -63,7 +63,7 @@ static void __init soc_detect(u32 dbgu_base)
 
 	case ARCH_ID_AT91SAM9263:
 		at91_soc_initdata.type = AT91_SOC_SAM9263;
-		at91_boot_soc = at91sam9263_soc;
+		//at91_boot_soc = at91sam9263_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9G20:

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
