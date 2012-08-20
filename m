Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TFl-0001JI-FI
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:46:54 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0318DFF9118
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 16:53:49 +0200 (CEST)
Date: Mon, 20 Aug 2012 16:47:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820144700.GY6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-7-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-7-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 06/13] drivers/net: add driver for the EMAC device
 found in some TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/emac_defs.h |   53 +++
>  drivers/net/Kconfig                         |    5 +
>  drivers/net/Makefile                        |    1 +
>  drivers/net/davinci_emac.c                  |  619 +++++++++++++++++++++++++++
>  drivers/net/davinci_emac.h                  |  331 ++++++++++++++
>  5 files changed, 1009 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/emac_defs.h
>  create mode 100644 drivers/net/davinci_emac.c
>  create mode 100644 drivers/net/davinci_emac.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/emac_defs.h b/arch/arm/mach-omap/include/mach/emac_defs.h
> new file mode 100644
> index 0000000..ef930fc
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/emac_defs.h
> @@ -0,0 +1,53 @@
> +/*
> + * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
> + *
> + * Based on:
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * dm644x_emac.h
> + *
> + * TI DaVinci (DM644X) EMAC peripheral driver header for DV-EVM
> + *
> + * Copyright (C) 2005 Texas Instruments.
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + *  You should have received a copy of the GNU General Public License
> + *  along with this program; if not, write to the Free Software
> + *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + * ----------------------------------------------------------------------------
> +
> + * Modifications:
> + * ver. 1.0: Sep 2005, TI PSP Team - Created EMAC version for uBoot.
> + *
> + */
> +
> +#ifndef _AM3517_EMAC_H_
> +#define _AM3517_EMAC_H_
> +
> +#define EMAC_BASE_ADDR                 0x5C010000
> +#define EMAC_WRAPPER_BASE_ADDR         0x5C000000
> +#define EMAC_WRAPPER_RAM_ADDR          0x5C020000
> +#define EMAC_MDIO_BASE_ADDR            0x5C030000
> +#define EMAC_HW_RAM_ADDR               0x01E20000
> +
> +#define EMAC_MDIO_BUS_FREQ             166000000       /* 166 MHZ check */
> +#define EMAC_MDIO_CLOCK_FREQ           1000000         /* 2.0 MHz */
> +
> +/* SOFTRESET macro definition interferes with emac_regs structure definition */
> +#undef SOFTRESET
> +
> +#define DAVINCI_EMAC_VERSION2
> +
> +#endif  /* _AM3517_EMAC_H_ */
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 0fa4f14..68c11eb 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -49,6 +49,11 @@ config DRIVER_NET_SMC91111
>  	  This option enables support for the SMSC LAN91C111
>  	  ethernet chip.
>  
> +config DRIVER_NET_DAVINCI_EMAC
> +	bool "TI Davinci/OMAP EMAC ethernet driver"
> +	depends on ARCH_DAVINCI || ARCH_OMAP3
> +	select MIIDEV
> +
>  config DRIVER_NET_DM9K
>  	bool "Davicom dm9k[E|A|B] ethernet driver"
>  	depends on HAS_DM9000
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index b589240..0f1363f 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
>  obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
>  obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
> +obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
>  obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
>  obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
>  obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
> diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
> new file mode 100644
> index 0000000..b9670ca
> --- /dev/null
> +++ b/drivers/net/davinci_emac.c
> @@ -0,0 +1,619 @@
> +/*
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * Ethernet driver for TI TMS320DM644x (DaVinci) chips.
> + *
> + * Copyright (C) 2007 Sergey Kubushyn <ksi@koi8.net>
> + *
> + * Parts shamelessly stolen from TI's dm644x_emac.c. Original copyright
> + * follows:
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * dm644x_emac.c
> + *
> + * TI DaVinci (DM644X) EMAC peripheral driver source for DV-EVM
> + *
> + * Copyright (C) 2005 Texas Instruments.
> + *
> + * ----------------------------------------------------------------------------
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + *  You should have received a copy of the GNU General Public License
> + *  along with this program; if not, write to the Free Software
> + *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + * ----------------------------------------------------------------------------
> +
> + * Modifications:
> + * ver. 1.0: Sep 2005, Anant Gole - Created EMAC version for uBoot.
> + * ver  1.1: Nov 2005, Anant Gole - Extended the RX logic for multiple descriptors
> + *
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <clock.h>
> +#include <net.h>
> +#include <miidev.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <asm/mmu.h>
> +#include <asm/system.h>
> +#include <mach/emac_defs.h>
> +#include "davinci_emac.h"
> +
> +struct davinci_emac_priv {
> +	struct device_d *dev;
> +	struct eth_device edev;
> +	struct mii_device miidev;
> +	void __iomem *regs;
> +
> +	/* EMAC Addresses */
> +	emac_regs	*adap_emac; /* = (emac_regs *)EMAC_BASE_ADDR; */
> +	ewrap_regs	*adap_ewrap; /* = (ewrap_regs *)EMAC_WRAPPER_BASE_ADDR; */
> +	mdio_regs	*adap_mdio; /* = (mdio_regs *)EMAC_MDIO_BASE_ADDR; */
please use linux and not the struct for regs

and did you test it with mmu?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
