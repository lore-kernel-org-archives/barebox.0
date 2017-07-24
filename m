Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZfqi-0004lz-Fh
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 16:04:50 +0000
Date: Mon, 24 Jul 2017 18:04:25 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170724160425.GD18294@ravnborg.org>
References: <20170724091559.7777-1-u.kleine-koenig@pengutronix.de>
 <20170724093707.nu7wlklphp6hidzb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724093707.nu7wlklphp6hidzb@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX7: provide DDR register definitions
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Jul 24, 2017 at 11:37:07AM +0200, Robert Schwebel wrote:
> On Mon, Jul 24, 2017 at 11:15:58AM +0200, Uwe Kleine-K=F6nig wrote:
> > This was created using cut'n'paste from the i.MX7D reference manual
> > (rev 0.1, 08/2016).
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/include/mach/imx7-ddr-regs.h | 174 +++++++++++++++++=
++++++++
> >  1 file changed, 174 insertions(+)
> >  create mode 100644 arch/arm/mach-imx/include/mach/imx7-ddr-regs.h
> > =

> > diff --git a/arch/arm/mach-imx/include/mach/imx7-ddr-regs.h b/arch/arm/=
mach-imx/include/mach/imx7-ddr-regs.h
> > new file mode 100644
> > index 000000000000..e66b2da11ede
> > --- /dev/null
> > +++ b/arch/arm/mach-imx/include/mach/imx7-ddr-regs.h
> > @@ -0,0 +1,174 @@
> > +/*
> > + * Copyright (C) 2017 Pengutronix, Fridolin Tux <kernel@pengutronix.de>
> =

> Sure?

If the content is copy'n'pasted then (to my limited understanding) this is =
not
enough to grant any copyright. And copyright should be from the source?
Not that I care much, but just a random thought.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
