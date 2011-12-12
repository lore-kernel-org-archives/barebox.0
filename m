Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra5NB-0003cz-CR
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:52:50 +0000
Date: Mon, 12 Dec 2011 13:52:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111212125240.GV27267@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
 <20111209112900.GH8203@pengutronix.de>
 <20111209150131.GP23884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209150131.GP23884@game.jcrosoft.org>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH v2 6/7] platform: add support for
 aizo dSS11
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 04:01:31PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:29 Fri 09 Dec     , Michael Grzeschik wrote:
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  arch/arm/Makefile                |    1 +
> >  arch/arm/boards/dss11/Makefile   |    1 +
> >  arch/arm/boards/dss11/config.h   |    6 ++
> >  arch/arm/boards/dss11/env/config |   42 ++++++++++
> >  arch/arm/boards/dss11/init.c     |  156 ++++++++++++++++++++++++++++++++++++++
> >  arch/arm/mach-at91/Kconfig       |    8 ++
> >  6 files changed, 214 insertions(+), 0 deletions(-)
> >  create mode 100644 arch/arm/boards/dss11/Makefile
> >  create mode 100644 arch/arm/boards/dss11/config.h
> >  create mode 100644 arch/arm/boards/dss11/env/config
> >  create mode 100644 arch/arm/boards/dss11/init.c
> > 
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 6f5f343..e5e951c 100644
> >  - removed GPL address
> >  - increased barebox and env partition size
> >  - changed boot partition on nand
> >  - removed lowlevel.S
> >  - fixed nand bus_width to 16
> >  - moved ethernet pin handling to another patch
> >  - touch mach-types from another patch
> >  - removed kernel and rootfs partitions
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -66,6 +66,7 @@ board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
> >  board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
> >  board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
> >  board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
> > +board-$(CONFIG_MACH_DSS11)			:= dss11
> >  board-$(CONFIG_MACH_EDB9301)			:= edb93xx
> >  board-$(CONFIG_MACH_EDB9302)			:= edb93xx
> >  board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
> > diff --git a/arch/arm/boards/dss11/Makefile b/arch/arm/boards/dss11/Makefile
> > new file mode 100644
> > index 0000000..eb072c0
> > --- /dev/null
> > +++ b/arch/arm/boards/dss11/Makefile
> > @@ -0,0 +1 @@
> > +obj-y += init.o
> > diff --git a/arch/arm/boards/dss11/config.h b/arch/arm/boards/dss11/config.h
> > new file mode 100644
> > index 0000000..006820c
> > --- /dev/null
> > +++ b/arch/arm/boards/dss11/config.h
> > @@ -0,0 +1,6 @@
> > +#ifndef __CONFIG_H
> > +#define __CONFIG_H
> > +
> > +#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
> > +
> > +#endif	/* __CONFIG_H */
> > diff --git a/arch/arm/boards/dss11/env/config b/arch/arm/boards/dss11/env/config
> > new file mode 100644
> > index 0000000..5c9be7d
> > --- /dev/null
> > +++ b/arch/arm/boards/dss11/env/config
> > @@ -0,0 +1,42 @@
> > +#!/bin/sh
> > +
> > +# use 'dhcp' to do dhcp in barebox and in kernel
> > +# use 'none' if you want to skip kernel ip autoconfiguration
> > +ip=dhcp
> > +
> > +# or set your networking parameters here
> > +#eth0.ipaddr=a.b.c.d
> > +#eth0.netmask=a.b.c.d
> > +#eth0.gateway=a.b.c.d
> > +#eth0.serverip=a.b.c.d
> > +
> > +# can be either 'nfs', 'tftp' or 'nand'
> > +kernel_loc=tftp
> > +# can be either 'net', 'nand' or 'initrd'
> > +rootfs_loc=net
> > +
> > +# can be either 'jffs2' or 'ubifs'
> > +rootfs_type=ubifs
> > +rootfsimage=root.$rootfs_type
> > +
> > +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> > +#kernelimage_type=zimage
> > +#kernelimage=zImage
> > +kernelimage_type=uimage
> > +kernelimage=uImage
> > +#kernelimage_type=raw
> > +#kernelimage=Image
> > +#kernelimage_type=raw_lzo
> > +#kernelimage=Image.lzo
> > +
> > +nand_device=atmel_nand
> > +nand_parts="128k(bootstrap),512k(barebox)ro,512k(barebox-env),2M(kernel-rescue),2M(kernel-prod),32M(rootfs-rescue),200M(rootfs-prod),-(config)"
> > +rootfs_mtdblock_nand=4
> > +
> > +autoboot_timeout=3
> > +
> > +bootargs="console=ttyS0,115200"
> > +
> > +# set a fancy prompt (if support is compiled in)
> > +PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> > +
> > diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
> > new file mode 100644
> > index 0000000..96c4eef
> > --- /dev/null
> > +++ b/arch/arm/boards/dss11/init.c
> > @@ -0,0 +1,156 @@
> > +/*
> > + * Copyright (C) 2011 Michael Grzeschik <mgr@pengutronix.de>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> > +
> > +#include <common.h>
> > +#include <net.h>
> > +#include <mci.h>
> > +#include <init.h>
> > +#include <environment.h>
> > +#include <fec.h>
> > +#include <asm/armlinux.h>
> > +#include <generated/mach-types.h>
> > +#include <partition.h>
> > +#include <fs.h>
> > +#include <fcntl.h>
> > +#include <asm/io.h>
> > +#include <asm/hardware.h>
> > +#include <nand.h>
> > +#include <linux/mtd/nand.h>
> > +#include <mach/board.h>
> > +#include <mach/at91sam9_smc.h>
> > +#include <mach/sam9_smc.h>
> > +#include <gpio.h>
> > +#include <mach/io.h>
> > +#include <mach/at91_pmc.h>
> > +#include <mach/at91_rstc.h>
> > +
> > +static struct atmel_nand_data nand_pdata = {
> > +	.ale		= 21,
> > +	.cle		= 22,
> > +/*	.det_pin	= ... not connected */
> please use -EINVAL

Setting this to EINVAL will not work as the users test for det_pin != 0.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
