Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEG52-0001iY-5r
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 08:56:26 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 19 Sep 2012 10:54:55 +0200
References: <n> <201209190942.38473.jbe@pengutronix.de>
 <20120919081432.GV25990@game.jcrosoft.org>
In-Reply-To: <20120919081432.GV25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201209191054.55390.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:42 Wed 19 Sep     , Juergen Beisert wrote:
> > Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > [...]
> > >
> > > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > > index a54ad03..f8eb1b4 100644
> > > > --- a/arch/arm/Kconfig
> > > > +++ b/arch/arm/Kconfig
> > > > @@ -92,6 +92,11 @@ config ARCH_TEGRA
> > > >  	select CPU_ARM926T
> > > >  	select HAS_DEBUG_LL
> > > >
> > > > +config ARCH_BCM2835
> > > > +	bool "Broadcom BCM2835 boards"
> > > > +	select GENERIC_GPIO
> > > > +	select CPU_ARM1176
> > >
> > > please keep in alphabetic order
> >
> > What a useless rule...
>
> no when you search for something you expect b to be after a not after z

In Kconfig and Makefiles? Sorry. How often do your search for something in =

these kind of files?

And how often do you search for something in the C-sources?

So, what is important and what is useless?

"Some people unfortunately like=A0jumping up and down about spaces but not =
code.
[...]  I'd rather read good poetry written in very bad hand writing than bad
poetry written in beautiful handwriting, and I think the same is true of co=
de.
=A0 =A0 =A0 =A0 =A0 =A0-- Alan Cox <20090701130018.115ce0ea@lxorguk.ukuu.or=
g.uk>"

Still just my 2ct.

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128=
 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555=
 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
