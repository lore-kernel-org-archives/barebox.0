Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiVKs-0004di-BZ
 for barebox@lists.infradead.org; Tue, 11 Dec 2012 19:17:47 +0000
Date: Tue, 11 Dec 2012 20:17:42 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121211191742.GA24155@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-7-git-send-email-w.sang@pengutronix.de>
 <20121211093528.GR10369@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121211093528.GR10369@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3348838376356307812=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/10] lib: add ubiutils-common
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============3348838376356307812==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> In barebox we have the strtoull_suffix function. We normally accept 'G',
> 'M' and 'k' suffixes. Restricting the ubi functions to '*iB' suffixes
> might be confusing for barebox users. Not accepting '*iB' suffixes might
> be confusing to UBI tool users. How about extending strtoull_suffix to
> accept '*iB' suffixes and use it here? It seems the all that's missing
> is to adjust *endp to skip the additional 'iB'

OK. It probably makes sense to move the ubiutils_print_bytes() function
then to misc.c also and completely get rif of ubiutils-common? What
would be a proper name for the function, printull_suffix? Or
ulltostr_suffix? :)

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlDHhtYACgkQD27XaX1/VRsKBACfVhjsufQ/JHBexIxK+FpUXqxR
EuMAniFR8/ag2D1qP1oflC7yE6k8S0Fn
=W/t1
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--


--===============3348838376356307812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3348838376356307812==--
