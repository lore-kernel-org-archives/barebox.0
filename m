Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV0iv-0000bX-H5
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 20:26:02 +0000
Received: by mail-io0-x243.google.com with SMTP id r24-v6so18022138ioh.9
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2018 13:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-17-andrew.smirnov@gmail.com>
 <20180618201837.w643qn2tddubbg5z@pengutronix.de>
In-Reply-To: <20180618201837.w643qn2tddubbg5z@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jun 2018 13:25:37 -0700
Message-ID: <CAHQ1cqHLFb9UEfJGU8JW2kwX+Ww2V-bUgMkqZfAZbZzw9V0s-g@mail.gmail.com>
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
Subject: Re: [PATCH 13/27] console: Consolidate DEBUG_LL and CONSOLE_* '\n' ->
 '\n\r' code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 18, 2018 at 1:18 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jun 14, 2018 at 09:11:22PM -0700, Andrey Smirnov wrote:
> > Consolidate code doing '\n' -> '\n\r' compensation in DEBUG_LL and
> > CONSOLE_* subsystems. While at it move it from puts_ll() to putc_ll()
> > in order to match the semantics of other puts()/putc()
> > implementations.
> >
> > This is done as a macro in order to avoid putting any restrictions on
> > the signature of __putc.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  include/debug_ll.h | 38 ++++++++++++++++++++++++++++++++------
> >  lib/console.c      | 17 +++++++----------
> >  2 files changed, 39 insertions(+), 16 deletions(-)
> >
> > diff --git a/include/debug_ll.h b/include/debug_ll.h
> > index 504751639..4032ced95 100644
> > --- a/include/debug_ll.h
> > +++ b/include/debug_ll.h
> > @@ -31,9 +31,32 @@
> >  #include <mach/debug_ll.h>
> >  #endif
> >
> > +/**
> > + * __do_putc - Macro implementing '\n'-> '\n\r' substituting putc()
> > + *
> > + * @__putc:  Single argument or a macro that implements plain putc()
> > + * @__c:     Character to print
> > + *
> > + * Internal macro used to implement putc_ll() and __console_putc() and
> > + * intended to be the only place where '\n' -> '\n\r' substitution is
> > + * codified
> > + */
> > +#define __do_putc(__putc, ___c)                      \
> > +     ({                                      \
> > +             typeof(___c) __c = (___c);      \
> > +             int __n = 1;                    \
> > +                                             \
> > +             __putc(__c);                    \
> > +             if (__c == '\n') {              \
> > +                     __putc('\r');           \
> > +                     __n = 2;                \
> > +             }                               \
> > +             __n;                            \
> > +     })
> > +
> >  #if defined (CONFIG_DEBUG_LL)
> >
>
> ...
>
> > +/*
> > + * __do_putc expects a macro or a function of a single argument so we
> > + * create this dummy adapter to work around that
> > + */
> > +#define __CDEV_PUTC(__c)     __cdev_putc(cdev, __c)
> > +
> > +     return __do_putc(__CDEV_PUTC, c);
> >  }
>
> Creating a macro for the "\n" -> "\r\n" conversion doesn't look like an
> improvement to me, especially when another macro is necessary to make
> the first one usable.
>

OK, will drop this in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
