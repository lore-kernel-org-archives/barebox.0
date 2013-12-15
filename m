Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsIw8-0002lx-Tp
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 21:09:17 +0000
Received: by mail-bk0-f50.google.com with SMTP id e11so2083803bkh.9
 for <barebox@lists.infradead.org>; Sun, 15 Dec 2013 13:08:54 -0800 (PST)
Date: Sun, 15 Dec 2013 22:17:34 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131215211733.GA10451@x61s.Speedport_W_921V_1_24_000>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
 <20131215193015.GA539@omega>
 <20131216004013.1c656aafb428cfe6df3e4ed8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131216004013.1c656aafb428cfe6df3e4ed8@gmail.com>
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
Subject: Re: [JUST RFC] ARM: DIGIC: add csrc-dummy
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 16, 2013 at 12:40:13AM +0400, Antony Pavlov wrote:
> On Sun, 15 Dec 2013 20:30:16 +0100
> Alexander Aring <alex.aring@gmail.com> wrote:
> 
> > Hi Antony,
> > 
> > On Sun, Dec 15, 2013 at 07:02:05PM +0400, Antony Pavlov wrote:
> > > The clocksource csrc-timer driver that uses DIGIC
> > > hardware TIMER2 perfectrly works on Canon A1100,
> > > but does not works on Canon EOS 600D.
> > > IMHO we need additional timer initialisation.
> > > 
> > > This patch introduces a quick-and-dirty termporary
> > > solution for this situation: a clocksource driver that
> > > does not use any hardware at all.
> > > 
> > > Also this driver is very handy for running barebox
> > > on Magic Lantern EOS qemu-based emulator as
> > > the emulator does not realize timer counter register at all!
> > > 
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/arm/mach-digic/Kconfig      |  3 +++
> > >  arch/arm/mach-digic/Makefile     |  1 +
> > >  arch/arm/mach-digic/csrc-dummy.c | 49 ++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 53 insertions(+)
> > >  create mode 100644 arch/arm/mach-digic/csrc-dummy.c
> > > 
> > > diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
> > > index 557cad4..d0524bc 100644
> > > --- a/arch/arm/mach-digic/Kconfig
> > > +++ b/arch/arm/mach-digic/Kconfig
> > > @@ -16,4 +16,7 @@ config ARCH_TEXT_BASE
> > >  config DIGIC_CSRC_TIMER
> > >  	bool
> > >  
> > > +config DIGIC_CSRC_DUMMY
> > > +	bool
> > > +
> > >  endif
> > > diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
> > > index 1d7cb72..31e5ac1 100644
> > > --- a/arch/arm/mach-digic/Makefile
> > > +++ b/arch/arm/mach-digic/Makefile
> > > @@ -1,2 +1,3 @@
> > >  obj-y += core.o
> > >  obj-$(CONFIG_DIGIC_CSRC_TIMER) += csrc-timer.o
> > > +obj-$(CONFIG_DIGIC_CSRC_DUMMY) += csrc-dummy.o
> > > diff --git a/arch/arm/mach-digic/csrc-dummy.c b/arch/arm/mach-digic/csrc-dummy.c
> > > new file mode 100644
> > > index 0000000..68c68a3
> > > --- /dev/null
> > > +++ b/arch/arm/mach-digic/csrc-dummy.c
> > > @@ -0,0 +1,49 @@
> > > +/*
> > > + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> > > + *
> > > + * This file is part of barebox.
> > > + * See file CREDITS for list of people who contributed to this project.
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
> > > +#include <init.h>
> > > +#include <clock.h>
> > > +
> > > +#include <stdio.h>
> > > +
> > > +static uint64_t dummy_counter;
> > > +
> > > +static uint64_t dummy_cs_read(void)
> > > +{
> > > +	dummy_counter += 2000;
> > > +	return dummy_counter;
> > > +}
> > > +
> > So if I understand it right, you assume here that the instructions to
> > read this value will take 0.02 ms?
> 
> It is not quite. I don't assume initially the time to read this value.
> This value ("2000") was a suboptimal value for __specific board__
> under the __specific circumstances__.
> I have selected this value after several experiments.
>

mhh, I am thinking maybe about some calculation with clock ticks. Maybe
some "nop" operations and inline assembler. In the processor datasheet
should stand how long one "nop" instruction will take. Then you can
increase the dummy_counter intervall and waits longer, that should
deincrease the amount of failure (I think).

The current solution has the smallest clock resolution (because you
don't make any "nops" instructions).

It isn't a quite solution as well and I don't know if this still works
with your qemu emulation. It's just a notice for an alternative and an
idea. It's the same idea like you already have...


Another question:
How do the original firmware do this? I think there are some date/time
information. Is there any additional hardware?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
