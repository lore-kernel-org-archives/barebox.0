Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ynm4I-0001E8-7Z
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 10:51:47 +0000
references: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <55420919.7050904@pengutronix.de>
Date: Thu, 30 Apr 2015 12:51:05 +0200
mime-version: 1.0
in-reply-to: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2517127817835802060=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: partition: Fix OF partition fixup
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2517127817835802060==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="QoE8xUJSSr54RCw41lgtNdFM4VTaUGC1i"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QoE8xUJSSr54RCw41lgtNdFM4VTaUGC1i
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/27/2015 11:24 AM, Sascha Hauer wrote:
> To get the number of address cells and size cells we have to use
> the newly created partition node, not the parent device node. The
> parent device node returns the address/size cells of the controller
> node, not the partition node.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Have you already applied this patch?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--QoE8xUJSSr54RCw41lgtNdFM4VTaUGC1i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVQgkZAAoJECte4hHFiupU+dcP/1ayt4c+HWcF0atlb4C9qmL+
cuiv5wXhuWWCm3RQ1tXJ0EXhlzJsq6OYZAt2XRGbac4qByLnhYVlsGRa3keTMXzg
yF4u69TfrzxYvLRGUSt3Bvn+rAr2CY5rM3xzrJjOFB9uNdAa+WzvvrAZY4+8iMn9
D3lxRFAmLWzMUEdFLqQXIY0FK0aHzTmxZvdoucI+yrhVCplSCnPqF2aLaETA7wd5
nzmYBd2ZPjRSfMuaVrqUZs3OSOyYdmu3DRs4asWge2Jt6H79KwgS8xKkWeFS6rVL
/mx47BoJV2JPCscJJj/CpgiP//ROkQLovbN3n/YulhdaA/xv/7aR9xjoEZK9Z92X
aiiYbXPZsO46RBJY/rvyPwY2KzNHDKS0WNC5V88MpYk8piee6YevhJNK/J7XFaC8
jVpSq7P9FTUql4awc1fNjQyZ62bNG5vOsz/s6l2iH+eeGo1uiAqWWKOFi25sIUIX
XIaLL+59UV8wWngeJTHAI3fwmBqMDnDO0Os6Apc96jkmacWWI5nEzsbF2ur5fv26
2+hPJdFw/CF/nzrgFCXkehqnKoNAz1L1j/cQL7KD5Piban6RAskqjzjNBLFfFOVV
fk+2Vxx1FC6LLsm7J2QAGRCxz5lPaA61u41Wpw56nZfR5o5afLS6uzdxAk3p49RS
0ADWFqXF6+tZAAPHjfaI
=7JQq
-----END PGP SIGNATURE-----

--QoE8xUJSSr54RCw41lgtNdFM4VTaUGC1i--


--===============2517127817835802060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2517127817835802060==--
