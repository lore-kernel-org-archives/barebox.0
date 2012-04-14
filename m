Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ0sd-0002bI-Pg
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 11:11:00 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8A7B0FF88F6
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 13:12:08 +0200 (CEST)
Date: Sat, 14 Apr 2012 12:53:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414105306.GD2074@game.jcrosoft.org>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> index 0000000..4b8c52b
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-arm2/env/config
> @@ -0,0 +1,47 @@
> +#!/bin/sh
> +
> +machine=armadillo2
> +serverip=
> +user=
why not set a vendor id and client id to identify the user at dhcp level


> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=dhcp
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=a.b.c.d
> +#eth0.netmask=a.b.c.d
> +#eth0.gateway=a.b.c.d
> +#eth0.serverip=a.b.c.d
> +
> +# can be either 'nfs', 'tftp', 'nor' or 'nand'
> +kernel_loc=tftp
> +# can be either 'net', 'nor', 'nand' or 'initrd'
> +rootfs_loc=disk
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=ubifs
> +rootfsimage=root-$machine.$rootfs_type
> +
> +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> +kernelimage=zImage-$machine
> +
> +if [ -n $user ]; then
> +	kernelimage="$user"-"$kernelimage"
> +	nfsroot="$serverip:/home/$user/nfsroot/$machine"
> +	rootfsimage="$user"-"$rootfsimage"
> +else
> +	nfsroot="$serverip:/path/to/nfs/root"
> +fi
> +
> +autoboot_timeout=3
> +
> +bootargs="console=ttymxc2,115200"
> +
> +disk_parts="1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
it will be good to put already a partition for oftree


btw you use 512k in the c for the env

> +
> +rootfs_part_linux_dev=sda1
> +rootfs_type=ext2
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> diff --git a/arch/arm/boards/freescale-mx6-arm2/flash_header.c b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
> new file mode 100644
> index 0000000..79f3113
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
> @@ -0,0 +1,170 @@
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
> +
> +void __naked __flash_header_start go(void)
> +{
> +	__asm__ __volatile__("b exception_vectors\n");
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
> +	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0xC31A0000),
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
> +	/* enable AXI cache for VDOA/VPU/IPU */
> +	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000ff),
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
> +
> +	.entry			= APP_DEST + 0x1000,
> +	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
> +	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
> +	.self			= APP_DEST + 0x400,
> +
> +	.boot_data.start	= APP_DEST,
> +	.boot_data.size		= 0x40000,
why not use barebox_size?
> +
> +	.dcd.header.tag		= DCD_HEADER_TAG,
> +	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
> +	.dcd.header.version	= DCD_VERSION,
> +
> +	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
> +	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
> +	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
> +};
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
