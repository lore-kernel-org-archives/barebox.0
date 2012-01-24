Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpiUX-0007Aa-Pm
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 15:41:04 +0000
Date: Tue, 24 Jan 2012 16:40:56 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120124154056.GG2609@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
 <1327413231-17495-6-git-send-email-w.sang@pengutronix.de>
 <20120124163815.479a3059@eb-e6520>
MIME-Version: 1.0
In-Reply-To: <20120124163815.479a3059@eb-e6520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6071077628075357472=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] net: fec_imx: configure FEC for 10Mbit when necessary
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org


--===============6071077628075357472==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="w/VI3ydZO+RcZ3Ux"
Content-Disposition: inline


--w/VI3ydZO+RcZ3Ux
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Eric,

> I didn't check the code where this patch is inserted but if the fec is
> similar to the MX25 one, you need to set this bit only when wired in
> RMII so maybe you need a test for the way the PHY is wired.

I know this patch, it is different. The MX28 has no gasking, and only
MX28 has this special bit which needs to be set after the negotiation.
Kernel does it this way, too.

Regards,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--w/VI3ydZO+RcZ3Ux
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk8e0QgACgkQD27XaX1/VRsy9gCfdvOB0S1K2YoGwzJGJFXEqvzw
9UAAoMvffsCCCgxkj/MoqI747/pWPREO
=Z5Rl
-----END PGP SIGNATURE-----

--w/VI3ydZO+RcZ3Ux--


--===============6071077628075357472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6071077628075357472==--
