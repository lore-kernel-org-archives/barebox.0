Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsIN6-0002Gw-Dm
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 20:33:05 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so538567lbi.2
 for <barebox@lists.infradead.org>; Sun, 15 Dec 2013 12:32:39 -0800 (PST)
Date: Mon, 16 Dec 2013 00:40:13 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20131216004013.1c656aafb428cfe6df3e4ed8@gmail.com>
In-Reply-To: <20131215193015.GA539@omega>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
 <20131215193015.GA539@omega>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [JUST RFC] ARM: DIGIC: add csrc-dummy
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, 15 Dec 2013 20:30:16 +0100
Alexander Aring <alex.aring@gmail.com> wrote:

> Hi Antony,
> =

> On Sun, Dec 15, 2013 at 07:02:05PM +0400, Antony Pavlov wrote:
> > The clocksource csrc-timer driver that uses DIGIC
> > hardware TIMER2 perfectrly works on Canon A1100,
> > but does not works on Canon EOS 600D.
> > IMHO we need additional timer initialisation.
> > =

> > This patch introduces a quick-and-dirty termporary
> > solution for this situation: a clocksource driver that
> > does not use any hardware at all.
> > =

> > Also this driver is very handy for running barebox
> > on Magic Lantern EOS qemu-based emulator as
> > the emulator does not realize timer counter register at all!
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/arm/mach-digic/Kconfig      |  3 +++
> >  arch/arm/mach-digic/Makefile     |  1 +
> >  arch/arm/mach-digic/csrc-dummy.c | 49 ++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 53 insertions(+)
> >  create mode 100644 arch/arm/mach-digic/csrc-dummy.c
> > =

> > diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
> > index 557cad4..d0524bc 100644
> > --- a/arch/arm/mach-digic/Kconfig
> > +++ b/arch/arm/mach-digic/Kconfig
> > @@ -16,4 +16,7 @@ config ARCH_TEXT_BASE
> >  config DIGIC_CSRC_TIMER
> >  	bool
> >  =

> > +config DIGIC_CSRC_DUMMY
> > +	bool
> > +
> >  endif
> > diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
> > index 1d7cb72..31e5ac1 100644
> > --- a/arch/arm/mach-digic/Makefile
> > +++ b/arch/arm/mach-digic/Makefile
> > @@ -1,2 +1,3 @@
> >  obj-y +=3D core.o
> >  obj-$(CONFIG_DIGIC_CSRC_TIMER) +=3D csrc-timer.o
> > +obj-$(CONFIG_DIGIC_CSRC_DUMMY) +=3D csrc-dummy.o
> > diff --git a/arch/arm/mach-digic/csrc-dummy.c b/arch/arm/mach-digic/csr=
c-dummy.c
> > new file mode 100644
> > index 0000000..68c68a3
> > --- /dev/null
> > +++ b/arch/arm/mach-digic/csrc-dummy.c
> > @@ -0,0 +1,49 @@
> > +/*
> > + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
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
> > +#include <init.h>
> > +#include <clock.h>
> > +
> > +#include <stdio.h>
> > +
> > +static uint64_t dummy_counter;
> > +
> > +static uint64_t dummy_cs_read(void)
> > +{
> > +	dummy_counter +=3D 2000;
> > +	return dummy_counter;
> > +}
> > +
> So if I understand it right, you assume here that the instructions to
> read this value will take 0.02 ms?

It is not quite. I don't assume initially the time to read this value.
This value ("2000") was a suboptimal value for __specific board__
under the __specific circumstances__.
I have selected this value after several experiments.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
