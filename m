Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCpOC-0005nm-HQ
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 10:46:33 +0000
Date: Tue, 5 Mar 2013 11:46:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305104630.GR1906@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
 <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
 <20130304205321.GE911@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130304205321.GE911@x61s.8.8.8.8>
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
Subject: Re: [PATCH 6/6] ARM: Add relocatable binary support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 09:53:22PM +0100, Alexander Aring wrote:
> Hi,
> 
> On Mon, Mar 04, 2013 at 09:03:09PM +0100, Sascha Hauer wrote:
> > For making the same binary executable on different SoCs which have
> > different DRAM addresses we have to be independent of the compile
> > time link address.
> > 
> > This patch adds relocatable binary support for the ARM architecture.
> > With this two new functions are available. relocate_to_current_adr
> > will fixup the binary to continue executing from the current position.
> > relocate_to_adr will copy the binary to a given address, fixup the
> > binary and continue executing from there.
> > 
> > For the PBL and the real image relocatable support can be enabled
> > independently. This is done to (hopefully) better cope with setups
> > where the PBL runs from SRAM or ROM and the real binary does not.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/Kconfig                   |  9 +++++
> >  arch/arm/Makefile                  |  4 +++
> >  arch/arm/cpu/Makefile              |  3 ++
> >  arch/arm/cpu/common.c              | 68 ++++++++++++++++++++++++++++++++++++++
> >  arch/arm/cpu/setupc.S              | 59 +++++++++++++++++++++++++++++++++
> >  arch/arm/cpu/start-pbl.c           | 18 +++++++---
> >  arch/arm/cpu/start.c               |  5 +++
> >  arch/arm/include/asm/barebox-arm.h | 26 +++++++++++++++
> >  arch/arm/lib/barebox.lds.S         | 17 ++++++++++
> >  arch/arm/pbl/Makefile              |  3 ++
> >  arch/arm/pbl/zbarebox.lds.S        | 16 +++++++++
> >  common/Kconfig                     |  2 +-
> >  pbl/Kconfig                        | 10 ++++++
> >  13 files changed, 235 insertions(+), 5 deletions(-)
> >  create mode 100644 arch/arm/cpu/common.c
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 7ac134e..efe0773 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -12,6 +12,15 @@ config ARM_LINUX
> >  	default y
> >  	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
> >  
> > +config RELOCATABLE
> > +	prompt "relocatable binary"
> > +	bool
> > +	help
> > +	  Generate a binary which can relocate itself during startup to run
> > +	  on different addresses. This is useful if your memory layout is not
> > +	  known during compile time. Selecting this will result in a slightly
> > +	  bigger image.
> > +
> >  config HAVE_MACH_ARM_HEAD
> >  	bool
> >  
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index b98d6b8..5125b87 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -181,6 +181,10 @@ CPPFLAGS += -fdata-sections -ffunction-sections
> >  LDFLAGS_barebox += -static --gc-sections
> >  endif
> >  
> > +ifdef CONFIG_RELOCATABLE
> > +LDFLAGS_barebox += -pie
> > +endif
> > +
> >  ifdef CONFIG_IMAGE_COMPRESSION
> >  KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
> >  KBUILD_TARGET := zbarebox.bin
> > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > index 44410ee..5935e1c 100644
> > --- a/arch/arm/cpu/Makefile
> > +++ b/arch/arm/cpu/Makefile
> > @@ -21,3 +21,6 @@ pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
> >  obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
> >  
> >  pbl-y += start-pbl.o setupc.o
> > +
> > +obj-y += common.o
> > +pbl-y += common.o
> > diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> > new file mode 100644
> > index 0000000..856ddf2
> > --- /dev/null
> > +++ b/arch/arm/cpu/common.c
> > @@ -0,0 +1,68 @@
> > +/*
> > + * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <sizes.h>
> > +#include <asm/barebox-arm.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm-generic/memory_layout.h>
> > +#include <asm/sections.h>
> > +#include <asm/pgtable.h>
> > +#include <asm/cache.h>
> > +
> > +/*
> > + * relocate binary to the currently running address
> > + */
> > +void relocate_to_current_adr(void)
> > +{
> > +	uint32_t offset;
> > +	uint32_t *dstart, *dend, *dynsym;
> > +	uint32_t *dynend;
> 
> Some nitpick... we can do this in one line maybe with fixup and type.
> 
> > +
> > +	/* Get offset between linked address and runtime address */
> > +	offset = get_runtime_offset();
> > +
> > +	dstart = (void *)(ld_var(__rel_dyn_start) - offset);
> > +	dend = (void *)(ld_var(__rel_dyn_end) - offset);
> > +
> > +	dynsym = (void *)(ld_var(__dynsym_start) - offset);
> > +	dynend = (void *)(ld_var(__dynsym_end) - offset);
> > +
> > +	while (dstart < dend) {
> > +		uint32_t *fixup = (uint32_t *)(*dstart - offset);
> > +		uint32_t type = *(dstart + 1);
> > +
> > +		if ((type & 0xff) == 0x17) {
> > +			*fixup = *fixup - offset;
> > +		} else {
> > +			int index = type >> 8;
> > +			uint32_t r = dynsym[index * 4 + 1];
> > +
> > +			*fixup = *fixup + r - offset;
> > +		}
> > +
> > +		*dstart -= offset;
> > +		dstart += 2;
> > +	}
> > +
> > +	while (dynsym < dynend)
> > +		*dynsym++ = 0;
> 
> I think here we can use a memset. :-)

ok ;)

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
