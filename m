Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S6UUp-0006n4-C2
 for barebox@lists.infradead.org; Sat, 10 Mar 2012 22:10:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <wsa@pengutronix.de>) id 1S6UUm-0000Hv-Ud
 for barebox@lists.infradead.org; Sat, 10 Mar 2012 23:10:36 +0100
Received: from wsa by octopus.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <wsa@pengutronix.de>) id 1S6UUl-0005be-U6
 for barebox@lists.infradead.org; Sat, 10 Mar 2012 23:10:35 +0100
Date: Sat, 10 Mar 2012 23:10:35 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120310221035.GC14564@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7907337437814177485=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Shall 'bmp' uncompress automagically?
To: barebox@lists.infradead.org


--===============7907337437814177485==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bKyqfOwhbdpXa4YI"
Content-Disposition: inline


--bKyqfOwhbdpXa4YI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

since we have 'file_detect_type' in barebox, we could use it to automagical=
ly
uncompress BMP files. Pseudo-code:

if (file_detect_type(bmp) !=3D BMP) {
	/* No BMP? Try to depack stream */
	ret =3D uncompress(bmp, unpacked_bmp);
	if (ret < 0 || file_detect_type(unpacked_bmp) !=3D BMP)
		return -ENOBMP;
}

Is something like this wanted? Or shall this be done entirely via scripts?

if [ $file is somehow detected as compressed ]
	uncompress $file /bmp
	bmp /bmp
	rm /bmp
else
	bmp $file
fi

?

Regards,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--bKyqfOwhbdpXa4YI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAk9b0VsACgkQD27XaX1/VRvoJgCgnTcgE/HpeE8YZ6wVM2jwzcaB
6SIAoJZ6j5H+ChLsPRWtCoz7YL8vBay3
=4qkD
-----END PGP SIGNATURE-----

--bKyqfOwhbdpXa4YI--


--===============7907337437814177485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7907337437814177485==--
