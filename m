Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7HwH-0005GK-8f
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 06:44:10 +0000
References: <1434699697-26688-1-git-send-email-j.remmet@phytec.de>
 <5583CA27.5000403@pengutronix.de> <55870437.9000102@pengutronix.de>
 <20150623063159.GA2841@lws-weitzel2@phytec.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55890019.3060505@pengutronix.de>
Date: Tue, 23 Jun 2015 08:43:37 +0200
MIME-Version: 1.0
In-Reply-To: <20150623063159.GA2841@lws-weitzel2@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3273482085719742509=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] libdt: fix detection of eeprom devicepath
To: Jan Remmet <J.Remmet@phytec.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3273482085719742509==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="9KA4I1TBbcgW30RfkvBTxfM1p3nUQH2dl"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9KA4I1TBbcgW30RfkvBTxfM1p3nUQH2dl
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 06/23/2015 08:32 AM, Jan Remmet wrote:
>> Works here with the NAND-partition backend. However udev from
>> systemd-220 fails to find NAND-partition while systemd-219 works, no
>> matter if your patch is applied or not. Which systemd/udev version are=

>> you using?
> Here I use it in a initramfs with libudev.so.1.6.0, but no running daem=
on.

The .so version cannot be mapped directly tothe tarball version.

For the record: systemd-220 is broken, 219 and 221 are working. If you
need 220, cherry-pick commit 5f529f4c97a141457301477505ae7eb4c28cf610
from the systemd.git repo.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--9KA4I1TBbcgW30RfkvBTxfM1p3nUQH2dl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJViQAZAAoJEP5prqPJtc/HSUsIAK8XfCN2LkfMRrY/LkdlZ8SM
gFfELtN9Tm7A6JK4XHY5CQ+CMUBbO7DDnRPaisEO7qqVZHsT19Z8Vn2E2v9aWuL8
hA/vrdpmz+dKTlWXi6sVb3AXY3Ld7NkJVNGpGYnulNOhvXc/QAgfzg8oH40jKlYa
QzKHSYmGiv86SwtFsKJBb8A5KkHPlema21bAdemilCUK1e5P+gU6aDbDdOdo3P5E
1zOBw+4zOl8gwpsMEKR1iYKyHSYVAzZMHlXuOOxgME6OTBXdP7GHatHCWXmUn5VU
MbEHDr+dZ17ryUfTswNVSCSg64oVDOMvY9nxNg6POkbBzg8RFhbwL5xEceObbmk=
=D4lF
-----END PGP SIGNATURE-----

--9KA4I1TBbcgW30RfkvBTxfM1p3nUQH2dl--


--===============3273482085719742509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3273482085719742509==--
