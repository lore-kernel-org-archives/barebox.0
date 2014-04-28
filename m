Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WemI4-0000nv-JP
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 14:12:19 +0000
Received: by mail-lb0-f171.google.com with SMTP id u14so2152436lbd.30
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2014 07:11:30 -0700 (PDT)
Date: Mon, 28 Apr 2014 18:22:00 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140428182200.bb0dc9bb0dbc147c522470f7@gmail.com>
In-Reply-To: <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
 <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 03/12] dts: Use dt-bindings from kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 28 Apr 2014 09:45:52 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> barebox used to have its own include/dt-bindings with files copied
> from the corresponding kernel files. Use upstream dt-bindings directly
> instead.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Makefile                                           |   2 +-
>  arch/arm/dts/include/dt-bindings                   |   1 -
>  include/dt-bindings/clock/ar933x-clk.h             |  22 -
>  include/dt-bindings/clock/imx5-clock.h             | 203 --------
>  include/dt-bindings/clock/tegra20-car.h            | 158 -------
>  include/dt-bindings/gpio/gpio.h                    |  15 -
>  include/dt-bindings/gpio/tegra-gpio.h              |  50 --
>  include/dt-bindings/input/input.h                  | 525 ---------------=
------
>  include/dt-bindings/interrupt-controller/arm-gic.h |  22 -
>  include/dt-bindings/interrupt-controller/irq.h     |  19 -
>  include/dt-bindings/pinctrl/am33xx.h               |  42 --
>  include/dt-bindings/pinctrl/omap.h                 |  53 ---
>  scripts/Makefile.lib                               |   5 +-
>  13 files changed, 4 insertions(+), 1113 deletions(-)
>  delete mode 120000 arch/arm/dts/include/dt-bindings
>  delete mode 100644 include/dt-bindings/clock/ar933x-clk.h
>  delete mode 100644 include/dt-bindings/clock/imx5-clock.h
>  delete mode 100644 include/dt-bindings/clock/tegra20-car.h
>  delete mode 100644 include/dt-bindings/gpio/gpio.h
>  delete mode 100644 include/dt-bindings/gpio/tegra-gpio.h
>  delete mode 100644 include/dt-bindings/input/input.h
>  delete mode 100644 include/dt-bindings/interrupt-controller/arm-gic.h
>  delete mode 100644 include/dt-bindings/interrupt-controller/irq.h
>  delete mode 100644 include/dt-bindings/pinctrl/am33xx.h
>  delete mode 100644 include/dt-bindings/pinctrl/omap.h
> =

> diff --git a/Makefile b/Makefile
> index 83638a0..a54b82b 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -290,7 +290,7 @@ export MODVERDIR :=3D $(if $(KBUILD_EXTMOD),$(firstwo=
rd $(KBUILD_EXTMOD))/).tmp_ve
>  =

>  # Use LINUXINCLUDE when you must reference the include/ directory.
>  # Needed to be compatible with the O=3D option
> -LINUXINCLUDE    :=3D -Iinclude \
> +LINUXINCLUDE    :=3D -Iinclude -Idts/include \
>                     $(if $(KBUILD_SRC),-Iinclude2 -I$(srctree)/include) \
>  		   -I$(srctree)/arch/$(ARCH)/include \
>  		   -I$(objtree)/arch/$(ARCH)/include \
> diff --git a/arch/arm/dts/include/dt-bindings b/arch/arm/dts/include/dt-b=
indings
> deleted file mode 120000
> index 0cecb3d..0000000
> --- a/arch/arm/dts/include/dt-bindings
> +++ /dev/null
> @@ -1 +0,0 @@
> -../../../../include/dt-bindings
> \ No newline at end of file
> diff --git a/include/dt-bindings/clock/ar933x-clk.h b/include/dt-bindings=
/clock/ar933x-clk.h
> deleted file mode 100644
> index f048930..0000000
> --- a/include/dt-bindings/clock/ar933x-clk.h
> +++ /dev/null

There is no device tree support for ar933x in mainline linux!
Please get this file back.

> @@ -1,22 +0,0 @@
> -/*
> - * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> - */
> -
> -#ifndef __DT_BINDINGS_AR933X_CLK_H
> -#define __DT_BINDINGS_AR933X_CLK_H
> -
> -#define AR933X_CLK_REF		0
> -#define AR933X_CLK_UART		1
> -#define AR933X_CLK_CPU		2
> -#define AR933X_CLK_DDR		3
> -#define AR933X_CLK_AHB		4
> -#define AR933X_CLK_WDT		5
> -
> -#define AR933X_CLK_END		6
> -
> -#endif /* __DT_BINDINGS_AR933X_CLK_H */
> diff --git a/include/dt-bindings/clock/imx5-clock.h b/include/dt-bindings=
/clock/imx5-clock.h
> deleted file mode 100644
> index 5f2667e..0000000
> --- a/include/dt-bindings/clock/imx5-clock.h
> +++ /dev/null
> @@ -1,203 +0,0 @@
> -/*
> - * Copyright 2013 Lucas Stach, Pengutronix <l.stach@pengutronix.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> - */
> -
> -#ifndef __DT_BINDINGS_CLOCK_IMX5_H
> -#define __DT_BINDINGS_CLOCK_IMX5_H
> -
> -#define IMX5_CLK_DUMMY			0
> -#define IMX5_CLK_CKIL			1
> -#define IMX5_CLK_OSC			2
> -#define IMX5_CLK_CKIH1			3
> -#define IMX5_CLK_CKIH2			4
> -#define IMX5_CLK_AHB			5
> -#define IMX5_CLK_IPG			6
> -#define IMX5_CLK_AXI_A			7
> -#define IMX5_CLK_AXI_B			8
> -#define IMX5_CLK_UART_PRED		9
> -#define IMX5_CLK_UART_ROOT		10
> -#define IMX5_CLK_ESDHC_A_PRED		11
> -#define IMX5_CLK_ESDHC_B_PRED		12
> -#define IMX5_CLK_ESDHC_C_SEL		13
> -#define IMX5_CLK_ESDHC_D_SEL		14
> -#define IMX5_CLK_EMI_SEL		15
> -#define IMX5_CLK_EMI_SLOW_PODF		16
> -#define IMX5_CLK_NFC_PODF		17
> -#define IMX5_CLK_ECSPI_PRED		18
> -#define IMX5_CLK_ECSPI_PODF		19
> -#define IMX5_CLK_USBOH3_PRED		20
> -#define IMX5_CLK_USBOH3_PODF		21
> -#define IMX5_CLK_USB_PHY_PRED		22
> -#define IMX5_CLK_USB_PHY_PODF		23
> -#define IMX5_CLK_CPU_PODF		24
> -#define IMX5_CLK_DI_PRED		25
> -#define IMX5_CLK_TVE_SEL		27
> -#define IMX5_CLK_UART1_IPG_GATE		28
> -#define IMX5_CLK_UART1_PER_GATE		29
> -#define IMX5_CLK_UART2_IPG_GATE		30
> -#define IMX5_CLK_UART2_PER_GATE		31
> -#define IMX5_CLK_UART3_IPG_GATE		32
> -#define IMX5_CLK_UART3_PER_GATE		33
> -#define IMX5_CLK_I2C1_GATE		34
> -#define IMX5_CLK_I2C2_GATE		35
> -#define IMX5_CLK_GPT_IPG_GATE		36
> -#define IMX5_CLK_PWM1_IPG_GATE		37
> -#define IMX5_CLK_PWM1_HF_GATE		38
> -#define IMX5_CLK_PWM2_IPG_GATE		39
> -#define IMX5_CLK_PWM2_HF_GATE		40
> -#define IMX5_CLK_GPT_HF_GATE		41
> -#define IMX5_CLK_FEC_GATE		42
> -#define IMX5_CLK_USBOH3_PER_GATE	43
> -#define IMX5_CLK_ESDHC1_IPG_GATE	44
> -#define IMX5_CLK_ESDHC2_IPG_GATE	45
> -#define IMX5_CLK_ESDHC3_IPG_GATE	46
> -#define IMX5_CLK_ESDHC4_IPG_GATE	47
> -#define IMX5_CLK_SSI1_IPG_GATE		48
> -#define IMX5_CLK_SSI2_IPG_GATE		49
> -#define IMX5_CLK_SSI3_IPG_GATE		50
> -#define IMX5_CLK_ECSPI1_IPG_GATE	51
> -#define IMX5_CLK_ECSPI1_PER_GATE	52
> -#define IMX5_CLK_ECSPI2_IPG_GATE	53
> -#define IMX5_CLK_ECSPI2_PER_GATE	54
> -#define IMX5_CLK_CSPI_IPG_GATE		55
> -#define IMX5_CLK_SDMA_GATE		56
> -#define IMX5_CLK_EMI_SLOW_GATE		57
> -#define IMX5_CLK_IPU_SEL		58
> -#define IMX5_CLK_IPU_GATE		59
> -#define IMX5_CLK_NFC_GATE		60
> -#define IMX5_CLK_IPU_DI1_GATE		61
> -#define IMX5_CLK_VPU_SEL		62
> -#define IMX5_CLK_VPU_GATE		63
> -#define IMX5_CLK_VPU_REFERENCE_GATE	64
> -#define IMX5_CLK_UART4_IPG_GATE		65
> -#define IMX5_CLK_UART4_PER_GATE		66
> -#define IMX5_CLK_UART5_IPG_GATE		67
> -#define IMX5_CLK_UART5_PER_GATE		68
> -#define IMX5_CLK_TVE_GATE		69
> -#define IMX5_CLK_TVE_PRED		70
> -#define IMX5_CLK_ESDHC1_PER_GATE	71
> -#define IMX5_CLK_ESDHC2_PER_GATE	72
> -#define IMX5_CLK_ESDHC3_PER_GATE	73
> -#define IMX5_CLK_ESDHC4_PER_GATE	74
> -#define IMX5_CLK_USB_PHY_GATE		75
> -#define IMX5_CLK_HSI2C_GATE		76
> -#define IMX5_CLK_MIPI_HSC1_GATE		77
> -#define IMX5_CLK_MIPI_HSC2_GATE		78
> -#define IMX5_CLK_MIPI_ESC_GATE		79
> -#define IMX5_CLK_MIPI_HSP_GATE		80
> -#define IMX5_CLK_LDB_DI1_DIV_3_5	81
> -#define IMX5_CLK_LDB_DI1_DIV		82
> -#define IMX5_CLK_LDB_DI0_DIV_3_5	83
> -#define IMX5_CLK_LDB_DI0_DIV		84
> -#define IMX5_CLK_LDB_DI1_GATE		85
> -#define IMX5_CLK_CAN2_SERIAL_GATE	86
> -#define IMX5_CLK_CAN2_IPG_GATE		87
> -#define IMX5_CLK_I2C3_GATE		88
> -#define IMX5_CLK_LP_APM			89
> -#define IMX5_CLK_PERIPH_APM		90
> -#define IMX5_CLK_MAIN_BUS		91
> -#define IMX5_CLK_AHB_MAX		92
> -#define IMX5_CLK_AIPS_TZ1		93
> -#define IMX5_CLK_AIPS_TZ2		94
> -#define IMX5_CLK_TMAX1			95
> -#define IMX5_CLK_TMAX2			96
> -#define IMX5_CLK_TMAX3			97
> -#define IMX5_CLK_SPBA			98
> -#define IMX5_CLK_UART_SEL		99
> -#define IMX5_CLK_ESDHC_A_SEL		100
> -#define IMX5_CLK_ESDHC_B_SEL		101
> -#define IMX5_CLK_ESDHC_A_PODF		102
> -#define IMX5_CLK_ESDHC_B_PODF		103
> -#define IMX5_CLK_ECSPI_SEL		104
> -#define IMX5_CLK_USBOH3_SEL		105
> -#define IMX5_CLK_USB_PHY_SEL		106
> -#define IMX5_CLK_IIM_GATE		107
> -#define IMX5_CLK_USBOH3_GATE		108
> -#define IMX5_CLK_EMI_FAST_GATE		109
> -#define IMX5_CLK_IPU_DI0_GATE		110
> -#define IMX5_CLK_GPC_DVFS		111
> -#define IMX5_CLK_PLL1_SW		112
> -#define IMX5_CLK_PLL2_SW		113
> -#define IMX5_CLK_PLL3_SW		114
> -#define IMX5_CLK_IPU_DI0_SEL		115
> -#define IMX5_CLK_IPU_DI1_SEL		116
> -#define IMX5_CLK_TVE_EXT_SEL		117
> -#define IMX5_CLK_MX51_MIPI		118
> -#define IMX5_CLK_PLL4_SW		119
> -#define IMX5_CLK_LDB_DI1_SEL		120
> -#define IMX5_CLK_DI_PLL4_PODF		121
> -#define IMX5_CLK_LDB_DI0_SEL		122
> -#define IMX5_CLK_LDB_DI0_GATE		123
> -#define IMX5_CLK_USB_PHY1_GATE		124
> -#define IMX5_CLK_USB_PHY2_GATE		125
> -#define IMX5_CLK_PER_LP_APM		126
> -#define IMX5_CLK_PER_PRED1		127
> -#define IMX5_CLK_PER_PRED2		128
> -#define IMX5_CLK_PER_PODF		129
> -#define IMX5_CLK_PER_ROOT		130
> -#define IMX5_CLK_SSI_APM		131
> -#define IMX5_CLK_SSI1_ROOT_SEL		132
> -#define IMX5_CLK_SSI2_ROOT_SEL		133
> -#define IMX5_CLK_SSI3_ROOT_SEL		134
> -#define IMX5_CLK_SSI_EXT1_SEL		135
> -#define IMX5_CLK_SSI_EXT2_SEL		136
> -#define IMX5_CLK_SSI_EXT1_COM_SEL	137
> -#define IMX5_CLK_SSI_EXT2_COM_SEL	138
> -#define IMX5_CLK_SSI1_ROOT_PRED		139
> -#define IMX5_CLK_SSI1_ROOT_PODF		140
> -#define IMX5_CLK_SSI2_ROOT_PRED		141
> -#define IMX5_CLK_SSI2_ROOT_PODF		142
> -#define IMX5_CLK_SSI_EXT1_PRED		143
> -#define IMX5_CLK_SSI_EXT1_PODF		144
> -#define IMX5_CLK_SSI_EXT2_PRED		145
> -#define IMX5_CLK_SSI_EXT2_PODF		146
> -#define IMX5_CLK_SSI1_ROOT_GATE		147
> -#define IMX5_CLK_SSI2_ROOT_GATE		148
> -#define IMX5_CLK_SSI3_ROOT_GATE		149
> -#define IMX5_CLK_SSI_EXT1_GATE		150
> -#define IMX5_CLK_SSI_EXT2_GATE		151
> -#define IMX5_CLK_EPIT1_IPG_GATE		152
> -#define IMX5_CLK_EPIT1_HF_GATE		153
> -#define IMX5_CLK_EPIT2_IPG_GATE		154
> -#define IMX5_CLK_EPIT2_HF_GATE		155
> -#define IMX5_CLK_CAN_SEL		156
> -#define IMX5_CLK_CAN1_SERIAL_GATE	157
> -#define IMX5_CLK_CAN1_IPG_GATE		158
> -#define IMX5_CLK_OWIRE_GATE		159
> -#define IMX5_CLK_GPU3D_SEL		160
> -#define IMX5_CLK_GPU2D_SEL		161
> -#define IMX5_CLK_GPU3D_GATE		162
> -#define IMX5_CLK_GPU2D_GATE		163
> -#define IMX5_CLK_GARB_GATE		164
> -#define IMX5_CLK_CKO1_SEL		165
> -#define IMX5_CLK_CKO1_PODF		166
> -#define IMX5_CLK_CKO1			167
> -#define IMX5_CLK_CKO2_SEL		168
> -#define IMX5_CLK_CKO2_PODF		169
> -#define IMX5_CLK_CKO2			170
> -#define IMX5_CLK_SRTC_GATE		171
> -#define IMX5_CLK_PATA_GATE		172
> -#define IMX5_CLK_SATA_GATE		173
> -#define IMX5_CLK_SPDIF_XTAL_SEL		174
> -#define IMX5_CLK_SPDIF0_SEL		175
> -#define IMX5_CLK_SPDIF1_SEL		176
> -#define IMX5_CLK_SPDIF0_PRED		177
> -#define IMX5_CLK_SPDIF0_PODF		178
> -#define IMX5_CLK_SPDIF1_PRED		179
> -#define IMX5_CLK_SPDIF1_PODF		180
> -#define IMX5_CLK_SPDIF0_COM_SEL		181
> -#define IMX5_CLK_SPDIF1_COM_SEL		182
> -#define IMX5_CLK_SPDIF0_GATE		183
> -#define IMX5_CLK_SPDIF1_GATE		184
> -#define IMX5_CLK_SPDIF_IPG_GATE		185
> -#define IMX5_CLK_OCRAM			186
> -#define IMX5_CLK_SAHARA_IPG_GATE	187
> -#define IMX5_CLK_SATA_REF		188
> -#define IMX5_CLK_END			189
> -
> -#endif /* __DT_BINDINGS_CLOCK_IMX5_H */
> diff --git a/include/dt-bindings/clock/tegra20-car.h b/include/dt-binding=
s/clock/tegra20-car.h
> deleted file mode 100644
> index a1ae9a8..0000000
> --- a/include/dt-bindings/clock/tegra20-car.h
> +++ /dev/null
> @@ -1,158 +0,0 @@
> -/*
> - * This header provides constants for binding nvidia,tegra20-car.
> - *
> - * The first 96 clocks are numbered to match the bits in the CAR's CLK_O=
UT_ENB
> - * registers. These IDs often match those in the CAR's RST_DEVICES regis=
ters,
> - * but not in all cases. Some bits in CLK_OUT_ENB affect multiple clocks=
. In
> - * this case, those clocks are assigned IDs above 95 in order to highlig=
ht
> - * this issue. Implementations that interpret these clock IDs as bit val=
ues
> - * within the CLK_OUT_ENB or RST_DEVICES registers should be careful to
> - * explicitly handle these special cases.
> - *
> - * The balance of the clocks controlled by the CAR are assigned IDs of 9=
6 and
> - * above.
> - */
> -
> -#ifndef _DT_BINDINGS_CLOCK_TEGRA20_CAR_H
> -#define _DT_BINDINGS_CLOCK_TEGRA20_CAR_H
> -
> -#define TEGRA20_CLK_CPU 0
> -/* 1 */
> -/* 2 */
> -#define TEGRA20_CLK_AC97 3
> -#define TEGRA20_CLK_RTC 4
> -#define TEGRA20_CLK_TIMER 5
> -#define TEGRA20_CLK_UARTA 6
> -/* 7 (register bit affects uart2 and vfir) */
> -#define TEGRA20_CLK_GPIO 8
> -#define TEGRA20_CLK_SDMMC2 9
> -/* 10 (register bit affects spdif_in and spdif_out) */
> -#define TEGRA20_CLK_I2S1 11
> -#define TEGRA20_CLK_I2C1 12
> -#define TEGRA20_CLK_NDFLASH 13
> -#define TEGRA20_CLK_SDMMC1 14
> -#define TEGRA20_CLK_SDMMC4 15
> -#define TEGRA20_CLK_TWC 16
> -#define TEGRA20_CLK_PWM 17
> -#define TEGRA20_CLK_I2S2 18
> -#define TEGRA20_CLK_EPP 19
> -/* 20 (register bit affects vi and vi_sensor) */
> -#define TEGRA20_CLK_GR2D 21
> -#define TEGRA20_CLK_USBD 22
> -#define TEGRA20_CLK_ISP 23
> -#define TEGRA20_CLK_GR3D 24
> -#define TEGRA20_CLK_IDE 25
> -#define TEGRA20_CLK_DISP2 26
> -#define TEGRA20_CLK_DISP1 27
> -#define TEGRA20_CLK_HOST1X 28
> -#define TEGRA20_CLK_VCP 29
> -/* 30 */
> -#define TEGRA20_CLK_CACHE2 31
> -
> -#define TEGRA20_CLK_MEM 32
> -#define TEGRA20_CLK_AHBDMA 33
> -#define TEGRA20_CLK_APBDMA 34
> -/* 35 */
> -#define TEGRA20_CLK_KBC 36
> -#define TEGRA20_CLK_STAT_MON 37
> -#define TEGRA20_CLK_PMC 38
> -#define TEGRA20_CLK_FUSE 39
> -#define TEGRA20_CLK_KFUSE 40
> -#define TEGRA20_CLK_SBC1 41
> -#define TEGRA20_CLK_NOR 42
> -#define TEGRA20_CLK_SPI 43
> -#define TEGRA20_CLK_SBC2 44
> -#define TEGRA20_CLK_XIO 45
> -#define TEGRA20_CLK_SBC3 46
> -#define TEGRA20_CLK_DVC 47
> -#define TEGRA20_CLK_DSI 48
> -/* 49 (register bit affects tvo and cve) */
> -#define TEGRA20_CLK_MIPI 50
> -#define TEGRA20_CLK_HDMI 51
> -#define TEGRA20_CLK_CSI 52
> -#define TEGRA20_CLK_TVDAC 53
> -#define TEGRA20_CLK_I2C2 54
> -#define TEGRA20_CLK_UARTC 55
> -/* 56 */
> -#define TEGRA20_CLK_EMC 57
> -#define TEGRA20_CLK_USB2 58
> -#define TEGRA20_CLK_USB3 59
> -#define TEGRA20_CLK_MPE 60
> -#define TEGRA20_CLK_VDE 61
> -#define TEGRA20_CLK_BSEA 62
> -#define TEGRA20_CLK_BSEV 63
> -
> -#define TEGRA20_CLK_SPEEDO 64
> -#define TEGRA20_CLK_UARTD 65
> -#define TEGRA20_CLK_UARTE 66
> -#define TEGRA20_CLK_I2C3 67
> -#define TEGRA20_CLK_SBC4 68
> -#define TEGRA20_CLK_SDMMC3 69
> -#define TEGRA20_CLK_PEX 70
> -#define TEGRA20_CLK_OWR 71
> -#define TEGRA20_CLK_AFI 72
> -#define TEGRA20_CLK_CSITE 73
> -#define TEGRA20_CLK_PCIE_XCLK 74
> -#define TEGRA20_CLK_AVPUCQ 75
> -#define TEGRA20_CLK_LA 76
> -/* 77 */
> -/* 78 */
> -/* 79 */
> -/* 80 */
> -/* 81 */
> -/* 82 */
> -/* 83 */
> -#define TEGRA20_CLK_IRAMA 84
> -#define TEGRA20_CLK_IRAMB 85
> -#define TEGRA20_CLK_IRAMC 86
> -#define TEGRA20_CLK_IRAMD 87
> -#define TEGRA20_CLK_CRAM2 88
> -#define TEGRA20_CLK_AUDIO_2X 89 /* a/k/a audio_2x_sync_clk */
> -#define TEGRA20_CLK_CLK_D 90
> -/* 91 */
> -#define TEGRA20_CLK_CSUS 92
> -#define TEGRA20_CLK_CDEV2 93
> -#define TEGRA20_CLK_CDEV1 94
> -/* 95 */
> -
> -#define TEGRA20_CLK_UARTB 96
> -#define TEGRA20_CLK_VFIR 97
> -#define TEGRA20_CLK_SPDIF_IN 98
> -#define TEGRA20_CLK_SPDIF_OUT 99
> -#define TEGRA20_CLK_VI 100
> -#define TEGRA20_CLK_VI_SENSOR 101
> -#define TEGRA20_CLK_TVO 102
> -#define TEGRA20_CLK_CVE 103
> -#define TEGRA20_CLK_OSC 104
> -#define TEGRA20_CLK_CLK_32K 105 /* a/k/a clk_s */
> -#define TEGRA20_CLK_CLK_M 106
> -#define TEGRA20_CLK_SCLK 107
> -#define TEGRA20_CLK_CCLK 108
> -#define TEGRA20_CLK_HCLK 109
> -#define TEGRA20_CLK_PCLK 110
> -#define TEGRA20_CLK_BLINK 111
> -#define TEGRA20_CLK_PLL_A 112
> -#define TEGRA20_CLK_PLL_A_OUT0 113
> -#define TEGRA20_CLK_PLL_C 114
> -#define TEGRA20_CLK_PLL_C_OUT1 115
> -#define TEGRA20_CLK_PLL_D 116
> -#define TEGRA20_CLK_PLL_D_OUT0 117
> -#define TEGRA20_CLK_PLL_E 118
> -#define TEGRA20_CLK_PLL_M 119
> -#define TEGRA20_CLK_PLL_M_OUT1 120
> -#define TEGRA20_CLK_PLL_P 121
> -#define TEGRA20_CLK_PLL_P_OUT1 122
> -#define TEGRA20_CLK_PLL_P_OUT2 123
> -#define TEGRA20_CLK_PLL_P_OUT3 124
> -#define TEGRA20_CLK_PLL_P_OUT4 125
> -#define TEGRA20_CLK_PLL_S 126
> -#define TEGRA20_CLK_PLL_U 127
> -
> -#define TEGRA20_CLK_PLL_X 128
> -#define TEGRA20_CLK_COP 129 /* a/k/a avp */
> -#define TEGRA20_CLK_AUDIO 130 /* a/k/a audio_sync_clk */
> -#define TEGRA20_CLK_PLL_REF 131
> -#define TEGRA20_CLK_TWD 132
> -#define TEGRA20_CLK_CLK_MAX 133
> -
> -#endif	/* _DT_BINDINGS_CLOCK_TEGRA20_CAR_H */
> diff --git a/include/dt-bindings/gpio/gpio.h b/include/dt-bindings/gpio/g=
pio.h
> deleted file mode 100644
> index e6b1e0a..0000000
> --- a/include/dt-bindings/gpio/gpio.h
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -/*
> - * This header provides constants for most GPIO bindings.
> - *
> - * Most GPIO bindings include a flags cell as part of the GPIO specifier.
> - * In most cases, the format of the flags cell uses the standard values
> - * defined in this header.
> - */
> -
> -#ifndef _DT_BINDINGS_GPIO_GPIO_H
> -#define _DT_BINDINGS_GPIO_GPIO_H
> -
> -#define GPIO_ACTIVE_HIGH 0
> -#define GPIO_ACTIVE_LOW 1
> -
> -#endif
> diff --git a/include/dt-bindings/gpio/tegra-gpio.h b/include/dt-bindings/=
gpio/tegra-gpio.h
> deleted file mode 100644
> index 4d179c0..0000000
> --- a/include/dt-bindings/gpio/tegra-gpio.h
> +++ /dev/null
> @@ -1,50 +0,0 @@
> -/*
> - * This header provides constants for binding nvidia,tegra*-gpio.
> - *
> - * The first cell in Tegra's GPIO specifier is the GPIO ID. The macros b=
elow
> - * provide names for this.
> - *
> - * The second cell contains standard flag values specified in gpio.h.
> - */
> -
> -#ifndef _DT_BINDINGS_GPIO_TEGRA_GPIO_H
> -#define _DT_BINDINGS_GPIO_TEGRA_GPIO_H
> -
> -#include <dt-bindings/gpio/gpio.h>
> -
> -#define TEGRA_GPIO_BANK_ID_A 0
> -#define TEGRA_GPIO_BANK_ID_B 1
> -#define TEGRA_GPIO_BANK_ID_C 2
> -#define TEGRA_GPIO_BANK_ID_D 3
> -#define TEGRA_GPIO_BANK_ID_E 4
> -#define TEGRA_GPIO_BANK_ID_F 5
> -#define TEGRA_GPIO_BANK_ID_G 6
> -#define TEGRA_GPIO_BANK_ID_H 7
> -#define TEGRA_GPIO_BANK_ID_I 8
> -#define TEGRA_GPIO_BANK_ID_J 9
> -#define TEGRA_GPIO_BANK_ID_K 10
> -#define TEGRA_GPIO_BANK_ID_L 11
> -#define TEGRA_GPIO_BANK_ID_M 12
> -#define TEGRA_GPIO_BANK_ID_N 13
> -#define TEGRA_GPIO_BANK_ID_O 14
> -#define TEGRA_GPIO_BANK_ID_P 15
> -#define TEGRA_GPIO_BANK_ID_Q 16
> -#define TEGRA_GPIO_BANK_ID_R 17
> -#define TEGRA_GPIO_BANK_ID_S 18
> -#define TEGRA_GPIO_BANK_ID_T 19
> -#define TEGRA_GPIO_BANK_ID_U 20
> -#define TEGRA_GPIO_BANK_ID_V 21
> -#define TEGRA_GPIO_BANK_ID_W 22
> -#define TEGRA_GPIO_BANK_ID_X 23
> -#define TEGRA_GPIO_BANK_ID_Y 24
> -#define TEGRA_GPIO_BANK_ID_Z 25
> -#define TEGRA_GPIO_BANK_ID_AA 26
> -#define TEGRA_GPIO_BANK_ID_BB 27
> -#define TEGRA_GPIO_BANK_ID_CC 28
> -#define TEGRA_GPIO_BANK_ID_DD 29
> -#define TEGRA_GPIO_BANK_ID_EE 30
> -
> -#define TEGRA_GPIO(bank, offset) \
> -	((TEGRA_GPIO_BANK_ID_##bank * 8) + offset)
> -
> -#endif
> diff --git a/include/dt-bindings/input/input.h b/include/dt-bindings/inpu=
t/input.h
> deleted file mode 100644
> index 042e7b3..0000000
> --- a/include/dt-bindings/input/input.h
> +++ /dev/null
> @@ -1,525 +0,0 @@
> -/*
> - * This header provides constants for most input bindings.
> - *
> - * Most input bindings include key code, matrix key code format.
> - * In most cases, key code and matrix key code format uses
> - * the standard values/macro defined in this header.
> - */
> -
> -#ifndef _DT_BINDINGS_INPUT_INPUT_H
> -#define _DT_BINDINGS_INPUT_INPUT_H
> -
> -#define KEY_RESERVED		0
> -#define KEY_ESC			1
> -#define KEY_1			2
> -#define KEY_2			3
> -#define KEY_3			4
> -#define KEY_4			5
> -#define KEY_5			6
> -#define KEY_6			7
> -#define KEY_7			8
> -#define KEY_8			9
> -#define KEY_9			10
> -#define KEY_0			11
> -#define KEY_MINUS		12
> -#define KEY_EQUAL		13
> -#define KEY_BACKSPACE		14
> -#define KEY_TAB			15
> -#define KEY_Q			16
> -#define KEY_W			17
> -#define KEY_E			18
> -#define KEY_R			19
> -#define KEY_T			20
> -#define KEY_Y			21
> -#define KEY_U			22
> -#define KEY_I			23
> -#define KEY_O			24
> -#define KEY_P			25
> -#define KEY_LEFTBRACE		26
> -#define KEY_RIGHTBRACE		27
> -#define KEY_ENTER		28
> -#define KEY_LEFTCTRL		29
> -#define KEY_A			30
> -#define KEY_S			31
> -#define KEY_D			32
> -#define KEY_F			33
> -#define KEY_G			34
> -#define KEY_H			35
> -#define KEY_J			36
> -#define KEY_K			37
> -#define KEY_L			38
> -#define KEY_SEMICOLON		39
> -#define KEY_APOSTROPHE		40
> -#define KEY_GRAVE		41
> -#define KEY_LEFTSHIFT		42
> -#define KEY_BACKSLASH		43
> -#define KEY_Z			44
> -#define KEY_X			45
> -#define KEY_C			46
> -#define KEY_V			47
> -#define KEY_B			48
> -#define KEY_N			49
> -#define KEY_M			50
> -#define KEY_COMMA		51
> -#define KEY_DOT			52
> -#define KEY_SLASH		53
> -#define KEY_RIGHTSHIFT		54
> -#define KEY_KPASTERISK		55
> -#define KEY_LEFTALT		56
> -#define KEY_SPACE		57
> -#define KEY_CAPSLOCK		58
> -#define KEY_F1			59
> -#define KEY_F2			60
> -#define KEY_F3			61
> -#define KEY_F4			62
> -#define KEY_F5			63
> -#define KEY_F6			64
> -#define KEY_F7			65
> -#define KEY_F8			66
> -#define KEY_F9			67
> -#define KEY_F10			68
> -#define KEY_NUMLOCK		69
> -#define KEY_SCROLLLOCK		70
> -#define KEY_KP7			71
> -#define KEY_KP8			72
> -#define KEY_KP9			73
> -#define KEY_KPMINUS		74
> -#define KEY_KP4			75
> -#define KEY_KP5			76
> -#define KEY_KP6			77
> -#define KEY_KPPLUS		78
> -#define KEY_KP1			79
> -#define KEY_KP2			80
> -#define KEY_KP3			81
> -#define KEY_KP0			82
> -#define KEY_KPDOT		83
> -
> -#define KEY_ZENKAKUHANKAKU	85
> -#define KEY_102ND		86
> -#define KEY_F11			87
> -#define KEY_F12			88
> -#define KEY_RO			89
> -#define KEY_KATAKANA		90
> -#define KEY_HIRAGANA		91
> -#define KEY_HENKAN		92
> -#define KEY_KATAKANAHIRAGANA	93
> -#define KEY_MUHENKAN		94
> -#define KEY_KPJPCOMMA		95
> -#define KEY_KPENTER		96
> -#define KEY_RIGHTCTRL		97
> -#define KEY_KPSLASH		98
> -#define KEY_SYSRQ		99
> -#define KEY_RIGHTALT		100
> -#define KEY_LINEFEED		101
> -#define KEY_HOME		102
> -#define KEY_UP			103
> -#define KEY_PAGEUP		104
> -#define KEY_LEFT		105
> -#define KEY_RIGHT		106
> -#define KEY_END			107
> -#define KEY_DOWN		108
> -#define KEY_PAGEDOWN		109
> -#define KEY_INSERT		110
> -#define KEY_DELETE		111
> -#define KEY_MACRO		112
> -#define KEY_MUTE		113
> -#define KEY_VOLUMEDOWN		114
> -#define KEY_VOLUMEUP		115
> -#define KEY_POWER		116	/* SC System Power Down */
> -#define KEY_KPEQUAL		117
> -#define KEY_KPPLUSMINUS		118
> -#define KEY_PAUSE		119
> -#define KEY_SCALE		120	/* AL Compiz Scale (Expose) */
> -
> -#define KEY_KPCOMMA		121
> -#define KEY_HANGEUL		122
> -#define KEY_HANGUEL		KEY_HANGEUL
> -#define KEY_HANJA		123
> -#define KEY_YEN			124
> -#define KEY_LEFTMETA		125
> -#define KEY_RIGHTMETA		126
> -#define KEY_COMPOSE		127
> -
> -#define KEY_STOP		128	/* AC Stop */
> -#define KEY_AGAIN		129
> -#define KEY_PROPS		130	/* AC Properties */
> -#define KEY_UNDO		131	/* AC Undo */
> -#define KEY_FRONT		132
> -#define KEY_COPY		133	/* AC Copy */
> -#define KEY_OPEN		134	/* AC Open */
> -#define KEY_PASTE		135	/* AC Paste */
> -#define KEY_FIND		136	/* AC Search */
> -#define KEY_CUT			137	/* AC Cut */
> -#define KEY_HELP		138	/* AL Integrated Help Center */
> -#define KEY_MENU		139	/* Menu (show menu) */
> -#define KEY_CALC		140	/* AL Calculator */
> -#define KEY_SETUP		141
> -#define KEY_SLEEP		142	/* SC System Sleep */
> -#define KEY_WAKEUP		143	/* System Wake Up */
> -#define KEY_FILE		144	/* AL Local Machine Browser */
> -#define KEY_SENDFILE		145
> -#define KEY_DELETEFILE		146
> -#define KEY_XFER		147
> -#define KEY_PROG1		148
> -#define KEY_PROG2		149
> -#define KEY_WWW			150	/* AL Internet Browser */
> -#define KEY_MSDOS		151
> -#define KEY_COFFEE		152	/* AL Terminal Lock/Screensaver */
> -#define KEY_SCREENLOCK		KEY_COFFEE
> -#define KEY_DIRECTION		153
> -#define KEY_CYCLEWINDOWS	154
> -#define KEY_MAIL		155
> -#define KEY_BOOKMARKS		156	/* AC Bookmarks */
> -#define KEY_COMPUTER		157
> -#define KEY_BACK		158	/* AC Back */
> -#define KEY_FORWARD		159	/* AC Forward */
> -#define KEY_CLOSECD		160
> -#define KEY_EJECTCD		161
> -#define KEY_EJECTCLOSECD	162
> -#define KEY_NEXTSONG		163
> -#define KEY_PLAYPAUSE		164
> -#define KEY_PREVIOUSSONG	165
> -#define KEY_STOPCD		166
> -#define KEY_RECORD		167
> -#define KEY_REWIND		168
> -#define KEY_PHONE		169	/* Media Select Telephone */
> -#define KEY_ISO			170
> -#define KEY_CONFIG		171	/* AL Consumer Control Configuration */
> -#define KEY_HOMEPAGE		172	/* AC Home */
> -#define KEY_REFRESH		173	/* AC Refresh */
> -#define KEY_EXIT		174	/* AC Exit */
> -#define KEY_MOVE		175
> -#define KEY_EDIT		176
> -#define KEY_SCROLLUP		177
> -#define KEY_SCROLLDOWN		178
> -#define KEY_KPLEFTPAREN		179
> -#define KEY_KPRIGHTPAREN	180
> -#define KEY_NEW			181	/* AC New */
> -#define KEY_REDO		182	/* AC Redo/Repeat */
> -
> -#define KEY_F13			183
> -#define KEY_F14			184
> -#define KEY_F15			185
> -#define KEY_F16			186
> -#define KEY_F17			187
> -#define KEY_F18			188
> -#define KEY_F19			189
> -#define KEY_F20			190
> -#define KEY_F21			191
> -#define KEY_F22			192
> -#define KEY_F23			193
> -#define KEY_F24			194
> -
> -#define KEY_PLAYCD		200
> -#define KEY_PAUSECD		201
> -#define KEY_PROG3		202
> -#define KEY_PROG4		203
> -#define KEY_DASHBOARD		204	/* AL Dashboard */
> -#define KEY_SUSPEND		205
> -#define KEY_CLOSE		206	/* AC Close */
> -#define KEY_PLAY		207
> -#define KEY_FASTFORWARD		208
> -#define KEY_BASSBOOST		209
> -#define KEY_PRINT		210	/* AC Print */
> -#define KEY_HP			211
> -#define KEY_CAMERA		212
> -#define KEY_SOUND		213
> -#define KEY_QUESTION		214
> -#define KEY_EMAIL		215
> -#define KEY_CHAT		216
> -#define KEY_SEARCH		217
> -#define KEY_CONNECT		218
> -#define KEY_FINANCE		219	/* AL Checkbook/Finance */
> -#define KEY_SPORT		220
> -#define KEY_SHOP		221
> -#define KEY_ALTERASE		222
> -#define KEY_CANCEL		223	/* AC Cancel */
> -#define KEY_BRIGHTNESSDOWN	224
> -#define KEY_BRIGHTNESSUP	225
> -#define KEY_MEDIA		226
> -
> -#define KEY_SWITCHVIDEOMODE	227	/* Cycle between available video
> -					   outputs (Monitor/LCD/TV-out/etc) */
> -#define KEY_KBDILLUMTOGGLE	228
> -#define KEY_KBDILLUMDOWN	229
> -#define KEY_KBDILLUMUP		230
> -
> -#define KEY_SEND		231	/* AC Send */
> -#define KEY_REPLY		232	/* AC Reply */
> -#define KEY_FORWARDMAIL		233	/* AC Forward Msg */
> -#define KEY_SAVE		234	/* AC Save */
> -#define KEY_DOCUMENTS		235
> -
> -#define KEY_BATTERY		236
> -
> -#define KEY_BLUETOOTH		237
> -#define KEY_WLAN		238
> -#define KEY_UWB			239
> -
> -#define KEY_UNKNOWN		240
> -
> -#define KEY_VIDEO_NEXT		241	/* drive next video source */
> -#define KEY_VIDEO_PREV		242	/* drive previous video source */
> -#define KEY_BRIGHTNESS_CYCLE	243	/* brightness up, after max is min */
> -#define KEY_BRIGHTNESS_ZERO	244	/* brightness off, use ambient */
> -#define KEY_DISPLAY_OFF		245	/* display device to off state */
> -
> -#define KEY_WIMAX		246
> -#define KEY_RFKILL		247	/* Key that controls all radios */
> -
> -#define KEY_MICMUTE		248	/* Mute / unmute the microphone */
> -
> -/* Code 255 is reserved for special needs of AT keyboard driver */
> -
> -#define BTN_MISC		0x100
> -#define BTN_0			0x100
> -#define BTN_1			0x101
> -#define BTN_2			0x102
> -#define BTN_3			0x103
> -#define BTN_4			0x104
> -#define BTN_5			0x105
> -#define BTN_6			0x106
> -#define BTN_7			0x107
> -#define BTN_8			0x108
> -#define BTN_9			0x109
> -
> -#define BTN_MOUSE		0x110
> -#define BTN_LEFT		0x110
> -#define BTN_RIGHT		0x111
> -#define BTN_MIDDLE		0x112
> -#define BTN_SIDE		0x113
> -#define BTN_EXTRA		0x114
> -#define BTN_FORWARD		0x115
> -#define BTN_BACK		0x116
> -#define BTN_TASK		0x117
> -
> -#define BTN_JOYSTICK		0x120
> -#define BTN_TRIGGER		0x120
> -#define BTN_THUMB		0x121
> -#define BTN_THUMB2		0x122
> -#define BTN_TOP			0x123
> -#define BTN_TOP2		0x124
> -#define BTN_PINKIE		0x125
> -#define BTN_BASE		0x126
> -#define BTN_BASE2		0x127
> -#define BTN_BASE3		0x128
> -#define BTN_BASE4		0x129
> -#define BTN_BASE5		0x12a
> -#define BTN_BASE6		0x12b
> -#define BTN_DEAD		0x12f
> -
> -#define BTN_GAMEPAD		0x130
> -#define BTN_SOUTH		0x130
> -#define BTN_A			BTN_SOUTH
> -#define BTN_EAST		0x131
> -#define BTN_B			BTN_EAST
> -#define BTN_C			0x132
> -#define BTN_NORTH		0x133
> -#define BTN_X			BTN_NORTH
> -#define BTN_WEST		0x134
> -#define BTN_Y			BTN_WEST
> -#define BTN_Z			0x135
> -#define BTN_TL			0x136
> -#define BTN_TR			0x137
> -#define BTN_TL2			0x138
> -#define BTN_TR2			0x139
> -#define BTN_SELECT		0x13a
> -#define BTN_START		0x13b
> -#define BTN_MODE		0x13c
> -#define BTN_THUMBL		0x13d
> -#define BTN_THUMBR		0x13e
> -
> -#define BTN_DIGI		0x140
> -#define BTN_TOOL_PEN		0x140
> -#define BTN_TOOL_RUBBER		0x141
> -#define BTN_TOOL_BRUSH		0x142
> -#define BTN_TOOL_PENCIL		0x143
> -#define BTN_TOOL_AIRBRUSH	0x144
> -#define BTN_TOOL_FINGER		0x145
> -#define BTN_TOOL_MOUSE		0x146
> -#define BTN_TOOL_LENS		0x147
> -#define BTN_TOOL_QUINTTAP	0x148	/* Five fingers on trackpad */
> -#define BTN_TOUCH		0x14a
> -#define BTN_STYLUS		0x14b
> -#define BTN_STYLUS2		0x14c
> -#define BTN_TOOL_DOUBLETAP	0x14d
> -#define BTN_TOOL_TRIPLETAP	0x14e
> -#define BTN_TOOL_QUADTAP	0x14f	/* Four fingers on trackpad */
> -
> -#define BTN_WHEEL		0x150
> -#define BTN_GEAR_DOWN		0x150
> -#define BTN_GEAR_UP		0x151
> -
> -#define KEY_OK			0x160
> -#define KEY_SELECT		0x161
> -#define KEY_GOTO		0x162
> -#define KEY_CLEAR		0x163
> -#define KEY_POWER2		0x164
> -#define KEY_OPTION		0x165
> -#define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
> -#define KEY_TIME		0x167
> -#define KEY_VENDOR		0x168
> -#define KEY_ARCHIVE		0x169
> -#define KEY_PROGRAM		0x16a	/* Media Select Program Guide */
> -#define KEY_CHANNEL		0x16b
> -#define KEY_FAVORITES		0x16c
> -#define KEY_EPG			0x16d
> -#define KEY_PVR			0x16e	/* Media Select Home */
> -#define KEY_MHP			0x16f
> -#define KEY_LANGUAGE		0x170
> -#define KEY_TITLE		0x171
> -#define KEY_SUBTITLE		0x172
> -#define KEY_ANGLE		0x173
> -#define KEY_ZOOM		0x174
> -#define KEY_MODE		0x175
> -#define KEY_KEYBOARD		0x176
> -#define KEY_SCREEN		0x177
> -#define KEY_PC			0x178	/* Media Select Computer */
> -#define KEY_TV			0x179	/* Media Select TV */
> -#define KEY_TV2			0x17a	/* Media Select Cable */
> -#define KEY_VCR			0x17b	/* Media Select VCR */
> -#define KEY_VCR2		0x17c	/* VCR Plus */
> -#define KEY_SAT			0x17d	/* Media Select Satellite */
> -#define KEY_SAT2		0x17e
> -#define KEY_CD			0x17f	/* Media Select CD */
> -#define KEY_TAPE		0x180	/* Media Select Tape */
> -#define KEY_RADIO		0x181
> -#define KEY_TUNER		0x182	/* Media Select Tuner */
> -#define KEY_PLAYER		0x183
> -#define KEY_TEXT		0x184
> -#define KEY_DVD			0x185	/* Media Select DVD */
> -#define KEY_AUX			0x186
> -#define KEY_MP3			0x187
> -#define KEY_AUDIO		0x188	/* AL Audio Browser */
> -#define KEY_VIDEO		0x189	/* AL Movie Browser */
> -#define KEY_DIRECTORY		0x18a
> -#define KEY_LIST		0x18b
> -#define KEY_MEMO		0x18c	/* Media Select Messages */
> -#define KEY_CALENDAR		0x18d
> -#define KEY_RED			0x18e
> -#define KEY_GREEN		0x18f
> -#define KEY_YELLOW		0x190
> -#define KEY_BLUE		0x191
> -#define KEY_CHANNELUP		0x192	/* Channel Increment */
> -#define KEY_CHANNELDOWN		0x193	/* Channel Decrement */
> -#define KEY_FIRST		0x194
> -#define KEY_LAST		0x195	/* Recall Last */
> -#define KEY_AB			0x196
> -#define KEY_NEXT		0x197
> -#define KEY_RESTART		0x198
> -#define KEY_SLOW		0x199
> -#define KEY_SHUFFLE		0x19a
> -#define KEY_BREAK		0x19b
> -#define KEY_PREVIOUS		0x19c
> -#define KEY_DIGITS		0x19d
> -#define KEY_TEEN		0x19e
> -#define KEY_TWEN		0x19f
> -#define KEY_VIDEOPHONE		0x1a0	/* Media Select Video Phone */
> -#define KEY_GAMES		0x1a1	/* Media Select Games */
> -#define KEY_ZOOMIN		0x1a2	/* AC Zoom In */
> -#define KEY_ZOOMOUT		0x1a3	/* AC Zoom Out */
> -#define KEY_ZOOMRESET		0x1a4	/* AC Zoom */
> -#define KEY_WORDPROCESSOR	0x1a5	/* AL Word Processor */
> -#define KEY_EDITOR		0x1a6	/* AL Text Editor */
> -#define KEY_SPREADSHEET		0x1a7	/* AL Spreadsheet */
> -#define KEY_GRAPHICSEDITOR	0x1a8	/* AL Graphics Editor */
> -#define KEY_PRESENTATION	0x1a9	/* AL Presentation App */
> -#define KEY_DATABASE		0x1aa	/* AL Database App */
> -#define KEY_NEWS		0x1ab	/* AL Newsreader */
> -#define KEY_VOICEMAIL		0x1ac	/* AL Voicemail */
> -#define KEY_ADDRESSBOOK		0x1ad	/* AL Contacts/Address Book */
> -#define KEY_MESSENGER		0x1ae	/* AL Instant Messaging */
> -#define KEY_DISPLAYTOGGLE	0x1af	/* Turn display (LCD) on and off */
> -#define KEY_SPELLCHECK		0x1b0   /* AL Spell Check */
> -#define KEY_LOGOFF		0x1b1   /* AL Logoff */
> -
> -#define KEY_DOLLAR		0x1b2
> -#define KEY_EURO		0x1b3
> -
> -#define KEY_FRAMEBACK		0x1b4	/* Consumer - transport controls */
> -#define KEY_FRAMEFORWARD	0x1b5
> -#define KEY_CONTEXT_MENU	0x1b6	/* GenDesc - system context menu */
> -#define KEY_MEDIA_REPEAT	0x1b7	/* Consumer - transport control */
> -#define KEY_10CHANNELSUP	0x1b8	/* 10 channels up (10+) */
> -#define KEY_10CHANNELSDOWN	0x1b9	/* 10 channels down (10-) */
> -#define KEY_IMAGES		0x1ba	/* AL Image Browser */
> -
> -#define KEY_DEL_EOL		0x1c0
> -#define KEY_DEL_EOS		0x1c1
> -#define KEY_INS_LINE		0x1c2
> -#define KEY_DEL_LINE		0x1c3
> -
> -#define KEY_FN			0x1d0
> -#define KEY_FN_ESC		0x1d1
> -#define KEY_FN_F1		0x1d2
> -#define KEY_FN_F2		0x1d3
> -#define KEY_FN_F3		0x1d4
> -#define KEY_FN_F4		0x1d5
> -#define KEY_FN_F5		0x1d6
> -#define KEY_FN_F6		0x1d7
> -#define KEY_FN_F7		0x1d8
> -#define KEY_FN_F8		0x1d9
> -#define KEY_FN_F9		0x1da
> -#define KEY_FN_F10		0x1db
> -#define KEY_FN_F11		0x1dc
> -#define KEY_FN_F12		0x1dd
> -#define KEY_FN_1		0x1de
> -#define KEY_FN_2		0x1df
> -#define KEY_FN_D		0x1e0
> -#define KEY_FN_E		0x1e1
> -#define KEY_FN_F		0x1e2
> -#define KEY_FN_S		0x1e3
> -#define KEY_FN_B		0x1e4
> -
> -#define KEY_BRL_DOT1		0x1f1
> -#define KEY_BRL_DOT2		0x1f2
> -#define KEY_BRL_DOT3		0x1f3
> -#define KEY_BRL_DOT4		0x1f4
> -#define KEY_BRL_DOT5		0x1f5
> -#define KEY_BRL_DOT6		0x1f6
> -#define KEY_BRL_DOT7		0x1f7
> -#define KEY_BRL_DOT8		0x1f8
> -#define KEY_BRL_DOT9		0x1f9
> -#define KEY_BRL_DOT10		0x1fa
> -
> -#define KEY_NUMERIC_0		0x200	/* used by phones, remote controls, */
> -#define KEY_NUMERIC_1		0x201	/* and other keypads */
> -#define KEY_NUMERIC_2		0x202
> -#define KEY_NUMERIC_3		0x203
> -#define KEY_NUMERIC_4		0x204
> -#define KEY_NUMERIC_5		0x205
> -#define KEY_NUMERIC_6		0x206
> -#define KEY_NUMERIC_7		0x207
> -#define KEY_NUMERIC_8		0x208
> -#define KEY_NUMERIC_9		0x209
> -#define KEY_NUMERIC_STAR	0x20a
> -#define KEY_NUMERIC_POUND	0x20b
> -
> -#define KEY_CAMERA_FOCUS	0x210
> -#define KEY_WPS_BUTTON		0x211	/* WiFi Protected Setup key */
> -
> -#define KEY_TOUCHPAD_TOGGLE	0x212	/* Request switch touchpad on or off */
> -#define KEY_TOUCHPAD_ON		0x213
> -#define KEY_TOUCHPAD_OFF	0x214
> -
> -#define KEY_CAMERA_ZOOMIN	0x215
> -#define KEY_CAMERA_ZOOMOUT	0x216
> -#define KEY_CAMERA_UP		0x217
> -#define KEY_CAMERA_DOWN		0x218
> -#define KEY_CAMERA_LEFT		0x219
> -#define KEY_CAMERA_RIGHT	0x21a
> -
> -#define KEY_ATTENDANT_ON	0x21b
> -#define KEY_ATTENDANT_OFF	0x21c
> -#define KEY_ATTENDANT_TOGGLE	0x21d	/* Attendant call on or off */
> -#define KEY_LIGHTS_TOGGLE	0x21e	/* Reading light on or off */
> -
> -#define BTN_DPAD_UP		0x220
> -#define BTN_DPAD_DOWN		0x221
> -#define BTN_DPAD_LEFT		0x222
> -#define BTN_DPAD_RIGHT		0x223
> -
> -#define MATRIX_KEY(row, col, code)	\
> -	((((row) & 0xFF) << 24) | (((col) & 0xFF) << 16) | ((code) & 0xFFFF))
> -
> -#endif /* _DT_BINDINGS_INPUT_INPUT_H */
> diff --git a/include/dt-bindings/interrupt-controller/arm-gic.h b/include=
/dt-bindings/interrupt-controller/arm-gic.h
> deleted file mode 100644
> index 1ea1b70..0000000
> --- a/include/dt-bindings/interrupt-controller/arm-gic.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/*
> - * This header provides constants for the ARM GIC.
> - */
> -
> -#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H
> -#define _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H
> -
> -#include <dt-bindings/interrupt-controller/irq.h>
> -
> -/* interrupt specific cell 0 */
> -
> -#define GIC_SPI 0
> -#define GIC_PPI 1
> -
> -/*
> - * Interrupt specifier cell 2.
> - * The flaggs in irq.h are valid, plus those below.
> - */
> -#define GIC_CPU_MASK_RAW(x) ((x) << 8)
> -#define GIC_CPU_MASK_SIMPLE(num) GIC_CPU_MASK_RAW((1 << (num)) - 1)
> -
> -#endif
> diff --git a/include/dt-bindings/interrupt-controller/irq.h b/include/dt-=
bindings/interrupt-controller/irq.h
> deleted file mode 100644
> index 33a1003..0000000
> --- a/include/dt-bindings/interrupt-controller/irq.h
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -/*
> - * This header provides constants for most IRQ bindings.
> - *
> - * Most IRQ bindings include a flags cell as part of the IRQ specifier.
> - * In most cases, the format of the flags cell uses the standard values
> - * defined in this header.
> - */
> -
> -#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
> -#define _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
> -
> -#define IRQ_TYPE_NONE		0
> -#define IRQ_TYPE_EDGE_RISING	1
> -#define IRQ_TYPE_EDGE_FALLING	2
> -#define IRQ_TYPE_EDGE_BOTH	(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING)
> -#define IRQ_TYPE_LEVEL_HIGH	4
> -#define IRQ_TYPE_LEVEL_LOW	8
> -
> -#endif
> diff --git a/include/dt-bindings/pinctrl/am33xx.h b/include/dt-bindings/p=
inctrl/am33xx.h
> deleted file mode 100644
> index 2fbc804..0000000
> --- a/include/dt-bindings/pinctrl/am33xx.h
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -/*
> - * This header provides constants specific to AM33XX pinctrl bindings.
> - */
> -
> -#ifndef _DT_BINDINGS_PINCTRL_AM33XX_H
> -#define _DT_BINDINGS_PINCTRL_AM33XX_H
> -
> -#include <dt-bindings/pinctrl/omap.h>
> -
> -/* am33xx specific mux bit defines */
> -#undef PULL_ENA
> -#undef INPUT_EN
> -
> -#define PULL_DISABLE		(1 << 3)
> -#define INPUT_EN		(1 << 5)
> -#define SLEWCTRL_FAST		(1 << 6)
> -
> -/* update macro depending on INPUT_EN and PULL_ENA */
> -#undef PIN_OUTPUT
> -#undef PIN_OUTPUT_PULLUP
> -#undef PIN_OUTPUT_PULLDOWN
> -#undef PIN_INPUT
> -#undef PIN_INPUT_PULLUP
> -#undef PIN_INPUT_PULLDOWN
> -
> -#define PIN_OUTPUT		(PULL_DISABLE)
> -#define PIN_OUTPUT_PULLUP	(PULL_UP)
> -#define PIN_OUTPUT_PULLDOWN	0
> -#define PIN_INPUT		(INPUT_EN | PULL_DISABLE)
> -#define PIN_INPUT_PULLUP	(INPUT_EN | PULL_UP)
> -#define PIN_INPUT_PULLDOWN	(INPUT_EN)
> -
> -/* undef non-existing modes */
> -#undef PIN_OFF_NONE
> -#undef PIN_OFF_OUTPUT_HIGH
> -#undef PIN_OFF_OUTPUT_LOW
> -#undef PIN_OFF_INPUT_PULLUP
> -#undef PIN_OFF_INPUT_PULLDOWN
> -#undef PIN_OFF_WAKEUPENABLE
> -
> -#endif
> -
> diff --git a/include/dt-bindings/pinctrl/omap.h b/include/dt-bindings/pin=
ctrl/omap.h
> deleted file mode 100644
> index bed35e3..0000000
> --- a/include/dt-bindings/pinctrl/omap.h
> +++ /dev/null
> @@ -1,53 +0,0 @@
> -/*
> - * This header provides constants for OMAP pinctrl bindings.
> - *
> - * Copyright (C) 2009 Nokia
> - * Copyright (C) 2009-2010 Texas Instruments
> - */
> -
> -#ifndef _DT_BINDINGS_PINCTRL_OMAP_H
> -#define _DT_BINDINGS_PINCTRL_OMAP_H
> -
> -/* 34xx mux mode options for each pin. See TRM for options */
> -#define MUX_MODE0	0
> -#define MUX_MODE1	1
> -#define MUX_MODE2	2
> -#define MUX_MODE3	3
> -#define MUX_MODE4	4
> -#define MUX_MODE5	5
> -#define MUX_MODE6	6
> -#define MUX_MODE7	7
> -
> -/* 24xx/34xx mux bit defines */
> -#define PULL_ENA		(1 << 3)
> -#define PULL_UP			(1 << 4)
> -#define ALTELECTRICALSEL	(1 << 5)
> -
> -/* omap3/4/5 specific mux bit defines */
> -#define INPUT_EN		(1 << 8)
> -#define OFF_EN			(1 << 9)
> -#define OFFOUT_EN		(1 << 10)
> -#define OFFOUT_VAL		(1 << 11)
> -#define OFF_PULL_EN		(1 << 12)
> -#define OFF_PULL_UP		(1 << 13)
> -#define WAKEUP_EN		(1 << 14)
> -#define WAKEUP_EVENT		(1 << 15)
> -
> -/* Active pin states */
> -#define PIN_OUTPUT		0
> -#define PIN_OUTPUT_PULLUP	(PIN_OUTPUT | PULL_ENA | PULL_UP)
> -#define PIN_OUTPUT_PULLDOWN	(PIN_OUTPUT | PULL_ENA)
> -#define PIN_INPUT		INPUT_EN
> -#define PIN_INPUT_PULLUP	(PULL_ENA | INPUT_EN | PULL_UP)
> -#define PIN_INPUT_PULLDOWN	(PULL_ENA | INPUT_EN)
> -
> -/* Off mode states */
> -#define PIN_OFF_NONE		0
> -#define PIN_OFF_OUTPUT_HIGH	(OFF_EN | OFFOUT_EN | OFFOUT_VAL)
> -#define PIN_OFF_OUTPUT_LOW	(OFF_EN | OFFOUT_EN)
> -#define PIN_OFF_INPUT_PULLUP	(OFF_EN | OFF_PULL_EN | OFF_PULL_UP)
> -#define PIN_OFF_INPUT_PULLDOWN	(OFF_EN | OFF_PULL_EN)
> -#define PIN_OFF_WAKEUPENABLE	WAKEUP_EN
> -
> -#endif
> -
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index cf7e2d5..8170b38 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -146,8 +146,8 @@ cpp_flags      =3D -Wp,-MD,$(depfile) $(NOSTDINC_FLAG=
S) $(__cpp_flags)
>  ld_flags       =3D $(LDFLAGS) $(EXTRA_LDFLAGS)
>  =

>  dtc_cpp_flags  =3D -Wp,-MD,$(depfile).pre -nostdinc                     =
   \
> -		 -I$(srctree)/arch/$(SRCARCH)/dts                        \
> -		 -I$(srctree)/arch/$(SRCARCH)/dts/include                \
> +		 -I$(srctree)/dts/include                                \
> +		 -I$(srctree)/dts/src/                                   \
>  		 -undef -D__DTS__
>  =

>  # Finds the multi-part object the current object will be linked into
> @@ -222,6 +222,7 @@ quiet_cmd_dtc =3D DTC     $@
>  cmd_dtc =3D $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) =
$< ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> +		-i $(srctree)/dts/src/$(SRCARCH) \
>  		-d $(depfile).dtc $(dtc-tmp) ; \
>  	cat $(depfile).pre $(depfile).dtc > $(depfile)
>  =

> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
