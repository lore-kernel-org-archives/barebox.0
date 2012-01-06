Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rj6F5-0004ny-Fh
 for barebox@lists.infradead.org; Fri, 06 Jan 2012 09:37:44 +0000
Date: Fri, 6 Jan 2012 10:37:35 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120106093735.GA2610@pengutronix.de>
References: <1325791095-32363-1-git-send-email-w.sang@pengutronix.de>
 <20120106082918.GB5446@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20120106082918.GB5446@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2474715832020627163=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fs: fat: gen_numname() is only need with FS_FAT_WRITE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============2474715832020627163==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 06, 2012 at 09:29:18AM +0100, Sascha Hauer wrote:
> On Thu, Jan 05, 2012 at 08:18:15PM +0100, Wolfram Sang wrote:
> > So, check for that config option, too. This will get rid of the warning:
> >=20
> > 	fs/fat/ff.c:878:13: warning: 'gen_numname' defined but not used
> >=20
> > I could have also moved the function further down, but I decided for the
> > least intrusive change.
>=20
> I already posted the same patch.

Ah, now I found it. Terrible patch description, if I may say so ;)

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk8GwN8ACgkQD27XaX1/VRu2vgCeOiAHsVxKvjs1SXK2mlmOQKLI
hlkAoMcf7Qq8a23otJ8JzIJ8m13xGN2s
=XAdy
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--


--===============2474715832020627163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2474715832020627163==--
