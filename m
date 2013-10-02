Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRE4N-0005B1-3P
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 04:29:53 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8F55ADC058E
 for <barebox@lists.infradead.org>; Wed,  2 Oct 2013 06:29:27 +0200 (CEST)
Date: Wed, 2 Oct 2013 06:30:53 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131002043053.GL32444@ns203013.ovh.net>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
 <1380663322-25733-3-git-send-email-lisovy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380663322-25733-3-git-send-email-lisovy@gmail.com>
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
Subject: Re: [PATCH 2/4] i.mx53: voipac: Add board specific + flash header
 constructing code
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On 23:35 Tue 01 Oct     , Rostislav Lisovy wrote:
> In board.c enable UART0, NAND flash, Ethernet.
> The DCD in flash_header.c is very similar (except for one line)
> to that from freescale-mx53-smd
> 
> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> ---
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/board.c
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/flash_header.c
>  create mode 100644 arch/arm/boards/freescale-mx53-voipac/lowlevel.c
> 
> diff --git a/arch/arm/boards/freescale-mx53-voipac/Makefile b/arch/arm/boards/freescale-mx53-voipac/Makefile
> new file mode 100644
> index 0000000..d44f697
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o
> +lwl-y += flash_header.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/freescale-mx53-voipac/board.c b/arch/arm/boards/freescale-mx53-voipac/board.c
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
> +static struct fec_platform_data fec_info = {
> +	.xcv_type = PHY_INTERFACE_MODE_RMII,
> +	.phy_addr = 0x1F,
> +};
> +#endif
> +
> +#ifdef CONFIG_NAND_IMX
> +struct imx_nand_platform_data nand_info = {
> +        .width          = 1,
> +        .hw_ecc         = 1,
> +        .flash_bbt      = 1,
> +};
> +#endif
> +
> +static iomux_v3_cfg_t voipac_pads[] = {
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

you need to request the gpio first

so we can track it with the proper label in gpiolib
> +}
> +#endif
> +
> +#define PSAVE					IMX_GPIO_NR(5, 4)
> +#define RESET_OUT				IMX_GPIO_NR(7, 12)
> +
> +static int voipac_devices_init(void)
> +{
> +	gpio_direction_output(RESET_OUT, 0);	/* assert RESET_OUT */
why?
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +        imx53_iim_register_fec_ethaddr();
> +        imx53_add_fec(&fec_info);
tab for indeteation

and use IS_ENABLED not ifdef
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
> +	devfs_add_partition("nand0", 0x00000, 0x60000, DEVFS_PARTITION_FIXED, "self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +
> +	devfs_add_partition("nand0", 0x60000, 0xA0000, DEVFS_PARTITION_FIXED, "env_raw");
> +	dev_add_bb_dev("env_raw", "env0");
> +#endif
do this in devices_init
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
> diff --git a/arch/arm/boards/freescale-mx53-voipac/flash_header.c b/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> new file mode 100644
> index 0000000..c9ae06c
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx53-voipac/flash_header.c
> @@ -0,0 +1,102 @@
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
> +#include <asm/barebox-arm-head.h>
> +
> +void __naked __flash_header_start go(void)
> +{
> +	barebox_arm_imx_fcb_head();
> +}
> +
> +struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
> +	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
> +	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
> +	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
> +	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
> +	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
> +	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
> +	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
> +	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
> +	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
> +	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
> +	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
> +	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc4190000), },
> +	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
> +	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
> +	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
> +	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
> +	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
> +	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
> +	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
> +	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
> +	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
> +	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
> +	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
> +};
> +
> +#define APP_DEST	0x70000000
> +
> +struct imx_flash_header_v2 __flash_header_section flash_header = {
> +	.header.tag		= IVT_HEADER_TAG,
> +	.header.length		= cpu_to_be16(32),
> +	.header.version		= IVT_VERSION,
> +
> +	.entry			= APP_DEST + 0x1000,
> +	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
> +	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
> +	.self			= APP_DEST + 0x400,
> +
> +	.boot_data.start	= APP_DEST,
> +	.boot_data.size		= DCD_BAREBOX_SIZE,
> +
> +	.dcd.header.tag		= DCD_HEADER_TAG,
> +	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
> +	.dcd.header.version	= DCD_VERSION,
> +
> +	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
> +	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
> +	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
> +};
> diff --git a/arch/arm/boards/freescale-mx53-voipac/lowlevel.c b/arch/arm/boards/freescale-mx53-voipac/lowlevel.c
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
> -- 
> 1.7.10.4
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
