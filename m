Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVLXE-0000g0-Lf
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:53:29 +0000
Message-ID: <54FF0549.8090804@pengutronix.de>
Date: Tue, 10 Mar 2015 15:52:57 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
 <20150310142407.GI30554@ns203013.ovh.net> <54FEFF1C.7030801@pengutronix.de>
In-Reply-To: <54FEFF1C.7030801@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4133472137499609862=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] sandbox cleanups
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4133472137499609862==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="5xo2jLtmMd78Pxg6xD8UGblD19T8KLSfD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--5xo2jLtmMd78Pxg6xD8UGblD19T8KLSfD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/10/2015 03:26 PM, Marc Kleine-Budde wrote:
>> can we fix it asap please TOO busy to dig into it
>=20
> Can you apply there three patches and check if the problem is solved?

Should be fixed on next now.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--5xo2jLtmMd78Pxg6xD8UGblD19T8KLSfD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU/wVMAAoJECte4hHFiupUiukP/2nXzIlw5gM1Xq0zsN6oIKyS
vGEF4KiTH1vj17LuEYpPGUkcv4wArKZOuedKyvUyXyBIuRZxmKhlOg8Bj9eCUev+
NFCjGC7zkSsIQc6IWfgzC2OTmleOtGfcY5iAmgk9+Zbmwq6GTvcQr10ErFYNTS5T
AcU7asna5iYzUfnXXO8MbbJlBy1us0f1JVgE/RP+JmEdcj9uH8dQk6Wrj1yLer3R
Cv9I7yUDmvfaDBpO7enGOgqt8+MWusnIRP/sbcieywu3qAzAQXJZGLnZu5JuvILC
wuPjK0MPk16nfxDukOl+k8/VqwA/BfU4QAvGgiJcpHVL3M49HzK6HKCwsQaUBGNz
a9Zxv77PYxd1hGsXv/7snNZmeu5hU1ec3jhoFQLwCD3VdePSVtqHWrquxgfFxGBf
rtOrCMUhJ1R4RyslLs/XlSssCV0eHFcyfEFbENSh2NBEUdb7+byZnSAtdOLDO/Wj
evNVI5HN1ogk/58nN9pKxNvJBHaQAm0ZbeimSAINfrw0Mr3grePnXRCXp0Rm5q9P
02kRFJ/5NsRwUvqJq45Aa6o6YWbk2USyPkTvOg2FeCQ7oPeBEoj7mX59OnejfxtP
F75tl0GpdAmMrF/7AweYAgpc6D+wHQZ1z03wObl9K4KlmRXwGdt+AD1RlrB1i3W9
6hZNpSVrX/VpMfwHM2W0
=pi5m
-----END PGP SIGNATURE-----

--5xo2jLtmMd78Pxg6xD8UGblD19T8KLSfD--


--===============4133472137499609862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4133472137499609862==--
