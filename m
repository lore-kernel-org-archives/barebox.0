Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fndZf-00055D-B3
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 05:33:28 +0000
References: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <c582856b-519d-f9c5-fe53-7573443eef3a@rempel-privat.de>
Date: Thu, 9 Aug 2018 07:33:10 +0200
MIME-Version: 1.0
In-Reply-To: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8820602861459096599=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts/dtc/fdtget: No such file or directory
To: Peter Mamonov <pmamonov@gmail.com>, barebox@lists.infradead.org, pvizeli@syshack.ch

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8820602861459096599==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="57TR8dMzxXZBM8aPx3twmLpswHlPVWMaW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--57TR8dMzxXZBM8aPx3twmLpswHlPVWMaW
Content-Type: multipart/mixed; boundary="DhGf4mtGycyu0f3Q10YymuF23XQsv8y3B";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Peter Mamonov <pmamonov@gmail.com>, barebox@lists.infradead.org,
 pvizeli@syshack.ch
Message-ID: <c582856b-519d-f9c5-fe53-7573443eef3a@rempel-privat.de>
Subject: Re: scripts/dtc/fdtget: No such file or directory
References: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
In-Reply-To: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>

--DhGf4mtGycyu0f3Q10YymuF23XQsv8y3B
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

Am 08.08.2018 um 18:22 schrieb Peter Mamonov:
> Hi,=20
>=20
> After "8a8982541 scripts/dtc: Update to upstream version 1.4.6"=20
> scripts/dtc/Makefile lacks rule for scripts/dtc/fdtget, which causes=20
> scripts/gen-dtb-s to complain:
>=20
> 	$ make
> 	...
> 	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or direct=
ory
> 	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or direct=
ory
>=20
> Yet a build finishes ok.

I noticed same issue yesterday,
this happens only if you build barebox not in the source directory.
Probably make files should copy this scripts as well.


--=20
Regards,
Oleksij


--DhGf4mtGycyu0f3Q10YymuF23XQsv8y3B--

--57TR8dMzxXZBM8aPx3twmLpswHlPVWMaW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAltr0hYACgkQdQOiSHVI
77T+jAf5AS3pzABsDqTSqs9YVojShgFrDMr8BVpeXeSA+9bC8DWinMC3c6kBsa8a
MRJTRkexgmpq3T0Y4VFCPhle9sDNW91gKqe5hBUV2yKq6H6vBSEYXLuRZ4mio0QZ
CRwQsB+Gr0dO4LrAYTTvF0XkBwKhKsb9BlCLfMeWXGrCrDnOWVcIT5sexXC+Ubul
hh1MXJeqYbXcEHWNqwxxryIQpZW6CStra0T6rjjCXwFtoto74R6yAJIpCFGQK/md
Hz5uUx5IqgyzuHIKJ+aIZi4xp9OK7ur25bYs5aqcq8cilr4qXDYbhMHvH8CNPDcv
TExpF9ZBz0ibyk4XMoWuSmIiEW3Fbw==
=39wU
-----END PGP SIGNATURE-----

--57TR8dMzxXZBM8aPx3twmLpswHlPVWMaW--


--===============8820602861459096599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8820602861459096599==--
