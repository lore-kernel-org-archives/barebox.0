Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCwCs-0008Ej-9z
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 18:03:19 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id F41D1DC15B9
 for <barebox@lists.infradead.org>; Tue,  5 Mar 2013 19:14:10 +0100 (CET)
Date: Tue, 5 Mar 2013 19:02:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130305180212.GO23022@game.jcrosoft.org>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <d088ba9d26fbcd8f9b4cd3ba129ec5c556d88307.1362273612.git.joshc@eso.teric.us>
 <20130303103918.GI23022@game.jcrosoft.org>
 <20130305171657.GE16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130305171657.GE16050@kryptos>
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
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On 11:16 Tue 05 Mar     , Josh Cartwright wrote:
> Thanks for the review!
> 
> On Sun, Mar 03, 2013 at 11:39:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 18:48 Sat 02 Mar     , Josh Cartwright wrote:
> [..]
> > > index 0000000..b9ec9f3
> > > --- /dev/null
> > > +++ b/arch/arm/boards/zynq-zc702/devices.c
> > > @@ -0,0 +1,70 @@
> > > +/*
> > > + * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
> > > + *
> > > + * This program is free software; you can redistribute it and/or modify it
> > > + * under the terms and conditions of the GNU General Public License,
> > > + * version 2, as published by the Free Software Foundation.
> > > + *
> > > + * This program is distributed in the hope it will be useful, but WITHOUT
> > > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > > + * more details.
> > > + *
> > > + * You should have received a copy of the GNU General Public License along with
> > > + * this program.  If not, see <http://www.gnu.org/licenses/>.
> > > + */
> > > +#include <common.h>
> > > +#include <driver.h>
> > > +#include <init.h>
> > > +#include <sizes.h>
> > > +
> > > +#include <asm/memory.h>
> > > +
> > > +static struct resource smp_twd_resource = {
> > > +	.name	= "smp_twd_base",
> > > +	.start	= 0xF8F00600,
> > > +	.end	= 0xF8F00610,
> > > +	.flags	= IORESOURCE_MEM,
> > > +};
> > > +
> > > +static struct device_d zynq_smp_twd = {
> > > +	.id		= DEVICE_ID_DYNAMIC,
> > > +	.name		= "smp_twd",
> > > +	.num_resources	= 1,
> > > +	.resource	= &smp_twd_resource,
> > > +};
> > > +
> > > +static struct resource zynq_serial_resource = {
> > > +	.name	= "zynq_serial_base",
> > > +	.start	= 0xE0001000,
> > > +	.end	= 0xE0001048,
> > > +	.flags	= IORESOURCE_MEM,
> > > +};
> > > +
> > > +static struct device_d zynq_serial = {
> > > +	.id		= DEVICE_ID_DYNAMIC,
> > > +	.name		= "zynq_serial",
> > > +	.num_resources	= 1,
> > > +	.resource	= &zynq_serial_resource,
> > > +};
> > 
> > use generic code to register the devices
> 
> I'm assuming you're referring to add_generic_device() and friends.  I'll
> look into it.
yes as we plan the add a platform_device and driver struct in the feature
so use add_generic_device will simplify the switch

as now you need to use a specific bus for all the device as example etc...
> 
> [..]
> > > +++ b/arch/arm/boards/zynq-zc702/lowlevel.c
> > > @@ -0,0 +1,28 @@
> > > +/*
> > > + * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
> > > + *
> > > + * This program is free software; you can redistribute it and/or modify it
> > > + * under the terms and conditions of the GNU General Public License,
> > > + * version 2, as published by the Free Software Foundation.
> > > + *
> > > + * This program is distributed in the hope it will be useful, but WITHOUT
> > > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > > + * more details.
> > > + *
> > > + * You should have received a copy of the GNU General Public License along with
> > > + * this program.  If not, see <http://www.gnu.org/licenses/>.
> > > + */
> > > +#include <common.h>
> > > +#include <init.h>
> > > +#include <asm/barebox-arm.h>
> > > +#include <asm/barebox-arm-head.h>
> > > +
> > > +#include <mach/slcr.h>
> > > +
> > > +void __naked __bare_init barebox_arm_reset_vector(void)
> > > +{
> > > +	slcr_unlock();
> > > +	arm_cpu_lowlevel_init();
> > > +	barebox_arm_entry(0x8000, SZ_128M, 0);
> > can you detect the ddr size
> 
> I don't think this is possible, but I'll look a bit more.
you do not have a ddr controller?

or a i2c controller to read the eeprom?
> > > +}
> > > diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> > > index 90b17f3..992a485 100644
> > > --- a/arch/arm/mach-zynq/Kconfig
> > > +++ b/arch/arm/mach-zynq/Kconfig
> > > @@ -1,3 +1,22 @@
> > >  if ARCH_ZYNQ
> > >  
> > > +config ARCH_TEXT_BASE
> > > +	hex
> > > +	default 0x04000000 if MACH_ZYNQ_ZC702
> > > +
> > > +config ZYNQ_PS_CLK_FREQ
> > > +	int
> > > +	default 33333330 if MACH_ZYNQ_ZC702
> > move it to C
> 
> Will-do.
> 
> Thanks again,
> 
>    Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
