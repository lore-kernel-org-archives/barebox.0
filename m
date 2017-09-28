Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxVpX-0000cZ-VR
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 10:14:09 +0000
Date: Thu, 28 Sep 2017 12:13:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170928101345.ohpxhicbbmkvkmce@pengutronix.de>
References: <20170927121657.16274-1-s.hauer@pengutronix.de>
 <20170927121657.16274-2-s.hauer@pengutronix.de>
 <1506590175.2283.9.camel@pengutronix.de>
 <20170928092657.jc7f4eqxqbuu5ul5@pengutronix.de>
 <1506591212.2283.11.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1506591212.2283.11.camel@pengutronix.de>
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
Subject: Re: [PATCH 2/2] i.MX6ull evk support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 28, 2017 at 11:33:32AM +0200, Lucas Stach wrote:
> Am Donnerstag, den 28.09.2017, 11:26 +0200 schrieb Sascha Hauer:
> > On Thu, Sep 28, 2017 at 11:16:15AM +0200, Lucas Stach wrote:
> > > Am Mittwoch, den 27.09.2017, 14:16 +0200 schrieb Sascha Hauer:
> > > > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-
> > > > imx/Kconfig
> > > > index 92440e3a75..dab19a33ec 100644
> > > > --- a/arch/arm/mach-imx/Kconfig
> > > > +++ b/arch/arm/mach-imx/Kconfig
> > > > @@ -162,6 +162,10 @@ config ARCH_IMX6UL
> > > > =A0	bool
> > > > =A0	select ARCH_IMX6
> > > > =A0
> > > > +config ARCH_IMX6ULL
> > > > +	bool
> > > > +	select ARCH_IMX6
> > > > +
> > > =

> > > Do we really need this? Seems the MX6ULL is just a stripped down
> > > version of the MX6UL.
> > =

> > We probably do not need this, but I suggest to keep it anyway. I
> > think
> > it makes it a bit clearer that there are indeed i.MX6ul *and*
> > i.MX6ull
> > and both are supported.
> =

> Yeah, your decision, but I'll notice that we don't have separate
> Kconfig symbols for MX6Q/DL, which probably expose more software
> visible differences than MX6UL/ULL.

While refactoring the patches I realized that having a i.MX6ull function
which just calls the corresponding i.MX6ul function doesn't look too
nice when additionally we have a board which either has one of both
SoCs calling the i.MX6ul version and needs a comment that this is the
same as the i.MX6ull variant.

I dropped the IMX6ULL symbol.

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
