Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7242-0005ho-JX
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 11:38:03 +0000
Date: Wed, 7 Aug 2013 13:37:40 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Message-ID: <20130807113740.GD2911@lukather>
References: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
 <1375869342.153074079@f120.i.mail.ru>
MIME-Version: 1.0
In-Reply-To: <1375869342.153074079@f120.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3290402351631553431=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Revert "ARM: Use armlinux_bootparams address for DTB"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org


--===============3290402351631553431==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7mjWZ9NKzhEjSVTm"
Content-Disposition: inline


--7mjWZ9NKzhEjSVTm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 07, 2013 at 01:55:42PM +0400, Alexander Shiyan wrote:
> > This patch placed the flattened devicetree to armlinux_bootparams.
> > armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
> > initial page tables are normally at SDRAM_START + 0x4000, so the
> > flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
> > which is quite common.
> >=20
> > Revert this patch for now once a better solution can be found
>=20
> In such a case, tree may be placed immediately after the kernel?
> It can also serve as an automatic option "ARM_APPENDED_DTB".

That won't work either, since the DTB will be overwritten by the kernel
decompressor.

Maxime

--=20
Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

--7mjWZ9NKzhEjSVTm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJSAjGDAAoJEBx+YmzsjxAggjoQAKZ2FlP2tNcRtJ/AI5ktP7+/
I5UQHT702XDy5AeWbr5S2Col1r/PkEzlJ4k7QJE5r9eTB+jpLtatzzG7zj+Zd0f/
c+oE1IV+BZHhcLvUDGoicc8SO+CV7xo3lLmc/u5Jfe0CljNH7Y1HKnicX7dQ+PNW
oWm5x1FWeerjv8PHywRscTYdeSrJTELFn39NdgFFQ04FR+G2Fh9UL5giW8hWNmpw
TCpdoY56xm6IRSSZFAwRF4GC5JI2d+JoAnPquVGtSzFi7Whmcxi+wYAjUwyjFJcE
aaW+Qhr5hYddrunB2zvK72Om7i8nCmZUzkD5BPN4NjGTLsJX0R1yYv0hCxeeL0Dy
yZLe+3R4WaiVIt3hJ5s4chcnTdhEO96mSZsHFblzkCicPi2bgkD2BmUf1S7KGN5m
JS+ZhOvJiaXOrs/u6S+fefbd7VnFBJ/yuT6eSYDvLV34dqUhMu3Nztlu+kdeIKIN
R01cMQOpHw9P6BOOMIPiv7et2P4E4n1XoqoB4Mk7jnyy0aB2MQneWxHb9q0yU+Rd
27NMXaaZFMJ8pM5jR8RGINode/I6TVEXbxR4vKiDQZzykMdtz9THNC/NHbOv9ymJ
vKrQ5GSFDsgTTG4l1gBQJj3aBDUUd0tY35W/CvR0Sv36rRPBs4Ghx6AvzyJV1oXX
JNDP0WTnNM5jPDUte/j3
=ZESm
-----END PGP SIGNATURE-----

--7mjWZ9NKzhEjSVTm--


--===============3290402351631553431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3290402351631553431==--
