Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Thmhc-0002O0-4v
 for barebox@lists.infradead.org; Sun, 09 Dec 2012 19:38:16 +0000
Date: Sun, 9 Dec 2012 20:38:14 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121209193814.GB17813@pengutronix.de>
References: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
 <1351246602-8859-10-git-send-email-w.sang@pengutronix.de>
 <20121027201148.GC28904@game.jcrosoft.org>
MIME-Version: 1.0
In-Reply-To: <20121027201148.GC28904@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9221774018400745210=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 09/10] lib: add barebox version of libmtd
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


--===============9221774018400745210==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZoaI/ZTpAVc4A5k6"
Content-Disposition: inline


--ZoaI/ZTpAVc4A5k6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 27, 2012 at 10:11:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 12:16 Fri 26 Oct     , Wolfram Sang wrote:
> > Based on mtd-utils and stripped down to needed functionality and
> > reworked to barebox interfaces.
> based on which verison of libmtd?

1.4.5 since this is the newest version which does not need MEMWRITE
ioctl.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--ZoaI/ZTpAVc4A5k6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlDE6KYACgkQD27XaX1/VRtXAgCfZbybU8PagZzbpAHzW7ySYyju
faQAoJF9s+U7NzFykTjIREKVhWimOAXB
=laDW
-----END PGP SIGNATURE-----

--ZoaI/ZTpAVc4A5k6--


--===============9221774018400745210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9221774018400745210==--
