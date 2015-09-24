Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf7CI-0005EC-B7
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 14:08:31 +0000
References: <1443021972-18223-1-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <560403BF.1010704@pengutronix.de>
Date: Thu, 24 Sep 2015 16:07:59 +0200
MIME-Version: 1.0
In-Reply-To: <1443021972-18223-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2070320555465074389=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] state: write names in enum32 variables to oftree again
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2070320555465074389==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="crTXnlqs9qJDhfdjm9NAl4XEN1PCHRI1M"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--crTXnlqs9qJDhfdjm9NAl4XEN1PCHRI1M
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 09/23/2015 05:26 PM, Sascha Hauer wrote:
> Commit 179b75a (state: fixup: only export default value during
> fixup if set) accidently removed writing the enum32 value names
> to the device tree. Add it back again
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--crTXnlqs9qJDhfdjm9NAl4XEN1PCHRI1M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWBAPAAAoJEP5prqPJtc/H+YwH/1nJUo7VHHp8QMBGFE99Wm6N
C6Bx66FI8MKEdVN4x7TRgTNsQRl+14dzV9PwW7ogaC3ooOi6128z/PmlpsWM5Seo
mwRLDW/PVG6gX6dnUkD9FhjgDlXqle49yKOOIljSOv6iAEEQoZoNmgzP5qIwgkVU
u7aKcIaksU517cmIE0DZ94vXINFTioiP1vjvFRCyrny2p4pCcbiLAycch57OjqaT
+2ClyijdeZaOcK7fzXTJGi0tgVNrDvZFhZoBFYKUnH3uzjIqFCXQwbzCay/eER6p
Kj1+ozU1zuoibLZKjLiJov6ivLiVmyaar9gRVRHl6MY+5dAwH/nI9w9fLsi3X5U=
=5EfB
-----END PGP SIGNATURE-----

--crTXnlqs9qJDhfdjm9NAl4XEN1PCHRI1M--


--===============2070320555465074389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2070320555465074389==--
