Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3iiP-00042H-Q7
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 07:17:31 +0000
Date: Tue, 21 Aug 2012 09:16:23 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120821071623.GE15318@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-9-git-send-email-jlu@pengutronix.de>
 <20120820145831.GA6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120820145831.GA6271@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2012 at 04:58:31PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > +int mcspi_devices_init()
> > +{
> > +	add_generic_device("omap3_spi", 1, NULL, OMAP3_MCSPI1_BASE, SZ_4K,
> > +			   IORESOURCE_MEM, NULL);
> > +	add_generic_device("omap3_spi", 2, NULL, OMAP3_MCSPI2_BASE, SZ_4K,
> > +			   IORESOURCE_MEM, NULL);
> > +	add_generic_device("omap3_spi", 3, NULL, OMAP3_MCSPI3_BASE, SZ_4K,
> > +			   IORESOURCE_MEM, NULL);
> > +	add_generic_device("omap3_spi", 4, NULL, OMAP3_MCSPI4_BASE, SZ_4K,
> > +			   IORESOURCE_MEM, NULL);
> why do you register all of them??
> 
> you need to register only what the board need

Would you prefer having separeate mcspc1-4_device_init functions? Or simply
call add_generic_device in the board code?

> > +
> > +	return 0;
> > +}
> > diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/arch/arm/mach-omap/include/mach/mcspi.h
> > new file mode 100644
> > index 0000000..40ee622
> > --- /dev/null
> > +++ b/arch/arm/mach-omap/include/mach/mcspi.h
> > @@ -0,0 +1,11 @@
> > +#ifndef __OMAP_MCSPI_H
> > +#define  __OMAP_MCSPI_H
> > +
> > +#define OMAP3_MCSPI1_BASE       0x48098000
> > +#define OMAP3_MCSPI2_BASE       0x4809A000
> > +#define OMAP3_MCSPI3_BASE       0x480B8000
> > +#define OMAP3_MCSPI4_BASE       0x480BA000
> > +
> > +int mcspi_devices_init(void);
> > +
> > +#endif				/* __OMAP_MCSPI_H */
> > diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> > index 609bafd..e36ceb0 100644
> > --- a/drivers/spi/Kconfig
> > +++ b/drivers/spi/Kconfig
> > @@ -34,4 +34,10 @@ config DRIVER_SPI_ATMEL
> >  	depends on ARCH_AT91
> >  	depends on SPI
> >  
> > +
> > +config DRIVER_SPI_OMAP3
> > +	bool "OMAP3 McSPI Master driver"
> > +	depends on ARCH_OMAP3
> > +	depends on SPI
> > +
> >  endmenu
> > diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> > index 101652f..b53061e 100644
> > --- a/drivers/spi/Makefile
> > +++ b/drivers/spi/Makefile
> > @@ -2,3 +2,4 @@ obj-$(CONFIG_SPI) += spi.o
> >  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
> >  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
> >  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
> > +obj-$(CONFIG_DRIVER_SPI_OMAP3) += omap3_spi.o
> > diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
> > new file mode 100644
> > index 0000000..eadb78d
> > --- /dev/null
> > +++ b/drivers/spi/omap3_spi.c
> > @@ -0,0 +1,403 @@
> > +/*
> > + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> > + *
> > + * Copyright (C) 2010 Dirk Behme <dirk.behme@googlemail.com>
> > + *
> > + * Driver for McSPI controller on OMAP3. Based on davinci_spi.c
> > + * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
> > + *
> > + * Copyright (C) 2007 Atmel Corporation
> > + *
> > + * Parts taken from linux/drivers/spi/omap2_mcspi.c
> > + * Copyright (C) 2005, 2006 Nokia Corporation
> > + *
> > + * Modified by Ruslan Araslanov <ruslan.araslanov@vitecmm.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
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
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <errno.h>
> > +#include <spi/spi.h>
> > +#include <malloc.h>
> > +#include <io.h>
> > +#include "omap3_spi.h"
> > +
> > +#define WORD_LEN	8
> > +#define SPI_WAIT_TIMEOUT 30000000
> > +
> > +#define SPI_XFER_BEGIN  0x01                    /* Assert CS before transfer */
> > +#define SPI_XFER_END    0x02                    /* Deassert CS after transfer */
> > +
> > +static void spi_reset(struct spi_master *master)
> > +{
> > +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> > +	struct mcspi __iomem *regs = omap3_master->regs;
> please no struct register please be in sync with the kernel

As with the EMAC driver, all accesses are done using readl/writel.

Thanks,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
