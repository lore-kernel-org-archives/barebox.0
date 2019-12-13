Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhBJ-0004tF-0J
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 09:24:19 +0000
Date: Fri, 13 Dec 2019 10:24:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191213092414.b5q5bmbjkl5tcykt@pengutronix.de>
References: <20191211200243.21164-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211200243.21164-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: omap: support for WAGO PFC200v3 750-821x
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Wed, Dec 11, 2019 at 09:02:43PM +0100, Roland Hieber wrote:
> Based on the downstream patch series in the WAGO PFC firmware SDK [1].
> Downstream has support for other boards too, which we leave out for now
> because no devices are available for testing. The upstream device trees
> have been used as-is except that uart0 was set to "okay" so barebox can
> enable the console on startup.
> 
> [1]: https://github.com/WAGO/pfc-firmware-sdk/tree/V03.02.02-FW14/configs/wago-pfcXXX/patches/barebox-2018.10.0
> 
> +#include <linux/sizes.h>
> +#include <envfs.h>
> +#include <asm/armlinux.h>
> +#include <mach/am33xx-generic.h>
> +#include <mach/am33xx-silicon.h>
> +#include <mach/bbu.h>
> +
> +static int pfc_coredevice_init(void)
> +{
> +	if (!of_machine_is_compatible("wago,am335x-pfc"))
> +		return 0;
> +
> +	am33xx_register_ethaddr(0, 0);
> +
> +	return 0;
> +}
> +coredevice_initcall(pfc_coredevice_init);

You register a MAC for eth0 once here...

> +
> +#define ETH_DEVICE		0
> +#define ETHADDR_EEPROM_OFFSET	512
> +#define ETHADDR_EEPROM_LENGTH	6
> +static int pfc_set_ethaddr(void)
> +{
> +	struct cdev *cdev;
> +	u8 mac[6];
> +	int ret;
> +
> +	cdev = cdev_by_name("eeprom0");
> +	if (!cdev)
> +		return -ENODEV;
> +
> +	ret = cdev_read(cdev, mac, ETHADDR_EEPROM_LENGTH, ETHADDR_EEPROM_OFFSET, 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	eth_register_ethaddr(ETH_DEVICE, mac);

And then here again. Please decide, or implement a fallback if one
source doesn't provide a valid MAC address.

> +
> +	return 0;
> +}
> +
> +static int pfc_devices_init(void)
> +{
> +	int ret;
> +
> +	if (!of_machine_is_compatible("wago,am335x-pfc"))
> +		return 0;
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC) {
> +		if (bootsource_get_instance() == 0) {
> +			omap_set_bootmmc_devname("mmc0");
> +		} else {
> +			omap_set_bootmmc_devname("mmc1");
> +			am33xx_bbu_emmc_mlo_register_handler("mlo.emmc",
> +								"/dev/mmc1");

Why only register an update handler only when we boot from MMC? This
should always be registered.

> +		}
> +	}
> +
> +	of_device_enable_path("/chosen/environment-sd");

This is done unconditionally. Why isn't this enabled in the device tree
already?

> +	defaultenv_append_directory(defaultenv_pfc_am335x);
> +
> +	ret = pfc_set_ethaddr();
> +	if (ret < 0) {
> +		pr_info("no valid ethaddr in eeprom found. Using randomized "
> +			"MAC address\n");
> +	}
> +
> +	if (IS_ENABLED(CONFIG_SHELL_NONE))
> +		return am33xx_of_register_bootdevice();
> +
> +	return 0;
> +}
> +device_initcall(pfc_devices_init);
> diff --git a/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/emmc b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/emmc
> new file mode 100644
> index 000000000000..9affcbe2ec18
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/emmc
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +global.bootm.image=/mnt/mmc1.0/linuximage
> +global.bootm.oftree=/mnt/mmc1.0/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rw rootwait"
> diff --git a/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/mmc b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/mmc
> new file mode 100644
> index 000000000000..1430a0f76614
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/boot/mmc
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +global.bootm.image=/mnt/mmc0.0/linuximage
> +global.bootm.oftree=/mnt/mmc0.0/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
> diff --git a/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/init/bootsource b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/init/bootsource
> new file mode 100644
> index 000000000000..f35c7df46e03
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/defaultenv-pfc-am335x/init/bootsource
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +if [ -n "$nv.boot.default" ]; then
> +	exit
> +fi
> +
> +if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
> +	global.boot.default="emmc mmc net"
> +elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
> +	global.boot.default="mmc emmc net"
> +elif [ $bootsource = net ]; then
> +	global.boot.default="net emmc mmc"
> +fi
> diff --git a/arch/arm/boards/wago-pfc-am335x/lowlevel.c b/arch/arm/boards/wago-pfc-am335x/lowlevel.c
> new file mode 100644
> index 000000000000..78112cb03cd6
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/lowlevel.c
> @@ -0,0 +1,98 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <init.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/am33xx-silicon.h>
> +#include <mach/am33xx-clock.h>
> +#include <mach/generic.h>
> +#include <mach/sdrc.h>
> +#include <mach/sys_info.h>
> +#include <mach/syslib.h>
> +#include <mach/am33xx-mux.h>
> +#include <mach/am33xx-generic.h>
> +#include <mach/wdt.h>
> +#include <debug_ll.h>
> +
> +#include "ram-timings.h"
> +
> +/**
> + * @brief The basic entry point for board initialization.
> + *
> + * This is called as part of machine init (after arch init).
> + * This is again called with stack in SRAM, so not too many
> + * constructs possible here.
> + *
> + * @return void
> + */
> +static noinline void am33xx_pfc_sram_init(void *fdt, int sdram)
> +{
> +	/*
> +	 * WDT1 is already running when the bootloader gets control
> +	 * Disable it to avoid "random" resets
> +	 */
> +	writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> +	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +
> +	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> +	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +
> +	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
> +
> +	am335x_sdram_init(DDR_IOCTRL, &pfc_timings[sdram].cmd_ctrl,
> +			&pfc_timings[sdram].regs,
> +			&pfc_timings[sdram].data);
> +
> +	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
> +	am33xx_enable_uart0_pin_mux();
> +	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
> +	putc_ll('>');
> +
> +	am335x_barebox_entry(fdt);
> +}
> +
> +static noinline void am33xx_pfc_board_entry(unsigned long bootinfo, int sdram,
> +					void *fdt)
> +{
> +	am33xx_save_bootinfo((void *)bootinfo);
> +
> +	arm_cpu_lowlevel_init();
> +
> +	/*
> +	 * Setup C environment, the board init code uses global variables.
> +	 * Stackpointer has already been initialized by the ROM code.
> +	 */
> +	relocate_to_current_adr();
> +	setup_c();
> +	am33xx_pfc_sram_init(fdt, sdram);
> +}
> +
> +#define PFC_ENTRY_MLO(name, fdt_name, mem_size)				\
> +	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
> +	{								\
> +		extern char __dtb_z_##fdt_name##_start[];		\
> +		void *fdt = __dtb_z_##fdt_name##_start +		\
> +			get_runtime_offset();				\
> +		am33xx_pfc_board_entry(bootinfo, mem_size, fdt);	\
> +	}
> +
> +#define PFC_ENTRY(name, fdt_name, mem_size)				\
> +	ENTRY_FUNCTION(name, r0, r1, r2)				\
> +	{								\
> +		extern char __dtb_z_##fdt_name##_start[];		\
> +		void *fdt = __dtb_z_##fdt_name##_start +		\
> +			get_runtime_offset();				\
> +		barebox_arm_entry(0x80000000, mem_size, fdt);		\

You should use am335x_barebox_entry() here.

> +	}
> +
> +PFC_ENTRY_MLO(start_am33xx_pfc_750_821x_sram_512mb, am335x_pfc_750_821x_mlo, PFC_DDR3_512MB);
> +PFC_ENTRY(start_am33xx_pfc_750_821x_sdram, am335x_pfc_750_821x, SZ_512M);

Without adding support for the different SDRAM sizes it doesn't make
much sense to put ENTRY_FUNCTION into macros.

> diff --git a/arch/arm/boards/wago-pfc-am335x/ram-timings.h b/arch/arm/boards/wago-pfc-am335x/ram-timings.h
> new file mode 100644
> index 000000000000..cc3d518f0c27
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/ram-timings.h
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +#ifndef __RAM_TIMINGS_H
> +#define __RAM_TIMINGS_H
> +
> +#define DDR_IOCTRL	0x18B
> +
> +struct am335x_sdram_timings {
> +	struct am33xx_emif_regs regs;
> +	struct am33xx_ddr_data data;
> +	struct am33xx_cmd_control cmd_ctrl;
> +};
> +
> +enum {
> +	PFC_DDR3_256MB,
> +	PFC_DDR3_512MB,
> +};

Only the 512MiB entry appears to be used. Do we need the 256MiB entry?

> +
> +struct am335x_sdram_timings pfc_timings[] = {
> +	[PFC_DDR3_256MB] = {
> +		.regs = {
> +			.emif_read_latency	= 0x100007,
> +			.emif_tim1		= 0x888A39A,
> +			.emif_tim2		= 0x223F7FDA,
> +			.emif_tim3		= 0x501F843F,
> +			.sdram_config		= 0x61C04AB2,
> +			.sdram_ref_ctrl		= 0x93B,
> +			.ocp_config		= 0x00141414,
> +			.zq_config		= 0x50074BE4,
> +			.sdram_config2		= 0x0,
> +		},
> +		.data = {
> +			.rd_slave_ratio0        = 0x38,
> +			.wr_dqs_slave_ratio0    = 0x44,
> +			.fifo_we_slave_ratio0	= 0x94,
> +			.wr_slave_ratio0        = 0x7D,
> +			.use_rank0_delay	= 0x01,
> +			.dll_lock_diff0		= 0x0,
> +		},
> +		.cmd_ctrl = {
> +			.slave_ratio0	= 0x80,
> +			.dll_lock_diff0	= 0x1,
> +			.invert_clkout0	= 0x0,
> +			.slave_ratio1	= 0x80,
> +			.dll_lock_diff1	= 0x1,
> +			.invert_clkout1	= 0x0,
> +			.slave_ratio2	= 0x80,
> +			.dll_lock_diff2	= 0x1,
> +			.invert_clkout2	= 0x0,
> +		},
> +	},
> +
> +	[PFC_DDR3_512MB] = {
> +		.regs = {
> +			.emif_read_latency	= 0x100007,
> +			.emif_tim1		= 0x0AAAD4DB,
> +			.emif_tim2		= 0x226B7FDA,
> +			.emif_tim3		= 0x501F867F,
> +			.sdram_config		= 0x61C04B32,
> +			.sdram_ref_ctrl		= 0x20000064,
> +			.ocp_config		= 0x00141414,
> +			.zq_config		= 0x50074BE4,
> +			.sdram_config2		= 0x0,
> +		},
> +		.data = {
> +			.rd_slave_ratio0        = 0x38,
> +			.wr_dqs_slave_ratio0    = 0x44,
> +			.fifo_we_slave_ratio0	= 0x94,
> +			.wr_slave_ratio0        = 0x7D,
> +			.use_rank0_delay	= 0x01,
> +			.dll_lock_diff0		= 0x0,
> +		},
> +		.cmd_ctrl = {
> +			.slave_ratio0	= 0x80,
> +			.dll_lock_diff0	= 0x1,
> +			.invert_clkout0	= 0x0,
> +			.slave_ratio1	= 0x80,
> +			.dll_lock_diff1	= 0x1,
> +			.invert_clkout1	= 0x0,
> +			.slave_ratio2	= 0x80,
> +			.dll_lock_diff2	= 0x1,
> +			.invert_clkout2	= 0x0,
> +		},
> +
> +	},
> +};
> +
> +#endif
> diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
> index efe991105085..6870c7ea0310 100644
> --- a/arch/arm/configs/am335x_mlo_defconfig
> +++ b/arch/arm/configs/am335x_mlo_defconfig
> @@ -6,6 +6,7 @@ CONFIG_OMAP_MULTI_BOARDS=y
>  CONFIG_MACH_AFI_GF=y
>  CONFIG_MACH_BEAGLEBONE=y
>  CONFIG_MACH_PHYTEC_SOM_AM335X=y
> +CONFIG_MACH_WAGO_PFC_AM335X=y
>  CONFIG_THUMB2_BAREBOX=y
>  # CONFIG_MEMINFO is not set
>  CONFIG_MMU=y
> diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
> index ba9015825264..58ffdec8853b 100644
> --- a/arch/arm/configs/omap_defconfig
> +++ b/arch/arm/configs/omap_defconfig
> @@ -8,6 +8,7 @@ CONFIG_MACH_BEAGLE=y
>  CONFIG_MACH_BEAGLEBONE=y
>  CONFIG_MACH_PHYTEC_SOM_AM335X=y
>  CONFIG_MACH_VSCOM_BALTOS=y
> +CONFIG_MACH_WAGO_PFC_AM335X=y
>  CONFIG_MACH_WAGO_PFC_AM35XX=y
>  CONFIG_THUMB2_BAREBOX=y
>  CONFIG_ARM_BOARD_APPEND_ATAG=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 294a0bfa5525..1788e698c1c6 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -140,6 +140,8 @@ lwl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
>  lwl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
>  
>  lwl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
> +lwl-dtb-$(CONFIG_MACH_WAGO_PFC_AM335X) += am335x-pfc-750_821x.dtb.o \
> +	am335x-pfc-750_821x-mlo.dtb.o
>  lwl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
>  lwl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
>  lwl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
> diff --git a/arch/arm/dts/am335x-pfc-750_821x-mlo.dts b/arch/arm/dts/am335x-pfc-750_821x-mlo.dts
> new file mode 100644
> index 000000000000..ae16ce1452de
> --- /dev/null
> +++ b/arch/arm/dts/am335x-pfc-750_821x-mlo.dts
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2017 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Heinrich Toews <heinrich.toews@wago.com>
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "am335x-pfc.dtsi"
> +#include "am335x-pfc-emmc.dtsi"
> +#include "am335x-pfc-strip.dtsi"
> +#include "am33xx-strip.dtsi"
> +#include "am33xx-clocks-strip.dtsi"
> +
> +/ {
> +	model = "PFC-750-821x MLO";
> +	compatible = "wago,am335x-pfc-750_821x", "wago,am335x-pfc", "ti,am33xx";
> +	board-variant = "pfc200v3";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>; /* 512 MB */
> +	};

This is unused. Please drop to avoid confusion.

> +};
> +
> +&mmc2 {
> +	status = "okay";
> +};
> diff --git a/arch/arm/dts/am335x-pfc-750_821x.dts b/arch/arm/dts/am335x-pfc-750_821x.dts
> new file mode 100644
> index 000000000000..5ad53c878848
> --- /dev/null
> +++ b/arch/arm/dts/am335x-pfc-750_821x.dts
> @@ -0,0 +1,66 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2017 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Heinrich Toews <heinrich.toews@wago.com>
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "am335x-pfc.dtsi"
> +#include "am335x-pfc-emmc.dtsi"
> +#include "am335x-pfc-leds.dtsi"
> +#include "am335x-pfc-rmii12.dtsi"
> +
> +/ {
> +	model = "PFC-750-821x";
> +	compatible = "wago,am335x-pfc-750_821x", "wago,am335x-pfc", "ti,am33xx";
> +	board-variant = "pfc200v3";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>; /* 512 MB */
> +	};

Also unused.

> +};
> +
> +&i2c0 {
> +	pca953x: pca953x@70 {
> +		compatible = "nxp,pca9538";
> +		reg = <0x70>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		switch_reset {
> +			gpio-hog;
> +			gpios = <4 GPIO_ACTIVE_HIGH>;
> +			output-high;
> +			line-name = "switch-reset";
> +		};
> +	};
> +};
> +
> +&mmc1 {
> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&mmc2 {
> +	status = "okay";
> +};
> +
> +&pca9552_60 {
> +	status = "okay";
> +};
> +
> +&pca9552_61 {
> +	status = "okay";
> +};
> +
> +&mac {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> diff --git a/arch/arm/dts/am335x-pfc-emmc.dtsi b/arch/arm/dts/am335x-pfc-emmc.dtsi
> new file mode 100644
> index 000000000000..67a54f8a0ad5
> --- /dev/null
> +++ b/arch/arm/dts/am335x-pfc-emmc.dtsi
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +&am33xx_pinmux {
> +	emmc_pins: pinmux_emmc_pins {
> +		pinctrl-single,pins = <
> +			0x080 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE2) /* gpmc_csn1.mmc1_clk */
> +			0x084 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
> +			0x000 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE1) /* gpmc_ad0.gpmc_ad0  */
> +			0x004 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE1) /* gpmc_ad0.gpmc_ad1  */
> +			0x008 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE1) /* gpmc_ad0.gpmc_ad2  */
> +			0x00c (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE1) /* gpmc_ad0.gpmc_ad3  */
> +		>;
> +	};
> +};
> +
> +&mmc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_pins>;
> +	vmmc-supply = <&vmmcsd_fixed>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "disabled";
> +};
> diff --git a/arch/arm/dts/am335x-pfc-leds.dtsi b/arch/arm/dts/am335x-pfc-leds.dtsi
> new file mode 100644
> index 000000000000..94ce7b7067e3
> --- /dev/null
> +++ b/arch/arm/dts/am335x-pfc-leds.dtsi
> @@ -0,0 +1,203 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
> + *
> + * Copyright (C) 2015 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Heinrich Toews <heinrich.toews@wago.com>
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +&i2c0 {
> +	/*
> +	 * Note:
> +	 * The predefined order here determines
> +	 * the order how leds are enabled.
> +	 *
> +	 * Note: BUG in barebox-led trigger code.
> +	 * triggers are assuming, that leds-max
> +	 * value is 1. this is correct for gpio-leds but
> +	 * not for brightness driven leds like the
> +	 * pca 9552 chip.
> +	 *
> +	 * for pca-chips use custom brightness values for
> +	 * triggering:
> +	 *
> +	 * 		1 Blink  1 HZ
> +	 * 		2 Blink  4 HZ
> +	 * 		3 Blink 10 HZ
> +	 */
> +
> +	pca9552_61: pca9552@61 {
> +		compatible = "pca9552";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x61>;
> +
> +		mask-off,color = <0x55>;
> +
> +		mask-on,red-all = <0x44>;
> +		mask-on,green-all = <0x11>;
> +
> +		status = "disabled";
> +
> +		u1-green@11 {
> +		      label = "u1-green";
> +		      reg = <11>;
> +		      linux,default-trigger = "none";

no trigger is the default anyway, no need to set it explicitly.

> +		};
> +
> +		u1-red@10 {
> +		      label = "u1-red";
> +		      reg = <10>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u2-green@9 {
> +		      label = "u2-green";
> +		      reg = <9>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u2-red@8 {
> +		      label = "u2-red";
> +		      reg = <8>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u3-green@7 {
> +		      label = "u3-green";
> +		      reg = <7>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u3-red@6 {
> +		      label = "u3-red";
> +		      reg = <6>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u4-green@5 {
> +		      label = "u4-green";
> +		      reg = <5>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u4-red@4 {
> +		      label = "u4-red";
> +		      reg = <4>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u5-green@3 {
> +		      label = "u5-green";
> +		      reg = <3>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u5-red@2 {
> +		      label = "u5-red";
> +		      reg = <2>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u6-green@1 {
> +		      label = "u6-green";
> +		      reg = <1>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u6-red@0 {
> +		      label = "u6-red";
> +		      reg = <0>;
> +		      linux,default-trigger = "none";
> +		};
> +        };
> +
> +	pca9552_60: pca9552@60 {
> +		compatible = "pca9552";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x60>;
> +
> +		mask-off,color = <0x55>;
> +
> +		mask-on,red-all = <0x44>;
> +		mask-on,green-all = <0x11>;
> +
> +		status = "disabled";
> +
> +		sys-red@0 {
> +			label = "sys-red";
> +			reg = <0>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		sys-green@1 {
> +			label = "sys-green";
> +			reg = <1>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		run-red@2 {
> +			label = "run-red";
> +			reg = <2>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		run-green@3 {
> +		      label = "run-green";
> +		      reg = <3>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		io-red@4 {
> +		      label = "io-red";
> +		      reg = <4>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		io-green@5 {
> +		      label = "io-green";
> +		      reg = <5>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		ms-red@6 {
> +		      label = "ms-red";
> +		      reg = <6>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		ms-green@7 {
> +		      label = "ms-green";
> +		      reg = <7>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		ns-red@8 {
> +		      label = "ns-red";
> +		      reg = <8>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		ns-green@9 {
> +		      label = "ns-green";
> +		      reg = <9>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u7-red@10 {
> +		      label = "u7-red";
> +		      reg = <10>;
> +		      linux,default-trigger = "none";
> +		};
> +
> +		u7-green@11 {
> +		      label = "u7-green";
> +		      reg = <11>;
> +		      linux,default-trigger = "none";
> +		};
> +	};
> +};
> diff --git a/arch/arm/dts/am335x-pfc-nand.dtsi b/arch/arm/dts/am335x-pfc-nand.dtsi

This isn't used anywhere in this patch.


[...]

> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
> +	status = "disabled";

Status disabled should be the default already.

> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>;
> +	status = "disabled";
> +};
> +
> +	eeprom: eeprom@54 {
> +		status = "okay";

This is the default.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
