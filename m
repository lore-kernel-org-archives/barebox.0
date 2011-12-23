Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Re4Lv-0005vP-4I
 for barebox@lists.infradead.org; Fri, 23 Dec 2011 12:36:01 +0000
Message-ID: <4EF475A4.10506@phytec.de>
Date: Fri, 23 Dec 2011 13:35:48 +0100
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <j.kilb@phytec.de>
MIME-Version: 1.0
References: <1324563957-30984-1-git-send-email-J.Kilb@phytec.de>
 <20111222173227.GZ27267@pengutronix.de>
In-Reply-To: <20111222173227.GZ27267@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add support for the Phytec phyCARD-A-L1 (PCA-A-L1).
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 22.12.2011 18:32, Sascha Hauer wrote:
> +++ b/arch/arm/boards/phycard-a-l1/config.h
> @@ -0,0 +1,42 @@
> +/**
> + * @file
> + * @brief provide a wrapper for standard malloc and stack size defines
> + *
> + * FileName: arch/arm/boards/phycard-a-l1/config.h
> + *
> + * Standard defines should be configurable for us to move Stack and mall=
oc
> + * areas around this defines some basics for that
> + */
> +/*
> + * (C) Copyright 2011 Jurgen Kilb<j.kilb@phytec.de>
> + * same as arch/arm/boards/omap/config.h just with the
> + * modification in the doxygen part above.
> + *
> + * (C) Copyright 2006-2008
> + * Texas Instruments,<www.ti.com>
> + * Nishanth Menon<x0nishan@ti.com>
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
> + */
> +#ifndef __MACH_OMAP_CONFIG_H
> +#define __MACH_OMAP_CONFIG_H
> +
> +/** define CFG_MALLOC_LEN from Kconfig define */
> +#define CFG_MALLOC_LEN     CONFIG_OMAP_MALLOC_LEN
> +/** define CONFIG_STACKSIZE from Kconfig define */
> +#define CONFIG_STACKSIZE   CONFIG_OMAP_CONFIG_STACKSIZE
> These are unused. Please remove.
OK, done.
> +# or set your networking parameters here
> +eth0.ipaddr=3D192.168.3.11
> +eth0.netmask=3D255.255.255.0
> +eth0.gateway=3D192.168.3.10
> +eth0.serverip=3D192.168.3.10
> You shouldn't hardcode ip addresses in the default environment.
OK, done.
>> +
>> +# can be either 'tftp', 'nfs', 'nand' or 'disk'
>> +kernel_loc=3Dnand
>> +# can be either 'net', 'nand', 'disk' or 'initrd'
>> +rootfs_loc=3Dnand
>> +
>> +# for flash based rootfs: 'jffs2' or 'ubifs'
>> +# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
>> +rootfs_type=3Djffs2
> Lame... Who uses JFFS2 nowadays?
We had some problems with ubifs which might be related to hwecc issues.
And because we haven't solved them yet and our actuall BSP uses still jffs2,
we decided to stay with jffs2.
>> +# where is the rootfs in case of 'rootfs_loc=3Ddisk' (linux name)
>> +rootfs_part_linux_dev=3Dmmcblk0p4
>> +rootfsimage=3Drootfs-${machine}.$rootfs_type
>> +
>> +# where is the kernel image in case of 'kernel_loc=3Ddisk'
>> +kernel_part=3Ddisk0.2
>> +
>> +# The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
>> +#kernelimage_type=3Dzimage
>> +#kernelimage=3DzImage-$machine
>> +kernelimage_type=3Duimage
>> +kernelimage=3DuImage-$machine
>> +#kernelimage_type=3Draw
>> +#kernelimage=3DImage-$machine
>> +#kernelimage_type=3Draw_lzo
>> +#kernelimage=3DImage-$machine.lzo
> We don't need the kernelimage_type anymore. bootm is able to detect and
> boot all different kinds of images.
OK, removed.

[snip]
>> +
>> +static void pcaal1_sdrc_init(void)
>> +{
>> +	/* SDRAM software reset */
>> +	/* No idle ack and RESET enable */
>> +	writel(0x1A, SDRC_REG(SYSCONFIG));
>> +	sdelay(100);
>> +	/* No idle ack and RESET disable */
>> +	writel(0x18, SDRC_REG(SYSCONFIG));
>> +
>> +	/* SDRC Sharing register */
>> +	/* 32-bit SDRAM on data lane [31:0] - CS0 */
>> +	/* pin tri-stated =3D 1 */
>> +	writel(0x00000100, SDRC_REG(SHARING));
>> +
>> +	/* ----- SDRC Registers Configuration --------- */
>> +	/* SDRC_MCFG0 register */
>> +	writel(0x03588099, SDRC_REG(MCFG_0));
>> +
>> +	/* SDRC_RFR_CTRL0 register */
>> +	writel(0x0004e201, SDRC_REG(RFR_CTRL_0));
>> +
>> +	/* SDRC_ACTIM_CTRLA0 register */
>> +	writel(0x629DB4C6, SDRC_REG(ACTIM_CTRLA_0));
>> +
>> +	/* SDRC_ACTIM_CTRLB0 register */
>> +	writel(0x00011113, SDRC_REG(ACTIM_CTRLB_0));
>> +
>> +	/* Disble Power Down of CKE due to 1 CKE on combo part */
>> +	writel(0x00000081, SDRC_REG(POWER));
>> +
>> +	/* SDRC_MANUAL command register */
>> +	/* NOP command */
>> +	writel(0x00000000, SDRC_REG(MANUAL_0));
>> +	/* Precharge command */
>> +	writel(0x00000001, SDRC_REG(MANUAL_0));
>> +	/* Auto-refresh command */
>> +	writel(0x00000002, SDRC_REG(MANUAL_0));
>> +	/* Auto-refresh command */
>> +	writel(0x00000002, SDRC_REG(MANUAL_0));
>> +
>> +	/* SDRC MR0 register Burst length=3D4 */
>> +	writel(0x00000032, SDRC_REG(MR_0));
>> +
>> +	/* SDRC DLLA control register */
>> +	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
>> +
>> +	return;
> unnecessary return
OK, removed.
>> +}
>> +
>> +/**
>> + * @brief Do the necessary pin muxing required for phyCARD-A-L1.
>> + * Some pins in OMAP3 do not have alternate modes.
>> + * We don't program these pins.
>> + *
>> + * See @ref MUX_VAL for description of the muxing mode.
>> + *
>> + * @return void
>> + */
>> +static void pcaal1_mux_config(void)
>> +{
>> +	/*
>> +	 * Serial Interface
>> +	 */
>> +	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
>> +	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
>> +	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | EN  | M0));
>> +	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
>> +
>> +	/* GPMC */
>> +	MUX_VAL(CP(GPMC_A1),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A2),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A3),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A4),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A5),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A6),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A7),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A8),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A9),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_A10),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D0),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D1),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D2),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D3),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D4),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D5),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D6),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D7),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D8),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D9),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D10),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D11),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D12),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D13),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D14),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_D15),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_NCS0),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(GPMC_NADV_ALE),	(IDIS | PTD | DIS | M0));
>> +	MUX_VAL(CP(GPMC_NOE),		(IDIS | PTD | DIS | M0));
>> +	MUX_VAL(CP(GPMC_NWE),		(IDIS | PTD | DIS | M0));
>> +	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTD | DIS | M0));
>> +	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
>> +	MUX_VAL(CP(GPMC_WAIT0),		(IEN  | PTU | EN  | M0));
>> +
>> +	/* ETH_PME (GPIO_55) */
>> +	MUX_VAL(CP(GPMC_NCS4),		(IDIS | PTU | EN  | M4));
>> +	/* #CS5 (Ethernet) */
>> +	MUX_VAL(CP(GPMC_NCS5),		(IDIS | PTU | EN  | M0));
>> +	/* ETH_FIFO_SEL (GPIO_57) */
>> +	MUX_VAL(CP(GPMC_NCS6),		(IDIS | PTD | EN  | M4));
>> +	/* ETH_AMDIX_EN (GPIO_58) */
>> +	MUX_VAL(CP(GPMC_NCS7),		(IDIS | PTU | EN  | M4));
>> +	/* ETH_nRST (GPIO_64) */
>> +	MUX_VAL(CP(GPMC_WAIT2),		(IDIS | PTU | EN  | M4));
>> +
>> +	/* HSMMC1 */
>> +	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0));
>> +	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0));
>> +	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0));
>> +
>> +	/* USBOTG_nRST (GPIO_63) */
>> +	MUX_VAL(CP(GPMC_WAIT1),		(IDIS | PTU | EN  | M4));
>> +
>> +	/* USBH_nRST (GPIO_65) */
>> +	MUX_VAL(CP(GPMC_WAIT3),		(IDIS | PTU | EN  | M4));
>> +}
>> +
>> +/**
>> + * @brief The basic entry point for board initialization.
>> + *
>> + * This is called as part of machine init (after arch init).
>> + * This is again called with stack in SRAM, so not too many
>> + * constructs possible here.
>> + *
>> + * @return void
>> + */
>> +void board_init(void)
>> +{
>> +	int in_sdram =3D running_in_sdram();
>> +
>> +	pcaal1_mux_config();
> Do you have to do this so early? I see no SDRAM pins in the list so I
> suppose no.
There are no SDRAM pins in the list, because SDRAM is setup by the x-loader.
Later I want to use barebox as x-loader replacement.
Then I will add the SDRAM pins to the muxing table.

>
>> +	/* Dont reconfigure SDRAM while running in SDRAM! */
>> +	if (!in_sdram)
>> +		pcaal1_sdrc_init();
>> +}
>> +
>> +/*
>> + * Run-time initialization(s)
>> + */
>> +
>> +#ifdef CONFIG_DRIVER_SERIAL_NS16550
> I really don't like all these #ifdef CONFIG_bla, especially for such
> vital devices like the console.
OK, removed.
>
>> +
>> +static struct NS16550_plat serial_plat =3D {
>> +	.clock	=3D 48000000,      /* 48MHz (APLL96/2) */
>> +	.shift	=3D 2,
>> +};
>> +
>> +/**
>> + * @brief Initialize the serial port to be used as console.
>> + *
>> + * @return result of device registration
>> + */
>> +static int pcaal1_init_console(void)
>> +{
>> +	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
>> +			&serial_plat);
>> +
>> +	return 0;
>> +}
>> +console_initcall(pcaal1_init_console);
>> +#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
>> +
>> +#ifdef CONFIG_DRIVER_NET_SMC911X
>> +/** GPMC timing for our SMSC9221 device */
>> +static struct gpmc_config smsc_cfg =3D {
>> +	.cfg =3D {
>> +	0x41001000,	/*CONF1 */
>> +	0x00040500,	/*CONF2 */
>> +	0x00000000,	/*CONF3 */
>> +	0x04000500,	/*CONF4 */
>> +	0x05050505,	/*CONF5 */
>> +	0x000002c1,	/*CONF6 */
>> +},
>> +	.base =3D SMC911X_BASE,
>> +	/* GPMC address map as small as possible */
>> +	.size =3D GPMC_SIZE_16M,
>> +};
> Strange indention here.
OK, fixed.
>
>> +
>> +/*
>> + * Routine: setup_net_chip
>> + * Description: Setting up the configuration GPMC registers specific to=
 the
>> + *            Ethernet hardware.
>> + */
>> +static void pcaal1_setup_net_chip(void)
>> +{
>> +	gpmc_cs_config(5,&smsc_cfg);
>> +}
>> +#endif
>> +
>> +static int pcaal1_mem_init(void)
>> +{
>> +
>> +#ifdef CONFIG_GPMC
>> +	/*
>> +	 * WP is made high and WAIT1 active Low
>> +	 */
>> +	gpmc_generic_init(0x10);
>> +#endif
>> +
>> +	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSE=
T));
>> +
>> +	if ((get_sdr_cs_size(SDRC_CS1_OSET) !=3D 0)&&  (get_sdr_cs1_base() !=
=3D OMAP_SDRC_CS0))
>> +		arm_add_mem_device("ram1", get_sdr_cs1_base(), get_sdr_cs_size(SDRC_C=
S1_OSET));
>> +
>> +	return 0;
>> +}
>> +mem_initcall(pcaal1_mem_init);
>> +
>> +#ifdef CONFIG_MCI_OMAP_HSMMC
>> +struct omap_hsmmc_platform_data pcaal1_hsmmc_plat =3D {
>> +	.f_max =3D 26000000,
>> +};
>> +#endif
>> +
>> +static int pcaal1_init_devices(void)
>> +{
>> +#ifdef CONFIG_MCI_OMAP_HSMMC
>> +	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
>> +			   IORESOURCE_MEM,&pcaal1_hsmmc_plat);
>> +#endif
>> +
>> +#ifdef CONFIG_DRIVER_NET_SMC911X
>> +	pcaal1_setup_net_chip();
>> +	add_generic_device("smc911x", -1, NULL, SMC911X_BASE, SZ_4K,
>> +			   IORESOURCE_MEM, NULL);
>> +#endif
>> +
>> +	armlinux_set_bootparams((void *)0x80000100);
>> +	armlinux_set_architecture(MACH_TYPE_PCAAL1);
>> +
>> +	return 0;
>> +}
>> +device_initcall(pcaal1_init_devices);
>> +
>> +static int pcaal1_late_init(void)
>> +{
>> +	struct device_d *nand;
>> +
>> +	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_SOFT);
> Why software ecc?
Because we haven't switched our actual BSP to hardware ecc at the moment.
The next BSP release will uses hardware ecc.
Then I will send a patch to switch the ecc calculation.

..[snip]..
>> diff --git a/arch/arm/boards/phycard-a-l1/platform.S b/arch/arm/boards/p=
hycard-a-l1/platform.S
>> new file mode 100644
>> index 0000000..596d3ab
>> --- /dev/null
>> +++ b/arch/arm/boards/phycard-a-l1/platform.S
>> @@ -0,0 +1,65 @@
>> +/**
>> + * @file
>> + * @brief Wrapper to call board level initialization routine
>> + *
>> + * FileName: arch/arm/boards/phycard-a-l1/platform.S
>> + *
>> + * board_init_lowlevel is defined here. This calls board_init which
>> + * is linked to the binary - the board_init only has a SRAM stack.
>> + * so it needs to be careful about the usage of global variables
>> + * and the likes. Enabled only if CONFIG_MACH_DO_LOWLEVEL_INIT is
>> + * defined
>> + */
>> +/*
>> + * (C) Copyright 2006-2008
>> + * Texas Instruments,<www.ti.com>
>> + * Nishanth Menon<x0nishan@ti.com>
>> + *
>> + * This program is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU General Public License as
>> + * published by the Free Software Foundation; either version 2 of
>> + * the License, or (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, write to the Free Software
>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>> + * MA 02111-1307 USA
>> + */
>> +
>> +#include<config.h>
>> +#include<mach/silicon.h>
>> +
>> +#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
>> +/**
>> + * @fn void board_init_lowlevel(void)
>> + *
>> + * @brief This provides a assembly wrapper setting up SRAM before calli=
ng
>> + * board_init
>> + *
>> + * @return void
>> + */
>> +.globl board_init_lowlevel
>> +board_init_lowlevel:
>> +	/* Setup a temporary stack so that we can call C functions
>> +	 * Yes. this might have been already done by arch code.
>> +	 * No harm in being a bit redundant to avoid future complications
>> +	 */
>> +	ldr	sp,	SRAM_STACK
>> +        str     ip,	[sp]    /* stash old link register */
>> +        str     lr,	[sp]    /* stash current link register */
>> +	mov	ip,	lr	/* save link reg across call */
>> +	/* Do the pin muxes, sdram init etc..board-xxx.c */
>> +	bl	board_init
>> +        ldr     lr,	[sp]    /* restore current link register */
>> +        ldr     ip,	[sp]    /* restore save ip */
>> +	/* back to arch calling code */
>> +	mov	pc,	lr
>> +SRAM_STACK:
>> +	.word	OMAP_SRAM_STACK
>> +
> How about this instead?
>
> static void __naked board_init_lowlevel(void)
> {
>          uint32_t r;
>
>          /* setup a stack */
>          r =3D OMAP_SRAM_STACK;
>          __asm__ __volatile__("mov sp, %0" : : "r"(r));
>
> 	board_init();
>
>          board_init_lowlevel_return();
> }
>
> (You can also move the code from board_init() into this function)
Yes this looks nicer. I've removed the platform.S file and created a =

lowlevel.c instead.
>> +CONFIG_CMD_MTEST=3Dy
>> +CONFIG_CMD_MTEST_ALTERNATIVE=3Dy
>> +CONFIG_CMD_FLASH=3Dy
>> +CONFIG_CMD_UBI=3Dy
>> +CONFIG_CMD_BOOTM=3Dy
>> +CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
>> +CONFIG_CMD_IMINFO=3Dy
>> +CONFIG_CMD_BOOTZ=3Dy
>> +CONFIG_CMD_BOOTU=3Dy
> Try to disable bootz and bootu and use bootm instead.
OK, tested and removed.

New patch follows.

greetings,
J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
