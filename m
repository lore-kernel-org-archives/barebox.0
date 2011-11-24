Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVNZ-00020b-FX
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:14:05 +0000
Message-ID: <4ECE0ACE.2070103@pengutronix.de>
Date: Thu, 24 Nov 2011 10:13:50 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7254718962290148742=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============7254718962290148742==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig245FD984A8B71E58A02BBB82"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig245FD984A8B71E58A02BBB82
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/24/2011 04:02 AM, Robert Jarzmik wrote:
> Add Mitac MioA701 board initial support.
> The support only provides basic boot and a console over USB
> (serial gadget).

Please remove the address of the FSF in the header of the files, please
fix you (C), we don't have 2012 yet :)

some more comments inline

Marc

>=20
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  Makefile                                |    4 +-
>  arch/arm/Makefile                       |    1 +
>  arch/arm/boards/mioa701/Makefile        |    2 +
>  arch/arm/boards/mioa701/board.c         |  251 +++++++++++++++++++++++=
++++++++
>  arch/arm/boards/mioa701/config.h        |  207 +++++++++++++++++++++++=
++
>  arch/arm/boards/mioa701/env/bin/init    |   13 ++
>  arch/arm/boards/mioa701/env/config      |    4 +
>  arch/arm/boards/mioa701/lowlevel_init.S |   46 ++++++
>  arch/arm/boards/mioa701/mioa701.h       |   86 +++++++++++
>  arch/arm/mach-pxa/Kconfig               |    9 +
>  arch/arm/mach-pxa/Makefile              |    1 +
>  11 files changed, 622 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boards/mioa701/Makefile
>  create mode 100644 arch/arm/boards/mioa701/board.c
>  create mode 100644 arch/arm/boards/mioa701/config.h
>  create mode 100644 arch/arm/boards/mioa701/env/bin/init
>  create mode 100644 arch/arm/boards/mioa701/env/config
>  create mode 100644 arch/arm/boards/mioa701/lowlevel_init.S
>  create mode 100644 arch/arm/boards/mioa701/mioa701.h
>=20
> diff --git a/Makefile b/Makefile
> index 1d1e50d..7e94d37 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -163,8 +163,8 @@ export srctree objtree VPATH
>  # Alternatively CROSS_COMPILE can be set in the environment.
>  # Default value for CROSS_COMPILE is not to prefix executables
> =20
> -ARCH            ?=3D sandbox
> -CROSS_COMPILE   ?=3D
> +ARCH            ?=3D arm
> +CROSS_COMPILE   ?=3D /home/rj/mio_linux/arm-2007q1/bin/arm-none-eabi-

Please remove that hunk :)

> =20
>  # Architecture as present in compile.h
>  UTS_MACHINE :=3D $(ARCH)
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 913a90e..ae1e0fc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -82,6 +82,7 @@ board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:=3D frees=
cale-mx25-3-stack
>  board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:=3D freescale-mx35-3-stack=

>  board-$(CONFIG_MACH_IMX21ADS)			:=3D imx21ads
>  board-$(CONFIG_MACH_IMX27ADS)			:=3D imx27ads
> +board-$(CONFIG_MACH_MIOA701)			:=3D mioa701
>  board-$(CONFIG_MACH_MMCCPU)			:=3D mmccpu
>  board-$(CONFIG_MACH_MX1ADS)			:=3D mx1ads
>  board-$(CONFIG_MACH_NOMADIK_8815NHK)		:=3D nhk8815
> diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701=
/Makefile
> new file mode 100644
> index 0000000..b823b62
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/Makefile
> @@ -0,0 +1,2 @@
> +obj-y +=3D lowlevel_init.o
> +obj-y +=3D board.o
> diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/=
board.c
> new file mode 100644
> index 0000000..b6af2d1
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/board.c
> @@ -0,0 +1,251 @@
> +/*
> + * (C) 2012 Robert Jarzmik <robert.jarzmik@free.fr>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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

Please remove the section with the address, the FSF tends to move ;)

> + *
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <fs.h>
> +#include <init.h>
> +#include <partition.h>
> +#include <led.h>
> +#include <gpio.h>
> +
> +#include <mach/devices.h>
> +#include <mach/mfp-pxa27x.h>
> +#include <mach/pxa-regs.h>
> +#include <mach/udc_pxa2xx.h>
> +
> +#include <asm/armlinux.h>
> +#include <asm/io.h>
> +#include <generated/mach-types.h>
> +#include <asm/mmu.h>
> +
> +#include "mioa701.h"
> +
> +/*
> + * LTM0305A776C LCD panel timings
> + *
> + * see:
> + *  - the LTM0305A776C datasheet,
> + *  - and the PXA27x Programmers' manual
> + */
> +static struct pxafb_videomode mioa701_ltm0305a776c =3D {
> +	{
> +		.pixclock		=3D 220000,	/* CLK=3D4.545 MHz */
> +		.xres			=3D 240,
> +		.yres			=3D 320,
> +		.hsync_len		=3D 4,
> +		.vsync_len		=3D 2,
> +		.left_margin		=3D 6,
> +		.right_margin		=3D 4,
> +		.upper_margin		=3D 5,
> +		.lower_margin		=3D 3,
> +	},
> +	.bpp =3D 16,
> +};
> +
> +static void mioa701_lcd_power(int on)
> +{
> +	gpio_set_value(GPIO87_LCD_POWER, on);
> +}
> +
> +static struct pxafb_platform_data mioa701_pxafb_info =3D {
> +	.mode			=3D &mioa701_ltm0305a776c,
> +	.lcd_conn		=3D LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
> +	.lcd_power		=3D mioa701_lcd_power,
> +};
> +
> +#define MIO_LED(_name, _gpio) \
> +	{ .gpio =3D _gpio, .active_low =3D 1, .led =3D { .name =3D #_name, } =
}
> +static struct gpio_led leds[] =3D {
> +	MIO_LED(charging, GPIO10_LED_nCharging),
> +	MIO_LED(blue, GPIO97_LED_nBlue),
> +	MIO_LED(orange, GPIO98_LED_nOrange),
> +	MIO_LED(vibra, GPIO82_LED_nVibra),
> +	MIO_LED(keyboard, GPIO115_LED_nKeyboard),
> +};
> +
> +
> +static int is_usb_connected(void)
> +{
> +	return !gpio_get_value(GPIO13_nUSB_DETECT);
> +}
> +
> +static struct pxa2xx_udc_mach_info mioa701_udc_info =3D {
> +	.udc_is_connected =3D is_usb_connected,
> +	.gpio_pullup	  =3D GPIO22_USB_ENABLE,
> +};
> +
> +static struct resource mioa701_udc_ress =3D {
> +	.start =3D 0x40600000,
> +	.size =3D 1024,
> +	.flags =3D IORESOURCE_MEM,
> +};
> +
> +static struct device_d udc_device =3D {
> +	.name =3D "pxa27x-udc",
> +	.resource =3D &mioa701_udc_ress,
> +	.num_resources =3D 1,
> +	.platform_data =3D &mioa701_udc_info,
> +};
> +
> +static int mioa701_devices_init(void)
> +{
> +	int i;
> +
> +	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
> +
> +	arm_add_mem_device("ram0", 0xa0000000, 64 * 1024 * 1024);
> +	armlinux_set_bootparams((void *)0xa0000100);
> +	armlinux_set_architecture(MACH_TYPE_MIOA701);
> +
> +	for (i =3D 0; i < ARRAY_SIZE(leds); i++)
> +		led_gpio_register(&leds[i]);
> +	register_device(&udc_device);
> +	return 0;
> +}
> +
> +device_initcall(mioa701_devices_init);
> +
> +static unsigned long mioa701_pin_config[] =3D {
> +	/* Mio global */
> +	MIO_CFG_OUT(GPIO9_CHARGE_EN, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO18_POWEROFF, AF0, DRIVE_LOW),
> +	MFP_CFG_OUT(GPIO3, AF0, DRIVE_HIGH),
> +	MFP_CFG_OUT(GPIO4, AF0, DRIVE_HIGH),
> +	MIO_CFG_IN(GPIO80_MAYBE_CHARGE_VDROP, AF0),
> +
> +	/* Backlight PWM 0 */
> +	GPIO16_PWM0_OUT,
> +
> +	/* MMC */
> +	GPIO32_MMC_CLK,
> +	GPIO92_MMC_DAT_0,
> +	GPIO109_MMC_DAT_1,
> +	GPIO110_MMC_DAT_2,
> +	GPIO111_MMC_DAT_3,
> +	GPIO112_MMC_CMD,
> +	MIO_CFG_IN(GPIO78_SDIO_RO, AF0),
> +	MIO_CFG_IN(GPIO15_SDIO_INSERT, AF0),
> +	MIO_CFG_OUT(GPIO91_SDIO_EN, AF0, DRIVE_LOW),
> +
> +	/* USB */
> +	MIO_CFG_IN(GPIO13_nUSB_DETECT, AF0),
> +	MIO_CFG_OUT(GPIO22_USB_ENABLE, AF0, DRIVE_LOW),
> +
> +	/* QCI */
> +	GPIO12_CIF_DD_7,
> +	GPIO17_CIF_DD_6,
> +	GPIO50_CIF_DD_3,
> +	GPIO51_CIF_DD_2,
> +	GPIO52_CIF_DD_4,
> +	GPIO53_CIF_MCLK,
> +	GPIO54_CIF_PCLK,
> +	GPIO55_CIF_DD_1,
> +	GPIO81_CIF_DD_0,
> +	GPIO82_CIF_DD_5,
> +	GPIO84_CIF_FV,
> +	GPIO85_CIF_LV,
> +
> +	/* Bluetooth */
> +	MIO_CFG_IN(GPIO14_BT_nACTIVITY, AF0),
> +	GPIO44_BTUART_CTS,
> +	GPIO42_BTUART_RXD,
> +	GPIO45_BTUART_RTS,
> +	GPIO43_BTUART_TXD,
> +	MIO_CFG_OUT(GPIO83_BT_ON, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO77_BT_UNKNOWN1, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO86_BT_MAYBE_nRESET, AF0, DRIVE_HIGH),
> +
> +	/* GPS */
> +	MIO_CFG_OUT(GPIO23_GPS_UNKNOWN1, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO26_GPS_ON, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO27_GPS_RESET, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO106_GPS_UNKNOWN2, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO107_GPS_UNKNOWN3, AF0, DRIVE_LOW),
> +	GPIO46_STUART_RXD,
> +	GPIO47_STUART_TXD,
> +
> +	/* GSM */
> +	MIO_CFG_OUT(GPIO24_GSM_MOD_RESET_CMD, AF0, DRIVE_LOW),
> +	MIO_CFG_OUT(GPIO88_GSM_nMOD_ON_CMD, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO90_GSM_nMOD_OFF_CMD, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO114_GSM_nMOD_DTE_UART_STATE, AF0, DRIVE_HIGH),
> +	MIO_CFG_IN(GPIO25_GSM_MOD_ON_STATE, AF0),
> +	MIO_CFG_IN(GPIO113_GSM_EVENT, AF0) | WAKEUP_ON_EDGE_BOTH,
> +	GPIO34_FFUART_RXD,
> +	GPIO35_FFUART_CTS,
> +	GPIO36_FFUART_DCD,
> +	GPIO37_FFUART_DSR,
> +	GPIO39_FFUART_TXD,
> +	GPIO40_FFUART_DTR,
> +	GPIO41_FFUART_RTS,
> +
> +	/* Sound */
> +	GPIO28_AC97_BITCLK,
> +	GPIO29_AC97_SDATA_IN_0,
> +	GPIO30_AC97_SDATA_OUT,
> +	GPIO31_AC97_SYNC,
> +	GPIO89_AC97_SYSCLK,
> +	MIO_CFG_IN(GPIO12_HPJACK_INSERT, AF0),
> +
> +	/* Leds */
> +	MIO_CFG_OUT(GPIO10_LED_nCharging, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO97_LED_nBlue, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO98_LED_nOrange, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO82_LED_nVibra, AF0, DRIVE_HIGH),
> +	MIO_CFG_OUT(GPIO115_LED_nKeyboard, AF0, DRIVE_HIGH),
> +
> +	/* Keyboard */
> +	MIO_CFG_IN(GPIO0_KEY_POWER, AF0) | WAKEUP_ON_EDGE_BOTH,
> +	MIO_CFG_IN(GPIO93_KEY_VOLUME_UP, AF0),
> +	MIO_CFG_IN(GPIO94_KEY_VOLUME_DOWN, AF0),
> +	GPIO100_KP_MKIN_0,
> +	GPIO101_KP_MKIN_1,
> +	GPIO102_KP_MKIN_2,
> +	GPIO103_KP_MKOUT_0,
> +	GPIO104_KP_MKOUT_1,
> +	GPIO105_KP_MKOUT_2,
> +
> +	/* I2C */
> +	GPIO117_I2C_SCL,
> +	GPIO118_I2C_SDA,
> +
> +	/* Unknown */
> +	MFP_CFG_IN(GPIO20, AF0),
> +	MFP_CFG_IN(GPIO21, AF0),
> +	MFP_CFG_IN(GPIO33, AF0),
> +	MFP_CFG_OUT(GPIO49, AF0, DRIVE_HIGH),
> +	MFP_CFG_OUT(GPIO57, AF0, DRIVE_HIGH),
> +	MFP_CFG_IN(GPIO96, AF0),
> +	MFP_CFG_OUT(GPIO116, AF0, DRIVE_HIGH),
> +};
> +
> +static int mioa701_coredevice_init(void)
> +{
> +	/* route pins */
> +	pxa2xx_mfp_config(ARRAY_AND_SIZE(mioa701_pin_config));
> +
> +	return 0;
> +}
> +coredevice_initcall(mioa701_coredevice_init);
> diff --git a/arch/arm/boards/mioa701/config.h b/arch/arm/boards/mioa701=
/config.h
> new file mode 100644
> index 0000000..0b50067
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/config.h
> @@ -0,0 +1,207 @@
> +/*
> + * (C) 2012 Robert Jarzmik <robert.jarzmik@free.fr>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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

dito

> + *
> + */
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +/*********************************************************************=

> + * CONFIG PXA270 GPIO settings                                       *=

> + *********************************************************************=
/
> +
> +#define GPSR0_DFT		0x00800200
> +#define GPSR1_DFT		0x03020000
> +#define GPSR2_DFT		0x00000000
> +#define GPSR3_DFT		0x001c0006
> +
> +#define GPCR0_DFT		0x0d2d8000
> +#define GPCR1_DFT		0x00002300
> +#define GPCR2_DFT		0x08c80000
> +#define GPCR3_DFT		0x01800c00
> +
> +#define GPDR0_DFT		0x00000000
> +#define GPDR1_DFT		0xff22ab81
> +#define GPDR2_DFT		0x8ffc3fff
> +#define GPDR3_DFT		0x00014000
> +
> +#define GAFR0_L_DFT		0x00000000
> +#define GAFR0_U_DFT		0x00000000
> +#define GAFR1_L_DFT		0x00900550
> +#define GAFR1_U_DFT		0x00000000
> +#define GAFR2_L_DFT		0x000a8000
> +#define GAFR2_U_DFT		0x00000000
> +#define GAFR3_L_DFT		0x00000000
> +#define GAFR3_U_DFT		0x00000000
> +
> +
> +/*
> + * Power Manager Sleep Status Register (PSSR)
> + *
> + * [6] =3D 0   OTG pad is not holding it's state
> + * [5] =3D 1   Read Disable Hold: receivers of all gpio pins are disab=
led
> + * [4] =3D 1   gpio pins are held in their sleep mode state
> + * [3] =3D 0   The processor has not been placed in standby mode by
> + *           configuring the PWRMODE register since STS was cleared
> + *           by a reset or by software.
> + * [2] =3D 0   nVDD_FAULT has been asserted and caused the processor t=
o
> + *           enter deep-sleep mode.
> + * [1] =3D 1   nBATT_FAULT has been asserted and caused the processor =
to
> + *           enter deep-sleep mode.
> + * [0] =3D 1   The processor was placed in sleep mode by configuring t=
he
> + *           PWRMODE register.
> + */
> +
> +#define CONFIG_PSSR_VAL		0x33
> +
> +
> +/*********************************************************************=

> + * CONFIG PXA270 Chipselect settings                                 *=

> + *********************************************************************=
/
> +
> +/*
> + * Memory settings
> + *
> + * This is the configuration for nCS1/0 -> nothing / flash
> + * configuration for nCS1: nothing
> + * [31]    0    - Slower Device
> + * [30:28] 111  - CS deselect to CS time: 7*(2*MemClk) =3D 20 ns
> + * [27:24] 1111 - Address to data valid in bursts: (30+1)*MemClk =3D 3=
0 ns
> + * [23:20] 1111 - " for first access: (30+2)*MemClk =3D 130 ns
> + * [19]    0    - 32 Bit bus width
> + * [18:16] 000  - burst RAM or FLASH
> + * configuration for nCS0 (DocG3 Flash floor 0):
> + * [15]    0    - Slower Device
> + * [14:12] 010  - CS deselect to CS time: 2*(2*MemClk) =3D 20 ns
> + * [11:08] 1101 - Address to data valid in bursts: (20+1)*MemClk =3D x=
x ns
> + * [07:04] 1101 - " for first access: (20-1)*MemClk =3D xx ns
> + * [03]    1    - 16 Bit bus width
> + * [02:00] 000  - synchronous FLASH
> + */
> +#define CONFIG_MSC0_VAL		0x7ff02dd8
> +
> +/*
> + * This is the configuration for nCS3/2
> + * configuration for nCS3: nothing
> + * configuration for nCS2: nothing
> + */
> +#define CONFIG_MSC1_VAL		0x00000000
> +
> +/*
> + * This is the configuration for nCS5/4
> + * configuration for nCS5: nothing
> + * configuration for nCS4: nothing
> + */
> +#define CONFIG_MSC2_VAL		0x00000000
> +
> +/*********************************************************************=

> + * CONFIG PXA270 SDRAM settings                                      *=

> + *********************************************************************=
/
> +
> +#define CONFIG_DRAM_BASE	0xa0000000
> +
> +
> +/* MDCNFG: SDRAM Configuration Register
> + *
> + * [31]      0	 - Memory map 0/1 (normal 256MBytes/large 1GBytes)
> + * [30]      0   - dcacx2
> + * [29]      0   - reserved
> + * [28]      0	 - SA1111 compatiblity mode
> + * [27]      0   - latch return data with return clock
> + * [26]      0   - alternate addressing for pair 2/3
> + * [25:24]   00  - timings
> + * [23]      0   - internal banks in lower partition 2/3 (not used)
> + * [22:21]   00  - row address bits for partition 2/3 (not used)
> + * [20:19]   00  - column address bits for partition 2/3 (not used)
> + * [18]      0   - SDRAM partition 2/3 width is 32 bit
> + * [17]      0   - SDRAM partition 3 disabled
> + * [16]      0   - SDRAM partition 2 disabled
> + * [15]      0	 - Stack1
> + * [14]      0   - dcacx0
> + * [13]      0   - Stack0
> + * [12]      0	 - SA1110 compatiblity mode
> + * [11]      1   - always 1
> + * [10]      0   - no alternate addressing for pair 0/1
> + * [09:08]   11  - tRP=3D2*MemClk CL=3D2 tRCD=3D2*MemClk tRAS=3D5*MemC=
lk tRC=3D8*MemClk RJK
> + * [7]       1   - 4 internal banks in partitions 0/1
> + * [06:05]   10  - 13 row address bits for partition 0/1
> + * [04:03]   10  - 10 column address bits for partition 0/1
> + * [02]      1   - SDRAM partition 0/1 width is 32 bit
> + * [01]      0   - disable SDRAM partition 1
> + * [00]      1   - enable  SDRAM partition 0
> + *
> + * Configuration is for 1 bank of 64MBytes (13 rows * 10 cols)
> + * in bank0, of width 32bits
> + */
> +#define CONFIG_MDCNFG_VAL	0x00000bd5
> +
> +/* MDREFR: SDRAM Refresh Control Register
> + *
> + * [31]    0     - ALTREFA
> + * [30]    0     - ALTREFB
> + * [29]    1     - K0DB4: SDCLK0 =3D MemClk / 4
> + * [28]    0     - reserved
> + * [27]    0     - reserved
> + * [26]    0     - reserved
> + * [25]    0     - K2FREE: not free running
> + * [24]    0     - K1FREE: not free running
> + * [23]    0     - K0FREE: not free running
> + * [22]    0     - SLFRSH: self refresh disabled
> + * [21]    0     - reserved
> + * [20]    1     - APD: no SDRAM auto power down
> + * [19]    0     - K2DB2: SDCLK2 is MemClk
> + * [18]    0     - K2RUN: disable SDCLK2
> + * [17]    1     - K1DB2: SDCLK1 =3D MemClk / 2
> + * [16]    1     - K1RUN: enable SDCLK1
> + * [15]    1     - E1PIN: SDRAM clock enable
> + * [14]    0     - K0DB2: SDCLK0 is MemClk
> + * [13]    0     - K0RUN: disable SDCLK0
> + * [12]    0     - RESERVED
> + * [11:00] 000000011000 - (64ms/8192)*MemClkFreq/32 =3D 25
> + */
> +#define CONFIG_MDREFR_VAL	0x20138017
> +
> +/* MDMRS: Mode Register Set Configuration Register
> + *
> + * [31]      0        - reserved
> + * [30:23]   00000000 - MDMRS2: SDRAM2/3 MRS Value. (not used)
> + * [22:20]   011      - MDCL2:  SDRAM2/3 Cas Latency.  (not used)
> + * [19]      0        - MDADD2: SDRAM2/3 burst Type. Fixed to sequenti=
al.  (not used)
> + * [18:16]   010      - MDBL2:  SDRAM2/3 burst Length. Fixed to 4.  (n=
ot used)
> + * [15]      0        - reserved
> + * [14:07]   00000000 - MDMRS0: SDRAM0/1 MRS Value.
> + * [06:04]   011      - MDCL0:  SDRAM0/1 Cas Latency.
> + * [03]      0        - MDADD0: SDRAM0/1 burst Type. Fixed to sequenti=
al.
> + * [02:00]   010      - MDBL0:  SDRAM0/1 burst Length. Fixed to 4.
> + */
> +#define CONFIG_MDMRS_VAL	0x00320032
> +
> +/*********************************************************************=

> + * CONFIG PXA270 Clock generation                                    *=

> + *********************************************************************=
/
> +#define CONFIG_FLYCNFG_VAL	0x00010001
> +#define CONFIG_SXCNFG_VAL	0x00000000
> +#define CONFIG_CKEN		(CKEN_MEMC |  CKEN_OSTIMER)
> +
> +/* Memory Clock =3D System-Bus Freq., N=3D1, L=3D16  =3D>  12x16=3D208=
, 208x1=3D208 MHz */
> +#define CONFIG_CCCR		0x02000210
> +
> +#endif  /* __CONFIG_H */
> diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mio=
a701/env/bin/init
> new file mode 100644
> index 0000000..2f99eb8
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/env/bin/init
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +
> +PATH=3D/env/bin
> +export PATH
> +
> +. /env/config
> +
> +fb0.enable=3D1
> +
> +while [ -z $toto ]; do
> +    readline "Give me a word" word
> +    echo "I've got your $word"
> +done
> diff --git a/arch/arm/boards/mioa701/env/config b/arch/arm/boards/mioa7=
01/env/config
> new file mode 100644
> index 0000000..67504c2
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/env/config
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +
> +# MioA701 empty config
> +# Should be filled in once development is advanced enough
> diff --git a/arch/arm/boards/mioa701/lowlevel_init.S b/arch/arm/boards/=
mioa701/lowlevel_init.S
> new file mode 100644
> index 0000000..72b5436
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/lowlevel_init.S
> @@ -0,0 +1,46 @@
> +/*
> + *
> + * (c) 2012 Robert Jarzmik <robert.jarzmik@free.fr>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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

dito

> + */
> +
> +#define writel(val, reg) \
> +	ldr		r0,	=3Dreg;	\
> +	ldr		r1,	=3Dval;	\
> +	str		r1,   [r0];
> +
> +#define writeb(val, reg) \
> +	ldr		r0,	=3Dreg;	\
> +	ldr		r1,	=3Dval;	\
> +	strb		r1,   [r0];
> +
> +	.section ".text_bare_init","ax"
> +.global board_init_lowlevel
> +board_init_lowlevel:
> +	mov	r10, lr
> +	/*
> +	 * This piece of code should ensure at least:
> +	 *  - getting SDRAM out of self-refresh, and/or setup SDRAM timings
> +	 *  - putting the GPIO logic into a usable state
> +	bl	stabilize_reset
> +	bl	setup_sdram
> +	bl	setup_gpios
> +	 */
> +	mov	pc, r10
> diff --git a/arch/arm/boards/mioa701/mioa701.h b/arch/arm/boards/mioa70=
1/mioa701.h
> new file mode 100644
> index 0000000..c561b80
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/mioa701.h
> @@ -0,0 +1,86 @@
> +/*
> + * (C) 2012 Robert Jarzmik <robert.jarzmik@free.fr>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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

dito

> + *
> + */
> +#ifndef _MIOA701_H_
> +#define _MIOA701_H_
> +
> +#define MIO_CFG_IN(pin, af)		\
> +	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK)) |\
> +	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_IN))
> +
> +#define MIO_CFG_OUT(pin, af, state)	\
> +	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK | MFP_LPM_STATE_MASK=
)) |\
> +	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_OUT | MFP_LPM_##state))
> +
> +/* Global GPIOs */
> +#define GPIO9_CHARGE_EN				9
> +#define GPIO18_POWEROFF				18
> +#define GPIO87_LCD_POWER			87
> +#define GPIO96_AC_DETECT			96
> +#define GPIO80_MAYBE_CHARGE_VDROP		80	/* Drop of 88mV */
> +
> +/* USB */
> +#define GPIO13_nUSB_DETECT			13
> +#define GPIO22_USB_ENABLE			22
> +
> +/* SDIO bits */
> +#define GPIO78_SDIO_RO				78
> +#define GPIO15_SDIO_INSERT			15
> +#define GPIO91_SDIO_EN				91
> +
> +/* Bluetooth */
> +#define GPIO14_BT_nACTIVITY			14
> +#define GPIO83_BT_ON				83
> +#define GPIO77_BT_UNKNOWN1			77
> +#define GPIO86_BT_MAYBE_nRESET			86
> +
> +/* GPS */
> +#define GPIO23_GPS_UNKNOWN1			23
> +#define GPIO26_GPS_ON				26
> +#define GPIO27_GPS_RESET			27
> +#define GPIO106_GPS_UNKNOWN2			106
> +#define GPIO107_GPS_UNKNOWN3			107
> +
> +/* GSM */
> +#define GPIO24_GSM_MOD_RESET_CMD		24
> +#define GPIO88_GSM_nMOD_ON_CMD			88
> +#define GPIO90_GSM_nMOD_OFF_CMD			90
> +#define GPIO114_GSM_nMOD_DTE_UART_STATE 	114
> +#define GPIO25_GSM_MOD_ON_STATE			25
> +#define GPIO113_GSM_EVENT			113
> +
> +/* SOUND */
> +#define GPIO12_HPJACK_INSERT			12
> +
> +/* LEDS */
> +#define GPIO10_LED_nCharging			10
> +#define GPIO97_LED_nBlue			97
> +#define GPIO98_LED_nOrange			98
> +#define GPIO82_LED_nVibra			82
> +#define GPIO115_LED_nKeyboard			115
> +
> +/* Keyboard */
> +#define GPIO0_KEY_POWER				0
> +#define GPIO93_KEY_VOLUME_UP			93
> +#define GPIO94_KEY_VOLUME_DOWN			94
> +
> +#endif /* _MIOA701_H */
> diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
> index 9e3c53a..2e5cb1c 100644
> --- a/arch/arm/mach-pxa/Kconfig
> +++ b/arch/arm/mach-pxa/Kconfig
> @@ -2,9 +2,11 @@ if ARCH_PXA
> =20
>  config ARCH_TEXT_BASE
>  	hex
> +	default 0xa0000000 if MACH_MIOA701
> =20
>  config BOARDINFO
>  	string
> +	default "Scoter Mitac Mio A701" if MACH_MIOA701
> =20
>  # ----------------------------------------------------------
> =20
> @@ -28,6 +30,13 @@ if ARCH_PXA27X
>  choice
>  	prompt "PXA27x Board Type"
> =20
> +config MACH_MIOA701
> +	bool "Mitac Mio A701"
> +	select MACH_HAS_LOWLEVEL_INIT
> +	help
> +	  Say Y here if you are using a Mitac Mio A701 smartphone
> +	  board
> +
>  endchoice
> =20
>  endif
> diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
> index c01a9e0..6a02a54 100644
> --- a/arch/arm/mach-pxa/Makefile
> +++ b/arch/arm/mach-pxa/Makefile
> @@ -1,6 +1,7 @@
>  obj-y +=3D clocksource.o
>  obj-y +=3D common.o
>  obj-y +=3D gpio.o
> +obj-y +=3D devices.o
> =20
>  obj-$(CONFIG_ARCH_PXA2XX) +=3D mfp-pxa2xx.o
>  obj-$(CONFIG_ARCH_PXA27X) +=3D speed-pxa27x.o

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig245FD984A8B71E58A02BBB82
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7OCs4ACgkQjTAFq1RaXHPxvwCgjo0XJ0mKq2yemGvW16W9wY6f
CNsAn0dQVoA9MVrY2fjEa4YRaFK7atsr
=JAfm
-----END PGP SIGNATURE-----

--------------enig245FD984A8B71E58A02BBB82--


--===============7254718962290148742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7254718962290148742==--
