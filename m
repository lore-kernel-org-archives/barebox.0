Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5Dlz-0003bb-GV
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 13:53:00 +0000
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55817B96.6040703@pengutronix.de>
Date: Wed, 17 Jun 2015 15:52:22 +0200
MIME-Version: 1.0
In-Reply-To: <20150617090646.GI6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2475889486790864806=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: state: access from linux
To: Sascha Hauer <s.hauer@pengutronix.de>, Jan Remmet <J.Remmet@phytec.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2475889486790864806==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="V7cNB931ehO7rPBfo8cdXa4JiI9qQJHj0"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--V7cNB931ehO7rPBfo8cdXa4JiI9qQJHj0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 06/17/2015 11:06 AM, Sascha Hauer wrote:
> On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
>> Hello,
>> I'm working with barebox states and wonder if there is already a tool =
to access
>> states in eeprom from linux?
>> The states from a dtb backend should be easy to read. For raw there mu=
st be
>> looked under /proc/devicetree or a state kernel driver.
>=20
> Yes, there is such a tool here:
>=20
> git://git.pengutronix.de/git/tools/dt-utils.git

BTW: Release tarballs can be found here:

http://www.pengutronix.de/software/dt-utils/download/

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--V7cNB931ehO7rPBfo8cdXa4JiI9qQJHj0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVgXuWAAoJEP5prqPJtc/HWIkH/j1Ndir6b2b+ZgDo2WYE8ZlP
wX31hbtSpMOaqzSOdqQaNEiaknOJt6+VXB1ZuKKMupk784Q1AhzXtca0QdT2Ri2Z
OKcHFozZMvou/lFa/GfhGHp5bAEOrtgDttOQzOvxnB/TXhJBLxjbP6IVTwBp14XX
m8sjEWFkyqcyeb88GZQCDQ6rmjX/Sft+9TRq8R5Kc7ZGw+5sO5WkkHwYPLqW2ENS
9W9miFScRIOJNTy1WRXGNh/mzCch5qcome6hwnxAaq1d6oS50O8duda29JHQUTIk
X21e/aRO0dy3WiVoQ75HoOkvuwMFGajmTWXu3e9rEv3i/DHLJcf6Rj6rynthrPg=
=Fn1i
-----END PGP SIGNATURE-----

--V7cNB931ehO7rPBfo8cdXa4JiI9qQJHj0--


--===============2475889486790864806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2475889486790864806==--
