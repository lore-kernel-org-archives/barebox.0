Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NJ9-0003bA-Iw
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 22:17:53 +0000
Date: Mon, 26 Aug 2019 22:12:42 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190826201242.dmpkwahnmcbiumbf@pengutronix.de>
References: <20190825145517.5546-1-u.kleine-koenig@pengutronix.de>
 <20190825145517.5546-2-u.kleine-koenig@pengutronix.de>
 <CAHQ1cqF-UUKs3ysuMQvBxbENpGeRxn=8u-bZcmU6=PmFv3n=-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF-UUKs3ysuMQvBxbENpGeRxn=8u-bZcmU6=PmFv3n=-w@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] reset_source: drop reset_source_set_instance()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 26, 2019 at 12:24:12PM -0700, Andrey Smirnov wrote:
> On Sun, Aug 25, 2019 at 7:55 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > The semantic of reset_source_set_instance() required a separate call to
> > reset_source_set() (or reset_source_set_priority()) and checked right
> > usage only using the type. Make the set of functions a bit easier to use
> > by dropping reset_source_set_instance() and instead introduce a function
> > that can set all relevant parameters (source, priority and instance) in
> > one go.
> >
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/imx.c       |  4 +---
> >  common/reset_source.c         | 15 ++++-----------
> >  drivers/watchdog/stm32_iwdg.c |  3 +--
> >  include/reset_source.h        | 20 +++++++++++---------
> >  4 files changed, 17 insertions(+), 25 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> > index 63914d306e6f..43b540b39771 100644
> > --- a/arch/arm/mach-imx/imx.c
> > +++ b/arch/arm/mach-imx/imx.c
> > @@ -199,9 +199,7 @@ void imx_set_reset_reason(void __iomem *srsr,
> >                 }
> >         }
> >
> > -       reset_source_set_priority(type,
> > -                                 RESET_SOURCE_DEFAULT_PRIORITY);
> > -       reset_source_set_instance(type, instance);
> > +       reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, in=
stance);
> =

> Any change we can call this function
> reset_source_set_priority_instance() or reset_source_set_all() instead
> of "prinst"?

Did you see my v2 series? It's still prinst there, but maybe some
instances can be moved to the device variant there.

Having said that, I don't care much. I considered to make
reset_source_set() the variant with all parameters and rename the
current reset_source_set() to reset_source_set_type(). Would that make
sense to you?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
