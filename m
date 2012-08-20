Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TQu-0007Nl-QD
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:58:27 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 19566FF91C6
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 17:05:21 +0200 (CEST)
Date: Mon, 20 Aug 2012 16:58:31 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820145831.GA6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-9-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-9-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 08/13] drivers/spi: add driver for the Multichannel SPI
 controller found in TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Also create devices for OMAP3.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/Makefile             |    2 +-
>  arch/arm/mach-omap/devices-mcspi.c      |   23 ++
>  arch/arm/mach-omap/include/mach/mcspi.h |   11 +
>  drivers/spi/Kconfig                     |    6 +
>  drivers/spi/Makefile                    |    1 +
>  drivers/spi/omap3_spi.c                 |  403 +++++++++++++++++++++++++++++++
>  drivers/spi/omap3_spi.h                 |  100 ++++++++
>  7 files changed, 545 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-omap/devices-mcspi.c
>  create mode 100644 arch/arm/mach-omap/include/mach/mcspi.h
>  create mode 100644 drivers/spi/omap3_spi.c
>  create mode 100644 drivers/spi/omap3_spi.h
> 
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 87078ae..33c7872 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -21,7 +21,7 @@
>  #
>  obj-$(CONFIG_ARCH_OMAP) += syslib.o
>  obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
> -obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
> +obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o devices-mcspi.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
>  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> diff --git a/arch/arm/mach-omap/devices-mcspi.c b/arch/arm/mach-omap/devices-mcspi.c
> new file mode 100644
> index 0000000..b1fd540
> --- /dev/null
> +++ b/arch/arm/mach-omap/devices-mcspi.c
> @@ -0,0 +1,23 @@
> +#include <common.h>
> +#include <console.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <clock.h>
> +#include <io.h>
> +#include <sizes.h>
> +
> +#include <mach/mcspi.h>
> +
> +int mcspi_devices_init()
> +{
> +	add_generic_device("omap3_spi", 1, NULL, OMAP3_MCSPI1_BASE, SZ_4K,
> +			   IORESOURCE_MEM, NULL);
> +	add_generic_device("omap3_spi", 2, NULL, OMAP3_MCSPI2_BASE, SZ_4K,
> +			   IORESOURCE_MEM, NULL);
> +	add_generic_device("omap3_spi", 3, NULL, OMAP3_MCSPI3_BASE, SZ_4K,
> +			   IORESOURCE_MEM, NULL);
> +	add_generic_device("omap3_spi", 4, NULL, OMAP3_MCSPI4_BASE, SZ_4K,
> +			   IORESOURCE_MEM, NULL);
why do you register all of them??

you need to register only what the board need
> +
> +	return 0;
> +}
> diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/arch/arm/mach-omap/include/mach/mcspi.h
> new file mode 100644
> index 0000000..40ee622
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/mcspi.h
> @@ -0,0 +1,11 @@
> +#ifndef __OMAP_MCSPI_H
> +#define  __OMAP_MCSPI_H
> +
> +#define OMAP3_MCSPI1_BASE       0x48098000
> +#define OMAP3_MCSPI2_BASE       0x4809A000
> +#define OMAP3_MCSPI3_BASE       0x480B8000
> +#define OMAP3_MCSPI4_BASE       0x480BA000
> +
> +int mcspi_devices_init(void);
> +
> +#endif				/* __OMAP_MCSPI_H */
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 609bafd..e36ceb0 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -34,4 +34,10 @@ config DRIVER_SPI_ATMEL
>  	depends on ARCH_AT91
>  	depends on SPI
>  
> +
> +config DRIVER_SPI_OMAP3
> +	bool "OMAP3 McSPI Master driver"
> +	depends on ARCH_OMAP3
> +	depends on SPI
> +
>  endmenu
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 101652f..b53061e 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -2,3 +2,4 @@ obj-$(CONFIG_SPI) += spi.o
>  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
> +obj-$(CONFIG_DRIVER_SPI_OMAP3) += omap3_spi.o
> diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
> new file mode 100644
> index 0000000..eadb78d
> --- /dev/null
> +++ b/drivers/spi/omap3_spi.c
> @@ -0,0 +1,403 @@
> +/*
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * Copyright (C) 2010 Dirk Behme <dirk.behme@googlemail.com>
> + *
> + * Driver for McSPI controller on OMAP3. Based on davinci_spi.c
> + * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
> + *
> + * Copyright (C) 2007 Atmel Corporation
> + *
> + * Parts taken from linux/drivers/spi/omap2_mcspi.c
> + * Copyright (C) 2005, 2006 Nokia Corporation
> + *
> + * Modified by Ruslan Araslanov <ruslan.araslanov@vitecmm.com>
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
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <spi/spi.h>
> +#include <malloc.h>
> +#include <io.h>
> +#include "omap3_spi.h"
> +
> +#define WORD_LEN	8
> +#define SPI_WAIT_TIMEOUT 30000000
> +
> +#define SPI_XFER_BEGIN  0x01                    /* Assert CS before transfer */
> +#define SPI_XFER_END    0x02                    /* Deassert CS after transfer */
> +
> +static void spi_reset(struct spi_master *master)
> +{
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
please no struct register please be in sync with the kernel

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
