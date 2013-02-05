Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2myP-00028f-1p
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:10:27 +0000
Date: Tue, 5 Feb 2013 19:10:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130205181022.GA27438@pengutronix.de>
References: <1360083234-8252-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360083234-8252-1-git-send-email-h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] ARM i.MX6: Add support for SabreSD board
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Hi Hubert!

On Tue, Feb 05, 2013 at 05:53:54PM +0100, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  Ethernet is not working yet. I took over the initialisation from u-boot.
>  Phy access seems to work, but I don't get any data out. 
>  So some help is very appreciated ...
> 
>  Best regards
>  Hubert
> 
>  arch/arm/Makefile                                  |   1 +
>  arch/arm/boards/freescale-mx6-sabresd/Makefile     |   4 +
>  arch/arm/boards/freescale-mx6-sabresd/board.c      | 271 +++++++++++++++++++++
>  arch/arm/boards/freescale-mx6-sabresd/config.h     |   4 +
>  .../freescale-mx6-sabresd/env/init/config-board    |   7 +
>  .../boards/freescale-mx6-sabresd/flash_header.c    | 181 ++++++++++++++
>  arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  10 +
>  arch/arm/configs/freescale-mx6-sabresd_defconfig   |  71 ++++++
>  arch/arm/mach-imx/Kconfig                          |   5 +
>  9 files changed, 554 insertions(+)
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/board.c
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/config.h
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
>  create mode 100644 arch/arm/configs/freescale-mx6-sabresd_defconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index fcb2969..55290a9 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -157,6 +157,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
>  board-$(CONFIG_MACH_TX53)			:= karo-tx53
>  board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
>  board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
> +board-$(CONFIG_MACH_SABRESD)			:= freescale-mx6-sabresd
>  
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
> new file mode 100644
> index 0000000..21fb7d9
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
> @@ -0,0 +1,4 @@
> +obj-y += board.o flash_header.o
> +pbl-y += flash_header.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
> new file mode 100644
> index 0000000..d341cf9
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
> @@ -0,0 +1,271 @@
> +/*
> + * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
> + *
> + * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
> + * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
> +#include <init.h>
> +#include <environment.h>
> +#include <mach/imx6-regs.h>
> +#include <fec.h>
> +#include <mach/gpio.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <partition.h>
> +#include <linux/phy.h>
> +#include <asm/io.h>
> +#include <asm/mmu.h>
> +#include <mach/generic.h>
> +#include <sizes.h>
> +#include <net.h>
> +#include <mach/imx6.h>
> +#include <mach/devices-imx6.h>
> +#include <mach/iomux-mx6.h>
> +#include <mach/gpio.h>
> +#include <spi/spi.h>
> +#include <mach/spi.h>
> +#include <mach/usb.h>
> +
> +#define SABRESD_SD2_CD	IMX_GPIO_NR(2, 2)
> +#define SABRESD_SD2_WP	IMX_GPIO_NR(2, 3)
> +
> +#define SABRESD_SD3_CD	IMX_GPIO_NR(2, 0)
> +#define SABRESD_SD3_WP	IMX_GPIO_NR(2, 1)
> +
> +static iomux_v3_cfg_t sabresd_pads[] = {
> +	/* UART1 */
> +	MX6Q_PAD_CSI0_DAT11__UART1_RXD,
> +	MX6Q_PAD_CSI0_DAT10__UART1_TXD,
> +
> +	/* SD2 */
> +	MX6Q_PAD_SD2_CLK__USDHC2_CLK,
> +	MX6Q_PAD_SD2_CMD__USDHC2_CMD,
> +	MX6Q_PAD_SD2_DAT0__USDHC2_DAT0,
> +	MX6Q_PAD_SD2_DAT1__USDHC2_DAT1,
> +	MX6Q_PAD_SD2_DAT2__USDHC2_DAT2,
> +	MX6Q_PAD_SD2_DAT3__USDHC2_DAT3,
> +	MX6Q_PAD_NANDF_D4__USDHC2_DAT4,
> +	MX6Q_PAD_NANDF_D5__USDHC2_DAT5,
> +	MX6Q_PAD_NANDF_D6__USDHC2_DAT6,
> +	MX6Q_PAD_NANDF_D7__USDHC2_DAT7,
> +	MX6Q_PAD_NANDF_D2__GPIO_2_2,	/* CD */
> +	MX6Q_PAD_NANDF_D3__GPIO_2_3,	/* WP */
> +
> +	/* SD3 */
> +	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
> +	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
> +	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
> +	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
> +	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
> +	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
> +	MX6Q_PAD_SD3_DAT4__USDHC3_DAT4,
> +	MX6Q_PAD_SD3_DAT5__USDHC3_DAT5,
> +	MX6Q_PAD_SD3_DAT6__USDHC3_DAT6,
> +	MX6Q_PAD_SD3_DAT7__USDHC3_DAT7,
> +	MX6Q_PAD_NANDF_D0__GPIO_2_0,	/* CD */
> +	MX6Q_PAD_NANDF_D1__GPIO_2_1,	/* WP */
> +
> +	/* SD4 */
> +	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
> +	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
> +	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
> +	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
> +	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
> +	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
> +	MX6Q_PAD_SD4_DAT4__USDHC4_DAT4,
> +	MX6Q_PAD_SD4_DAT5__USDHC4_DAT5,
> +	MX6Q_PAD_SD4_DAT6__USDHC4_DAT6,
> +	MX6Q_PAD_SD4_DAT7__USDHC4_DAT7,
> +
> +	/* ECSPI1 */
> +	MX6Q_PAD_KEY_COL0__ECSPI1_SCLK,
> +	MX6Q_PAD_KEY_ROW0__ECSPI1_MOSI,
> +	MX6Q_PAD_KEY_COL1__ECSPI1_MISO,
> +	MX6Q_PAD_KEY_ROW1__GPIO_4_9,	/* CS0 */
> +
> +	/* I2C0 */
> +	MX6Q_PAD_CSI0_DAT8__I2C1_SDA,
> +	MX6Q_PAD_CSI0_DAT9__I2C1_SCL,
> +
> +	/* I2C1 */
> +	MX6Q_PAD_KEY_COL3__I2C2_SCL,
> +	MX6Q_PAD_KEY_ROW3__I2C2_SDA,
> +
> +	/* I2C2 */
> +	MX6Q_PAD_GPIO_3__I2C3_SCL,
> +	MX6Q_PAD_GPIO_6__I2C3_SDA,
> +};
> +
> +static iomux_v3_cfg_t sabresd_enet_pads[] = {
> +	/* Ethernet */
> +	MX6Q_PAD_ENET_MDC__ENET_MDC,
> +	MX6Q_PAD_ENET_MDIO__ENET_MDIO,
> +	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
> +
> +	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
> +	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
> +	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
> +	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
> +	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
> +
> +	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
> +	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
> +	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
> +	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
> +	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
> +	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
> +	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
> +
> +	/* AR8031 PHY Reset */
> +	MX6Q_PAD_ENET_CRS_DV__GPIO_1_25,
> +};
> +
> +static int sabresd_mem_init(void)
> +{
> +	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
> +
> +	return 0;
> +}
> +mem_initcall(sabresd_mem_init);
> +
> +static void mx6_rgmii_rework(struct phy_device *dev)
> +{
> +	u16 val;
> +
> +	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
> +	phy_write(dev, 0xd, 0x7);
> +	phy_write(dev, 0xe, 0x8016);
> +	phy_write(dev, 0xd, 0x4007);
> +
> +	val = phy_read(dev, 0xe);
> +	val &= 0xffe3;
> +	val |= 0x18;
> +	phy_write(dev, 0xe, val);
> +
> +	/* introduce tx clock delay */
> +	phy_write(dev, 0x1d, 0x5);
> +	val = phy_read(dev, 0x1e);
> +	val |= 0x0100;
> +	phy_write(dev, 0x1e, val);
> +}
> +
> +static struct fec_platform_data fec_info = {
> +	.xcv_type = RGMII,
> +	.phy_init = mx6_rgmii_rework,
> +	.phy_addr = 1,
> +};
> +
> +static int sabresd_enet_setup(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(sabresd_enet_pads, ARRAY_SIZE(sabresd_enet_pads));
> +
> +	/* Reset AR8031 PHY */
> +	gpio_direction_output(IMX_GPIO_NR(1, 25) , 0);
> +	udelay(500);
> +	gpio_set_value(IMX_GPIO_NR(1, 25), 1);
> +
> +	return 0;
> +}
> +
> +static inline int imx6_iim_register_fec_ethaddr(void)
> +{
> +	u32 value;
> +	u8 buf[6];
> +
> +	value = readl(MX6_OCOTP_BASE_ADDR + 0x630);
> +	buf[0] = (value >> 8);
> +	buf[1] = value;
> +
> +	value = readl(MX6_OCOTP_BASE_ADDR + 0x620);
> +	buf[2] = value >> 24;
> +	buf[3] = value >> 16;
> +	buf[4] = value >> 8;
> +	buf[5] = value;
> +
> +	eth_register_ethaddr(0, buf);
> +
> +	return 0;
> +}
> +
> +static int sabresd_spi_cs[] = {IMX_GPIO_NR(4, 9)};
> +
> +static struct spi_imx_master sabresd_spi_0_data = {
> +	.chipselect = sabresd_spi_cs,
> +	.num_chipselect = ARRAY_SIZE(sabresd_spi_cs),
> +};
> +
> +static const struct spi_board_info sabresd_spi_board_info[] = {
> +	{
> +		.name = "m25p80",
> +		.max_speed_hz = 40000000,
> +		.bus_num = 0,
> +		.chip_select = 0,
> +	}
> +};
> +
> +static struct esdhc_platform_data sabresd_sd2_data = {
> +	.cd_gpio = SABRESD_SD2_CD,
> +	.cd_type = ESDHC_CD_GPIO,
> +	.wp_gpio = SABRESD_SD2_WP,
> +	.wp_type = ESDHC_WP_GPIO,
> +};
> +
> +static struct esdhc_platform_data sabresd_sd3_data = {
> +	.cd_gpio = SABRESD_SD3_CD,
> +	.cd_type = ESDHC_CD_GPIO,
> +	.wp_gpio = SABRESD_SD3_WP,
> +	.wp_type = ESDHC_WP_GPIO,
> +};
> +
> +static struct esdhc_platform_data sabresd_sd4_data = {
> +	.cd_type = ESDHC_CD_PERMANENT,
> +	.wp_type = ESDHC_WP_CONTROLLER,
> +};
> +
> +static int sabresd_devices_init(void)
> +{
> +	imx6_add_mmc1(&sabresd_sd2_data);
> +	imx6_add_mmc2(&sabresd_sd3_data);
> +	imx6_add_mmc3(&sabresd_sd4_data);
> +
> +	sabresd_enet_setup();

I think this is not necessary. The SabreSD ethernet works without this
and you can merge the two pinmuxings. On the SabreLite this was necessary
because of remuxing.
The rest of the ethernet looks okay though and should work. I have a v2012.08.0
barebox for the SabreSD that only does ethernet (Forgot to mainline the patches
:-( ). The pinctrl and the rest is almost the same. The only difference is the
rgmii_rework.
I have
	imx6_add_fec(&fec_info);
        mx6_rgmii_rework();
And I use mii_device to do the rgmii_rework. I haven't followed the changes in
the phy-driver since 2012.08.0, so I don't know if that makes any difference in
the setup of the fec.

> +	imx6_iim_register_fec_ethaddr();
> +	imx6_add_fec(&fec_info);
> +
> +	spi_register_board_info(sabresd_spi_board_info,
> +			ARRAY_SIZE(sabresd_spi_board_info));
> +	imx6_add_spi0(&sabresd_spi_0_data);
> +
> +	armlinux_set_bootparams((void *)0x10000100);
> +	armlinux_set_architecture(3980);
> +
> +	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
> +	devfs_add_partition("m25p0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
> +
> +	return 0;
> +}
> +device_initcall(sabresd_devices_init);
> +
> +static int sabresd_console_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(sabresd_pads, ARRAY_SIZE(sabresd_pads));
> +
> +	imx6_init_lowlevel();
> +
> +	imx6_add_uart0();
> +
> +	return 0;
> +}
> +console_initcall(sabresd_console_init);
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/config.h b/arch/arm/boards/freescale-mx6-sabresd/config.h
> new file mode 100644
> index 0000000..ca15136
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/config.h
> @@ -0,0 +1,4 @@
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
> new file mode 100644
> index 0000000..cf936fb
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.hostname=SabreSD
> +global.linux.bootargs.base="console=ttymxc0,115200"
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash_header.c b/arch/arm/boards/freescale-mx6-sabresd/flash_header.c
> new file mode 100644
> index 0000000..0c32bdc
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/flash_header.c
> @@ -0,0 +1,181 @@
> +/*
> + * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
> + *
> + * based on arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
> + * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>

If I see this right, it is not _based_ on freescale-mx6-sabrelite/flash_header.c,
but is the SAME file and therefore the same as freescale-mx6-arm2/flash_header.c

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
> +#define DCD(a, v) { .addr = cpu_to_be32(a), .val = cpu_to_be32(v), }
> +
> +struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a8, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b0, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x524, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x51c, 0x00000030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x518, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x50c, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b8, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c0, 0x00000030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5ac, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b4, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x528, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x520, 0x00020030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x514, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x510, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5bc, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c4, 0x00020030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x56c, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x578, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x588, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x594, 0x00020030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x57c, 0x00020030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x590, 0x00003000),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x598, 0x00003000),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x58c, 0x00000000),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x59c, 0x00003030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a0, 0x00003030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x784, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x788, 0x00000030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x794, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x79c, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a0, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a4, 0x00000030),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a8, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x748, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x74c, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x750, 0x00020000),
> +
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x758, 0x00000000),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x774, 0x00020000),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x78c, 0x00000030),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x798, 0x000C0000),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x81c, 0x33333333),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x820, 0x33333333),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x824, 0x33333333),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x828, 0x33333333),
> +
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x81c, 0x33333333),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x820, 0x33333333),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x824, 0x33333333),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x828, 0x33333333),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x018, 0x00081740),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008000),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x00c, 0x555A7975),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x010, 0xFF538E64),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x014, 0x01FF00DB),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x02c, 0x000026D2),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x030, 0x005B0E21),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x008, 0x09444040),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x004, 0x00025576),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x040, 0x00000027),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0x831A0000),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04088032),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0408803A),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008033),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0000803B),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428031),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428039),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408030),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408038),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008040),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008048),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x800, 0xA1380003),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x800, 0xA1380003),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x020, 0x00005800),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x818, 0x00022227),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x818, 0x00022227),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x83c, 0x434B0350),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x840, 0x034C0359),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x83c, 0x434B0350),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x840, 0x03650348),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x848, 0x4436383B),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x848, 0x39393341),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x850, 0x35373933),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x850, 0x48254A36),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x80c, 0x001F001F),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x810, 0x001F001F),
> +
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x80c, 0x00440044),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x810, 0x00440044),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x8b8, 0x00000800),
> +	DCD(MX6_MMDC_P1_BASE_ADDR + 0x8b8, 0x00000800),
> +
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00000000),
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x404, 0x00011006),
> +
> +	DCD(MX6_CCM_BASE_ADDR + 0x068, 0x00c03f3f),
> +	DCD(MX6_CCM_BASE_ADDR + 0x06c, 0x0030fc03),
> +	DCD(MX6_CCM_BASE_ADDR + 0x070, 0x0fffc000),
> +	DCD(MX6_CCM_BASE_ADDR + 0x074, 0x3ff00000),
> +	DCD(MX6_CCM_BASE_ADDR + 0x078, 0x00fff300),
> +	DCD(MX6_CCM_BASE_ADDR + 0x07c, 0x0f0000c3),
> +	DCD(MX6_CCM_BASE_ADDR + 0x080, 0x000003ff),
> +
> +	/* enable AXI cache for VDOA/VPU/IPU */
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000cf),
> +	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
> +};
> +
> +#define APP_DEST	CONFIG_TEXT_BASE
> +
> +struct imx_flash_header_v2 __flash_header_section flash_header = {
> +	.header.tag		= IVT_HEADER_TAG,
> +	.header.length		= cpu_to_be16(32),
> +	.header.version		= IVT_VERSION,
> +	.entry			= (u32)_stext,
> +	.dcd_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, dcd),
> +	.boot_data_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, boot_data),
> +	.self			= APP_DEST + FLASH_HEADER_OFFSET,
> +
> +	.boot_data.start	= APP_DEST,
> +	.boot_data.size		= barebox_image_size,
> +
> +	.dcd.header.tag		= DCD_HEADER_TAG,
> +	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
> +	.dcd.header.version	= DCD_VERSION,
> +
> +	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
> +	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
> +	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
> +};
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
> new file mode 100644
> index 0000000..8f995ee
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
> @@ -0,0 +1,10 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(0x10000000, SZ_1G, 0);
> +}
> diff --git a/arch/arm/configs/freescale-mx6-sabresd_defconfig b/arch/arm/configs/freescale-mx6-sabresd_defconfig
> new file mode 100644
> index 0000000..a2a7dcc
> --- /dev/null
> +++ b/arch/arm/configs/freescale-mx6-sabresd_defconfig
> @@ -0,0 +1,71 @@
> +CONFIG_ARCH_IMX=y
> +CONFIG_ARCH_IMX6=y
> +CONFIG_MACH_SABRESD=y
> +CONFIG_IMX_IIM=y
> +CONFIG_IMX_IIM_FUSE_BLOW=y
> +CONFIG_THUMB2_BAREBOX=y
> +CONFIG_CMD_ARM_MMUINFO=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_ARM_UNWIND=y
> +CONFIG_MMU=y
> +CONFIG_MALLOC_SIZE=0x4000000
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_KALLSYMS=y
> +CONFIG_LONGHELP=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx6-sabresd/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_MSLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_TIME=y
> +CONFIG_CMD_DIRNAME=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_CRC=y
> +CONFIG_CMD_CRC_CMP=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_BOOTM_AIMAGE=y
> +# CONFIG_CMD_BOOTU is not set
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_MAGICVAR=y
> +CONFIG_CMD_MAGICVAR_HELP=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_NET=y
> +CONFIG_NET_DHCP=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_NET_RESOLV=y
> +CONFIG_DRIVER_NET_FEC_IMX=y
> +CONFIG_DRIVER_SPI_IMX=y
> +CONFIG_MTD=y
> +CONFIG_MTD_M25P80=y
> +CONFIG_MTD_SST25L=y
> +CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_MCI_IMX_ESDHC=y
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_NFS=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_LFN=y
> +CONFIG_LZO_DECOMPRESS=y
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 4115d35..e3e0e73 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -30,6 +30,7 @@ config ARCH_TEXT_BASE
>  	default 0x8fe00000 if MACH_TX53
>  	default 0x7fc00000 if MACH_GUF_VINCELL
>  	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
> +	default 0x17800000 if MACH_SABRESD
>  
>  config BOARDINFO
>  	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
> @@ -59,6 +60,7 @@ config BOARDINFO
>  	default "Sabre Lite" if MACH_SABRELITE
>  	default "Ka-Ro tx53" if MACH_TX53
>  	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
> +	default "SabreSD" if MACH_SABRESD
>  
>  choice
>  	prompt "Select boot mode"
> @@ -489,6 +491,9 @@ config MACH_MX6Q_ARM2
>  config MACH_SABRELITE
>  	bool "Freescale i.MX6 Sabre Lite"
>  
> +config MACH_SABRESD
> +	bool "Freescale i.MX6 SabreSD"
> +
>  endchoice
>  
>  endif

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
