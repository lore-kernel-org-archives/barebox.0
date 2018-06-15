Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTnky-0003ou-RX
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 12:23:10 +0000
Received: by mail-it0-x243.google.com with SMTP id a195-v6so2385385itd.3
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2018 05:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-5-andrew.smirnov@gmail.com>
 <20180615044944.GA10093@ravnborg.org>
In-Reply-To: <20180615044944.GA10093@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jun 2018 05:22:46 -0700
Message-ID: <CAHQ1cqG+RA8rihzeJiszrF0omKU2G1JL7vc2YF=DuzX08E93aw@mail.gmail.com>
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
Subject: Re: [PATCH 02/27] console: Unify console_simple.c and pbl/console.c
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 14, 2018 at 9:49 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> On Thu, Jun 14, 2018 at 09:11:10PM -0700, Andrey Smirnov wrote:
> > Move all of the shared code into lib/console.c and convert both files
> > to use that.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> > +++ b/lib/console.c
> > @@ -0,0 +1,130 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +
> > +/*
> > + * File containing all of the console-related code that is used by all
> > + * possible consumers: PBL, CONSOLE_FULL, CONSOLE_SIMPLE, etc.
> > + *
> > + * Copyright (C) 2018 Zodiac Inflight Innovations
> > + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> > + */
> > +
> > +#include <debug_ll.h>
> > +#include <console.h>
> > +
> > +/*
> > + * Put this in the data section so that it survives the clearing of
> > + * the BSS segment.
> > + */
> > +#define __data __attribute__ ((section(".data")))
> This definition would be better placed in compiler.h
> together with all the __naked etc. definitions.
>

I thought about it, but AFAIK, there's only a single user of this in
the whole codebase and __data, unlike, say, __naked, seems like a
generic enough name to cause name collisions, so I opted at keeping it
in .c file.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
