Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebCVb-000453-Qj
 for barebox@lists.infradead.org; Mon, 15 Jan 2018 21:41:41 +0000
Received: by mail-lf0-x241.google.com with SMTP id g72so9483190lfg.5
 for <barebox@lists.infradead.org>; Mon, 15 Jan 2018 13:41:25 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 15 Jan 2018 22:41:04 +0100
Message-Id: <20180115214104.7566-3-sam@ravnborg.org>
In-Reply-To: <20180115213951.GA32669@ravnborg.org>
References: <20180115213951.GA32669@ravnborg.org>
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
Subject: [PATCH v3 3/3] at91sam9263ek: enable DT support
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Add at91sam9263ek.dts to build.
Include mmc1 in at91sam9263ek.dts, as mmc1 is what the evaluation
kit uses for the SD card.

Add DT specific of_init
Adjust build to drop non-DT files from mach-at91

RomBOOT
>AT91Bootstrap 3.0.1
patch-0.8 64MB Ram
Load from SD-Card
Loading from SD-Card
Open: u-boot.bin
Loading from SD-Card - Success

barebox 2017.12.0-00036-gda46de29e #23 Sun Dec 31 09:15:39 CET 2017

Board: Atmel at91sam9263ek
gpio-at91 fffff200.gpio: AT91 gpio driver registered
gpio-at91 fffff400.gpio: AT91 gpio driver registered
gpio-at91 fffff600.gpio: AT91 gpio driver registered
gpio-at91 fffff800.gpio: AT91 gpio driver registered
gpio-at91 fffffa00.gpio: AT91 gpio driver registered
pinctrl-at91 pinctrl.2: AT91 pinctrl registered
AT91: Detected soc type: at91sam9263
AT91: Detected soc subtype: Unknown
mdio_bus: miibus0: probed
macb fffbc000.ethernet: Cadence MACB at 0xfffbc000
at91_udc fff78000.gadget: at91_udc version 3 May 2006
atmel_mci fff80000.mmc: version: 0x210
atmel_mci fff80000.mmc: registered as fff80000.mmc
atmel_mci fff84000.mmc: version: 0x210
atmel_mci fff84000.mmc: registered as fff84000.mmc
malloc space: 0x239fab00 -> 0x23dfaaff (size 4 MiB)
barebox-environment environment.6: probe failed: No such device
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...
\e[?25h
Hit any key to stop autoboot:    3
barebox@Atmel at91sam9263ek:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x00300000 - 0x00313fff (size 0x00014000) 300000.sram
  0x00500000 - 0x00503fff (size 0x00004000) 500000.sram
  0x00700000 - 0x00700fff (size 0x00001000) 700000.fb
  0x20000000 - 0x23ffffff (size 0x04000000) ram0
    0x239fab00 - 0x23dfaaff (size 0x00400000) malloc space
    0x23dfab00 - 0x23dfffe2 (size 0x000054e3) board data
    0x23e00000 - 0x23e53cc8 (size 0x00053cc9) barebox
    0x23e53cc9 - 0x23e6404f (size 0x00010387) barebox data
    0x23e64050 - 0x23e6754b (size 0x000034fc) bss
    0x23fe4000 - 0x23fe7fff (size 0x00004000) ttb
    0x23fe8000 - 0x23feffff (size 0x00008000) stack
  0xfff78000 - 0xfff7bfff (size 0x00004000) fff78000.gadget
  0xfff80000 - 0xfff805ff (size 0x00000600) fff80000.mmc
  0xfff84000 - 0xfff845ff (size 0x00000600) fff84000.mmc
  0xfff8c000 - 0xfff8c1ff (size 0x00000200) fff8c000.serial
  0xfffbc000 - 0xfffbc0ff (size 0x00000100) fffbc000.ethernet
  0xffffee00 - 0xffffefff (size 0x00000200) ffffee00.serial
  0xfffff200 - 0xfffff3ff (size 0x00000200) fffff200.gpio
  0xfffff400 - 0xfffff5ff (size 0x00000200) fffff400.gpio
  0xfffff600 - 0xfffff7ff (size 0x00000200) fffff600.gpio
  0xfffff800 - 0xfffff9ff (size 0x00000200) fffff800.gpio
  0xfffffa00 - 0xfffffbff (size 0x00000200) fffffa00.gpio
  0xfffffd30 - 0xfffffd3e (size 0x0000000f) fffffd30.timer
barebox@Atmel at91sam9263ek:/ devinfo
`-- global
`-- nv
`-- platform
   `-- mem0
      `-- 0x00000000-0x03ffffff (    64 MiB): /dev/ram0
   `-- 300000.sram
      `-- 0x00000000-0x00013fff (    80 KiB): /dev/sram0
   `-- 500000.sram
      `-- 0x00000000-0x00003fff (    16 KiB): /dev/sram1
   `-- ahb.0
      `-- apb.1
         `-- fffff000.interrupt-controller
         `-- fffffc00.pmc
         `-- ffffe200.ramc
         `-- ffffe400.smc
         `-- ffffe800.ramc
         `-- ffffea00.smc
         `-- ffffec00.matrix
         `-- fffffd30.timer
         `-- fff7c000.timer
         `-- fffffd00.rstc
         `-- fffffd10.shdwc
         `-- pinctrl.2
            `-- fffff200.gpio
            `-- fffff400.gpio
            `-- fffff600.gpio
            `-- fffff800.gpio
            `-- fffffa00.gpio
         `-- ffffee00.serial
            `-- cs0
               `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs0
         `-- fff8c000.serial
            `-- cs1
               `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs1
         `-- fffbc000.ethernet
            `-- miibus0
            `-- eth0
         `-- fff78000.gadget
            `-- usbgadget
         `-- fff80000.mmc
            `-- mci0
         `-- fff84000.mmc
            `-- mci1
         `-- fffffd40.watchdog
         `-- fffa4000.spi
         `-- fffac000.can
      `-- 700000.fb
      `-- a00000.ohci
      `-- 10000000.ebi
   `-- i2c-gpio-0.3
   `-- leds.4
   `-- gpio_keys.5
   `-- cs2
      `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs2
   `-- soc
   `-- mem1
      `-- 0x00000000-0xfffffffe (     4 GiB): /dev/mem
   `-- environment.6
`-- mdio_bus
`-- fs
   `-- ramfs0
   `-- devfs0
`-- net
`-- udc0
`-- fb0
   `-- 0x00000000-0x000257ff (   150 KiB): /dev/fb0
barebox@Atmel at91sam9263ek:/ drvinfo
Driver  Device(s)
--------------------
syscon
at91-pit
        fffffd30.timer
gpio-at91
        fffff200.gpio
        fffff400.gpio
        fffff600.gpio
        fffff800.gpio
        fffffa00.gpio
pinctrl-at91
        pinctrl.2
atmel_usart
        ffffee00.serial
        fff8c000.serial
ramfs
        ramfs0
devfs
        devfs0
fat
tftp
at91sam9-smc
Generic PHY
macb
        fffbc000.ethernet
atmel_nand
cfi_flash
at91_udc
        fff78000.gadget
atmel_mci
        fff80000.mmc
        fff84000.mmc
atmel_lcdfb
        700000.fb
gpio-leds
        leds.4
gpio_keys
        gpio_keys.5
mmio-sram
        300000.sram
        500000.sram
mem
        mem0
        mem1
barebox-environment

Use 'devinfo DEVICE' for more information
barebox@Atmel at91sam9263ek:/ gpioinfo

GPIOs 0-31, chip fffff200.gpio:
             dir val requested  label
  GPIO    0: unk  hi        false
  GPIO    1: unk  hi        false
  GPIO    2:  in  hi        false
  GPIO    3: unk  hi        false
  GPIO    4: unk  hi        false
  GPIO    5: unk  hi        false
  GPIO    6: unk  lo        false
  GPIO    7: unk  hi        false
  GPIO    8: unk  hi        false
  GPIO    9: unk  hi        false
  GPIO   10: unk  hi        false
  GPIO   11: unk  hi        false
  GPIO   12: unk  hi        false
  GPIO   13:  in  hi        false
  GPIO   14:  in  hi        false
  GPIO   15:  in  hi        false
  GPIO   16:  in  hi        false
  GPIO   17:  in  hi        false
  GPIO   18:  in  hi        false
  GPIO   19:  in  lo        false
  GPIO   20:  in  hi        false
  GPIO   21:  in  hi        false
  GPIO   22:  in  hi        false
  GPIO   23:  in  hi        false
  GPIO   24:  in  hi        false
  GPIO   25:  in  lo         true  udc_vbus
  GPIO   26: unk  hi        false
  GPIO   27: unk  hi        false
  GPIO   28: unk  hi        false
  GPIO   29: unk  hi        false
  GPIO   30:  in  lo        false
  GPIO   31:  in  hi        false

GPIOs 32-63, chip fffff400.gpio:
             dir val requested  label
  GPIO   32:  in  hi        false
  GPIO   33:  in  hi        false
  GPIO   34:  in  hi        false
  GPIO   35:  in  hi        false
  GPIO   36:  in  hi        false
  GPIO   37:  in  hi        false
  GPIO   38:  in  hi        false
  GPIO   39: out  hi         true  d3
  GPIO   40:  in  hi        false
  GPIO   41: unk  hi        false
  GPIO   42:  in  hi        false
  GPIO   43:  in  hi        false
  GPIO   44:  in  hi        false
  GPIO   45:  in  hi        false
  GPIO   46:  in  hi        false
  GPIO   47:  in  hi        false
  GPIO   48:  in  hi        false
  GPIO   49:  in  hi        false
  GPIO   50:  in  hi        false
  GPIO   51:  in  hi        false
  GPIO   52:  in  hi        false
  GPIO   53:  in  hi        false
  GPIO   54:  in  hi        false
  GPIO   55:  in  hi        false
  GPIO   56:  in  hi        false
  GPIO   57:  in  hi        false
  GPIO   58:  in  hi        false
  GPIO   59: out  lo   active low  PHY 50 MHz oscillator
  GPIO   60:  in  hi        false
  GPIO   61:  in  hi        false
  GPIO   62:  in  hi        false
  GPIO   63:  in  hi        false

GPIOs 64-95, chip fffff600.gpio:
             dir val requested  label
  GPIO   64:  in  hi        false
  GPIO   65: unk  hi        false
  GPIO   66: unk  hi        false
  GPIO   67: unk  hi        false
  GPIO   68:  in  hi         true  gpio_keys
  GPIO   69:  in  hi         true  gpio_keys
  GPIO   70: unk  lo        false
  GPIO   71: unk  lo        false
  GPIO   72: unk  lo        false
  GPIO   73: unk  lo        false
  GPIO   74: unk  lo        false
  GPIO   75: unk  lo        false
  GPIO   76: unk  lo        false
  GPIO   77:  in  hi        false
  GPIO   78: unk  lo        false
  GPIO   79: unk  lo        false
  GPIO   80: unk  lo        false
  GPIO   81: unk  lo        false
  GPIO   82: unk  lo        false
  GPIO   83: unk  lo        false
  GPIO   84:  in  hi        false
  GPIO   85:  in  hi        false
  GPIO   86: unk  lo        false
  GPIO   87: unk  lo        false
  GPIO   88: unk  lo        false
  GPIO   89: unk  lo        false
  GPIO   90: unk  lo        false
  GPIO   91: unk  lo        false
  GPIO   92:  in  hi        false
  GPIO   93:  in  hi         true  d2
  GPIO   94: unk  hi        false
  GPIO   95: unk  hi        false

GPIOs 96-127, chip fffff800.gpio:
             dir val requested  label
  GPIO   96:  in  hi        false
  GPIO   97:  in  hi        false
  GPIO   98:  in  hi        false
  GPIO   99:  in  hi        false
  GPIO  100:  in  hi        false
  GPIO  101:  in  hi        false
  GPIO  102:  in  hi        false
  GPIO  103:  in  hi        false
  GPIO  104:  in  hi        false
  GPIO  105:  in  hi        false
  GPIO  106:  in  hi        false
  GPIO  107:  in  hi        false
  GPIO  108: unk  lo        false
  GPIO  109: unk  lo        false
  GPIO  110: unk  lo        false
  GPIO  111:  in  hi        false
  GPIO  112: unk  lo        false
  GPIO  113: unk  hi        false
  GPIO  114: unk  hi        false
  GPIO  115: unk  lo        false
  GPIO  116: unk  hi        false
  GPIO  117: unk  hi        false
  GPIO  118: unk  hi        false
  GPIO  119: unk  hi        false
  GPIO  120: unk  lo        false
  GPIO  121: unk  hi        false
  GPIO  122: unk  hi        false
  GPIO  123: unk  lo        false
  GPIO  124: unk  hi        false
  GPIO  125: unk  hi        false
  GPIO  126: unk  hi        false
  GPIO  127: unk  hi        false

GPIOs 128-159, chip fffffa00.gpio:
             dir val requested  label
  GPIO  128:  in  hi        false
  GPIO  129:  in  hi        false
  GPIO  130:  in  hi        false
  GPIO  131:  in  hi        false
  GPIO  132:  in  hi        false
  GPIO  133:  in  hi        false
  GPIO  134:  in  hi        false
  GPIO  135:  in  hi        false
  GPIO  136:  in  hi        false
  GPIO  137:  in  hi        false
  GPIO  138:  in  hi        false
  GPIO  139:  in  hi        false
  GPIO  140:  in  hi        false
  GPIO  141:  in  hi        false
  GPIO  142:  in  hi        false
  GPIO  143:  in  hi        false
  GPIO  144:  in  hi        false
  GPIO  145:  in  hi        false
  GPIO  146:  in  lo         true  mci_cd
  GPIO  147:  in  hi        false
  GPIO  148:  in  hi        false
  GPIO  149: unk  lo        false
  GPIO  150:  in  hi        false
  GPIO  151: unk  lo        false
  GPIO  152: unk  lo        false
  GPIO  153: unk  lo        false
  GPIO  154: unk  lo        false
  GPIO  155: unk  lo        false
  GPIO  156: unk  lo        false
  GPIO  157: unk  lo        false
  GPIO  158: unk  hi        false
  GPIO  159:  in  hi        false
barebox@Atmel at91sam9263ek:/ clk_dump
slow_xtal (rate 32768, enabled)
    prog0 (rate 32768, enabled)
        pck0 (rate 32768, disabled)
    prog1 (rate 32768, enabled)
        pck1 (rate 32768, disabled)
    prog2 (rate 32768, enabled)
        pck2 (rate 32768, disabled)
    prog3 (rate 32768, enabled)
        pck3 (rate 32768, disabled)
main_xtal (rate 16367660, enabled)
    main_osc (rate 16367660, enabled)
        mainck (rate 16367660, enabled)
            pllbck (rate 98205960, enabled)
                usbck (rate 49102980, enabled)
                    uhpck (rate 49102980, disabled)
                    udpck (rate 49102980, disabled)
            pllack (rate 204595750, enabled)
                masterck (rate 102297875, enabled)
                    pioA_clk (rate 102297875, enabled)
                    pioB_clk (rate 102297875, enabled)
                    pioCDE_clk (rate 102297875, enabled)
                    usart0_clk (rate 102297875, enabled)
                    usart1_clk (rate 102297875, disabled)
                    usart2_clk (rate 102297875, disabled)
                    mci0_clk (rate 102297875, disabled)
                    mci1_clk (rate 102297875, disabled)
                    can_clk (rate 102297875, disabled)
                    twi0_clk (rate 102297875, disabled)
                    spi0_clk (rate 102297875, disabled)
                    spi1_clk (rate 102297875, disabled)
                    ssc0_clk (rate 102297875, disabled)
                    ssc1_clk (rate 102297875, disabled)
                    ac97_clk (rate 102297875, disabled)
                    tcb_clk (rate 102297875, disabled)
                    pwm_clk (rate 102297875, disabled)
                    macb0_clk (rate 102297875, enabled)
                    g2de_clk (rate 102297875, disabled)
                    udc_clk (rate 102297875, disabled)
                    isi_clk (rate 102297875, disabled)
                    lcd_clk (rate 102297875, enabled)
                    dma_clk (rate 102297875, disabled)
                    ohci_clk (rate 102297875, disabled)
barebox@Atmel at91sam9263ek:/ led
registered LEDs:
0 : name: d3         max_value: 1
1 : name: d2         max_value: 1
barebox@Atmel at91sam9263ek:/ led 1 1
barebox@Atmel at91sam9263ek:/ led 0 1

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9263ek/Makefile        |  4 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c | 17 +++--
 arch/arm/boards/at91sam9263ek/of_init.c       | 93 +++++++++++++++++++++++++++
 arch/arm/configs/at91sam9263ek_defconfig      | 10 ++-
 arch/arm/dts/Makefile                         |  2 +-
 arch/arm/dts/at91sam9263ek.dts                | 48 ++++++++++++++
 arch/arm/mach-at91/Kconfig                    | 30 ++++++---
 arch/arm/mach-at91/Makefile                   |  4 +-
 images/Makefile.at91                          |  4 ++
 9 files changed, 196 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9263ek/of_init.c
 create mode 100644 arch/arm/dts/at91sam9263ek.dts

diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index de4d75690..7af6fab8e 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,4 +1,6 @@
-obj-y += init.o
+obj-$(CONFIG_AT91_BOOTSTRAP) += init.o
+obj-$(CONFIG_OF_DEVICE) += of_init.o
 
 lwl-y += lowlevel_init.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9263ek
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 70e0da3b1..2004d70cb 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -99,7 +99,7 @@ static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
-static void __bare_init at91sam9263ek_init(void)
+static void __bare_init at91sam9263ek_init(void *fdt)
 {
 	struct at91sam926x_board_cfg cfg;
 
@@ -112,14 +112,23 @@ static void __bare_init at91sam9263ek_init(void)
 	at91sam926x_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-	                  NULL);
+			  fdt);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+extern char __dtb_at91sam9263ek_start[];
+
+ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
 
-	at91sam9263ek_init();
+	if (IS_ENABLED(CONFIG_MACH_AT91SAM9263EK_DT))
+		fdt = __dtb_at91sam9263ek_start - get_runtime_offset();
+	else
+		fdt = NULL;
+
+	at91sam9263ek_init(fdt);
 }
diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
new file mode 100644
index 000000000..b4d216fa3
--- /dev/null
+++ b/arch/arm/boards/at91sam9263ek/of_init.c
@@ -0,0 +1,93 @@
+/*
+ * Copyright (C) 2017 Sam Ravnborg <sam@ravnborg.org>
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
+ */
+
+#include <common.h>
+#include <envfs.h>
+#include <init.h>
+#include <gpio.h>
+
+#include <mach/at91sam9263_matrix.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91_rtt.h>
+#include <mach/hardware.h>
+#include <mach/iomux.h>
+#include <mach/io.h>
+
+static int add_smc_devices(void)
+{
+	add_generic_device("at91sam9-smc", 0, NULL, AT91SAM9263_BASE_SMC0, 0x200,
+			   IORESOURCE_MEM, NULL);
+	add_generic_device("at91sam9-smc", 1, NULL, AT91SAM9263_BASE_SMC1, 0x200,
+			   IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(add_smc_devices);
+
+static struct sam9_smc_config ek_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 2,
+};
+
+static int at91sam9263_smc_init(void)
+{
+	unsigned long csa;
+
+	if (!of_machine_is_compatible("atmel,at91sam9263ek"))
+		return 0;
+
+	/* setup bus-width (8 or 16) */
+	if (IS_ENABLED(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16))
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	csa = at91_sys_read(AT91_MATRIX_EBI0CSA);
+	csa |= AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
+	at91_sys_write(AT91_MATRIX_EBI0CSA, csa);
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &ek_nand_smc_config);
+
+	return 0;
+}
+device_initcall(at91sam9263_smc_init);
+
+static int at91sam9263ek_env_init(void)
+{
+	if (!of_machine_is_compatible("atmel,at91sam9263ek"))
+		return 0;
+
+        at91_rtt_irq_fixup(IOMEM(AT91SAM9263_BASE_RTT0));
+        at91_rtt_irq_fixup(IOMEM(AT91SAM9263_BASE_RTT1));
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_at91sam9263ek);
+
+	return 0;
+}
+late_initcall(at91sam9263ek_env_init);
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index b28614d43..e8ad841fa 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,10 +1,12 @@
 CONFIG_ARCH_AT91SAM9263=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_AT91SAM9263EK=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="9263-EK:"
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -18,6 +20,7 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
@@ -36,6 +39,7 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CLK=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
@@ -43,6 +47,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
@@ -62,9 +67,12 @@ CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_ATMEL=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
+CONFIG_SRAM=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
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
index 000000000..3681b845d
--- /dev/null
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -0,0 +1,48 @@
+#include <arm/at91sam9263ek.dts>
+/ {
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nand_controller, "partname:bareboxenv";
+		};
+	};
+
+	ahb {
+		apb {
+			mmc1: mmc@fff84000 {
+				pinctrl-0 = <
+					&pinctrl_board_mmc1
+					&pinctrl_mmc1_clk
+					&pinctrl_mmc1_slot0_cmd_dat0
+					&pinctrl_mmc1_slot0_dat1_3>;
+					cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
+					status = "okay";
+					slot@0 {
+						reg = <0>;
+						bus-width = <4>;
+						cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
+						wp-gpios = <&pioE 19 GPIO_ACTIVE_HIGH>;
+					};
+			};
+		};
+	};
+
+
+	pinctrl@fffff200 {
+		pinctrl_board_mmc1: mmc1-board {
+			atmel,pins =
+				<AT91_PIOE 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH	/* PE18 gpio CD pin pull up and deglitch */
+				 AT91_PIOE 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;		/* PE19 gpio WP pin pull up */
+		};
+	};
+};
+
+&pioB {
+	/* Enable the 50MHz oscillator for Ethernet PHY */
+	phy_50mhz {
+		gpio-hog;
+		gpios = <27 GPIO_ACTIVE_LOW>;
+		output-high;
+		line-name = "PHY 50 MHz oscillator";
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index fa9caedc9..0a9cf3ad1 100644
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
 
@@ -228,6 +235,8 @@ config SUPPORT_CALAO_DAB_MMX
 config SUPPORT_CALAO_MOB_TNY_MD2
 	bool
 
+if !AT91_MULTI_BOARDS
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
@@ -399,14 +408,6 @@ if ARCH_AT91SAM9263
 choice
 	prompt "AT91SAM9263 Board Type"
 
-config MACH_AT91SAM9263EK
-	bool "Atmel AT91SAM9263-EK"
-	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM926X_BOARD_INIT
-	help
-	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
-
 config MACH_PM9263
 	bool "Ronetix PM9263"
 	select HAVE_AT91_BOOTSTRAP
@@ -519,6 +520,7 @@ config MACH_SAMA5D4_XPLAINED
 endchoice
 
 endif
+endif
 
 # ----------------------------------------------------------
 
@@ -529,6 +531,18 @@ config AT91_MULTI_BOARDS
 
 if AT91_MULTI_BOARDS
 
+config MACH_AT91SAM9263EK
+	bool "Atmel AT91SAM9263-EK"
+	depends on ARCH_AT91SAM9263
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	select HAVE_AT91_USB_CLK
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM926X_BOARD_INIT
+	help
+	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
+
 config MACH_AT91SAM9X5EK
 	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
 	depends on ARCH_AT91SAM9X5
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 8adeee9bc..664201ceb 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -17,8 +17,10 @@ obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
+ifeq ($(CONFIG_OFDEVICE),)
+obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
+endif
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5_devices.o
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index dc6c1db4b..c7d86563a 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -5,3 +5,7 @@
 pblx-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
 FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
 image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
+
+pblx-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
+FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblx
+image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
