Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpks-0002hg-OZ
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 06:09:52 +0000
Date: Fri, 31 Mar 2017 08:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170331060927.zcm5sx6w5bcv7cio@pengutronix.de>
References: <20170330184636.22846-1-u.kleine-koenig@pengutronix.de>
 <20170330184636.22846-3-u.kleine-koenig@pengutronix.de>
 <20170330185403.v5vsubjnkix52ysd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170330185403.v5vsubjnkix52ysd@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] watchdog: new driver for Armada XP
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 30, 2017 at 08:54:03PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Thu, Mar 30, 2017 at 08:46:36PM +0200, Uwe Kleine-K=F6nig wrote:
> > diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
> > new file mode 100644
> > index 000000000000..fcdfcd56f9a9
> > --- /dev/null
> > +++ b/drivers/watchdog/orion_wdt.c
> > @@ -0,0 +1,123 @@
> > +/*
> > + * Watchdog driver for Marvell Armada XP.
> > + *
> > + * Copyright (C) 2017 Pengutronix, Fridolin Tux <kernel@pengutronix.de>
> =

> huh, copied from the template without adoption. Can you please
> s/Fridolin Tux/Uwe Kleine-K=F6nig/ here? Or should I resend?

Fixed that while applying. Thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
