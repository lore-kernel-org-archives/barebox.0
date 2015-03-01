Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS1Pn-0000vT-ID
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 10:48:04 +0000
Message-ID: <54F2EE4C.50100@pengutronix.de>
Date: Sun, 01 Mar 2015 11:47:40 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
 <1425159621-22805-5-git-send-email-mkl@pengutronix.de>
 <20150301072717.GC11010@pengutronix.de>
In-Reply-To: <20150301072717.GC11010@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8482925067696467121=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/16] of: make first argument of several
 of_property_*_string functions const
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8482925067696467121==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="w9dUnvdvMjfVdI4bHKWE4ffxkRm1fg9RD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--w9dUnvdvMjfVdI4bHKWE4ffxkRm1fg9RD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/01/2015 08:27 AM, Sascha Hauer wrote:
>> -int of_property_read_string(struct device_node *np, const char *propn=
ame,
>> +int of_property_read_string(const struct device_node *np, const char =
*propname,
>>  				const char **out_string)
>=20
> Is this necessary for something or just a nice to have? The functions
> are takes from the kernel and the device_node arguments cannot be const=

> there because the functions take a reference on the node.

I see, I'll remove the patch and adopt my code.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--w9dUnvdvMjfVdI4bHKWE4ffxkRm1fg9RD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU8u5MAAoJECte4hHFiupUro4P/Ag95MfSM1j+ZG6TO0URwFpc
nuM7Z3+zXutQ00hOjqgvswBGiqZVZTj7aHfPbOuOzg3xLTzsLKGDiGskKHl86RFQ
TXxwTcBgTUV6RCsBFTLHH0iDBifDKn4UJd5YvWHiRtlznXfvhdOGYEuCbbCWspC2
c5VTSgTmHzQWKYJUuUGD9TUozoAaOCMmGIl5Lyx50z/OvAuB531xPo5EIBZxeRPB
psoWS/2CMXevVT1KDJeMFrHFLpuckrSj0u+nCshmrqO81u0mHZtcGedaJ/Lo0fKh
OOdmIHoiJSkdSaZkJtR5gQM5HP8UBrSP3DdwtqETaeMDaolMvltzYn6xpxcbpK/v
/OIPFnhegpjfG8XZ6DZrLq5npGvo9ORUcOGzZis7S6mEg6BYOd0tFldJ66298tVa
GNB5NurlCB95/aF8NRqifwHqzTBnNP0P9ajAnU6qN6luDu7UQ7B1xsZwfngNMt3c
zyr4zRpmlLQ6SA1hiGTvQDMwBHkAULoa/pN2dKGH6BIgcCjvXia5+XIWMmf3qnsv
3nqRnM6F59OMmDSqdo+d2tQbsddKrYb6WtNiQ6Yi6TvpZvMjRHVwNfkx5nxQ6/w7
1Zrzych2iEu2Qs+bXWEZi4E+bg4h6UJo3FoBSVAl1+PM00M55swEzFl6g+uekF0c
qFvjlxzn+EAWqnrHJ8s3
=K9aP
-----END PGP SIGNATURE-----

--w9dUnvdvMjfVdI4bHKWE4ffxkRm1fg9RD--


--===============8482925067696467121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8482925067696467121==--
