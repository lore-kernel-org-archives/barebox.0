Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VE1vn-0006qX-Pr
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 18:54:28 +0000
Received: by mail-lb0-f180.google.com with SMTP id q8so1773454lbi.11
 for <barebox@lists.infradead.org>; Mon, 26 Aug 2013 11:54:05 -0700 (PDT)
Date: Mon, 26 Aug 2013 22:51:48 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130826225148.789cb51a803900ceb21f77ae@gmail.com>
In-Reply-To: <20130826132018.GF13964@titan.lakedaemon.net>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
 <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
 <20130826132018.GF13964@titan.lakedaemon.net>
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
Subject: Re: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org

On Mon, 26 Aug 2013 09:20:18 -0400
Jason Cooper <jason@lakedaemon.net> wrote:

> Hi Antony,
> =

> On Mon, Aug 26, 2013 at 08:57:10AM +0400, Antony Pavlov wrote:
> > TODO: the clocksource driver need improvement!
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/arm/Kconfig                            |  9 ++++
> >  arch/arm/Makefile                           |  1 +
> >  arch/arm/dts/digic4.dtsi                    | 24 +++++++++++
> >  arch/arm/mach-digic/Kconfig                 | 11 +++++
> >  arch/arm/mach-digic/Makefile                |  2 +
> >  arch/arm/mach-digic/core.c                  | 24 +++++++++++
> >  arch/arm/mach-digic/csrc-timer.c            | 67 +++++++++++++++++++++=
++++++++
> >  arch/arm/mach-digic/include/mach/debug_ll.h | 40 +++++++++++++++++
> >  arch/arm/mach-digic/include/mach/digic4.h   | 29 +++++++++++++
> >  arch/arm/mach-digic/include/mach/gpio.h     |  1 +
> >  10 files changed, 208 insertions(+)
> >  create mode 100644 arch/arm/dts/digic4.dtsi
> >  create mode 100644 arch/arm/mach-digic/Kconfig
> >  create mode 100644 arch/arm/mach-digic/Makefile
> >  create mode 100644 arch/arm/mach-digic/core.c
> >  create mode 100644 arch/arm/mach-digic/csrc-timer.c
> >  create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h
> >  create mode 100644 arch/arm/mach-digic/include/mach/digic4.h
> >  create mode 100644 arch/arm/mach-digic/include/mach/gpio.h
> > =

> ...
> > diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/arch/arm/mac=
h-digic/include/mach/debug_ll.h
> > new file mode 100644
> > index 0000000..5f4579e
> > --- /dev/null
> > +++ b/arch/arm/mach-digic/include/mach/debug_ll.h
> > @@ -0,0 +1,40 @@
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
> > +#ifndef __MACH_DEBUG_LL_H__
> > +#define __MACH_DEBUG_LL_H__
> > +
> > +#include <io.h>
> > +#include <mach/digic4.h>
> > +
> > +#define DEBUG_LL_UART         DIGIC4_UART
> > +
> > +/* Serial interface registers */
> > +#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + 0x0)
> > +#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + 0x14)
> > + #define UART_ST_TX_RDY	2
> =

> leading whitespace, and perhaps use BIT() here.

The leading whitespace is put here intentionally to distinguish register ad=
dress macros
and bit fields macros.

> > +
> > +static inline void PUTC_LL(char ch)
> > +{
> > +	while (!(readl(DEBUG_LL_UART_ST) & UART_ST_TX_RDY))
> > +		; /* noop */
> > +
> > +	writel(0x06, DEBUG_LL_UART_ST);
> =

> could you use a macro here for 0x06?

It is not so easy. See comments in serial driver: there is no public docume=
ntation
on Canon Digic chips. This driver is result of reverse engineering.
I have no complete information about the bitfield meaning. In this situation
it's very difficult to invent adequate names for the bitfield macros.
E.g. I have given the DEBUG_LL_UART_ST name to the register (I mean STATUS =
register).
But now I see that It is not just a status register but a control register =
too.
Just now I prefere to keep the names and constants as-is.

Moreover the situation with digic timers is worse as I don't know meaning o=
f most bitfields :)

> > +	writel(ch, DEBUG_LL_UART_TX);
> > +}
> > +
> > +#endif
> =

> thx,
> =

> Jason.


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
