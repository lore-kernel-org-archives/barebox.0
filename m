Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Q40-00069R-Mm
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 11:54:49 +0000
Date: Thu, 7 Feb 2013 12:54:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130207115446.GT1906@pengutronix.de>
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
 <1360233900-26486-6-git-send-email-alex.aring@gmail.com>
 <20130207110048.GS1906@pengutronix.de>
 <20130207114030.GF5999@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130207114030.GF5999@x61s.8.8.8.8>
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
Subject: Re: [PATCH 5/6] common: add mem_test routine
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 12:40:32PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Thu, Feb 07, 2013 at 12:00:48PM +0100, Sascha Hauer wrote:
> > On Thu, Feb 07, 2013 at 11:44:59AM +0100, Alexander Aring wrote:
> > > Useful to detect timing problems if someone porting a new
> > > device to barebox.
> > > 
> > > This test includes a data bus test, address bus test and
> > > integrity check of memory.
> > > 
> > > Allocated barebox regions between start and end will skip
> > > automatically.
> > > 
> > > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > > ---
> > >  common/Kconfig        |   7 +
> > >  common/Makefile       |   1 +
> > >  common/memory_test.c  | 399 ++++++++++++++++++++++++++++++++++++++++++++++++++
> > >  include/memory_test.h |  13 ++
> > >  4 files changed, 420 insertions(+)
> > >  create mode 100644 common/memory_test.c
> > >  create mode 100644 include/memory_test.h
> > > 
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index 3f6c11e..c6988df 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -100,6 +100,13 @@ config MEMINFO
> > >  	bool "display memory info"
> > >  	default y
> > >  
> > > +config MEMTEST
> > > +	bool "Offers routines for memory test"
> > > +	help
> > > +	  Offers memtest routines in common/memory_test.c
> > > +	  This is helpful for porting devices to detect
> > > +	  memory timing problems.
> > > +
> > >  config ENVIRONMENT_VARIABLES
> > >  	bool "environment variables support"
> > >  
> > > diff --git a/common/Makefile b/common/Makefile
> > > index 7206eed..684953c 100644
> > > --- a/common/Makefile
> > > +++ b/common/Makefile
> > > @@ -17,6 +17,7 @@ obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
> > >  obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
> > >  obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
> > >  obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
> > > +obj-$(CONFIG_MEMTEST) += memory_test.o
> > >  obj-y += clock.o
> > >  obj-$(CONFIG_BANNER) += version.o
> > >  obj-$(CONFIG_MEMINFO) += meminfo.o
> > > diff --git a/common/memory_test.c b/common/memory_test.c
> > > new file mode 100644
> > > index 0000000..80b4ff4
> > > --- /dev/null
> > > +++ b/common/memory_test.c
> > > @@ -0,0 +1,399 @@
> > > +/*
> > > + * memory_test.c
> > > + *
> > > + * Copyright (c) 2013 Alexander Aring <aar@pengutronix.de>, Pengutronix
> > > + *
> > > + * See file CREDITS for list of people who contributed to this
> > > + * project.
> > > + *
> > > + * This program is free software; you can redistribute it and/or modify
> > > + * it under the terms of the GNU General Public License version 2
> > > + * as published by the Free Software Foundation.
> > > + *
> > > + * This program is distributed in the hope that it will be useful,
> > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > + * GNU General Public License for more details.
> > > + *
> > > + */
> > > +
> > > +#include <memory_test.h>
> > > +
> > > +static const vu_long bitpattern[] = {
> > > +	0x00000001,	/* single bit */
> > > +	0x00000003,	/* two adjacent bits */
> > > +	0x00000007,	/* three adjacent bits */
> > > +	0x0000000F,	/* four adjacent bits */
> > > +	0x00000005,	/* two non-adjacent bits */
> > > +	0x00000015,	/* three non-adjacent bits */
> > > +	0x00000055,	/* four non-adjacent bits */
> > > +	0xAAAAAAAA,	/* alternating 1/0 */
> > > +};
> > > +
> > > +/*
> > > + * Perform a memory test. The complete test
> > > + * loops until interrupted by ctrl-c.
> > > + *
> > > + * Highly recommended to test with disabled and
> > > + * enabled cache.
> > > + *
> > > + * start: start address
> > > + * end: end address
> > > + * bus_only: skip integrity check
> > > + */
> > > +int mem_test(vu_long _start, vu_long _end,
> > > +		int bus_only)
> > > +{
> > 
> > I thought we agreed on using request_sdram_region here and drop the
> > address_in_sdram_regions in this function.
> > 
> 
> I don't know what you meant :-(
> Sorry.
> 
> You want that I am checking if a region is already requested.

I didn't want that you check if a region is already requested, I want
you to request the region that you are testing. That's what
request_sdram_region is good for. Just use it.

> In that case request_sdram_region will return NULL. Then I know it isn't
> a barebox region.
> That's ok until integrity check.
> This will check 4-bytewise if this is a reqyested region and if not it
> will create them.
> I can do this, but this will result a long list of requested regions.

Drop the address_in_sdram_regions completely from this function.
Instead, do a request_sdram_region in the memtest command.

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
