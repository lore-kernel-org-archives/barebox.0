Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQR5a-0000XP-VU
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 05:34:33 +0000
Date: Wed, 6 Jun 2018 07:34:16 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20180606053416.gzuswssjhnzo3wtd@pengutronix.de>
References: <20180605061248.24343-1-o.rempel@pengutronix.de>
 <20180605130738.GA31757@ravnborg.org>
MIME-Version: 1.0
In-Reply-To: <20180605130738.GA31757@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5050334646401787879=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] defaultenv-2: make abort key to stop autoboot
 configurable
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org


--===============5050334646401787879==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="isrnzmzncbvg47bp"
Content-Disposition: inline


--isrnzmzncbvg47bp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sam,

On Tue, Jun 05, 2018 at 03:07:38PM +0200, Sam Ravnborg wrote:
> Hi Oleksij
>=20
> On Tue, Jun 05, 2018 at 08:12:48AM +0200, Oleksij Rempel wrote:
> > currently supported only two options: any key and ctrl-c
> > "any kay" is default option.
>=20
> Is Kay happy with that? (note: spelling error)

:) thx.

> > To configure it, use:
> > nv autoboot_abort_key=3Dany
> > or
> > nv autoboot_abort_key=3Dctrl-c
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  Documentation/user/defaultenv-2.rst   |  3 +++
> >  defaultenv/defaultenv-2-base/bin/init | 17 ++++++++++++++---
> >  2 files changed, 17 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/d=
efaultenv-2.rst
> > index db74176b0..7502d3de1 100644
> > --- a/Documentation/user/defaultenv-2.rst
> > +++ b/Documentation/user/defaultenv-2.rst
> > @@ -93,6 +93,9 @@ the :ref:`command_edit` command. Typical content:
> >    # timeout in seconds before the default boot entry is started
> >    #global.autoboot_timeout=3D3
> > =20
> > +  # key to abort autoboot. Supported options are: "any" and "ctrl-c"
> > +  #global.autoboot_abort_key=3Dany
> > +
> >    # list of boot entries. These are executed in order until one
> >    # succeeds. An entry can be:
> >    # - a filename in /env/boot/
>=20
> When touching this file - could you then also add a short
> explanation that:
>=20
> 	arch/$ARCH/boards/<board>/env
>=20
> Requires that CONFIG_DEFAULT_ENVIRONMENT_PATH are set to the above path.
>=20
> Otherwise I will cook up a small patch.
> (I was hit by this yesterday and missed it)

This will need a separate patch. If you can do it, it will be great :)

> > diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/default=
env-2-base/bin/init
> > index 6f3a34dba..d75f8e08a 100644
> > --- a/defaultenv/defaultenv-2-base/bin/init
> > +++ b/defaultenv/defaultenv-2-base/bin/init
> > @@ -5,6 +5,7 @@ export PATH=3D/env/bin
> >  global hostname
> >  global user
> >  global autoboot_timeout
> > +global autoboot_abort_key
> >  global boot.default
> >  global linux.bootargs.base
> >  global linux.bootargs.console
> > @@ -18,6 +19,8 @@ global editcmd
> >  magicvar -a global.user "username (used in network filenames)"
> >  [ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3D3
> >  magicvar -a global.autoboot_timeout "timeout in seconds before automat=
ic booting"
> > +[ -z "${global.autoboot_abort_key}" ] && global.autoboot_abort_key=3Da=
ny
> > +magicvar -a global.autoboot_abort_key "key to abort automatic booting"
> Could you include in the description the available options?

ok

> >  [ -z "${global.boot.default}" ] && global.boot.default=3Dnet
> >  [ -z "${global.editcmd}" ] && global.editcmd=3Dsedit
> > =20
> > @@ -38,14 +41,22 @@ for i in /env/init/*; do
> >  	. $i
> >  done
> > =20
> > +if [ "${global.autoboot_abort_key}" =3D "ctrl-c" ]; then
> > +	abort_string=3D"ctrl-c"
> > +	abort_args=3D"-c"
> > +else
> > +	abort_string=3D"any key"
> > +	abort_args=3D"-a"
> > +fi
> > +
> >  if [ -e /env/menu ]; then
> > -	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
> > +	echo -e -n "\nHit m for menu or $abort_string to stop autoboot: "
>=20
> This will read:
>=20
> 	"Hit m for menu or any to stop autoboot: "
>=20
> Add a "key" to make it more explicit:
>=20
> 	"Hit m for menu or any key to stop autoboot: "

see: abort_string=3D"any key" ^^^

> >  else
> > -	echo -e -n "\nHit any key to stop autoboot: "
> > +	echo -e -n "\nHit $abort_string to stop autoboot: "
> >  fi
> > =20
> >  if [ "$autoboot" =3D 0 ]; then
> > -	timeout -a $global.autoboot_timeout -v key
> > +	timeout $abort_args $global.autoboot_timeout -v key
> >  	autoboot=3D"$?"
> >  fi
>=20
> 	Sam


Thank you for review.

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--isrnzmzncbvg47bp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlsXclQACgkQdQOiSHVI
77RdvAgAqWeIQSE9mgBHRVf379JM0BFe3oj2tzB5azqc1FreeWUJ5G1tGKDNDK4U
1KQOV+wZ85i4eP9GKtRuXUjTonynU9fXhIHybq36Ml77WeqhTf73aYuSHkYlZ0hu
QDtymnCqwpnbF7EOwIEAsayMD919uzLdV1GlLKEWy9smJmx7oP5bEGI1TmKl9UvX
uHSnKD6RCU9Ln2aa9sP4ZgySytS1Hs0dms/9M5iPfCsGSZsAvhbNkPbJx08Mt++k
htatRd2G7MwWqCqt7ok7i7bZnq0Gq++VlbJRlE2SkH/k3vMDcLMJ4LOKZqs6b0Qv
50wRZKEtPjVgyyALieuoYCw38Dajxg==
=T/os
-----END PGP SIGNATURE-----

--isrnzmzncbvg47bp--


--===============5050334646401787879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5050334646401787879==--
