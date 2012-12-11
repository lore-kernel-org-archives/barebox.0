Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiRHO-0001S3-DM
 for barebox@lists.infradead.org; Tue, 11 Dec 2012 14:57:56 +0000
Date: Tue, 11 Dec 2012 15:57:51 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121211145751.GC4117@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-2-git-send-email-w.sang@pengutronix.de>
 <20121211092205.GP10369@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121211092205.GP10369@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3075602467913821119=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/10] mtd: move is_power_of_2() to a public place
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============3075602467913821119==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="E39vaYmALEf/7YXx"
Content-Disposition: inline


--E39vaYmALEf/7YXx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 11, 2012 at 10:22:05AM +0100, Sascha Hauer wrote:
> On Mon, Dec 10, 2012 at 09:14:06AM +0100, Wolfram Sang wrote:
> > Will need this later for ubiformat.
> >=20
> > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
>=20
> We already have it in a public place: include/linux/log2.h

=2E..where the old occasion was not removed. Will update the patch.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--E39vaYmALEf/7YXx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAlDHSe8ACgkQD27XaX1/VRuUUwCgurJK2NzuDVVwjHAec/2G0qQ9
dZwAnRcoxyR8XxLOFBmQuCpPT8FQ0PTC
=okoa
-----END PGP SIGNATURE-----

--E39vaYmALEf/7YXx--


--===============3075602467913821119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3075602467913821119==--
