Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThmgK-0002Le-3H
 for barebox@lists.infradead.org; Sun, 09 Dec 2012 19:36:57 +0000
Date: Sun, 9 Dec 2012 20:36:50 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121209193650.GA17813@pengutronix.de>
References: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
 <1351246602-8859-5-git-send-email-w.sang@pengutronix.de>
 <20121027123358.GF1641@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121027123358.GF1641@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7749518139040381506=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 04/10] devfs & mtd: add MEMERASE ioctl support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============7749518139040381506==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > @@ -137,6 +168,9 @@ int mtd_ioctl(struct cdev *cdev, int request, void =
*buf)
> >  		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08llx\n", *offset);
> >  		ret =3D mtd->block_markbad(mtd, *offset);
> >  		break;
> > +	case MEMERASE:
> > +		ret =3D mtd_erase(cdev, ei->length, ei->start + cdev->offset);
> > +		break;
>=20
> Please check this compiles with CONFIG_MTD_WRITE disabled.

It does, since I move mtd_erase to the front. The upper block and
mtd_erase are both protected by MTD_WRITE.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlDE6FIACgkQD27XaX1/VRshmgCdErPx1jOzd0BYGjpzQe2bkH3o
Su0An2XlIUeUr4z1lQnqqGWbNP/O64Dm
=TeNT
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--


--===============7749518139040381506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7749518139040381506==--
