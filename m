Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daP40-0006Fm-7X
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:21:35 +0000
Date: Wed, 26 Jul 2017 18:21:07 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20170726162107.23hk6u7hb7ulbwu7@pengutronix.de>
References: <20170724091559.7777-1-u.kleine-koenig@pengutronix.de>
 <20170724093707.nu7wlklphp6hidzb@pengutronix.de>
 <20170724160425.GD18294@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724160425.GD18294@ravnborg.org>
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
Subject: Re: [PATCH 1/2] ARM: i.MX7: provide DDR register definitions
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Jul 24, 2017 at 06:04:25PM +0200, Sam Ravnborg wrote:
> On Mon, Jul 24, 2017 at 11:37:07AM +0200, Robert Schwebel wrote:
> > On Mon, Jul 24, 2017 at 11:15:58AM +0200, Uwe Kleine-K=F6nig wrote:
> > > This was created using cut'n'paste from the i.MX7D reference manual
> > > (rev 0.1, 08/2016).
> > > =

> > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > >  arch/arm/mach-imx/include/mach/imx7-ddr-regs.h | 174 +++++++++++++++=
++++++++++
> > >  1 file changed, 174 insertions(+)
> > >  create mode 100644 arch/arm/mach-imx/include/mach/imx7-ddr-regs.h
> > > =

> > > diff --git a/arch/arm/mach-imx/include/mach/imx7-ddr-regs.h b/arch/ar=
m/mach-imx/include/mach/imx7-ddr-regs.h
> > > new file mode 100644
> > > index 000000000000..e66b2da11ede
> > > --- /dev/null
> > > +++ b/arch/arm/mach-imx/include/mach/imx7-ddr-regs.h
> > > @@ -0,0 +1,174 @@
> > > +/*
> > > + * Copyright (C) 2017 Pengutronix, Fridolin Tux <kernel@pengutronix.=
de>
> > =

> > Sure?
> =

> If the content is copy'n'pasted then (to my limited understanding) this i=
s not
> enough to grant any copyright. And copyright should be from the source?
> Not that I care much, but just a random thought.

Only the header text was copy-pasted, which is why it contains Fridolin
Tux (who, in fact, is my stuffed penguin).

rsc
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
