Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-f196.google.com ([209.85.223.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT4ry-0008M5-6w
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 12:27:32 +0000
Received: by mail-io0-f196.google.com with SMTP id u4-v6so3231579iof.2
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2018 05:27:11 -0700 (PDT)
MIME-Version: 1.0
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
 <20180612205310.25745-33-andrew.smirnov@gmail.com>
 <20180613081951.tufqqixzv7mdgg2i@pengutronix.de>
In-Reply-To: <20180613081951.tufqqixzv7mdgg2i@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jun 2018 05:26:59 -0700
Message-ID: <CAHQ1cqEONK13ULDZZDk2Bei1en-vv44mcCuh59JpfWNWjsvULw@mail.gmail.com>
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
Subject: Re: [PATCH v5 32/54] common/clock: Move delay and timeout functions
 to lib/
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 13, 2018 at 1:19 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jun 12, 2018 at 01:52:48PM -0700, Andrey Smirnov wrote:
> > Move delay and timeout functions to lib/ in order to share them with
> > PBL. Currently only the most trivial implementation of get_time_ns()
> > usefull to implement never-expiring timeouts is provided. More work is
> > needed to allow board specific overrides.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/clock.c | 52 ------------------------------------
> >  lib/Makefile   |  1 +
> >  lib/clock.c    | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 73 insertions(+), 52 deletions(-)
> >  create mode 100644 lib/clock.c
> >
> > +#if defined(__PBL__)
> > +/*
> > + * Poller infrastructure is not available in PBL, so we just define
> > + * is_timeout to be a synonym for is_timeout_non_interruptible
> > + */
> > +int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
> > +     __alias(is_timeout_non_interruptible);
> > +#else
> > +#include <poller.h>
> > +
> > +int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
> > +{
> > +
> > +     if (time_offset_ns >= 100 * USECOND)
> > +             poller_call();
> > +
> > +     return is_timeout_non_interruptible(start_ns, time_offset_ns);
> > +}
> > +#endif
> > +EXPORT_SYMBOL(is_timeout);
> > +
> > +void ndelay(unsigned long nsecs)
> > +{
> > +     uint64_t start = get_time_ns();
> > +
> > +     while(!is_timeout_non_interruptible(start, nsecs));
> > +}
> > +EXPORT_SYMBOL(ndelay);
> > +
> > +void udelay(unsigned long usecs)
> > +{
> > +     uint64_t start = get_time_ns();
> > +
> > +     while(!is_timeout(start, usecs * USECOND));
> > +}
> > +EXPORT_SYMBOL(udelay);
> > +
> > +void mdelay(unsigned long msecs)
> > +{
> > +     uint64_t start = get_time_ns();
> > +
> > +     while(!is_timeout(start, msecs * MSECOND));
> > +}
> > +EXPORT_SYMBOL(mdelay);
> > +
> > +void mdelay_non_interruptible(unsigned long msecs)
> > +{
> > +     uint64_t start = get_time_ns();
> > +
> > +     while (!is_timeout_non_interruptible(start, msecs * MSECOND))
> > +             ;
> > +}
> > +EXPORT_SYMBOL(mdelay_non_interruptible);
> > +
> > +__weak uint64_t get_time_ns(void)
> > +{
> > +     return 0;
> > +}
>
> So in PBL we now have [num]delay functions which will lockup the system
> forever when called. This is not good.
>
> Given that you only need is_timeout() to implement the iopoll.h functions
> and this patch is only a complicated way to shortcircuit the timeout, I
> think it would be better to just put a #ifndef __PBL__ around the call
> to is_timeout() in readx_poll_timeout(). This would at least make it
> clearer to the reader that there actually is no timeout in the PBL
> case.
>

OK, sure, will do in v6.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
