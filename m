Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZACMQ-0002Sm-7K
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 07:23:11 +0000
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
 <1434613424-19989-7-git-send-email-s.hauer@pengutronix.de>
 <559244C2.80500@pengutronix.de> <20150701065856.GD18611@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55939542.7000607@pengutronix.de>
Date: Wed, 1 Jul 2015 09:22:42 +0200
MIME-Version: 1.0
In-Reply-To: <20150701065856.GD18611@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7061565769048218647=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] blspec: Automatically append rootarg
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7061565769048218647==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="L6I9KCCxMTxVjllGOePjH854tK9QrLNGs"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--L6I9KCCxMTxVjllGOePjH854tK9QrLNGs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/01/2015 08:58 AM, Sascha Hauer wrote:
>> Can you move the following into a separate function outside of blspec.=
c
>> so that it can be used somewhere else, too?
>>
>>> +	rootarg =3D path_get_linux_rootarg(entry->rootpath);
>>> +	if (IS_ERR(rootarg)) {
>>> +		pr_err("Getting root argument for %s failed with: %s\n",
>>> +				entry->rootpath, strerror(-PTR_ERR(rootarg)));
>>> +		return PTR_ERR(rootarg);
>>> +	}
>>> +
>>> +	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootar=
g);
>>> +
>>> +	free(rootarg);
>>> +
>>> +	return 0;
>>> +}
>=20
> You mean the combination of path_get_linux_rootarg() and globalvar_add_=
simple()
> should be a separate function? I'm not sure. Once we see a usecase for
> this we can do this.

I've the fit image support pachtes here. They use this functionality.

> Hm, just thinking. We could create a barebox command which takes a
> barebox device as argument and sets a linux.bootargs.* variable to the
> corresponding root=3D snippet. This might be useful.

Sounds nice - however I don't use the shell in that procject :D

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--L6I9KCCxMTxVjllGOePjH854tK9QrLNGs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVk5VCAAoJEP5prqPJtc/HZa0H/j2KWAKi6h2/pRimn0fRgMNU
OG1qaE1nsjNHj0gESb6tV5kxuJ279wm2UQ4055sIbMYqQwMF2NtkB0xso4nXxSAj
oWcoeJ809NJ+JoF66tQV/Xrm6ypaVIbMIiGpBzL/2JETtZYvqdvk2Sv81HUsku7s
18t2dfVLj1hcd8AMLZobTlKVQ02v2dtOW4GOUG+j2Woe7K7ToAymbHlxk57I4C2j
XytfPUMwdUaaJOI0wxagXd4pdINccqQtoFUx6zBd04XSkLKfJf5fmp0i5F+fDq+R
ZdP+1qtjqnpDAal3bhreCx36b4h18Bil4Haf2YnQkLwY//KPSgHHDhatA2kH4Ic=
=Hx/G
-----END PGP SIGNATURE-----

--L6I9KCCxMTxVjllGOePjH854tK9QrLNGs--


--===============7061565769048218647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7061565769048218647==--
