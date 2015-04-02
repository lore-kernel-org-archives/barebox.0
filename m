Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ydax8-00089a-I7
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 08:58:20 +0000
Message-ID: <551D0492.7000400@pengutronix.de>
Date: Thu, 02 Apr 2015 10:57:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
 <20150402083522.GE8125@ns203013.ovh.net> <551D039F.3060506@pengutronix.de>
In-Reply-To: <551D039F.3060506@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4008085623783285627=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] makfiles: add emacs syntax highlighting hint
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4008085623783285627==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="d2JlnfO1oOIG0ABWbQjDV1Rfnq7bE7Ase"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--d2JlnfO1oOIG0ABWbQjDV1Rfnq7bE7Ase
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/02/2015 10:53 AM, Marc Kleine-Budde wrote:
> On 04/02/2015 10:35 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
>>> This patches makes a standard emacs to recognise the files as makefil=
es.
>> not a fan of vi or emacs stuff in file
>=20
> admit, you don't like emacs :D
>=20
>> btw I plan to drop the images/ and move them back to the ARCH
>=20
> why?

I don't care where it's located, but my images/Makefile.habv4
needs/can/should shared between mxs (mx28) and imx (mx6), once we add
mx28 support.

Orthogonal to moving the Makefiles from image/: what about moving the
SOC specific image generation rules from scripts/Makefile.lib into the
correct Makefile.<SOC> file (where ever that file lives)?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--d2JlnfO1oOIG0ABWbQjDV1Rfnq7bE7Ase
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVHQSSAAoJECte4hHFiupUZ1cQAIUaetgGUClMx4fQV3jRUa0Y
InqmYioKvLRtabj+rHPVJMbVFnnDGCPyM4JtPwwbwTa+eDvS4rTPvqyEhuY8SyBW
CJw6fRQP5JqbS5cmEFvB51Hpf1TGRIeVkoaT4WwEvwWjjYV2M/ospv81/3txLNyb
cnA1X+FHIcgq25AKLuZ+U+CIhb+RN1z/LCWWcg2Z0tOJVqIPBzmQ6E3zwZgE/md6
C15VaeZN0EgzeYpJeWPwsIroYirpk3CkeWn7Sbetm+kndwZsfWVos4nWrTVil1zG
ippR4xT+v/SZKlfJBN1f4TOft4ykie/e9E039BPonsQb4D7/LpZ4PFHeeFgE2S7u
Z/tBcS8CXOcjw+AiD4LvP1Deo4hLo8G4CI9BVFioarzzU63yV3lY5EkrIKt/sQlu
QHIqHl3qRP8dHG8cvbV3kUh8kme0SohezZgNhGYN5fMvCevPuYijEptbmmo/2wyr
KTl4d3ZwW+0YfEtGi/r8ggsjp/OGOQHuOZ9QTkVyzQTkX8qc+pLoo/yH7seBYiH9
E0cL7Xo5qgE58MWvoFNeio+rE/f53p/KjCebQUxyPg9xLLEfNJkw9YGdn0kOqzgW
PvKtolW2Z4TaACx34YbwKiwvf57hkxu3GXqzRYfVlEXz3kHBIOm8Yv+/Wtkjtgjy
lRfgb9VvYpwRtVka8saS
=DrdN
-----END PGP SIGNATURE-----

--d2JlnfO1oOIG0ABWbQjDV1Rfnq7bE7Ase--


--===============4008085623783285627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4008085623783285627==--
