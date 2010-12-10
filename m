Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PQzdt-0003Hx-OP
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 09:52:00 +0000
Date: Fri, 10 Dec 2010 10:51:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101210095146.GW6017@pengutronix.de>
References: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH] arm: Introduce VPR200 board
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Fri, Dec 10, 2010 at 04:42:42PM +1100, Marc Reilly wrote:
> Starting point for the vpr200 board.
> Very similar core hardware to mx35 3stack.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/Makefile                            |    1 +
>  arch/arm/boards/vpr200/Makefile              |    4 +
>  arch/arm/boards/vpr200/config.h              |   28 +
>  arch/arm/boards/vpr200/env/bin/_update       |   39 ++
>  arch/arm/boards/vpr200/env/bin/boot          |   67 ++
>  arch/arm/boards/vpr200/env/bin/hush_hack     |    1 +
>  arch/arm/boards/vpr200/env/bin/init          |   38 +
>  arch/arm/boards/vpr200/env/bin/update_kernel |   15 +
>  arch/arm/boards/vpr200/env/bin/update_rootfs |   20 +
>  arch/arm/boards/vpr200/env/config            |   46 ++

Jean-Christophe already noted it. It would be good if you used the
default environment or say what's missing so that we can fix it.

>  arch/arm/boards/vpr200/flash_header.c        |   46 ++
>  arch/arm/boards/vpr200/lowlevel.c            |  255 +++++++
>  arch/arm/boards/vpr200/vpr200.c              |  929 ++++++++++++++++++++++++++
>  arch/arm/boards/vpr200/vpr200.dox            |   10 +
>  arch/arm/configs/vpr200_defconfig            |   60 ++
>  arch/arm/mach-imx/Kconfig                    |   13 +
>  16 files changed, 1572 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/vpr200/Makefile
>  create mode 100644 arch/arm/boards/vpr200/config.h
>  create mode 100644 arch/arm/boards/vpr200/env/bin/_update
>  create mode 100644 arch/arm/boards/vpr200/env/bin/boot
>  create mode 100644 arch/arm/boards/vpr200/env/bin/hush_hack
>  create mode 100644 arch/arm/boards/vpr200/env/bin/init
>  create mode 100644 arch/arm/boards/vpr200/env/bin/update_kernel
>  create mode 100644 arch/arm/boards/vpr200/env/bin/update_rootfs
>  create mode 100644 arch/arm/boards/vpr200/env/config
>  create mode 100644 arch/arm/boards/vpr200/flash_header.c
>  create mode 100644 arch/arm/boards/vpr200/lowlevel.c
>  create mode 100644 arch/arm/boards/vpr200/vpr200.c
>  create mode 100644 arch/arm/boards/vpr200/vpr200.dox
>  create mode 100644 arch/arm/configs/vpr200_defconfig
> 
> diff --git a/arch/arm/boards/vpr200/vpr200.c b/arch/arm/boards/vpr200/vpr200.c
> new file mode 100644
> index 0000000..298195d
> --- /dev/null
> +++ b/arch/arm/boards/vpr200/vpr200.c
> @@ -0,0 +1,929 @@
> +/*
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + *               2009 Marc Kleine-Budde, Pengutronix
> + *               2010 Marc Reilly, Creative Product Design
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + * Derived from:
> + *
> + * * mx35_3stack.c - board file for uboot-v1
> + *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
> + *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
> + *
> + */
> +
> +#include <common.h>
> +#include <environment.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <fec.h>
> +#include <fs.h>
> +#include <init.h>
> +#include <nand.h>
> +#include <net.h>
> +#include <partition.h>
> +#include <command.h>
> +#include <getopt.h>
> +
> +#include <asm/armlinux.h>
> +#include <asm/io.h>
> +#include <generated/mach-types.h>
> +
> +#include <mach/gpio.h>
> +#include <mach/imx-nand.h>
> +#include <mach/imx-regs.h>
> +#include <mach/iomux-mx35.h>
> +#include <mach/iomux-v3.h>
> +#include <mach/pmic.h>
> +#include <mach/imx-ipu-fb.h>
> +#include <mach/generic.h>
> +#include <mach/devices-imx35.h>
> +
> +#include <i2c/i2c.h>
> +#include <mfd/mc13892.h>
> +
> +/* ------------------------------------------------------------------------- */
> +/* Board revs for the VPR CPU */
> +#define VPR_CPU_V1  0x19
> +
> +/*
> + * IO Defines for the VPR
> + *
> + * The current GPIO API considers the gpios as a contiguous bits across
> + * ports. These defines and macros convert the GPIO1_3 nomenclature to
> + * a numbered GPIO line.
> + */
> +
> +/* Port numbers start from 1 to be consistent with iMX docs */
> +#define GPIO_FROM_PORT(x, y) (((x-1)*32) + y)

We have the following in the kernel now:

/* There's a off-by-one betweem the gpio bank number and the gpiochip */
/* range e.g. GPIO_1_5 is gpio 5 under linux */
#define IMX_GPIO_NR(bank, nr)          (((bank) - 1) * 32 + (nr))

Would be good to use the same in barebox, maybe in
arch/arm/mach-imx/include/mach/imx-regs.h

> +
> +#define LCD_PWR_PORT		1
> +#define LCD_PWR_BIT		2
> +#define LCD_PWR_GPIO		GPIO_FROM_PORT(LCD_PWR_PORT, LCD_PWR_BIT)

Do you need the *_PORT *_BIT defines? I think the following is shorter
and still reads better:

#define LCD_PWR_GPIO	IMX_GPIO_NR(1, 2)


> +
> +/* ------------------------------------------------------------------------- */
> +
> +/**
> + * Init gpio lines for tri-color LED used for diagnostics.
> + *
> + * Note does not set the IOMUX directions, so this needs to be
> + * done elsewhere.
> + */
> +void vpr_diag_init(void)
> +{
> +	/* active low outputs, all start off */
> +	gpio_direction_output(DIAG_RED_GPIO, 1);
> +	gpio_direction_output(DIAG_GREEN_GPIO, 1);
> +	gpio_direction_output(DIAG_BLUE_GPIO, 1);
> +}

static

> +
> +/**
> + *  Sets each color component of the tri color led
> + *
> + *  \param red      Zero for Off. All other values On.
> + *  \param green    Zero for Off. All other values On.
> + *  \param blue     Zero for Off. All other values On.
> + */
> +void vpr_diag_set(int red, int green, int blue)
> +{
> +	/* active low outputs */
> +	gpio_set_value(DIAG_RED_GPIO, !red);
> +	gpio_set_value(DIAG_GREEN_GPIO, !green);
> +	gpio_set_value(DIAG_BLUE_GPIO, !blue);
> +}

maybe static, but you probably want to be able to call this elsewhere
from the code for debugging purposes.

> +
> +/**
> + * Enum matching all color component triplets to
> + * named identifiers.
> + */
> +enum diag_led_color {
> +	DIAG_LED_OFF        = 0x0,
> +	DIAG_LED_BLUE       = 0x1,
> +	DIAG_LED_GREEN      = 0x2,
> +	DIAG_LED_AQUA       = 0x3,
> +	DIAG_LED_RED        = 0x4,
> +	DIAG_LED_MAGENTA    = 0x5,
> +	DIAG_LED_YELLOW     = 0x6,
> +	DIAG_LED_WHITE      = 0x7,
> +};
> +
> +/**
> + * Set Diagnostic LED to specified color
> + */
> +void vpr_diag_set_color(enum diag_led_color color)
> +{
> +	vpr_diag_set(color & 0x4, color & 0x02, color & 0x01);
> +}

This is one function too much for the LED. One of vpr_diag_set and
vpr_diag_set_color should be enough. Also, if you want this globally
available, the enum shouldn't be declared in this file.

> +
> +/* ------------------------------------------------------------------------- */
> +enum vpr_button {
> +	BUTTONNONE = 0,
> +	BUTTON1 = 0x01,
> +	BUTTON2 = 0x02,
> +	BUTTON3 = 0x04,
> +	BUTTON4 = 0x08,
> +	BUTTON5 = 0x10,
> +	BUTTON6 = 0x20,
> +	BUTTON7 = 0x40,
> +	BUTTON8 = 0x80
> +};
> +
> +static void vpr_button_init(void)
> +{
> +	gpio_direction_input(BUTTON1_GPIO);
> +	gpio_direction_input(BUTTON2_GPIO);
> +	gpio_direction_input(BUTTON3_GPIO);
> +	gpio_direction_input(BUTTON4_GPIO);
> +	gpio_direction_input(BUTTON5_GPIO);
> +	gpio_direction_input(BUTTON6_GPIO);
> +	gpio_direction_input(BUTTON7_GPIO);
> +	gpio_direction_input(BUTTON8_GPIO);
> +}
> +
> +static int vpr_button_state(void)
> +{
> +	uint32_t ret = 0;
> +
> +	ret |= (!gpio_get_value(BUTTON1_GPIO));
> +	ret |= (!gpio_get_value(BUTTON2_GPIO)) << 1;
> +	ret |= (!gpio_get_value(BUTTON3_GPIO)) << 2;
> +	ret |= (!gpio_get_value(BUTTON4_GPIO)) << 3;
> +	ret |= (!gpio_get_value(BUTTON5_GPIO)) << 4;
> +	ret |= (!gpio_get_value(BUTTON6_GPIO)) << 5;
> +	ret |= (!gpio_get_value(BUTTON7_GPIO)) << 6;
> +	ret |= (!gpio_get_value(BUTTON8_GPIO)) << 7;
> +
> +	return ret;
> +}
> +
> +static int vpr_button_state_to_number(int bstate)
> +{
> +	int ret = 1;
> +	if (!bstate)
> +		return 0;
> +
> +	while (!(bstate & 0x01)) {
> +		bstate >>= 1;
> +		++ret;
> +	}
> +	return ret;
> +}

This function does not seem to be very useful, see below

> +
> +/* ------------------------------------------------------------------------- */
> +static void vpr_buzzer_init(void)
> +{
> +	gpio_direction_output(BUZZER_GPIO, 0);
> +}
> +
> +static void vpr_buzzer_off(void)
> +{
> +	gpio_set_value(BUZZER_GPIO, 0);
> +}
> +
> +static void vpr_buzzer_on(void)
> +{
> +	gpio_set_value(BUZZER_GPIO, 1);
> +}
> +
> +/* ------------------------------------------------------------------------- */
> +static void vpr_bp_init(void)
> +{
> +	struct pad_desc bp_pads[] = {
> +		MX35_PAD_ATA_DATA4__GPIO2_17,
> +		MX35_PAD_ATA_DATA5__GPIO2_18,
> +	};
> +
> +	mxc_iomux_v3_setup_multiple_pads(bp_pads, ARRAY_SIZE(bp_pads));
> +
> +	gpio_direction_output(BP_RESET_GPIO, 1);
> +	gpio_direction_input(BP_EOC_GPIO);
> +}
> +
> +static void vpr_rf_init(void)
> +{
> +	struct pad_desc rf_pads[] = {
> +		MX35_PAD_ATA_IORDY__GPIO2_12,
> +		MX35_PAD_ATA_DATA0__GPIO2_13,
> +		MX35_PAD_ATA_DATA1__GPIO2_14,
> +		MX35_PAD_ATA_DATA2__GPIO2_15,
> +		MX35_PAD_ATA_DATA3__GPIO2_16,
> +	};
> +
> +	mxc_iomux_v3_setup_multiple_pads(rf_pads, ARRAY_SIZE(rf_pads));
> +
> +	gpio_direction_output(RF_RESET_GPIO, 0);
> +	gpio_direction_output(RF_TDI_GPIO, 1);
> +	gpio_direction_output(RF_TCK_GPIO, 1);
> +	gpio_direction_output(RF_TMS_GPIO, 1);
> +	gpio_direction_input(RF_TDO_GPIO);
> +}
> +
> +
> +/* ------------------------------------------------------------------------- */
> +/*
> + * Board initialization order:
> + *  core_initcall
> + *  postcore_initcall
> + *  console_initcall
> + *  postconsole_initcall
> + *  coredevice_initcall
> + *  fs_initcall
> + *  device_initcall
> + *  late_initcall
> + */
> +
> +static int vpr_devices_init(void)
> +{
> +#define MAX_BOOTSRC_MSG 80
> +	uint32_t reg;
> +	char bootsrc_msg[MAX_BOOTSRC_MSG+1] = {0,};
> +
> +	/* take care of WDT */
> +	writew(0xFFB3, IMX_WDT_BASE + 0);
> +	writew(0x0000, IMX_WDT_BASE + 8);
> +
> +	/* CS0: Nor Flash */
> +	writel(0x0000cf03, CSCR_U(0));
> +	writel(0x10000d03, CSCR_L(0));
> +	writel(0x00720900, CSCR_A(0));
> +
> +	reg = readl(IMX_CCM_BASE + CCM_RCSR);
> +	/* some fuses provide us vital information about connected hardware */
> +	if (reg & 0x20000000)
> +		nand_info.width = 2;	/* 16 bit */
> +	else
> +		nand_info.width = 1;	/* 8 bit */
> +
> +	/* This platform supports NOR, NAND and SD */
> +	imx35_add_nand(&nand_info);
> +	register_device(&cfi_dev);
> +	imx35_add_mmc0(NULL);
> +
> +	switch ((reg >> 25) & 0x3) {
> +	case 0x03:		/* SD/MMC is the source */
> +		vpr_diag_set_color(DIAG_LED_MAGENTA);
> +		snprintf(bootsrc_msg, MAX_BOOTSRC_MSG, "SD boot: ");
> +		devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
> +		devfs_add_partition("disk0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
> +		protect_file("/dev/self0", 1);
> +		protect_file("/dev/env0", 1);
> +		break;
> +
> +	case 0x01:		/* NAND is the source */
> +		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
> +		dev_add_bb_dev("self_raw", "self0");
> +		devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
> +		dev_add_bb_dev("env_raw", "env0");
> +		break;
> +
> +	case 0x00:		/* NOR is the source */
> +		vpr_diag_set_color(DIAG_LED_AQUA);
> +		snprintf(bootsrc_msg, MAX_BOOTSRC_MSG, "NOR boot: ");
> +		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
> +		devfs_add_partition("nor0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
> +		protect_file("/dev/self0", 1);
> +		protect_file("/dev/env0", 1);
> +		break;
> +	default:
> +		printf("WARN: Unrecognized boot source.\n");
> +		break;
> +	}
> +
> +	/* delay printing message so protect file doesn't get in the middle */
> +	printf(bootsrc_msg);
> +
> +	switch ((reg >> 10) & 0x3) {
> +	case 0x03:
> +		printf("Bootstrap mode\n");
> +		break;
> +	case 0x02:
> +		printf("External\n");
> +		break;
> +	case 0x00:
> +		printf("Internal\n");
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
> +
> +	imx35_add_i2c0(NULL);
> +	imx35_add_i2c1(NULL);
> +	imx35_add_fec(&fec_info);
> +
> +	register_device(&sdram_dev);
> +	register_device(&sdram_dev1);
> +
> +	imx35_add_fb(&ipu_fb_data);
> +
> +	vpr_button_init();
> +	vpr_buzzer_init();
> +	vpr_bp_init();
> +	vpr_rf_init();
> +
> +	armlinux_add_dram(&sdram_dev);
> +	/* TODO adding BANK1 causes early kernel crash when booting
> +	 * off SD card */
> +
> +	armlinux_set_bootparams((void *)0x80000100);
> +
> +	armlinux_set_architecture(MACH_TYPE_VPR200);
> +
> +	/* For compat with the freescale kernel, relies on setting revision*/
> +	armlinux_set_revision(0x00035100 | imx_silicon_revision());
> +
> +	return 0;
> +}
> +
> +device_initcall(vpr_devices_init);
> +
> +static struct pad_desc vpr_pads[] = {
> +	/* FEC */
> +	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
> +	MX35_PAD_FEC_COL__FEC_COL,
> +	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
> +	MX35_PAD_FEC_MDC__FEC_MDC,
> +	MX35_PAD_FEC_MDIO__FEC_MDIO,
> +	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
> +	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
> +	MX35_PAD_FEC_CRS__FEC_CRS,
> +	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
> +	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
> +	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
> +	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
> +	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
> +	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
> +	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
> +	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
> +	/* FEC enable */
> +	MX35_PAD_D3_REV__GPIO1_3,
> +	/* UART 1*/
> +	MX35_PAD_RXD1__UART1_RXD_MUX,
> +	MX35_PAD_TXD1__UART1_TXD_MUX,
> +	MX35_PAD_RTS1__UART1_RTS,
> +	MX35_PAD_CTS1__UART1_CTS,
> +	/* I2C1 */
> +	MX35_PAD_I2C1_CLK__I2C1_SCL,
> +	MX35_PAD_I2C1_DAT__I2C1_SDA,
> +	/* I2C2 */
> +	MX35_PAD_I2C2_CLK__I2C2_SCL,
> +	MX35_PAD_I2C2_DAT__I2C2_SDA,
> +	/* Sys config */
> +	MX35_PAD_ATA_DATA14__GPIO2_27,
> +	MX35_PAD_ATA_DATA15__GPIO2_28,
> +	MX35_PAD_ATA_INTRQ__GPIO2_29,
> +	MX35_PAD_ATA_BUFF_EN__GPIO2_30,
> +	MX35_PAD_ATA_DMARQ__GPIO2_31,
> +	/* LCD enable */
> +	MX35_PAD_D3_VSYNC__GPIO1_2,
> +	/* Display */
> +	MX35_PAD_LD0__IPU_DISPB_DAT_0,
> +	MX35_PAD_LD1__IPU_DISPB_DAT_1,
> +	MX35_PAD_LD2__IPU_DISPB_DAT_2,
> +	MX35_PAD_LD3__IPU_DISPB_DAT_3,
> +	MX35_PAD_LD4__IPU_DISPB_DAT_4,
> +	MX35_PAD_LD5__IPU_DISPB_DAT_5,
> +	MX35_PAD_LD6__IPU_DISPB_DAT_6,
> +	MX35_PAD_LD7__IPU_DISPB_DAT_7,
> +	MX35_PAD_LD8__IPU_DISPB_DAT_8,
> +	MX35_PAD_LD9__IPU_DISPB_DAT_9,
> +	MX35_PAD_LD10__IPU_DISPB_DAT_10,
> +	MX35_PAD_LD11__IPU_DISPB_DAT_11,
> +	MX35_PAD_LD12__IPU_DISPB_DAT_12,
> +	MX35_PAD_LD13__IPU_DISPB_DAT_13,
> +	MX35_PAD_LD14__IPU_DISPB_DAT_14,
> +	MX35_PAD_LD15__IPU_DISPB_DAT_15,
> +	MX35_PAD_LD16__IPU_DISPB_DAT_16,
> +	MX35_PAD_LD17__IPU_DISPB_DAT_17,
> +	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
> +	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
> +	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
> +	/* Buttons */
> +	MX35_PAD_SCKR__GPIO1_4,
> +	MX35_PAD_COMPARE__GPIO1_5,
> +	MX35_PAD_SCKT__GPIO1_7,
> +	MX35_PAD_FST__GPIO1_8,
> +	MX35_PAD_HCKT__GPIO1_9,
> +	MX35_PAD_TX5_RX0__GPIO1_10,
> +	MX35_PAD_TX4_RX1__GPIO1_11,
> +	MX35_PAD_TX3_RX2__GPIO1_12,
> +	/* Buzzer */
> +	MX35_PAD_TX2_RX3__GPIO1_13,
> +	/* Diag LED */
> +	MX35_PAD_USBOTG_PWR__GPIO3_14,
> +	MX35_PAD_USBOTG_OC__GPIO3_15,
> +	MX35_PAD_D3_HSYNC__GPIO3_30,
> +};
> +
> +
> +static int vpr_console_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(vpr_pads, ARRAY_SIZE(vpr_pads));
> +
> +	imx35_add_uart0();
> +	return 0;
> +}
> +
> +console_initcall(vpr_console_init);
> +
> +static int vpr_post_console_init(void)
> +{
> +	vpr_diag_init();
> +	vpr_diag_set_color(DIAG_LED_YELLOW);
> +	return 0;
> +}
> +
> +postcore_initcall(vpr_post_console_init);
> +
> +static int vpr_core_init(void)
> +{
> +	u32 reg;
> +
> +	/* enable clock for SDHC1, I2C[1] and FEC */
> +	reg = readl(IMX_CCM_BASE + CCM_CGR1);
> +	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
> +	reg |= 0x3 << CCM_CGR1_I2C1_SHIFT;
> +	reg |= 0x3 << CCM_CGR1_SDHC1_SHIFT;
> +	reg = writel(reg, IMX_CCM_BASE + CCM_CGR1);
> +
> +	/* AIPS setup - Only setup MPROTx regs. The PACR defaults are good.*/
> +	/*
> +	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> +	 * not forced to user-mode.
> +	 */
> +	writel(0x77777777, IMX_AIPS1_BASE);
> +	writel(0x77777777, IMX_AIPS1_BASE + 0x4);
> +	writel(0x77777777, IMX_AIPS2_BASE);
> +	writel(0x77777777, IMX_AIPS2_BASE + 0x4);
> +
> +	/*
> +	 * Clear the on and off peripheral modules Supervisor Protect bit
> +	 * for SDMA to access them. Did not change the AIPS control registers
> +	 * (offset 0x20) access type
> +	 */
> +	writel(0x0, IMX_AIPS1_BASE + 0x40);
> +	writel(0x0, IMX_AIPS1_BASE + 0x44);
> +	writel(0x0, IMX_AIPS1_BASE + 0x48);
> +	writel(0x0, IMX_AIPS1_BASE + 0x4C);
> +	reg = readl(IMX_AIPS1_BASE + 0x50);
> +	reg &= 0x00FFFFFF;
> +	writel(reg, IMX_AIPS1_BASE + 0x50);
> +
> +	writel(0x0, IMX_AIPS2_BASE + 0x40);
> +	writel(0x0, IMX_AIPS2_BASE + 0x44);
> +	writel(0x0, IMX_AIPS2_BASE + 0x48);
> +	writel(0x0, IMX_AIPS2_BASE + 0x4C);
> +	reg = readl(IMX_AIPS2_BASE + 0x50);
> +	reg &= 0x00FFFFFF;
> +	writel(reg, IMX_AIPS2_BASE + 0x50);
> +
> +	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
> +
> +	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
> +#define MAX_PARAM1 0x00302154
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x000); /* for S0 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x100); /* for S1 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x200); /* for S2 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x300); /* for S3 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x400); /* for S4 */
> +
> +	/* SGPCR - always park on last master */
> +	writel(0x10, IMX_MAX_BASE + 0x10);	/* for S0 */
> +	writel(0x10, IMX_MAX_BASE + 0x110);	/* for S1 */
> +	writel(0x10, IMX_MAX_BASE + 0x210);	/* for S2 */
> +	writel(0x10, IMX_MAX_BASE + 0x310);	/* for S3 */
> +	writel(0x10, IMX_MAX_BASE + 0x410);	/* for S4 */
> +
> +	/* MGPCR - restore default values */
> +	writel(0x0, IMX_MAX_BASE + 0x800);	/* for M0 */
> +	writel(0x0, IMX_MAX_BASE + 0x900);	/* for M1 */
> +	writel(0x0, IMX_MAX_BASE + 0xa00);	/* for M2 */
> +	writel(0x0, IMX_MAX_BASE + 0xb00);	/* for M3 */
> +	writel(0x0, IMX_MAX_BASE + 0xc00);	/* for M4 */
> +	writel(0x0, IMX_MAX_BASE + 0xd00);	/* for M5 */
> +
> +	return 0;
> +}
> +
> +core_initcall(vpr_core_init);
> +
> +/* -------------------------------------------------------------------------*/
> +
> +static int vpr_pmic_init_v1(struct mc13892 *mc13892)
> +{
> +	int err = 0;
> +	unsigned int mask = 0;
> +	unsigned int val = 0;
> +
> +	/* VGEN2[2:0] = b111 --> output to 3.15V */
> +	mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x7 << 6, 0x7 << 6);
> +
> +	/* VCHRG[2:0] = 0b011, Charge reg output voltage 4.200 */
> +	val |= 0x3;
> +	mask |= 0x7;
> +	/* ICHRG[3:0] = 0b1011, Current limit 960mA*/
> +	val |= 0xb << 3;
> +	mask |= 0xf << 3;
> +	/* PLIM[1:0] = 0b11, Power limit 1000mW */
> +	val |= 3 << 15;
> +	mask |= 0x3 << 15;
> +	/* Enable setting of V I */
> +	val |= 1 << 23;
> +	mask |= 0x1 << 23;
> +	err |= mc13892_set_bits(mc13892, MC13892_REG_CHARGE, mask, val);
> +
> +	gpio_direction_output(FEC_RESET_GPIO, 0);
> +
> +	/*turn on the FEC power supply */
> +	/* VGEN1[1:0] = 0b11*/
> +	err |= mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03);
> +	/* VGEN1EN = 1 */
> +	err |= mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
> +	if (err) {
> +		dev_err(&mc13892->client->dev,
> +			"Init sequence failed, the system might not be working!\n");
> +	}
> +
> +	gpio_direction_output(FEC_ENABLE_GPIO, 1);
> +	mdelay(10);
> +	gpio_set_value(FEC_RESET_GPIO, 1);
> +
> +	return err;
> +}
> +
> +/*
> + * Maybe this is a bit dodgy because the env is only set up in
> + * a late_initcall?
> + */
> +static void vpr_save_boot_loc(void)
> +{
> +	uint32_t reg;
> +	reg = readl(IMX_CCM_BASE + CCM_RCSR);
> +
> +	switch ((reg >> 25) & 0x3) {
> +	case 0x03:		/* SD/MMC is the source */
> +		setenv("boot_loc", "mmc");
> +		export("boot_loc");
> +		break;
> +	case 0x01:		/* NAND is the source */
> +		setenv("boot_loc", "nane");

s/nane/nand/

> +		export("boot_loc");
> +		break;
> +
> +	case 0x00:		/* NOR is the source */
> +		setenv("boot_loc", "nor");
> +		export("boot_loc");
> +		break;
> +	default:
> +		break;
> +	}
> +}

Nice function. This could be useful on other boards aswell to continue
booting from the medium barebox is on.

> +
> +static int vpr_final_init(void)
> +{
> +	struct mc13892 *mc13892;
> +	uint32_t system_rev;
> +
> +	mc13892 = mc13892_get();
> +	if (!mc13892) {
> +		printf("FAILED to get mc13892 handle!\n");
> +		return 0;
> +	}
> +
> +	system_rev = vpr_read_sys_cfg();
> +	printf("VPR CPU board version 0x%02x.\n", system_rev);
> +	switch (system_rev) {
> +	case VPR_CPU_V1:
> +		vpr_pmic_init_v1(mc13892);
> +		break;
> +	default:
> +		printf("Unknown revision 0x%02x.\n", system_rev);
> +		return 0;
> +	}
> +
> +	vpr_save_boot_loc();
> +
> +	return 0;
> +}
> +
> +late_initcall(vpr_final_init);
> +
> +#ifdef CONFIG_NAND_IMX_BOOT
> +void __bare_init nand_boot(void)
> +{
> +	/*
> +	 * The driver is able to detect NAND's pagesize by CPU internal
> +	 * fuses or external pull ups. But not the blocksize...
> +	 */
> +	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +}
> +#endif
> +
> +/* ------------------------------------------------------------------------ */
> +
> +static int do_diagled(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int color;
> +
> +	if (argc != 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	color = simple_strtoul(argv[1], NULL, 0);
> +	vpr_diag_set_color(color);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(diagled)
> +BAREBOX_CMD_HELP_USAGE("diagled [color]\n")
> +BAREBOX_CMD_HELP_SHORT("Sets the color of the diagnostic LED.\n")
> +BAREBOX_CMD_HELP_TEXT("\toff\t 0\n")
> +BAREBOX_CMD_HELP_TEXT("\tblue\t 1\n")
> +BAREBOX_CMD_HELP_TEXT("\tgreen\t 2\n")
> +BAREBOX_CMD_HELP_TEXT("\taqua\t 3\n")
> +BAREBOX_CMD_HELP_TEXT("\tred\t 4\n")
> +BAREBOX_CMD_HELP_TEXT("\tmagenta\t 5\n")
> +BAREBOX_CMD_HELP_TEXT("\tyellow\t 6\n")
> +BAREBOX_CMD_HELP_TEXT("\twhite\t 7\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(diagled)
> +	.cmd            = do_diagled,
> +	.usage          = "Set color of diagnositc tri-color LED",
> +	BAREBOX_CMD_HELP(cmd_diagled_help)
> +BAREBOX_CMD_END
> +
> +/* ------------------------------------------------------------------------ */
> +
> +static int do_waitbutton(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int opt;
> +	uint64_t start;
> +	ulong timeout = 0;
> +	uint32_t bstate;
> +
> +	while ((opt = getopt(argc, argv, "t:")) > 0) {
> +		switch (opt) {
> +		case 't':
> +			timeout = simple_strtol(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	start = get_time_ns();
> +	while (!timeout || !is_timeout(start, timeout * SECOND)) {
> +		bstate = vpr_button_state();
> +		if (bstate) {
> +			printf("%d\n", vpr_button_state_to_number(bstate));
> +			return 0;
> +		}
> +		if (ctrlc())
> +			return -EINTR;
> +	}
> +
> +	return -ETIMEDOUT;
> +}

Given that this command is debugging only, wouldn't it be enough to just
print the result of vpr_button_state() in a loop until the user presses
ctrl-c?

> +
> +BAREBOX_CMD_HELP_START(waitbutton)
> +BAREBOX_CMD_HELP_USAGE("waitbutton [-t]\n")
> +BAREBOX_CMD_HELP_SHORT("Prints the button number of the next pressed button.\n")
> +BAREBOX_CMD_HELP_OPT("-t <seconds>", "time in seconds to wait. 0 (default) is forever.")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(button)
> +	.cmd            = do_waitbutton,
> +	.usage          = "Wait for button press",
> +	BAREBOX_CMD_HELP(cmd_waitbutton_help)
> +BAREBOX_CMD_END
> +
> +/* ------------------------------------------------------------------------ */
> +
> +static int do_buzzer(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int opt;
> +	uint64_t start;
> +	ulong durationms = 200;
> +
> +	while ((opt = getopt(argc, argv, "d:")) > 0) {
> +		switch (opt) {
> +		case 'd':
> +			durationms = simple_strtol(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	vpr_buzzer_on();
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, durationms * MSECOND)) {
> +
> +		vpr_buzzer_on();
> +		udelay(120);
> +		vpr_buzzer_off();
> +		udelay(120);
> +
> +		if (ctrlc())
> +			break;
> +	}
> +
> +	vpr_buzzer_off();
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(buzzer)
> +BAREBOX_CMD_HELP_USAGE("buzzer [-d]\n")
> +BAREBOX_CMD_HELP_SHORT("Buzzer beep.\n")
> +BAREBOX_CMD_HELP_OPT  ("-d <ms>", "time in milli-seconds to stay on. (default 200ms)\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(buzzer)
> +	.cmd            = do_buzzer,
> +	.usage          = "Buzzer beep",
> +	BAREBOX_CMD_HELP(cmd_buzzer_help)
> +BAREBOX_CMD_END
> +
> diff --git a/arch/arm/boards/vpr200/vpr200.dox b/arch/arm/boards/vpr200/vpr200.dox
> new file mode 100644
> index 0000000..304e00f
> --- /dev/null
> +++ b/arch/arm/boards/vpr200/vpr200.dox
> @@ -0,0 +1,10 @@
> +/** @page vpr200 VPR200
> +
> +The vpr200 board uses a iMX35 CPU.
> +
> +- 64 MiB NOR Memory
> +- 2x 128 Mib RAM
> +- 512 MiB NAND
> +- 256 byte EEPROM
> +
> +*/
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
