Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRFli-0006aL-GD
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 06:18:45 +0000
Received: by mail-lb0-f179.google.com with SMTP id x18so348261lbi.38
 for <barebox@lists.infradead.org>; Tue, 01 Oct 2013 23:18:19 -0700 (PDT)
Date: Wed, 2 Oct 2013 10:15:26 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20131002101526.16ce3e06c6960b8610eac846@gmail.com>
In-Reply-To: <1380663322-25733-3-git-send-email-lisovy@gmail.com>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
 <1380663322-25733-3-git-send-email-lisovy@gmail.com>
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
Subject: Re: [PATCH 2/4] i.mx53: voipac: Add board specific + flash header
 constructing code
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On Tue,  1 Oct 2013 23:35:20 +0200
Rostislav Lisovy <lisovy@gmail.com> wrote:

> In board.c enable UART0, NAND flash, Ethernet.
> The DCD in flash_header.c is very similar (except for one line)
> to that from freescale-mx53-smd
> =

> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> ---
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/board.c
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/flash_header.c
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/lowlevel.c
> =

> diff --git a/arch/arm/boards/freescale-mx53-voipac/Makefile b/arch/arm/bo=
ards/freescale-mx53-voipac/Makefile
> new file mode 100644
> index 0000000..d44f697
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/Makefile
> @@ -0,0 +1,3 @@
> +obj-y +=3D board.o
> +lwl-y +=3D flash_header.o
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/freescale-mx53-voipac/board.c b/arch/arm/boa=
rds/freescale-mx53-voipac/board.c
> new file mode 100644
> index 0000000..997aa28
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/board.c
> @@ -0,0 +1,168 @@
> +/*
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
> + * Copyright (C) 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <environment.h>
> +#include <fcntl.h>
> +#include <fec.h>
> +#include <fs.h>
> +#include <init.h>
> +#include <nand.h>
> +#include <net.h>
> +#include <partition.h>
> +#include <sizes.h>
> +
> +#include <generated/mach-types.h>
> +
> +#include <mach/imx53-regs.h>
> +#include <mach/iomux-mx53.h>
> +#include <mach/devices-imx53.h>
> +#include <mach/generic.h>
> +#include <mach/gpio.h>
> +#include <mach/imx-nand.h>
> +#include <mach/iim.h>
> +#include <mach/imx5.h>
> +
> +#include <asm/armlinux.h>
> +#include <io.h>
> +#include <asm/mmu.h>
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +static struct fec_platform_data fec_info =3D {
> +	.xcv_type =3D PHY_INTERFACE_MODE_RMII,
> +	.phy_addr =3D 0x1F,
> +};
> +#endif
> +
> +#ifdef CONFIG_NAND_IMX
> +struct imx_nand_platform_data nand_info =3D {
> +        .width          =3D 1,
> +        .hw_ecc         =3D 1,
> +        .flash_bbt      =3D 1,
> +};
> +#endif
> +
> +static iomux_v3_cfg_t voipac_pads[] =3D {
> +	/* UART1 */
> +	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
> +	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
> +	MX53_PAD_PATA_IORDY__UART1_RTS,
> +	MX53_PAD_PATA_RESET_B__UART1_CTS,
> +
> +	/* NAND */
> +#ifdef CONFIG_NAND_IMX
> +	MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B,
> +	MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B,
> +	MX53_PAD_NANDF_ALE__EMI_NANDF_ALE,
> +	MX53_PAD_NANDF_CLE__EMI_NANDF_CLE,
> +	MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B,
> +	MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0,
> +	MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0,
> +	MX53_PAD_PATA_DATA0__EMI_NANDF_D_0,
> +	MX53_PAD_PATA_DATA1__EMI_NANDF_D_1,
> +	MX53_PAD_PATA_DATA2__EMI_NANDF_D_2,
> +	MX53_PAD_PATA_DATA3__EMI_NANDF_D_3,
> +	MX53_PAD_PATA_DATA4__EMI_NANDF_D_4,
> +	MX53_PAD_PATA_DATA5__EMI_NANDF_D_5,
> +	MX53_PAD_PATA_DATA6__EMI_NANDF_D_6,
> +	MX53_PAD_PATA_DATA7__EMI_NANDF_D_7,
> +#endif
> +
> +	/* FEC */
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +	MX53_PAD_FEC_MDC__FEC_MDC,
> +	MX53_PAD_FEC_MDIO__FEC_MDIO,
> +	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
> +	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
> +	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
> +	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
> +	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
> +	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
> +	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
> +	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
> +	MX53_PAD_GPIO_11__GPIO4_1,	/* FEC_PEN */
> +	MX53_PAD_GPIO_12__GPIO4_2,	/* FEC_RST */
> +#endif
> +
> +	MX53_PAD_EIM_A24__GPIO5_4,	/* PSAVE */
> +	MX53_PAD_GPIO_17__GPIO7_12,	/* RESET_OUT */
> +};
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +
> +#define VMX53_FEC_PEN				IMX_GPIO_NR(4, 1)
> +#define VMX53_FEC_RST				IMX_GPIO_NR(4, 2)
> +
> +static void voipac_fec_reset(void)
> +{
> +	gpio_direction_output(VMX53_FEC_RST, 0);	/* assert resset */
> +	gpio_direction_output(VMX53_FEC_PEN, 1);	/* enable 50MHz oscilator */
> +	mdelay(1);
> +	gpio_set_value(VMX53_FEC_RST, 1);		/* deassert reset */
> +}
> +#endif
> +
> +#define PSAVE					IMX_GPIO_NR(5, 4)
> +#define RESET_OUT				IMX_GPIO_NR(7, 12)
> +
> +static int voipac_devices_init(void)
> +{
> +	gpio_direction_output(RESET_OUT, 0);	/* assert RESET_OUT */
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +        imx53_iim_register_fec_ethaddr();
> +        imx53_add_fec(&fec_info);
> +	voipac_fec_reset();
> +#endif
> +
> +#ifdef CONFIG_NAND_IMX
> +	imx53_add_nand(&nand_info);
> +#endif
> +
> +	armlinux_set_bootparams((void *)0x70000100);
> +	armlinux_set_architecture(MACH_TYPE_MX53_VOIPAC);
> +
> +	gpio_direction_output(RESET_OUT, 1);	/* deassert RESET_OUT */
> +
> +	return 0;
> +}
> +device_initcall(voipac_devices_init);
> +
> +static int voipac_part_init(void)
> +{
> +#ifdef CONFIG_NAND_IMX
> +	devfs_add_partition("nand0", 0x00000, 0x60000, DEVFS_PARTITION_FIXED, "=
self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +
> +	devfs_add_partition("nand0", 0x60000, 0xA0000, DEVFS_PARTITION_FIXED, "=
env_raw");
> +	dev_add_bb_dev("env_raw", "env0");
> +#endif
> +
> +	return 0;
> +}
> +late_initcall(voipac_part_init);
> +
> +static int voipac_console_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(voipac_pads, ARRAY_SIZE(voipac_pads));
> +
> +	imx53_init_lowlevel(800);
> +	imx53_add_uart0();
> +
> +	return 0;
> +}
> +console_initcall(voipac_console_init);
> diff --git a/arch/arm/boards/freescale-mx53-voipac/flash_header.c b/arch/=
arm/boards/freescale-mx53-voipac/flash_header.c
> new file mode 100644
> index 0000000..c9ae06c
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> @@ -0,0 +1,102 @@
> +/*
> + * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>

This file is rather like freescale-mx53-smd/flash_header.c,
but please change copyright header.

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
> +#include <asm/barebox-arm-head.h>
> +
> +void __naked __flash_header_start go(void)
> +{
> +	barebox_arm_imx_fcb_head();
> +}
> +
> +struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] =3D {
> +	{ .addr =3D cpu_to_be32(0x53fa8554), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8558), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8560), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8564), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8568), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8570), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8574), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8578), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa857c), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8580), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8584), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8588), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8590), .val =3D cpu_to_be32(0x00300040), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8594), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa86f0), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa86f4), .val =3D cpu_to_be32(0x00000000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa86fc), .val =3D cpu_to_be32(0x00000000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8714), .val =3D cpu_to_be32(0x00000000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8718), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa871c), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8720), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8724), .val =3D cpu_to_be32(0x04000000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa8728), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x53fa872c), .val =3D cpu_to_be32(0x00300000), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9088), .val =3D cpu_to_be32(0x35343535), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9090), .val =3D cpu_to_be32(0x4d444c44), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd907c), .val =3D cpu_to_be32(0x01370138), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9080), .val =3D cpu_to_be32(0x013b013c), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9018), .val =3D cpu_to_be32(0x00011740), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9000), .val =3D cpu_to_be32(0xc4190000), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd900c), .val =3D cpu_to_be32(0x9f5152e3), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9010), .val =3D cpu_to_be32(0xb68e8a63), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9014), .val =3D cpu_to_be32(0x01ff00db), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd902c), .val =3D cpu_to_be32(0x000026d2), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9030), .val =3D cpu_to_be32(0x009f0e21), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9008), .val =3D cpu_to_be32(0x12273030), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9004), .val =3D cpu_to_be32(0x0002002d), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x00008032), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x00008033), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x00028031), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x052080b0), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x04008040), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x0000803a), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x0000803b), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x00028039), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x05208138), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x04008048), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9020), .val =3D cpu_to_be32(0x00005800), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9040), .val =3D cpu_to_be32(0x04b80003), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd9058), .val =3D cpu_to_be32(0x00022227), =
},
> +	{ .addr =3D cpu_to_be32(0x63fd901c), .val =3D cpu_to_be32(0x00000000), =
},
> +};
> +
> +#define APP_DEST	0x70000000
> +
> +struct imx_flash_header_v2 __flash_header_section flash_header =3D {
> +	.header.tag		=3D IVT_HEADER_TAG,
> +	.header.length		=3D cpu_to_be16(32),
> +	.header.version		=3D IVT_VERSION,
> +
> +	.entry			=3D APP_DEST + 0x1000,
> +	.dcd_ptr		=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, d=
cd),
> +	.boot_data_ptr		=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header=
_v2, boot_data),
> +	.self			=3D APP_DEST + 0x400,
> +
> +	.boot_data.start	=3D APP_DEST,
> +	.boot_data.size		=3D DCD_BAREBOX_SIZE,
> +
> +	.dcd.header.tag		=3D DCD_HEADER_TAG,
> +	.dcd.header.length	=3D cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_=
entry)),
> +	.dcd.header.version	=3D DCD_VERSION,
> +
> +	.dcd.command.tag	=3D DCD_COMMAND_WRITE_TAG,
> +	.dcd.command.length	=3D cpu_to_be16(sizeof(struct imx_dcd_command) + si=
zeof(dcd_entry)),
> +	.dcd.command.param	=3D DCD_COMMAND_WRITE_PARAM,
> +};
> diff --git a/arch/arm/boards/freescale-mx53-voipac/lowlevel.c b/arch/arm/=
boards/freescale-mx53-voipac/lowlevel.c
> new file mode 100644
> index 0000000..60c28f7
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/lowlevel.c
> @@ -0,0 +1,9 @@
> +#include <common.h>
> +#include <mach/esdctl.h>
> +#include <asm/barebox-arm-head.h>
> +
> +void __naked barebox_arm_reset_vector(void)
> +{
> +	arm_cpu_lowlevel_init();
> +	imx53_barebox_entry(0);
> +}
> -- =

> 1.7.10.4
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
