Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zjogg-0005kl-U1
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 13:23:20 +0000
Date: Wed, 7 Oct 2015 15:22:55 +0200
From: Markus Pargmann <mpa@pengutronix.de>
Message-ID: <20151007132255.GM19355@pengutronix.de>
References: <1443789301-25097-1-git-send-email-mpa@pengutronix.de>
 <20151007063451.GC7825@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20151007063451.GC7825@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0826334098299894589=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] param: dev_add_param_mac() depends on CONFIG_NET
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============0826334098299894589==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PEfPc/DjvCj+JzNg"
Content-Disposition: inline


--PEfPc/DjvCj+JzNg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 07, 2015 at 08:34:51AM +0200, Sascha Hauer wrote:
> Hi Markus,
>=20
> On Fri, Oct 02, 2015 at 02:35:01PM +0200, Markus Pargmann wrote:
> > This patch adds the proper inline function for CONFIG_PARAMETER && !
> > CONFIG_NET.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  include/param.h | 21 +++++++++++++--------
> >  1 file changed, 13 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/include/param.h b/include/param.h
> > index 3a851fc552a4..f8a2534ef3a8 100644
> > --- a/include/param.h
> > +++ b/include/param.h
> > @@ -63,10 +63,12 @@ struct param_d *dev_add_param_ip(struct device_d *d=
ev, const char *name,
> >  		int (*get)(struct param_d *p, void *priv),
> >  		IPaddr_t *ip, void *priv);
> > =20
> > +#ifdef CONFIG_NET
> >  struct param_d *dev_add_param_mac(struct device_d *dev, const char *na=
me,
> >  		int (*set)(struct param_d *p, void *priv),
> >  		int (*get)(struct param_d *p, void *priv),
> >  		u8 *mac, void *priv);
> > +#endif
> > =20
> >  int dev_add_param_fixed(struct device_d *dev, const char *name, const =
char *value);
> > =20
> > @@ -154,14 +156,6 @@ static inline struct param_d *dev_add_param_ip(str=
uct device_d *dev, const char
> >  	return ERR_PTR(-ENOSYS);
> >  }
> > =20
> > -static inline struct param_d *dev_add_param_mac(struct device_d *dev, =
const char *name,
> > -		int (*set)(struct param_d *p, void *priv),
> > -		int (*get)(struct param_d *p, void *priv),
> > -		u8 *mac, void *priv)
> > -{
> > -	return ERR_PTR(-ENOSYS);
> > -}
> > -
> >  static inline int dev_add_param_fixed(struct device_d *dev, const char=
 *name, const char *value)
> >  {
> >  	return 0;
> > @@ -178,4 +172,15 @@ static inline int dev_param_set_generic(struct dev=
ice_d *dev, struct param_d *p,
> >  }
> >  #endif
> > =20
> > +#if ! defined(CONFIG_PARAMETER) || ! defined(CONFIG_NET)
> > +static inline struct param_d *dev_add_param_mac(struct device_d *dev, =
const char *name,
> > +		int (*set)(struct param_d *p, void *priv),
> > +		int (*get)(struct param_d *p, void *priv),
> > +		u8 *mac, void *priv)
> > +{
> > +	return ERR_PTR(-ENOSYS);
> > +}
>=20
> Reverted this patch because with it we get a redifinition of
> dev_add_param_mac when CONFIG_PARAMETER is enabled but CONFIG_NET is
> disabled:

This seems to be already solved differently mainline, sorry. That's why
the build failed with that setup.

Best Regards,

Markus

>=20
> lib/parameter.c:729:17: error: redefinition of 'dev_add_param_mac'
>  struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
>                  ^
> In file included from include/console.h:23:0,
>                  from include/stdio.h:5,
>                  from include/common.h:23,
>                  from lib/parameter.c:24:
> include/param.h:176:31: note: previous definition of 'dev_add_param_mac' =
was here
>  static inline struct param_d *dev_add_param_mac(struct device_d *dev, co=
nst char *name,
>                                ^
> scripts/Makefile.build:249: recipe for target 'lib/parameter.o' failed
>=20
> Looking at it the behaviour was fine without this patch. What was the
> motivation creating it?
>=20
> Sascha
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--PEfPc/DjvCj+JzNg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWFRyvAAoJEEpcgKtcEGQQQxEQAIzAxHyL1e6raGo4MGI0WIUb
9uVHctvtw7CYYw0qPL3MwdYU7P8ogWatowQfAwkc82RQvqwxOtzVm2gv3aoZQQn3
WO++gCWJaE8xiMCSmv5AHjZJthxQeDz+jmMyDMaRGY+G+nE41+6Kv/K34czsVNFP
QnDGek8TULgsZKusOQEbnUJhUgitG2AkYvrGD2fLfZoM0kEzH3MOjUEzD/dG7THk
obuNch/QWmJezxCxUbTCPN3KN0gl5V4OfgGJiuU+rxsFY/JyUSpGMdlsd/iosWJ4
DLCNvq8deeYWKNjHlkbvmn+0ztN1cK9t/QHfKYcARMY3EKI+JmyNoUPX5wHWugxb
5bhQtviCVm7FNJJd3GfHe77C4sRCJBH/DyWa5EdYztyixgEviwf50gtDwkEFDWhf
JDN7WUt/l0h2tg+8VjWgvqnOWjTj0p9OjTMv66F0zyjhzEHeYKms0NFErCQ/F/zt
z3JalGJp7TlbAVAwwbJxIBunTLzpgkn9TAjEHttrvJcGhRYQiaRAp0P93t1hsUJc
TdVYmNgqKD5c84xsvxixVqumBrHOFBc876TT7dDOLqgycR0Z1t0k+DTptgS0ulVa
myk2mCAgyQfg8yimHKfIN7EvZCn3PYoK1RMnFlOedqnUMtSpqs15EzPlcepZP+xu
8GsAkmQOhAPfPHJJIMxD
=K6qU
-----END PGP SIGNATURE-----

--PEfPc/DjvCj+JzNg--


--===============0826334098299894589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0826334098299894589==--
