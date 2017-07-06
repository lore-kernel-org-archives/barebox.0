Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT3lF-0006Es-L6
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 10:11:53 +0000
Date: Thu, 6 Jul 2017 12:11:26 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170706101126.lb23q2t3v4c5mqh5@pengutronix.de>
References: <20170705192328.14900-1-u.kleine-koenig@pengutronix.de>
 <1499330981.22075.48.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1499330981.22075.48.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: use register defines in imxcfg files instead
 of plain numbers
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 06, 2017 at 10:49:41AM +0200, Lucas Stach wrote:
> Am Mittwoch, den 05.07.2017, 21:23 +0200 schrieb Uwe Kleine-K=F6nig:
> > This makes the imxcfg files more readable and also makes it possible to
> > share more assignments between machines that just differ by the used
> > SoC. (Though I have to admit that in the cases converted here it just
> > more easily allows to see that the RAM config differs more than probably
> > necessary.)
> > =

> > This change is intended to have no effect on the built artifacts.
> =

> Does the "intended" in the above sentence mean you didn't validate that
> the the generated flash headers are equal before and after the change in
> any way? As much as I like the patch otherwise, this sounds scary.

I verified it for some of them. I created a .config that enables all
affected machine, but not for all of them a corresponding .dcd was
generated. The one that existed then however didn't change with my
patch.

	$ grep HIPER .config
	CONFIG_MACH_ELTEC_HIPERCAM=3Dy

	$ armmake
	...

	$ find -name \*.dcd | sort
	./arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.dcd
	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.dcd
	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.dcd
	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.dcd
	./arch/arm/boards/embedsky-e9/flash-header-e9.dcd
	./arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.dcd
	./arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.dcd
	./arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.dcd
	./arch/arm/boards/gk802/flash-header.dcd
	./arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-2=
56.dcd
	./arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-5=
12.dcd
	./arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.d=
cd
	./arch/arm/boards/tqma6x/flash-header-tqma6dl.dcd
	./arch/arm/boards/tqma6x/flash-header-tqma6q.dcd
	./arch/arm/boards/udoo/flash-header-mx6-udoo.dcd
	./arch/arm/boards/variscite-mx6/flash-header-variscite.dcd

missing (and so unchecked) are:

	flash-header-eltec-hipercam.imxcfg
	karo-tx6x/*
	phytec-som-imx6/*
	zii-imx6q-rdu2/*

even though:

	$ grep -E 'HIPER|TX6|_SOM|RDU2' .config
	CONFIG_MACH_PHYTEC_SOM_IMX6=3Dy
	CONFIG_MACH_ELTEC_HIPERCAM=3Dy
	CONFIG_MACH_TX6X=3Dy
	CONFIG_MACH_ZII_RDU2=3Dy

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
