Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Oss-0001Qh-8a
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 10:23:15 +0000
Date: Tue, 13 Mar 2012 11:23:09 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120313102309.GB2488@pengutronix.de>
References: <20120310221035.GC14564@pengutronix.de>
 <20120313035729.GG444@game.jcrosoft.org>
MIME-Version: 1.0
In-Reply-To: <20120313035729.GG444@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7283935562515491971=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Shall 'bmp' uncompress automagically?
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


--===============7283935562515491971==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mojUlQ0s9EVzWg2t"
Content-Disposition: inline


--mojUlQ0s9EVzWg2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > since we have 'file_detect_type' in barebox, we could use it to automag=
ically
> > uncompress BMP files. Pseudo-code:
> >=20
> > if (file_detect_type(bmp) !=3D BMP) {
> > 	/* No BMP? Try to depack stream */
> > 	ret =3D uncompress(bmp, unpacked_bmp);
> > 	if (ret < 0 || file_detect_type(unpacked_bmp) !=3D BMP)
> > 		return -ENOBMP;
> > }
> >=20
> > Is something like this wanted? Or shall this be done entirely via scrip=
ts?
> >=20
> > if [ $file is somehow detected as compressed ]
> > 	uncompress $file /bmp
> > 	bmp /bmp
> > 	rm /bmp
> > else
> > 	bmp $file
> > fi
> I prefer the second one

Care to explain why?

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--mojUlQ0s9EVzWg2t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk9fIA0ACgkQD27XaX1/VRvlKACgsIGV+juvzZUQA5uxtBbXfoz8
bFkAnR7iUZ9J62EDUfXY45SgD4QE7diL
=j3U4
-----END PGP SIGNATURE-----

--mojUlQ0s9EVzWg2t--


--===============7283935562515491971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7283935562515491971==--
