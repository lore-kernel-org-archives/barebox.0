Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwvgC-0003Wy-8o
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 22:19:25 +0000
Date: Wed, 29 Jan 2020 23:19:20 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200129221920.g2ercgyrxmu62gc3@pengutronix.de>
References: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
 <20200127155013.4388-2-m.grzeschik@pengutronix.de>
 <20200128084550.uxe7hn2qlvcik5tz@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200128084550.uxe7hn2qlvcik5tz@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1864572321610658196=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] regulator: pfuze: add support to other architectures
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============1864572321610658196==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ws4tdnhcn4mt5zul"
Content-Disposition: inline


--ws4tdnhcn4mt5zul
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

On Tue, Jan 28, 2020 at 09:45:50AM +0100, Sascha Hauer wrote:
> Hi Michael,
>=20
> On Mon, Jan 27, 2020 at 04:50:11PM +0100, Michael Grzeschik wrote:
> > Currently the pfuze driver is build dependent to ARCH_IMX6. To make it
> > possible to work with ARCH_IMX8 we move the imx6_poweroff call to an own
> > poweroff handler.
> >=20
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/imx6.c  | 8 ++++++++
> >  drivers/regulator/Kconfig | 2 +-
> >  drivers/regulator/pfuze.c | 2 --
> >  3 files changed, 9 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> > index 41e0066add..8f1638c1ea 100644
> > --- a/arch/arm/mach-imx/imx6.c
> > +++ b/arch/arm/mach-imx/imx6.c
> > @@ -401,3 +401,11 @@ void __noreturn imx6_pm_stby_poweroff(void)
> > =20
> >  	while(1);
> >  }
> > +
> > +static int imx6_init(void)
> > +{
> > +	poweroff_handler_register_fn(imx6_pm_stby_poweroff);
> > +
> > +	return 0;
> > +}
>=20
> imx6_pm_stby_poweroff() only works when a pfuze is present and is
> configured correctly. Calling this on every i.MX board is not nice.

Right

> What you can do is to call pfuze_register_init_callback() from here.
> You'll have to add a static inline wrapper for this in case pfuze
> support is not compiled in.

So you mean, call pfuze_register_init_callback to register a callback
function which then itself registers the poweroff_handler as above?

I think that could work, but then the init_callback is already used for
every imx6. The callback would also be overwritten by users in board
code trying to preconfigure the pfuze into a sane state, right?

> I wonder how this compiles as my version of this file already has a
> function named imx6_init(). Using this is preferred btw as it's already
> made sure that it will run only on i.MX6.

Duh, it wont. I tried it with imx6 disabled.

> > +coredevice_initcall(imx6_init);
>=20
> Note that this doesn't necessarily means that we are running an i.MX6.
> It could be whatever else is compiled in.

Yes, therefor the callback approach is to be prefered.

Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ws4tdnhcn4mt5zul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl4yBOUACgkQC+njFXoe
LGRAFA//bJKfr1s998ZXqz5U3mMgiQAgz3eOhwosHjq3S769gZJAPH3SUsDmvhH/
bevHN9PBWuwnWPytlVtWJHgcwHWIkfiOGQobDtd+AQm/VhZazac6uJc1ezbTmOIc
BwXecD6iR8SmVuZBZ+QjvAMTCxgDAi4p9nw8eFdyisLRv+LuSllbGyeca3JdEyqj
ibE9PcTrnzQOUsmdq5eG+5xdPP9aCN8UrGJ8WwRGSXYkmmJKvPKta0nLvubvP7RW
4TTGPmsl0gfL62/31t+KmM7p3OxF4FCfNG7qyAd73Mvx4OkzYESkiQRjWyIaftSU
PgzujtVR76Pen3bWM77fUvThTTlZeSB+pV5ST64nXNYUmexChxTQBDv5iJ1r0GKe
NihzFu3ZAwt6xg5W0wxUP+UPpZmxFkXW7YIKpny7B8h+ftgAIpB/B6K1tqoVncci
aRDUJHFKjdOsJQtb35eLOnTd06g3JO3RvZSOFry5cE28B8pvmNCYJ9VA0X74/T+z
3It9d+2VJarjp8RPfZZd3qtFQ72j991xwqAymuzm8eCJh4mg8y9mM1VqLMMPC9Se
D5iGvwbhrEttMH0w+syIKdl8rOlhF/v2UCTaJbrsRrwrud89gSMu5+gJMnBwnfm/
ooz8tvc4tt0Rn82QjLUqW+fhIaiHWbXU5s54Qj0mkv86upfDs9Y=
=48OX
-----END PGP SIGNATURE-----

--ws4tdnhcn4mt5zul--


--===============1864572321610658196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1864572321610658196==--
