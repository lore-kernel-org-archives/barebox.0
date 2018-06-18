Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV0jZ-0000kB-HM
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 20:26:42 +0000
Received: by mail-io0-x244.google.com with SMTP id e15-v6so18062582iog.1
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2018 13:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615041136.23492-18-andrew.smirnov@gmail.com>
 <20180618202237.pxfxnmp2eb2mp62o@pengutronix.de>
In-Reply-To: <20180618202237.pxfxnmp2eb2mp62o@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jun 2018 13:26:17 -0700
Message-ID: <CAHQ1cqGDP=-9m0bCWRdig==3Pp-Q86OGo+Axre0WDBV1KLks_Q@mail.gmail.com>
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
Subject: Re: [PATCH 14/27] console: Consolidate DEBUG_LL and CONSOLE_* puts()
 implementations
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 18, 2018 at 1:22 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jun 14, 2018 at 09:11:23PM -0700, Andrey Smirnov wrote:
> > Similar to previous commit, consolidate DEBUG_LL and CONSOLE_* puts()
> > implementations by putting them into a shared macro.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  include/debug_ll.h | 23 +++++++++++++++++++----
> >  lib/console.c      | 13 ++++++-------
> >  2 files changed, 25 insertions(+), 11 deletions(-)
> >
> > diff --git a/include/debug_ll.h b/include/debug_ll.h
> > index 4032ced95..4dcbd0434 100644
> > --- a/include/debug_ll.h
> > +++ b/include/debug_ll.h
> > @@ -54,6 +54,24 @@
> >               __n;                            \
> >       })
> >
> > +/**
> > + * __do_puts - Macro implementing puts()
> > + *
> > + * @__putc:  Single argument or a macro that implements putc()
> > + * @___s:    String to print
> > + *
> > + * Internal macro used to implement puts_ll() and __console_puts()
> > + */
> > +#define __do_puts(__putc, ___s)                      \
> > +     ({                                      \
> > +             const char *__s = (___s);       \
> > +             int __n = 0;                    \
> > +                                             \
> > +             while (*__s)                    \
> > +                     __n += __putc(*__s++);  \
> > +             __n;                            \
> > +     })
>
> I don't like this. It's a simple loop and there's nothing bad with it
> when the same loop is present twice in barebox. No need to dig into
> CPP here.
>

OK, will drop in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
