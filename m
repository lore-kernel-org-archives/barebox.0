Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN64v-0000XG-KA
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 14:51:18 +0000
Message-ID: <4B30DC1F.6060305@pengutronix.de>
Date: Tue, 22 Dec 2009 15:47:59 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <alpine.LFD.2.00.0912220923160.3291@localhost>
In-Reply-To: <alpine.LFD.2.00.0912220923160.3291@localhost>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1422701077=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] drivers: use "menuconfig" consistently for all selections.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1422701077==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig56553E8DE076FC3265D25F73"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig56553E8DE076FC3265D25F73
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Robert P. J. Day wrote:
> Use the "menuconfig" directive to make all top-level driver choices
> 1-touch selectable, and standardize the menuconfig names.

If you change the symbol names you have to change the Makefiles, too.

Have a look at drivers/Makefile and drivers/*/Makefile

cheers, Marc


--=20
Pengutronix e.K.                         | Marc Kleine-Budde           |
Linux Solutions for Science and Industry | Phone: +49-231-2826-924     |
Vertretung West/Dortmund                 | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686         | http://www.pengutronix.de   |


--------------enig56553E8DE076FC3265D25F73
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAksw3B8ACgkQjTAFq1RaXHPvdQCeISLNdFPg/8W4UTnkI2q2bNo1
kKQAn16gF96bCjtvtvGFCQL7h7D/uwTt
=nNWg
-----END PGP SIGNATURE-----

--------------enig56553E8DE076FC3265D25F73--


--===============1422701077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1422701077==--
