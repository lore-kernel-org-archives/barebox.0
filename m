Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThmjY-0002UF-8P
 for barebox@lists.infradead.org; Sun, 09 Dec 2012 19:40:16 +0000
Date: Sun, 9 Dec 2012 20:40:14 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121209194014.GC17813@pengutronix.de>
References: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
 <1351246602-8859-11-git-send-email-w.sang@pengutronix.de>
 <20121027125721.GG1641@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121027125721.GG1641@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9183428064429141861=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 10/10] commands: add ubiformat
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============9183428064429141861==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xo44VMWPx7vlQ2+2"
Content-Disposition: inline


--xo44VMWPx7vlQ2+2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

Fixed all the issues you mentioned.

> Please try and ubiformat nonexisting files and non mtd devices and see
> what happens. I have the feeling these are untested right now.

All cases bail out:

barebox@Phytec phyCORE-i.MX35:/ ubiformat /dev/ram0
libmtd: error!: MEMGETINFO ioctl request failed
ubiformat: error!: cannot get information about "/dev/ram0"

barebox@Phytec phyCORE-i.MX35:/ ubiformat asdhkjh
libmtd: error!: cannot open "asdhkjh"
ubiformat: error!: cannot get information about "asdhkjh"

Will send an updated version rebase to 2012.12.0, soon.

Thanks,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--xo44VMWPx7vlQ2+2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlDE6R4ACgkQD27XaX1/VRumywCfeYaCdeaxK5d2VrmZOVBAOGva
1ZoAn0t92a/xYj3y4+84mF183PFfJ5Md
=N1oq
-----END PGP SIGNATURE-----

--xo44VMWPx7vlQ2+2--


--===============9183428064429141861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9183428064429141861==--
