Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDwq8-0007Ap-3S
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:56:04 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 53ED5FFAA93
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 14:12:26 +0100 (CET)
Date: Fri, 8 Mar 2013 13:51:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308125138.GE32347@game.jcrosoft.org>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362744484-17844-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/3] Add DMO RealQ7 board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +
> +static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> +{
> +	phy_write(dev, 0x0d, device);
> +	phy_write(dev, 0x0e, reg);
> +	phy_write(dev, 0x0d, (1 << 14) | device);
> +	phy_write(dev, 0x0e, val);
> +}
> +
> +static void mx6_rgmii_rework(struct phy_device *dev)
> +{
> +	/*
> +	 * min rx data delay, max rx/tx clock delay,
> +	 * min rx/tx control delay
> +	 */
> +	mmd_write_reg(dev, 2, 4, 0);
> +	mmd_write_reg(dev, 2, 5, 0);
> +	mmd_write_reg(dev, 2, 8, 0x003ff);
> +}
> +
> +static struct fec_platform_data fec_info = {
> +	.xcv_type = RGMII,
> +	.phy_init = mx6_rgmii_rework,
> +	.phy_addr = -1,
use phy_fix_up as done on sama5d3xek

the phy_init need do be dropped now
> +};
> +
> +static void realq7_enet_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(realq7_pads_gpio, ARRAY_SIZE(realq7_pads_gpio));
> +	gpio_direction_output(RQ7_GPIO_ENET_PHYADD2, 0);
> +	gpio_direction_output(RQ7_GPIO_ENET_MODE0, 1);
> +	gpio_direction_output(RQ7_GPIO_ENET_MODE1, 1);
> +	gpio_direction_output(RQ7_GPIO_ENET_MODE2, 1);
> +	gpio_direction_output(RQ7_GPIO_ENET_MODE3, 1);
> +	gpio_direction_output(RQ7_GPIO_ENET_EN_CLK125, 1);
> +
> +	gpio_direction_output(25, 0);
> +	mdelay(50);
> +
> +	gpio_direction_output(25, 1);
> +	mdelay(50);
> +
> +	mxc_iomux_v3_setup_multiple_pads(realq7_pads_enet, ARRAY_SIZE(realq7_pads_enet));
> +
> +	imx6_add_fec(&fec_info);
> +}
> +
> +static int realq7_mem_init(void)
> +{
> +	arm_add_mem_device("ram0", 0x10000000, SZ_2G);
> +
> +	return 0;
> +}
> +mem_initcall(realq7_mem_init);
> +
> +static int realq7_spi_cs[] = { IMX_GPIO_NR(1, 12), };
> +
> +static struct spi_imx_master realq7_spi_0_data = {
> +	.chipselect = realq7_spi_cs,
> +	.num_chipselect = ARRAY_SIZE(realq7_spi_cs),
> +};
> +
> +static const struct spi_board_info realq7_spi_board_info[] = {
> +	{
> +		.name = "m25p80",
> +		.max_speed_hz = 40000000,
> +		.bus_num = 4,
> +		.chip_select = 0,
> +	}
> +};
> +
> +static struct esdhc_platform_data realq7_emmc_data = {
> +	.cd_type = ESDHC_CD_PERMANENT,
> +	.caps = MMC_MODE_8BIT,
> +	.devname = "emmc",
> +};
we was discussion of symlink on devfs my idea was to use it here instead of
the devname
> +
> +static struct stmpe_platform_data stmpe1_pdata = {
> +	.gpio_base = 224,
> +	.blocks = STMPE_BLOCK_GPIO,
> +};
> +
> +static struct stmpe_platform_data stmpe2_pdata = {
> +	.gpio_base = 240,
> +	.blocks = STMPE_BLOCK_GPIO,
> +};
> +
> +static struct i2c_board_info realq7_i2c2_devices[] = {
> +	{
> +		I2C_BOARD_INFO("stmpe-i2c", 0x40),
> +		.platform_data = &stmpe1_pdata,
> +	}, {
> +		I2C_BOARD_INFO("stmpe-i2c", 0x44),
> +		.platform_data = &stmpe2_pdata,
> +	},
> +};
> +
> +static int realq7_devices_init(void)
> +{
> +	imx6_add_mmc2(NULL);
> +	imx6_add_mmc3(&realq7_emmc_data);
> +
> +	realq7_enet_init();
> +
> +	i2c_register_board_info(1, realq7_i2c2_devices,
> +			ARRAY_SIZE(realq7_i2c2_devices));
> +
> +	imx6_add_i2c0(NULL);
> +	imx6_add_i2c1(NULL);
> +	imx6_add_i2c2(NULL);
> +
> +	spi_register_board_info(realq7_spi_board_info,
> +			ARRAY_SIZE(realq7_spi_board_info));
> +	imx6_add_spi4(&realq7_spi_0_data);
> +
> +	imx6_add_sata();
> +
> +	armlinux_set_bootparams((void *)0x10000100);
> +	armlinux_set_architecture(3769);
why a magic instead of a macro?
> +
> +	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0",
> +		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x00907000);
> +	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
> +		0, NULL, 0, 0x00907000);
> +
> +	return 0;
> +}
> +device_initcall(realq7_devices_init);
> +
> +static int realq7_env_init(void)
> +{
> +	char *source_str = NULL;
> +
> +	switch (imx_bootsource()) {
> +	case bootsource_mmc:
> +		if (!IS_ENABLED(CONFIG_MCI_STARTUP))
> +			setenv("mci0.probe", "1");
> +		devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
> +		devfs_add_partition("disk0", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
> +		source_str = "SD/MMC";
> +		break;
> +	case bootsource_spi:
> +		devfs_add_partition("m25p0", 0, SZ_256K, DEVFS_PARTITION_FIXED, "self0");
> +		devfs_add_partition("m25p0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env0");
> +		source_str = "SPI flash";
> +		break;
> +	default:
> +		printf("unknown Bootsource, no persistent environment\n");
> +		break;
> +	}
> +
> +	if (source_str)
> +		printf("Using environment from %s\n", source_str);
> +
> +	return 0;
> +}
> +late_initcall(realq7_env_init);
> +
> +static int realq7_console_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(realq7_pads, ARRAY_SIZE(realq7_pads));
> +
> +	imx6_init_lowlevel();
> +
> +	imx6_add_uart1();
> +
> +	return 0;
> +}
> +console_initcall(realq7_console_init);
> diff --git a/arch/arm/boards/dmo-mx6-realq7/config.h b/arch/arm/boards/dmo-mx6-realq7/config.h
> new file mode 100644
> index 0000000..ca15136
> --- /dev/null
> +++ b/arch/arm/boards/dmo-mx6-realq7/config.h
> @@ -0,0 +1,4 @@
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/dmo-mx6-realq7/env/init/hostname b/arch/arm/boards/dmo-mx6-realq7/env/init/hostname
> new file mode 100644
> index 0000000..863960d
> --- /dev/null
> +++ b/arch/arm/boards/dmo-mx6-realq7/env/init/hostname
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "hostname"
> +	exit
> +fi
> +
> +global.hostname=realq7
in config-board?
> diff --git a/arch/arm/boards/dmo-mx6-realq7/flash_header.c b/arch/arm/boards/dmo-mx6-realq7/flash_header.c
> new file mode 100644
> index 0000000..acd4298
> --- /dev/null
> +++ b/arch/arm/boards/dmo-mx6-realq7/flash_header.c
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
> + *
> + */
> +
> +#include <common.h>
> +#include <asm/byteorder.h>
> +#include <mach/imx-flash-header.h>
> +#include <mach/imx6-regs.h>
> +#include <asm/barebox-arm-head.h>
> +
> +void __naked __flash_header_start go(void)
> +{
> +	barebox_arm_head();
> +}
> +
> +#define APP_DEST	0x00907000
> +
> +struct imx_flash_header_v2 __flash_header_section flash_header = {
> +	.header.tag		= IVT_HEADER_TAG,
> +	.header.length		= cpu_to_be16(32),
> +	.header.version		= IVT_VERSION,
> +	.entry			= APP_DEST + 0x2000,
> +	.dcd_ptr		= 0,
> +	.boot_data_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, boot_data),
> +	.self			= APP_DEST + FLASH_HEADER_OFFSET,
> +
> +	.boot_data.start	= APP_DEST,
> +	.boot_data.size		= 192 * 1024,
barebox_image_size
> +};
> diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
> new file mode 100644
> index 0000000..65823ca
> --- /dev/null
> +++ b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
> @@ -0,0 +1,146 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <io.h>
> +#include <asm/sections.h>
> +#include <asm/mmu.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/imx6-mmdc.h>
> +
> +static inline void reg32_write(u32 reg, u32 val)
> +{
> +	writel(val, reg);
> +}
> +
> +static void sdram_init(void)
> +{
> +	reg32_write(0x021b0000, 0x0);
> +	reg32_write(0x020c4068, 0xffffffff);
> +	reg32_write(0x020c406c, 0xffffffff);
> +	reg32_write(0x020c4070, 0xffffffff);
> +	reg32_write(0x020c4074, 0xffffffff);
> +	reg32_write(0x020c4078, 0xffffffff);
> +	reg32_write(0x020c407c, 0xffffffff);
> +	reg32_write(0x020c4080, 0xffffffff);
> +	reg32_write(0x020c4084, 0xffffffff);
> +	reg32_write(0x020e0798, 0x000C0000);
> +	reg32_write(0x020e0758, 0x00000000);
> +	reg32_write(0x020e0588, 0x00000030);
> +	reg32_write(0x020e0594, 0x00000030);
> +	reg32_write(0x020e056c, 0x00000030);
> +	reg32_write(0x020e0578, 0x00000030);
> +	reg32_write(0x020e074c, 0x00000030);
> +	reg32_write(0x020e057c, 0x00000030);
> +	reg32_write(0x020e058c, 0x00000000);
> +	reg32_write(0x020e059c, 0x00000030);
> +	reg32_write(0x020e05a0, 0x00000030);
> +	reg32_write(0x020e078c, 0x00000030);
> +	reg32_write(0x020e0750, 0x00020000);
> +	reg32_write(0x020e05a8, 0x00000038);
> +	reg32_write(0x020e05b0, 0x00000038);
> +	reg32_write(0x020e0524, 0x00000038);
> +	reg32_write(0x020e051c, 0x00000038);
> +	reg32_write(0x020e0518, 0x00000038);
> +	reg32_write(0x020e050c, 0x00000038);
> +	reg32_write(0x020e05b8, 0x00000038);
> +	reg32_write(0x020e05c0, 0x00000038);
> +	reg32_write(0x020e0774, 0x00020000);
> +	reg32_write(0x020e0784, 0x00000030);
> +	reg32_write(0x020e0788, 0x00000030);
> +	reg32_write(0x020e0794, 0x00000030);
> +	reg32_write(0x020e079c, 0x00000030);
> +	reg32_write(0x020e07a0, 0x00000030);
> +	reg32_write(0x020e07a4, 0x00000030);
> +	reg32_write(0x020e07a8, 0x00000030);
> +	reg32_write(0x020e0748, 0x00000030);
> +	reg32_write(0x020e05ac, 0x00000030);
> +	reg32_write(0x020e05b4, 0x00000030);
> +	reg32_write(0x020e0528, 0x00000030);
> +	reg32_write(0x020e0520, 0x00000030);
> +	reg32_write(0x020e0514, 0x00000030);
> +	reg32_write(0x020e0510, 0x00000030);
> +	reg32_write(0x020e05bc, 0x00000030);
> +	reg32_write(0x020e05c4, 0x00000030);
> +	reg32_write(0x021b0800, 0xa1390003);
> +	reg32_write(0x021b080c, 0x0059005C);
> +	reg32_write(0x021b0810, 0x00590056);
> +	reg32_write(0x021b480c, 0x002E0049);
> +	reg32_write(0x021b4810, 0x001B0033);
> +	reg32_write(0x021b083c, 0x434F035B);
> +	reg32_write(0x021b0840, 0x033F033F);
> +	reg32_write(0x021b483c, 0x4337033D);
> +	reg32_write(0x021b4840, 0x03210275);
> +	reg32_write(0x021b0848, 0x4C454344);
> +	reg32_write(0x021b4848, 0x463F3E4A);
> +	reg32_write(0x021b0850, 0x46314742);
> +	reg32_write(0x021b4850, 0x4D2A4B39);
> +	reg32_write(0x021b081c, 0x33333333);
> +	reg32_write(0x021b0820, 0x33333333);
> +	reg32_write(0x021b0824, 0x33333333);
> +	reg32_write(0x021b0828, 0x33333333);
> +	reg32_write(0x021b481c, 0x33333333);
> +	reg32_write(0x021b4820, 0x33333333);
> +	reg32_write(0x021b4824, 0x33333333);
> +	reg32_write(0x021b4828, 0x33333333);
> +	reg32_write(0x021b08b8, 0x00000800);
> +	reg32_write(0x021b48b8, 0x00000800);
> +	reg32_write(0x021b0004, 0x00020036);
> +	reg32_write(0x021b0008, 0x09555050);
> +	reg32_write(0x021b000c, 0x8A8F7934);
> +	reg32_write(0x021b0010, 0xDB568E65);
> +	reg32_write(0x021b0014, 0x01FF00DB);
> +	reg32_write(0x021b0018, 0x00000740);
> +	reg32_write(0x021b001c, 0x00008000);
> +	reg32_write(0x021b002c, 0x000026d2);
> +	reg32_write(0x021b0030, 0x008F0E21);
> +	reg32_write(0x021b0040, 0x00000047);
> +	reg32_write(0x021b0400, 0x11420000);
> +	reg32_write(0x021b4400, 0x11420000);
> +	reg32_write(0x021b0000, 0x841A0000);
> +	reg32_write(0x021b001c, 0x04108032);
> +	reg32_write(0x021b001c, 0x00008033);
> +	reg32_write(0x021b001c, 0x00048031);
> +	reg32_write(0x021b001c, 0x09308030);
> +	reg32_write(0x021b001c, 0x04008040);
> +	reg32_write(0x021b001c, 0x0410803A);
> +	reg32_write(0x021b001c, 0x0000803B);
> +	reg32_write(0x021b001c, 0x00048039);
> +	reg32_write(0x021b001c, 0x09308038);
> +	reg32_write(0x021b001c, 0x04008048);
> +	reg32_write(0x021b0020, 0x00005800);
> +	reg32_write(0x021b0818, 0x00011117);
> +	reg32_write(0x021b4818, 0x00011117);
> +	reg32_write(0x021b0004, 0x00025576);
> +	reg32_write(0x021b0404, 0x00011006);
> +	reg32_write(0x021b001c, 0x00000000);
> +
> +	/* Enable UART for lowlevel debugging purposes. Can be removed later */
> +	reg32_write(0x020e00bc, 0x4);
> +	reg32_write(0x020e00c0, 0x4);
> +	reg32_write(0x020e0928, 0x1);
> +	reg32_write(0x021e8080, 0x00000000);
> +	reg32_write(0x021e8084, 0x00004027);
> +	reg32_write(0x021e8088, 0x00000704);
> +	reg32_write(0x021e8090, 0x00000a81);
> +	reg32_write(0x021e809c, 0x0000002b);
> +	reg32_write(0x021e80b0, 0x00013880);
> +	reg32_write(0x021e80a4, 0x0000047f);
> +	reg32_write(0x021e80a8, 0x0000c34f);
> +	reg32_write(0x021e8080, 0x00000001);
can we have not all of those magic?
> +}
> +
> +void __naked barebox_arm_reset_vector(void)
> +{
> +	arm_cpu_lowlevel_init();
> +
> +	arm_setup_stack(0x00940000 - 8);
> +
> +	if (get_pc() < 0x10000000) {
> +		sdram_init();
> +
> +		mmdc_do_write_level_calibration();
> +		mmdc_do_dqs_calibration();
> +	}
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, 0);
> +}
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 1308f3c..d908d5c 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -31,6 +31,7 @@ config ARCH_TEXT_BASE
>  	default 0x7fc00000 if MACH_GUF_VINCELL
>  	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
>  	default 0x17800000 if MACH_SABRESD
> +	default 0x4fc00000 if MACH_REALQ7
>  
>  config BOARDINFO
>  	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
> @@ -61,6 +62,7 @@ config BOARDINFO
>  	default "Ka-Ro tx53" if MACH_TX53
>  	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
>  	default "SabreSD" if MACH_SABRESD
> +	default "DataModul i.MX6Q Real Qseven" if MACH_REALQ7
>  
>  choice
>  	prompt "Select boot mode"
> @@ -496,6 +498,10 @@ config MACH_SABRELITE
>  config MACH_SABRESD
>  	bool "Freescale i.MX6 SabreSD"
>  
> +config MACH_REALQ7
> +	bool "DataModul i.MX6Q Real Qseven Board"
> +	select HAVE_DEFAULT_ENVIRONMENT_NEW
> +
>  endchoice
>  
>  endif
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
> index a9c7e8d..b6b538a 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx6.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
> @@ -50,6 +50,26 @@ static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
>  	return imx_add_spi((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
>  }
>  
> +static inline struct device_d *imx6_add_spi1(struct spi_imx_master *pdata)
> +{
> +	return imx_add_spi((void *)MX6_ECSPI2_BASE_ADDR, 1, pdata);
> +}
> +
> +static inline struct device_d *imx6_add_spi2(struct spi_imx_master *pdata)
> +{
> +	return imx_add_spi((void *)MX6_ECSPI3_BASE_ADDR, 2, pdata);
> +}
> +
> +static inline struct device_d *imx6_add_spi3(struct spi_imx_master *pdata)
> +{
> +	return imx_add_spi((void *)MX6_ECSPI4_BASE_ADDR, 3, pdata);
> +}
> +
> +static inline struct device_d *imx6_add_spi4(struct spi_imx_master *pdata)
> +{
> +	return imx_add_spi((void *)MX6_ECSPI5_BASE_ADDR, 4, pdata);
> +}
> +
>  static inline struct device_d *imx6_add_i2c0(struct i2c_platform_data *pdata)
>  {
>  	return imx_add_i2c((void *)MX6_I2C1_BASE_ADDR, 0, pdata);
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
