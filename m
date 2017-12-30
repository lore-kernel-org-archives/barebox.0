Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x241.google.com ([2607:f8b0:400d:c0d::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eV6UO-0007Ls-HW
 for barebox@lists.infradead.org; Sat, 30 Dec 2017 02:03:11 +0000
Received: by mail-qt0-x241.google.com with SMTP id g10so55839330qtj.12
 for <barebox@lists.infradead.org>; Fri, 29 Dec 2017 18:02:57 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171227211839.2359-5-sam@ravnborg.org>
References: <20171227211743.GA1084@ravnborg.org>
 <20171227211839.2359-5-sam@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Dec 2017 18:02:55 -0800
Message-ID: <CAHQ1cqGiUdFNbAGc_ce5E9cuxu4Ts7oW=XXCOu=Vg34J4yvykg@mail.gmail.com>
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
Subject: Re: [PATCH 5/5] at91sam9263ek: enable devicetree
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Dec 27, 2017 at 1:18 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Following is tested and works with DT:
> - GPIO LEDs
> - GPIO buttons
> - UART
> - nand probe
> - macb probe
> - SD card (mci1)
> - network
> - loading environment
> - loading kernel
>
> Following is not tested:
> - i2c
> - USB
>
> Changes:
> - Added of_init.c, simpler than using ifdefs in the existing init.c
> - Selected relevant symbols in Kconfig to enable use of DT
> - Added additional commands (used for debugging)
>   - iomem, clk*
> - Extended DT with:
>   - environment,barebox, to tell where to find the enviroment
>
> The log below shows:
> - barebox-environment environment.6: probe failed: No such device
>   Likely something with setup od NAND
>   But not something that has been looked into
>
> barebox 2017.12.0-00033-g0c8627b65 #6 Wed Dec 27 21:14:40 CET 2017
>
> Board: Atmel at91sam9263ek
> gpio-at91 fffff200.gpio: AT91 gpio driver registered
> gpio-at91 fffff400.gpio: AT91 gpio driver registered
> gpio-at91 fffff600.gpio: AT91 gpio driver registered
> gpio-at91 fffff800.gpio: AT91 gpio driver registered
> gpio-at91 fffffa00.gpio: AT91 gpio driver registered
> pinctrl-at91 pinctrl.2: AT91 pinctrl registered
> initcall 0x23e44540 failed: error -1073741823
> AT91: Detected soc type: at91sam9263
> AT91: Detected soc subtype: Unknown
> mdio_bus: miibus0: probed
> macb fffbc000.ethernet: Cadence MACB at 0xfffbc000
> at91_udc fff78000.gadget: at91_udc version 3 May 2006
> atmel_mci fff84000.mmc: version: 0x210
> atmel_mci fff84000.mmc: registered as fff84000.mmc
> malloc space: 0x239facc0 -> 0x23dfacbf (size 4 MiB)
> barebox-environment environment.6: probe failed: No such device
> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> running /env/bin/init...
> No USB Device cable plugged, normal boot
> \e[?25h
> Hit any key to stop autoboot:    2
>
> barebox@Atmel at91sam9263ek:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x00300000 - 0x00313fff (size 0x00014000) 300000.sram
>   0x00500000 - 0x00503fff (size 0x00004000) 500000.sram
>   0x00700000 - 0x00700fff (size 0x00001000) 700000.fb
>   0x20000000 - 0x23ffffff (size 0x04000000) ram0
>     0x239facc0 - 0x23dfacbf (size 0x00400000) malloc space
>     0x23dfacc0 - 0x23dfffef (size 0x00005330) board data
>     0x23e00000 - 0x23e54008 (size 0x00054009) barebox
>     0x23e54009 - 0x23e64cf7 (size 0x00010cef) barebox data
>     0x23e64cf8 - 0x23e681f7 (size 0x00003500) bss
>     0x23fe4000 - 0x23fe7fff (size 0x00004000) ttb
>     0x23fe8000 - 0x23feffff (size 0x00008000) stack
>   0xfff78000 - 0xfff7bfff (size 0x00004000) fff78000.gadget
>   0xfff84000 - 0xfff845ff (size 0x00000600) fff84000.mmc
>   0xfff8c000 - 0xfff8c1ff (size 0x00000200) fff8c000.serial
>   0xfffbc000 - 0xfffbc0ff (size 0x00000100) fffbc000.ethernet
>   0xffffe400 - 0xffffe5ff (size 0x00000200) at91sam9-smc0
>   0xffffea00 - 0xffffebff (size 0x00000200) at91sam9-smc1
>   0xffffee00 - 0xffffefff (size 0x00000200) ffffee00.serial
>   0xfffff200 - 0xfffff3ff (size 0x00000200) fffff200.gpio
>   0xfffff400 - 0xfffff5ff (size 0x00000200) fffff400.gpio
>   0xfffff600 - 0xfffff7ff (size 0x00000200) fffff600.gpio
>   0xfffff800 - 0xfffff9ff (size 0x00000200) fffff800.gpio
>   0xfffffa00 - 0xfffffbff (size 0x00000200) fffffa00.gpio
>   0xfffffd30 - 0xfffffd3e (size 0x0000000f) fffffd30.timer
>
> barebox@Atmel at91sam9263ek:/ clk_dump
> slow_xtal (rate 32768, enabled)
>     prog0 (rate 32768, enabled)
>         pck0 (rate 32768, disabled)
>     prog1 (rate 32768, enabled)
>         pck1 (rate 32768, disabled)
>     prog2 (rate 32768, enabled)
>         pck2 (rate 32768, disabled)
>     prog3 (rate 32768, enabled)
>         pck3 (rate 32768, disabled)
> main_xtal (rate 16367660, enabled)
>     main_osc (rate 16367660, enabled)
>         mainck (rate 16367660, enabled)
>             pllbck (rate 98205960, enabled)
>                 usbck (rate 49102980, enabled)
>                     uhpck (rate 49102980, disabled)
>                     udpck (rate 49102980, disabled)
>             pllack (rate 204595750, enabled)
>                 masterck (rate 102297875, enabled)
>                     pioA_clk (rate 102297875, enabled)
>                     pioB_clk (rate 102297875, enabled)
>                     pioCDE_clk (rate 102297875, enabled)
>                     usart0_clk (rate 102297875, enabled)
>                     usart1_clk (rate 102297875, disabled)
>                     usart2_clk (rate 102297875, disabled)
>                     mci0_clk (rate 102297875, disabled)
>                     mci1_clk (rate 102297875, disabled)
>                     can_clk (rate 102297875, disabled)
>                     twi0_clk (rate 102297875, disabled)
>                     spi0_clk (rate 102297875, disabled)
>                     spi1_clk (rate 102297875, disabled)
>                     ssc0_clk (rate 102297875, disabled)
>                     ssc1_clk (rate 102297875, disabled)
>                     ac97_clk (rate 102297875, disabled)
>                     tcb_clk (rate 102297875, disabled)
>                     pwm_clk (rate 102297875, disabled)
>                     macb0_clk (rate 102297875, enabled)
>                     g2de_clk (rate 102297875, disabled)
>                     udc_clk (rate 102297875, disabled)
>                     isi_clk (rate 102297875, disabled)
>                     lcd_clk (rate 102297875, enabled)
>                     dma_clk (rate 102297875, disabled)
>                     ohci_clk (rate 102297875, disabled)
>
> barebox@Atmel at91sam9263ek:/ devinfo
> `-- global
> `-- nv
> `-- platform
>    `-- mem0
>       `-- 0x00000000-0x03ffffff (    64 MiB): /dev/ram0
>    `-- 300000.sram
>       `-- 0x00000000-0x00013fff (    80 KiB): /dev/sram0
>    `-- 500000.sram
>       `-- 0x00000000-0x00003fff (    16 KiB): /dev/sram1
>    `-- ahb.0
>       `-- apb.1
>          `-- fffff000.interrupt-controller
>          `-- fffffc00.pmc
>          `-- ffffe200.ramc
>          `-- ffffe400.smc
>          `-- ffffe800.ramc
>          `-- ffffea00.smc
>          `-- ffffec00.matrix
>          `-- fffffd30.timer
>          `-- fff7c000.timer
>          `-- fffffd00.rstc
>          `-- fffffd10.shdwc
>          `-- pinctrl.2
>             `-- fffff200.gpio
>             `-- fffff400.gpio
>             `-- fffff600.gpio
>             `-- fffff800.gpio
>             `-- fffffa00.gpio
>          `-- ffffee00.serial
>             `-- cs0
>                `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs0
>          `-- fff8c000.serial
>             `-- cs1
>                `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs1
>          `-- fffbc000.ethernet
>             `-- miibus0
>             `-- eth0
>          `-- fff78000.gadget
>             `-- usbgadget
>          `-- fff84000.mmc
>             `-- mci0
>          `-- fffffd40.watchdog
>          `-- fffa4000.spi
>          `-- fffac000.can
>       `-- 700000.fb
>       `-- a00000.ohci
>       `-- 10000000.ebi
>    `-- i2c-gpio-0.3
>    `-- leds.4
>    `-- gpio_keys.5
>    `-- at91sam9-smc0
>    `-- at91sam9-smc1
>    `-- cs2
>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs2
>    `-- soc
>    `-- mem1
>       `-- 0x00000000-0xfffffffe (     4 GiB): /dev/mem
>    `-- environment.6
> `-- mdio_bus
> `-- fs
>    `-- ramfs0
>    `-- devfs0
> `-- net
> `-- udc0
> `-- fb0
>    `-- 0x00000000-0x000257ff (   150 KiB): /dev/fb0
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/boards/at91sam9263ek/Makefile   |  5 ++
>  arch/arm/boards/at91sam9263ek/of_init.c  | 98 ++++++++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9263ek_defconfig |  6 ++
>  arch/arm/dts/at91sam9263ek.dts           |  6 ++
>  arch/arm/mach-at91/Kconfig               |  3 +
>  arch/arm/mach-at91/at91sam9263.c         |  8 +++
>  6 files changed, 126 insertions(+)
>  create mode 100644 arch/arm/boards/at91sam9263ek/of_init.c
>
> diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
> index de4d75690..85b6ba0a5 100644
> --- a/arch/arm/boards/at91sam9263ek/Makefile
> +++ b/arch/arm/boards/at91sam9263ek/Makefile
> @@ -1,4 +1,9 @@
> +
> +ifeq ($(CONFIG_OFDEVICE),)
>  obj-y += init.o
> +else
> +obj-y += of_init.o
> +endif
>
>  lwl-y += lowlevel_init.o
>  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9263ek
> diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
> new file mode 100644
> index 000000000..155659124
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9263ek/of_init.c
> @@ -0,0 +1,98 @@
> +/*
> + * Copyright (C) 2017 Sam Ravnborg <sam@ravnborg.org>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <gpio.h>
> +
> +#include <mach/at91sam9263_matrix.h>
> +#include <mach/at91sam9_smc.h>
> +#include <mach/hardware.h>
> +#include <mach/iomux.h>
> +#include <mach/io.h>
> +
> +static int check_fdt(void)
> +{
> +       return of_machine_is_compatible("atmel,at91sam9263ek");
> +}
> +postcore_initcall(check_fdt);
> +

Reading this I realized that I wrote buggy initcalls in my original
AT91SAM9x5EK patches and set a bad example/precedent (I'll submit
patches to fix that). That check above is just going to print a error
message, but it wouldn't prevent the code for wrong board from being
executed (say if you are running image that supports both
at91sam9263ek and at91sam9g45 on either). IMHO, what you want to do,
and what I should've done as well, is to add

if (!of_machine_is_compatible("atmel,at91sam9263ek"))
    return 0;

early exit code to the start of very *_callback call. Here's a decent
example where I didn't screw this up:

https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/zii-vf610-dev/board.c#n55


> +static struct sam9_smc_config ek_nand_smc_config = {
> +       .ncs_read_setup         = 0,
> +       .nrd_setup              = 1,
> +       .ncs_write_setup        = 0,
> +       .nwe_setup              = 1,
> +
> +       .ncs_read_pulse         = 3,
> +       .nrd_pulse              = 3,
> +       .ncs_write_pulse        = 3,
> +       .nwe_pulse              = 3,
> +
> +       .read_cycle             = 5,
> +       .write_cycle            = 5,
> +
> +       .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
> +       .tdf_cycles             = 2,
> +};
> +
> +/*
> + * Initialize of SMC must come after we
> + * probe the at91sam9_smc_driver.
> + * But is required before we start the other drives.
> + * Use fs_initcall() to maintain this order.
> + */
> +static int at91sam9263_smc_init(void)
> +{
> +       unsigned long csa;
> +
> +       /* setup bus-width (8 or 16) */
> +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> +       ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
> +#else
> +       ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
> +#endif
> +

You already use IS_ENABLED below, so it might be more consistent to
use it here as well.

> +       csa = at91_sys_read(AT91_MATRIX_EBI0CSA);
> +       csa |= AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
> +       at91_sys_write(AT91_MATRIX_EBI0CSA, csa);
> +
> +       /* configure chip-select 3 (NAND) */
> +       sam9_smc_configure(0, 3, &ek_nand_smc_config);
> +
> +       return 0;
> +}
> +fs_initcall(at91sam9263_smc_init);
> +
> +static int at91sam9263ek_phy_init(void)
> +{
> +       /*
> +        * PB27 enables the 50MHz oscillator for Ethernet PHY
> +        * 1 - enable
> +        * 0 - disable
> +        */
> +       at91_set_gpio_output(AT91_PIN_PB27, 1);
> +       gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
> +       return 0;
> +}
> +device_initcall(at91sam9263ek_phy_init);
> +

This is fine as it is, but you can probably drop the code above in
favor of gpio-hog in DT file.

> +static int at91sam9263ek_env_init(void)
> +{
> +       if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
> +               defaultenv_append_directory(defaultenv_at91sam9263ek);
> +
> +       return 0;
> +}
> +late_initcall(at91sam9263ek_env_init);
> diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
> index fc92615eb..e8ad841fa 100644
> --- a/arch/arm/configs/at91sam9263ek_defconfig
> +++ b/arch/arm/configs/at91sam9263ek_defconfig
> @@ -20,6 +20,7 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
>  # CONFIG_CMD_ARM_CPUINFO is not set
>  CONFIG_LONGHELP=y
> +CONFIG_CMD_IOMEM=y
>  CONFIG_CMD_MEMINFO=y
>  # CONFIG_CMD_BOOTU is not set
>  CONFIG_CMD_GO=y
> @@ -38,6 +39,7 @@ CONFIG_CMD_EDIT=y
>  CONFIG_CMD_SPLASH=y
>  CONFIG_CMD_READLINE=y
>  CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_CLK=y
>  CONFIG_CMD_FLASH=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_LED=y
> @@ -45,6 +47,7 @@ CONFIG_CMD_LED_TRIGGER=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_NET=y
>  CONFIG_NET_NFS=y
> +CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_DRIVER_NET_MACB=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
> @@ -64,9 +67,12 @@ CONFIG_VIDEO=y
>  CONFIG_DRIVER_VIDEO_ATMEL=y
>  CONFIG_MCI=y
>  CONFIG_MCI_ATMEL=y
> +CONFIG_SRAM=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
> +CONFIG_LED_GPIO_OF=y
>  CONFIG_LED_TRIGGERS=y
> +CONFIG_KEYBOARD_GPIO=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_LFN=y
> diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
> index 7d0ae0447..f4b3098ac 100644
> --- a/arch/arm/dts/at91sam9263ek.dts
> +++ b/arch/arm/dts/at91sam9263ek.dts
> @@ -15,6 +15,11 @@
>         chosen {
>                 bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
>                 stdout-path = "serial0:115200n8";
> +
> +               environment@0 {
> +                       compatible = "barebox,environment";
> +                       device-path = &nand_controller, "partname:bareboxenv";
> +               };
>         };
>
>         memory {
> @@ -106,6 +111,7 @@
>                                 atmel,dmacon = <0x1>;
>                                 atmel,lcdcon2 = <0x80008002>;
>                                 atmel,guard-time = <1>;
> +                               atmel,lcd-wiring-mode = "IBGR";
>
>                                 display-timings {
>                                         native-mode = <&timing0>;
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 5e9c575cc..a4fc024c1 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -538,6 +538,9 @@ if AT91_MULTI_BOARDS
>  config MACH_AT91SAM9263EK
>         bool "Atmel AT91SAM9263-EK"
>         depends on ARCH_AT91SAM9263
> +       select OFDEVICE
> +       select COMMON_CLK_OF_PROVIDER
> +       select HAVE_AT91_USB_CLK
>         select HAVE_NAND_ATMEL_BUSWIDTH_16
>         select HAVE_AT91_BOOTSTRAP
>         select AT91SAM926X_BOARD_INIT
> diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
> index 35d187b4b..9d7b78dc7 100644
> --- a/arch/arm/mach-at91/at91sam9263.c
> +++ b/arch/arm/mach-at91/at91sam9263.c
> @@ -12,6 +12,13 @@
>   *  Clocks
>   * -------------------------------------------------------------------- */
>
> +#if defined(CONFIG_COMMON_CLK_AT91)
> +static void at91sam9263_initialize(void)
> +{
> +       at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
> +       at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
> +}
> +#else
>  /*
>   * The peripheral clocks.
>   */
> @@ -248,6 +255,7 @@ static void at91sam9263_initialize(void)
>         at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
>         at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
>  }
> +#endif

Is it too much work to move those two SMC-related calls into board
file and not compile mach-at91/at91sam9263.c for DT enabled build at
all?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
