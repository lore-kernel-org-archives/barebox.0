Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVKS-0001wo-Hz
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:10:49 +0000
Message-ID: <4ECE0A0C.8070301@pengutronix.de>
Date: Thu, 24 Nov 2011 10:10:36 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1629068925610827143=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9] Initial PXA support and Mitac MIOA701 board
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1629068925610827143==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigF2240C2D096F8113163571A2"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigF2240C2D096F8113163571A2
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/24/2011 04:02 AM, Robert Jarzmik wrote:
> This patchset aims at providing support for the Mitac Mio A701 board.
> The core pxa support was taken from barebox development tree, and
> brought up to date with current development tree.

Good to see someone working on the PXA again!

Please squash the patches 1+2+3+7+8 (please add a GPLv2 header to
arch/arm/mach-pxa/devices.c and
arch/arm/mach-pxa/include/mach/devices.h). Please squash patches 4+5+6

Please add your S-o-b to all patches.

> The mioa701 board support is just born, and enables a console over
> the USB serial line. A following patchset should add support for
> the on-disk chip (docg3) and will open way to full integration on
> the board.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigF2240C2D096F8113163571A2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7OCg4ACgkQjTAFq1RaXHM2YACfXnTRYibmOchI+RZ3UN4tAiv+
8jUAnjgy5KGcZeQ1u6ulVfYqjg1JheIU
=KFK7
-----END PGP SIGNATURE-----

--------------enigF2240C2D096F8113163571A2--


--===============1629068925610827143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1629068925610827143==--
