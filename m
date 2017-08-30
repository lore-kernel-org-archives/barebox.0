Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dn1de-0005yw-FY
 for barebox@lists.infradead.org; Wed, 30 Aug 2017 11:58:36 +0000
References: <20170830061940.GB65925@ubuntu>
 <a92bc086-740e-8c41-5f47-3aa646696bdf@rempel-privat.de>
 <20170830135800.20317756ed3e6a1651d29cdd@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <39e1b11b-d202-a2c9-4fd0-a60dd14c7b2e@rempel-privat.de>
Date: Wed, 30 Aug 2017 13:52:59 +0200
MIME-Version: 1.0
In-Reply-To: <20170830135800.20317756ed3e6a1651d29cdd@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2363905566098248614=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: TCP
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, jianhuizhao.329@gmail.com

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2363905566098248614==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6p0Q6knAWBB2evck2eDg1fqEbUlr80qks"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6p0Q6knAWBB2evck2eDg1fqEbUlr80qks
Content-Type: multipart/mixed; boundary="a1hbBCg3ionxrQO0OKsu6xp9lg5EjGKhp";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, jianhuizhao.329@gmail.com
Message-ID: <39e1b11b-d202-a2c9-4fd0-a60dd14c7b2e@rempel-privat.de>
Subject: Re: TCP
References: <20170830061940.GB65925@ubuntu>
 <a92bc086-740e-8c41-5f47-3aa646696bdf@rempel-privat.de>
 <20170830135800.20317756ed3e6a1651d29cdd@gmail.com>
In-Reply-To: <20170830135800.20317756ed3e6a1651d29cdd@gmail.com>

--a1hbBCg3ionxrQO0OKsu6xp9lg5EjGKhp
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 30.08.2017 um 12:58 schrieb Antony Pavlov:
> On Wed, 30 Aug 2017 09:47:37 +0200
> Oleksij Rempel <linux@rempel-privat.de> wrote:
>=20
>> some of the work seems to be done by Anthony:
>> https://github.com/frantony/barebox/commits/20150719.picotcp
>>
>> I don't know if it is wokring.
>>
>> @Anthony, ping
>=20
> I have not checked it for several months.
>=20
> AFAIR There were big-endian issues.
>=20
> I have not added any TCP-related demo for picotcp-driven barebox.
>=20
> Any suggestions for TCP demo?
> telnet?
> http?

I assume, wonted use case is httpd from u-boot_mod. I would prefer some
thing light wight as telnet.

https://github.com/pepe2k/u-boot_mod/tree/master/u-boot/httpd

--=20
Regards,
Oleksij


--a1hbBCg3ionxrQO0OKsu6xp9lg5EjGKhp--

--6p0Q6knAWBB2evck2eDg1fqEbUlr80qks
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlmmpxsACgkQHwImuRkmbWlNgQEAlegtiQL77B4TNOgruiclstyw
5g6pUh53U6fZ6+xo7cIA/20BImR9eGKSUWJICfeVOxOzkodskJh2Y1VpDJ9Df0BK
=MXUy
-----END PGP SIGNATURE-----

--6p0Q6knAWBB2evck2eDg1fqEbUlr80qks--


--===============2363905566098248614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2363905566098248614==--
