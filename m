Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek6NZ-0005Kn-Jm
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 10:58:07 +0000
References: <20180209094500.29685-1-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <42d2fcdb-2143-f44e-097c-9b763d7c051f@pengutronix.de>
Date: Fri, 9 Feb 2018 11:57:14 +0100
MIME-Version: 1.0
In-Reply-To: <20180209094500.29685-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1524519535797297234=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Makefile.lib: imx hab: fix hab files with embedded
 variables
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1524519535797297234==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="7lXpE0I1JQUdwR5cU1vZCD7iCq6Wg2DNM"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--7lXpE0I1JQUdwR5cU1vZCD7iCq6Wg2DNM
Content-Type: multipart/mixed; boundary="nL1aHbcWfL2co4WEYzLBxCMNws5PoDHPn";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <42d2fcdb-2143-f44e-097c-9b763d7c051f@pengutronix.de>
Subject: Re: [PATCH] Makefile.lib: imx hab: fix hab files with embedded
 variables
References: <20180209094500.29685-1-s.hauer@pengutronix.de>
In-Reply-To: <20180209094500.29685-1-s.hauer@pengutronix.de>

--nL1aHbcWfL2co4WEYzLBxCMNws5PoDHPn
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 02/09/2018 10:45 AM, Sascha Hauer wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> When passing variables this way, all embedded variables are expanded, s=
o that
> the path in the .config file can be kept relative.
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
S-o-b: sha?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--nL1aHbcWfL2co4WEYzLBxCMNws5PoDHPn--

--7lXpE0I1JQUdwR5cU1vZCD7iCq6Wg2DNM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlp9fooACgkQk9IU1zQo
ZfFK8AgA0uPdiUZXEBP2KIdmimnZ4W5b+3JVLy0EDrYt+O70TqD04iNyy07+hMMA
PUdQUG1lY0SpyVMgGGBNAJTOo05HGd1Lr1Da7aHm4pHNqwlhjEqzEqmXfLH5DaMK
hqkKPCzgW4xPc2zEsJHFsv6oqL1k62xINiNyfvozMk2wMInWyyi67YF/BtlOWicq
eKx0RawWXp+hKjIBhNBK2dhH0JOC9153MYWsUqLiQFH2eknzmfhyDXJGzqvHOP3l
Dxpl0mCewpE4/NijqKGti8FbpxImv0BTyknMo/6b59GSPM1v2uxeEtH2bp+cc6/p
MFBf++QEjUL0HVFxp+f6M8uv8vKE/A==
=MENW
-----END PGP SIGNATURE-----

--7lXpE0I1JQUdwR5cU1vZCD7iCq6Wg2DNM--


--===============1524519535797297234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1524519535797297234==--
