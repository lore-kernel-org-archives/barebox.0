Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2pPM-0002Zv-Ad
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 05:22:41 +0000
Date: Tue, 4 Aug 2020 07:22:37 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200804052237.aihruhckhmglinjd@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-9-o.rempel@pengutronix.de>
 <20200803202222.GJ31536@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200803202222.GJ31536@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6869336370095016363=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 08/11] gpiolib: add gpio_array_to_id helper to get ID
 out of GPIO array
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============6869336370095016363==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2ocsgngxvl3r7d5d"
Content-Disposition: inline


--2ocsgngxvl3r7d5d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

On Mon, Aug 03, 2020 at 10:22:22PM +0200, Sascha Hauer wrote:
> Hi Oleksij,
>=20
> On Thu, Jul 23, 2020 at 12:33:23PM +0200, Oleksij Rempel wrote:
> > Some boards provide a board version and/or ID coded by pull-up/down
> > resistors connected to the gpio pins (or pins which can be multiplexed
> > at some point as gpio). In this case every one implements own gpio id
> > reader function.
> >=20
> > To avoid it, provide the common helper function to extract a value out
> > of provided gpio array.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/gpio/gpiolib.c | 28 ++++++++++++++++++++++++++++
> >  include/gpio.h         |  5 +++++
> >  2 files changed, 33 insertions(+)
> >=20
> > diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> > index 27674af54c..2e9150d2ea 100644
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -381,6 +381,34 @@ void gpio_free_array(const struct gpio *array, siz=
e_t num)
> >  }
> >  EXPORT_SYMBOL_GPL(gpio_free_array);
> > =20
> > +int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
> > +{
> > +	u32 id =3D 0;
> > +	int ret, i;
> > +
> > +	if (num > 32)
> > +		return -EOVERFLOW;
> > +
> > +	ret =3D gpio_request_array(array, num);
> > +	if (ret)
> > +		return ret;
>=20
> This function expects an unrequested array and returns with the array
> requested. This is at least inconsistent.

fixed

> > +
> > +	/* Wait untill logic level will be stable */
>=20
> s/untill/until/

fixed

> > +	udelay(5);
>=20
> This delay looks rather arbitrary. Is it really necessary?

The vendor reported that otherwise will not always read proper value.

> > +	for (i =3D 0; i < num; i++) {
> > +		ret =3D gpio_is_active(array[i].gpio);
> > +		if (ret < 0)
> > +			return ret;
> > +
> > +		id |=3D ret << i;
>=20
> 'ret' is signed. Does this work when i =3D=3D 31 ?

yes, it works

Regards,
Oleksij

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--2ocsgngxvl3r7d5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8o8JgACgkQ4omh9DUa
UbN7LRAAx2zsk2A+In7Il53uGuOmJH4M7p24FlRwIiLJ1/zNYwFiNc0318Vmply2
IMvXfdOZHytfl9uXFoKs674KnIoUA6sOnz8N4DWvRj5pEcol69fafnkA1k4wmr6I
QbWr27YM3AlvoU3bgHsr236mAOsnrUY3BbMEjPTyWGP+xJ9ch7AmDY3YRN50VAu9
AOL4JyrLjrLOyk7OtvOIkPxALVvDiId8zc05Tz2WTzmspMfjqdwxyUAcNaV61+hs
AstcMEx1gME/m+WvPjG6DZbKRJMit4QyAw/0VoA5p3Ypq5/kg1m+zWFFYhVQnWUW
a6VuPvzT1mK0Ya5a3hPY2u+RFS/4rtzN8KRvHDFVBwmmM0JMsD3QcjRrKYFlHJ3s
8KdOrXjgO+s9YE7s40KSFnLyhRMEGV13QnY45yojQ/raNssF1u3ysDhujklOweot
uNsAtpB/TToGeoZU2gUGEH+OJxqyoGqWTvRuAz4a0MnBCS+wFSLGxTsqd/cwTpFk
7+sERrDNMVLpmyFp18540K6tX019hNgLh2jTWTFTBs4wBfFA+/ByHIvAHysBC/JA
2cFS9IVOP3Yc8H97HAy4aAF655Y2wmWT9okdDPcG9JcXj1is/YvMdJU7j75vLvuk
qe4zSJQL797NNHbS1yaELeoniEf9Ne2ryUaJ+qcf1DH7Kvvljg4=
=ra/s
-----END PGP SIGNATURE-----

--2ocsgngxvl3r7d5d--


--===============6869336370095016363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6869336370095016363==--
