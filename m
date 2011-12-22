Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdmVg-0008C6-CX
 for barebox@lists.infradead.org; Thu, 22 Dec 2011 17:32:55 +0000
Date: Thu, 22 Dec 2011 18:32:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111222173227.GZ27267@pengutronix.de>
References: <1324563957-30984-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324563957-30984-1-git-send-email-J.Kilb@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add support for the Phytec phyCARD-A-L1 (PCA-A-L1).
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Thu, Dec 22, 2011 at 03:25:56PM +0100, Juergen Kilb wrote:
> diff --git a/arch/arm/boards/phycard-a-l1/config.h b/arch/arm/boards/phyc=
ard-a-l1/config.h
> new file mode 100644
> index 0000000..dfcbd0d
> --- /dev/null
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
> + * (C) Copyright 2011 Jurgen Kilb <j.kilb@phytec.de>
> + * same as arch/arm/boards/omap/config.h just with the
> + * modification in the doxygen part above.
> + *
> + * (C) Copyright 2006-2008
> + * Texas Instruments, <www.ti.com>
> + * Nishanth Menon <x0nishan@ti.com>
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

These are unused. Please remove.

> +
> +#endif /* __MACH_OMAP_CONFIG_H */
> diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/ph=
ycard-a-l1/env/config
> new file mode 100644
> index 0000000..e121d8a
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-l1/env/config
> @@ -0,0 +1,82 @@
> +#!/bin/sh
> +
> +machine=3Dpcaal1
> +#user=3D
> +
> +# Enter MAC address here if not retrieved automatically
> +#eth0.ethaddr=3Dde:ad:be:ef:00:00
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +#ip=3Ddhcp
> +
> +# or set your networking parameters here
> +eth0.ipaddr=3D192.168.3.11
> +eth0.netmask=3D255.255.255.0
> +eth0.gateway=3D192.168.3.10
> +eth0.serverip=3D192.168.3.10

You shouldn't hardcode ip addresses in the default environment.

> +
> +# can be either 'tftp', 'nfs', 'nand' or 'disk'
> +kernel_loc=3Dnand
> +# can be either 'net', 'nand', 'disk' or 'initrd'
> +rootfs_loc=3Dnand
> +
> +# for flash based rootfs: 'jffs2' or 'ubifs'
> +# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
> +rootfs_type=3Djffs2

Lame... Who uses JFFS2 nowadays?

> +# where is the rootfs in case of 'rootfs_loc=3Ddisk' (linux name)
> +rootfs_part_linux_dev=3Dmmcblk0p4
> +rootfsimage=3Drootfs-${machine}.$rootfs_type
> +
> +# where is the kernel image in case of 'kernel_loc=3Ddisk'
> +kernel_part=3Ddisk0.2
> +
> +# The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
> +#kernelimage_type=3Dzimage
> +#kernelimage=3DzImage-$machine
> +kernelimage_type=3Duimage
> +kernelimage=3DuImage-$machine
> +#kernelimage_type=3Draw
> +#kernelimage=3DImage-$machine
> +#kernelimage_type=3Draw_lzo
> +#kernelimage=3DImage-$machine.lzo

We don't need the kernelimage_type anymore. bootm is able to detect and
boot all different kinds of images.

> +
> +bareboximage=3Dbarebox-${machine}.bin
> +bareboxenvimage=3Dbarebox-${machine}.bin
> +
> +if [ -n $user ]; then
> +	bareboximage=3D"$user"-"$bareboximage"
> +	bareboxenvimage=3D"$user"-"$bareboxenvimage"
> +	kernelimage=3D"$user"-"$kernelimage"
> +	rootfsimage=3D"$user"-"$rootfsimage"
> +	nfsroot=3D"/home/$user/nfsroot/$machine"
> +else
> +	nfsroot=3D"/path/to/nfs/root"
> +fi
> +
> +autoboot_timeout=3D3
> +
> +bootargs=3D"console=3DttyO2,115200"
> +
> +# the following displays are supported
> +# pd050vl1 (640 x 480)
> +# pd035vl1 (640 x 480)
> +# pd104slf (800 x 600)
> +# pm070wl4 (800 x 480)
> +#
> +# omapfb.mode=3D<display>:<mode>,[,...]
> +# omapfb.debug=3D<y|n>
> +#        - Enable debug printing. You have to have OMAPFB debug support =
enabled
> +#          in kernel config.
> +#
> +bootargs=3D"$bootargs omapdss.def_disp=3Dpd050vl1"
> +#bootargs=3D"$bootargs omapdss.def_disp=3Dpd035vl1"
> +#bootargs=3D"$bootargs omapdss.def_disp=3Dpd104slf"
> +#bootargs=3D"$bootargs omapdss.def_disp=3Dpm070wl4"
> +
> +nand_parts=3D"512k(x-loader)ro,1920k(barebox),128k(bareboxenv),4M(kernel=
),-(root)"
> +nand_device=3Domap2-nand.0
> +rootfs_mtdblock_nand=3D4
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1=3D"\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/ph=
ycard-a-l1/pca-a-l1.c
> new file mode 100644
> index 0000000..a093d66
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -0,0 +1,356 @@
> +/**
> + * @file
> + * @brief Board Initialization routines for the phyCARD-A-L1
> + *
> + * FileName: arch/arm/boards/phycard-a-l1/pca-a-l1.c
> + *
> + * This board is based on OMAP3530.
> + * More on OMAP3530 (including documentation can be found here):
> + * http://focus.ti.com/docs/prod/folders/print/omap3530.html
> + *
> + * This file provides initialization in two stages:
> + * @li Boot time initialization - just get SDRAM working.
> + * This is run from SRAM - so no case constructs and global vars can be =
used.
> + * @li Run time initialization - this is for the rest of the initializat=
ions
> + * such as flash, uart etc.
> + *
> + * Boot time initialization includes:
> + * @li SDRAM initialization.
> + * @li Pin Muxing relevant for the EVM.
> + *
> + * Run time initialization includes
> + * @li serial @ref serial_ns16550.c driver device definition
> + *
> + * Originally from arch/arm/boards/omap/board-beagle.c
> + */
> +
> +/*
> + * Copyright (C) 2011 Phytec Messtechnik GmbH - http://www.phytec.de/
> + * Juergen Kilb <j.kilb@phytec.de>
> + *
> + * based on code from Texas Instruments / board-beagle.c
> + * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
> + * Sanjeev Premi <premi@ti.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <console.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <init.h>
> +#include <nand.h>
> +#include <ns16550.h>
> +#include <partition.h>
> +#include <sizes.h>
> +#include <asm/armlinux.h>
> +#include <asm/io.h>
> +#include <generated/mach-types.h>
> +#include <linux/err.h>
> +#include <mach/control.h>
> +#include <mach/gpmc.h>
> +#include <mach/gpmc_nand.h>
> +#include <mach/omap_hsmmc.h>
> +#include <mach/xload.h>
> +#include <partition.h>
> +#include <nand.h>
> +#include <mach/omap3-mux.h>
> +#include <mach/sdrc.h>
> +#include <mach/silicon.h>
> +#include <mach/sys_info.h>
> +#include <mach/syslib.h>
> +#include <mach/xload.h>
> +
> +#include "pca-a-l1.h"
> +
> +#define SMC911X_BASE 0x2c000000
> +
> +/*
> + * Boot-time initialization(s)
> + */
> +
> +/**
> + * @brief Initialize the SDRC module
> + * Initialisation for 1x256MByte but normally
> + * done by x-loader.
> + * @return void
> + */
> +static void pcaal1_sdrc_init(void)
> +{
> +	/* SDRAM software reset */
> +	/* No idle ack and RESET enable */
> +	writel(0x1A, SDRC_REG(SYSCONFIG));
> +	sdelay(100);
> +	/* No idle ack and RESET disable */
> +	writel(0x18, SDRC_REG(SYSCONFIG));
> +
> +	/* SDRC Sharing register */
> +	/* 32-bit SDRAM on data lane [31:0] - CS0 */
> +	/* pin tri-stated =3D 1 */
> +	writel(0x00000100, SDRC_REG(SHARING));
> +
> +	/* ----- SDRC Registers Configuration --------- */
> +	/* SDRC_MCFG0 register */
> +	writel(0x03588099, SDRC_REG(MCFG_0));
> +
> +	/* SDRC_RFR_CTRL0 register */
> +	writel(0x0004e201, SDRC_REG(RFR_CTRL_0));
> +
> +	/* SDRC_ACTIM_CTRLA0 register */
> +	writel(0x629DB4C6, SDRC_REG(ACTIM_CTRLA_0));
> +
> +	/* SDRC_ACTIM_CTRLB0 register */
> +	writel(0x00011113, SDRC_REG(ACTIM_CTRLB_0));
> +
> +	/* Disble Power Down of CKE due to 1 CKE on combo part */
> +	writel(0x00000081, SDRC_REG(POWER));
> +
> +	/* SDRC_MANUAL command register */
> +	/* NOP command */
> +	writel(0x00000000, SDRC_REG(MANUAL_0));
> +	/* Precharge command */
> +	writel(0x00000001, SDRC_REG(MANUAL_0));
> +	/* Auto-refresh command */
> +	writel(0x00000002, SDRC_REG(MANUAL_0));
> +	/* Auto-refresh command */
> +	writel(0x00000002, SDRC_REG(MANUAL_0));
> +
> +	/* SDRC MR0 register Burst length=3D4 */
> +	writel(0x00000032, SDRC_REG(MR_0));
> +
> +	/* SDRC DLLA control register */
> +	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
> +
> +	return;

unnecessary return

> +}
> +
> +/**
> + * @brief Do the necessary pin muxing required for phyCARD-A-L1.
> + * Some pins in OMAP3 do not have alternate modes.
> + * We don't program these pins.
> + *
> + * See @ref MUX_VAL for description of the muxing mode.
> + *
> + * @return void
> + */
> +static void pcaal1_mux_config(void)
> +{
> +	/*
> +	 * Serial Interface
> +	 */
> +	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
> +	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
> +	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | EN  | M0));
> +	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
> +
> +	/* GPMC */
> +	MUX_VAL(CP(GPMC_A1),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A2),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A3),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A4),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A5),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A6),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A7),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A8),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A9),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_A10),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D0),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D1),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D2),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D3),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D4),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D5),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D6),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D7),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D8),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D9),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D10),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D11),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D12),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D13),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D14),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_D15),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_NCS0),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(GPMC_NADV_ALE),	(IDIS | PTD | DIS | M0));
> +	MUX_VAL(CP(GPMC_NOE),		(IDIS | PTD | DIS | M0));
> +	MUX_VAL(CP(GPMC_NWE),		(IDIS | PTD | DIS | M0));
> +	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTD | DIS | M0));
> +	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
> +	MUX_VAL(CP(GPMC_WAIT0),		(IEN  | PTU | EN  | M0));
> +
> +	/* ETH_PME (GPIO_55) */
> +	MUX_VAL(CP(GPMC_NCS4),		(IDIS | PTU | EN  | M4));
> +	/* #CS5 (Ethernet) */
> +	MUX_VAL(CP(GPMC_NCS5),		(IDIS | PTU | EN  | M0));
> +	/* ETH_FIFO_SEL (GPIO_57) */
> +	MUX_VAL(CP(GPMC_NCS6),		(IDIS | PTD | EN  | M4));
> +	/* ETH_AMDIX_EN (GPIO_58) */
> +	MUX_VAL(CP(GPMC_NCS7),		(IDIS | PTU | EN  | M4));
> +	/* ETH_nRST (GPIO_64) */
> +	MUX_VAL(CP(GPMC_WAIT2),		(IDIS | PTU | EN  | M4));
> +
> +	/* HSMMC1 */
> +	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0));
> +	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0));
> +	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0));
> +
> +	/* USBOTG_nRST (GPIO_63) */
> +	MUX_VAL(CP(GPMC_WAIT1),		(IDIS | PTU | EN  | M4));
> +
> +	/* USBH_nRST (GPIO_65) */
> +	MUX_VAL(CP(GPMC_WAIT3),		(IDIS | PTU | EN  | M4));
> +}
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
> +void board_init(void)
> +{
> +	int in_sdram =3D running_in_sdram();
> +
> +	pcaal1_mux_config();

Do you have to do this so early? I see no SDRAM pins in the list so I
suppose no.

> +	/* Dont reconfigure SDRAM while running in SDRAM! */
> +	if (!in_sdram)
> +		pcaal1_sdrc_init();
> +}
> +
> +/*
> + * Run-time initialization(s)
> + */
> +
> +#ifdef CONFIG_DRIVER_SERIAL_NS16550

I really don't like all these #ifdef CONFIG_bla, especially for such
vital devices like the console.

> +
> +static struct NS16550_plat serial_plat =3D {
> +	.clock	=3D 48000000,      /* 48MHz (APLL96/2) */
> +	.shift	=3D 2,
> +};
> +
> +/**
> + * @brief Initialize the serial port to be used as console.
> + *
> + * @return result of device registration
> + */
> +static int pcaal1_init_console(void)
> +{
> +	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
> +			   &serial_plat);
> +
> +	return 0;
> +}
> +console_initcall(pcaal1_init_console);
> +#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
> +
> +#ifdef CONFIG_DRIVER_NET_SMC911X
> +/** GPMC timing for our SMSC9221 device */
> +static struct gpmc_config smsc_cfg =3D {
> +	.cfg =3D {
> +	0x41001000,	/*CONF1 */
> +	0x00040500,	/*CONF2 */
> +	0x00000000,	/*CONF3 */
> +	0x04000500,	/*CONF4 */
> +	0x05050505,	/*CONF5 */
> +	0x000002c1,	/*CONF6 */
> +},
> +	.base =3D SMC911X_BASE,
> +	/* GPMC address map as small as possible */
> +	.size =3D GPMC_SIZE_16M,
> +};

Strange indention here.

> +
> +/*
> + * Routine: setup_net_chip
> + * Description: Setting up the configuration GPMC registers specific to =
the
> + *            Ethernet hardware.
> + */
> +static void pcaal1_setup_net_chip(void)
> +{
> +	gpmc_cs_config(5, &smsc_cfg);
> +}
> +#endif
> +
> +static int pcaal1_mem_init(void)
> +{
> +
> +#ifdef CONFIG_GPMC
> +	/*
> +	 * WP is made high and WAIT1 active Low
> +	 */
> +	gpmc_generic_init(0x10);
> +#endif
> +
> +	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSET=
));
> +
> +	if ((get_sdr_cs_size(SDRC_CS1_OSET) !=3D 0) && (get_sdr_cs1_base() !=3D=
 OMAP_SDRC_CS0))
> +		arm_add_mem_device("ram1", get_sdr_cs1_base(), get_sdr_cs_size(SDRC_CS=
1_OSET));
> +
> +	return 0;
> +}
> +mem_initcall(pcaal1_mem_init);
> +
> +#ifdef CONFIG_MCI_OMAP_HSMMC
> +struct omap_hsmmc_platform_data pcaal1_hsmmc_plat =3D {
> +	.f_max =3D 26000000,
> +};
> +#endif
> +
> +static int pcaal1_init_devices(void)
> +{
> +#ifdef CONFIG_MCI_OMAP_HSMMC
> +	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
> +			   IORESOURCE_MEM, &pcaal1_hsmmc_plat);
> +#endif
> +
> +#ifdef CONFIG_DRIVER_NET_SMC911X
> +	pcaal1_setup_net_chip();
> +	add_generic_device("smc911x", -1, NULL, SMC911X_BASE, SZ_4K,
> +			   IORESOURCE_MEM, NULL);
> +#endif
> +
> +	armlinux_set_bootparams((void *)0x80000100);
> +	armlinux_set_architecture(MACH_TYPE_PCAAL1);
> +
> +	return 0;
> +}
> +device_initcall(pcaal1_init_devices);
> +
> +static int pcaal1_late_init(void)
> +{
> +	struct device_d *nand;
> +
> +	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_SOFT);

Why software ecc?

> +
> +	nand =3D get_device_by_name("nand0");
> +
> +	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "x-load=
er");
> +	dev_add_bb_dev("self_raw", "x_loader0");
> +
> +	devfs_add_partition("nand0", 0x80000, 0x1e0000, PARTITION_FIXED, "self_=
raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +
> +	devfs_add_partition("nand0", 0x260000, 0x20000, PARTITION_FIXED, "env_r=
aw");
> +	dev_add_bb_dev("env_raw", "env0");
> +
> +	return 0;
> +}
> +late_initcall(pcaal1_late_init);
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.h b/arch/arm/boards/ph=
ycard-a-l1/pca-a-l1.h
> new file mode 100644
> index 0000000..b931d8c
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.h
> @@ -0,0 +1,35 @@
> +/**
> + * @file
> + * @brief exported generic APIs which various board files implement
> + *
> + * FileName: arch/arm/boards/phycard-a-l1/board.h
> + *
> + * This file will not contain any board specific implementations.
> + */
> +/*
> + * (C) Copyright 2008
> + * Texas Instruments, <www.ti.com>
> + * Raghavendra KH <r-khandenahally@ti.com>
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
> +#ifndef __BOARD_OMAP_H_
> +#define __BOARD_OMAP_H_
> +
> +/** Generic Board initialization called from platform.S */
> +void board_init(void);
> +
> +#endif         /* __BOARD_OMAP_H_ */
> diff --git a/arch/arm/boards/phycard-a-l1/platform.S b/arch/arm/boards/ph=
ycard-a-l1/platform.S
> new file mode 100644
> index 0000000..596d3ab
> --- /dev/null
> +++ b/arch/arm/boards/phycard-a-l1/platform.S
> @@ -0,0 +1,65 @@
> +/**
> + * @file
> + * @brief Wrapper to call board level initialization routine
> + *
> + * FileName: arch/arm/boards/phycard-a-l1/platform.S
> + *
> + * board_init_lowlevel is defined here. This calls board_init which
> + * is linked to the binary - the board_init only has a SRAM stack.
> + * so it needs to be careful about the usage of global variables
> + * and the likes. Enabled only if CONFIG_MACH_DO_LOWLEVEL_INIT is
> + * defined
> + */
> +/*
> + * (C) Copyright 2006-2008
> + * Texas Instruments, <www.ti.com>
> + * Nishanth Menon <x0nishan@ti.com>
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
> +
> +#include <config.h>
> +#include <mach/silicon.h>
> +
> +#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
> +/**
> + * @fn void board_init_lowlevel(void)
> + *
> + * @brief This provides a assembly wrapper setting up SRAM before calling
> + * board_init
> + *
> + * @return void
> + */
> +.globl board_init_lowlevel
> +board_init_lowlevel:
> +	/* Setup a temporary stack so that we can call C functions
> +	 * Yes. this might have been already done by arch code.
> +	 * No harm in being a bit redundant to avoid future complications
> +	 */
> +	ldr	sp,	SRAM_STACK
> +        str     ip,	[sp]    /* stash old link register */
> +        str     lr,	[sp]    /* stash current link register */
> +	mov	ip,	lr	/* save link reg across call */
> +	/* Do the pin muxes, sdram init etc..board-xxx.c */
> +	bl	board_init
> +        ldr     lr,	[sp]    /* restore current link register */
> +        ldr     ip,	[sp]    /* restore save ip */
> +	/* back to arch calling code */
> +	mov	pc,	lr
> +SRAM_STACK:
> +	.word	OMAP_SRAM_STACK
> +

How about this instead?

static void __naked board_init_lowlevel(void)
{
        uint32_t r;

        /* setup a stack */
        r =3D OMAP_SRAM_STACK;
        __asm__ __volatile__("mov sp, %0" : : "r"(r));

	board_init();

        board_init_lowlevel_return();
}

(You can also move the code from board_init() into this function)

> +CONFIG_CMD_MTEST=3Dy
> +CONFIG_CMD_MTEST_ALTERNATIVE=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_UBI=3Dy
> +CONFIG_CMD_BOOTM=3Dy
> +CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
> +CONFIG_CMD_IMINFO=3Dy
> +CONFIG_CMD_BOOTZ=3Dy
> +CONFIG_CMD_BOOTU=3Dy

Try to disable bootz and bootu and use bootm instead.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
