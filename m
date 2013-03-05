Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCvNu-0007Gd-W3
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 17:10:39 +0000
Date: Tue, 5 Mar 2013 11:16:57 -0600
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130305171657.GE16050@kryptos>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <d088ba9d26fbcd8f9b4cd3ba129ec5c556d88307.1362273612.git.joshc@eso.teric.us>
 <20130303103918.GI23022@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130303103918.GI23022@game.jcrosoft.org>
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
Subject: Re: [PATCH 5/5] ARM: zynq: add support for zc702 development board
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

Thanks for the review!

On Sun, Mar 03, 2013 at 11:39:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:48 Sat 02 Mar     , Josh Cartwright wrote:
[..]
> > index 0000000..b9ec9f3
> > --- /dev/null
> > +++ b/arch/arm/boards/zynq-zc702/devices.c
> > @@ -0,0 +1,70 @@
> > +/*
> > + * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms and conditions of the GNU General Public License,
> > + * version 2, as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + *
> > + * You should have received a copy of the GNU General Public License along with
> > + * this program.  If not, see <http://www.gnu.org/licenses/>.
> > + */
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <init.h>
> > +#include <sizes.h>
> > +
> > +#include <asm/memory.h>
> > +
> > +static struct resource smp_twd_resource = {
> > +	.name	= "smp_twd_base",
> > +	.start	= 0xF8F00600,
> > +	.end	= 0xF8F00610,
> > +	.flags	= IORESOURCE_MEM,
> > +};
> > +
> > +static struct device_d zynq_smp_twd = {
> > +	.id		= DEVICE_ID_DYNAMIC,
> > +	.name		= "smp_twd",
> > +	.num_resources	= 1,
> > +	.resource	= &smp_twd_resource,
> > +};
> > +
> > +static struct resource zynq_serial_resource = {
> > +	.name	= "zynq_serial_base",
> > +	.start	= 0xE0001000,
> > +	.end	= 0xE0001048,
> > +	.flags	= IORESOURCE_MEM,
> > +};
> > +
> > +static struct device_d zynq_serial = {
> > +	.id		= DEVICE_ID_DYNAMIC,
> > +	.name		= "zynq_serial",
> > +	.num_resources	= 1,
> > +	.resource	= &zynq_serial_resource,
> > +};
> 
> use generic code to register the devices

I'm assuming you're referring to add_generic_device() and friends.  I'll
look into it.

[..]
> > +++ b/arch/arm/boards/zynq-zc702/lowlevel.c
> > @@ -0,0 +1,28 @@
> > +/*
> > + * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms and conditions of the GNU General Public License,
> > + * version 2, as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + *
> > + * You should have received a copy of the GNU General Public License along with
> > + * this program.  If not, see <http://www.gnu.org/licenses/>.
> > + */
> > +#include <common.h>
> > +#include <init.h>
> > +#include <asm/barebox-arm.h>
> > +#include <asm/barebox-arm-head.h>
> > +
> > +#include <mach/slcr.h>
> > +
> > +void __naked __bare_init barebox_arm_reset_vector(void)
> > +{
> > +	slcr_unlock();
> > +	arm_cpu_lowlevel_init();
> > +	barebox_arm_entry(0x8000, SZ_128M, 0);
> can you detect the ddr size

I don't think this is possible, but I'll look a bit more.
> > +}
> > diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> > index 90b17f3..992a485 100644
> > --- a/arch/arm/mach-zynq/Kconfig
> > +++ b/arch/arm/mach-zynq/Kconfig
> > @@ -1,3 +1,22 @@
> >  if ARCH_ZYNQ
> >  
> > +config ARCH_TEXT_BASE
> > +	hex
> > +	default 0x04000000 if MACH_ZYNQ_ZC702
> > +
> > +config ZYNQ_PS_CLK_FREQ
> > +	int
> > +	default 33333330 if MACH_ZYNQ_ZC702
> move it to C

Will-do.

Thanks again,

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
