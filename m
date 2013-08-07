Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V733E-0007G6-Cx
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 12:41:16 +0000
Date: Wed, 7 Aug 2013 14:40:54 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Message-ID: <20130807124054.GF2911@lukather>
References: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
 <1375869342.153074079@f120.i.mail.ru>
 <20130807113740.GD2911@lukather>
 <1375877184.576122343@f176.i.mail.ru>
MIME-Version: 1.0
In-Reply-To: <1375877184.576122343@f176.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0400671057188722657=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Revert "ARM: Use armlinux_bootparams address for DTB"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org


--===============0400671057188722657==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+NAfxSaP7cKOSWOx"
Content-Disposition: inline


--+NAfxSaP7cKOSWOx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 07, 2013 at 04:06:24PM +0400, Alexander Shiyan wrote:
> > On Wed, Aug 07, 2013 at 01:55:42PM +0400, Alexander Shiyan wrote:
> > > > This patch placed the flattened devicetree to armlinux_bootparams.
> > > > armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
> > > > initial page tables are normally at SDRAM_START + 0x4000, so the
> > > > flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
> > > > which is quite common.
> > > >=20
> > > > Revert this patch for now once a better solution can be found
> > >=20
> > > In such a case, tree may be placed immediately after the kernel?
> > > It can also serve as an automatic option "ARM_APPENDED_DTB".
> >=20
> > That won't work either, since the DTB will be overwritten by the kernel
> > decompressor.
>=20
> arch/arm/Kconfig:
> ...
> config ARM_APPENDED_DTB
> 	bool "Use appended device tree blob to zImage (EXPERIMENTAL)"
> 	depends on OF && !ZBOOT_ROM
> 	help
> 	  With this option, the boot code will look for a device tree binary
> 	  (DTB) appended to zImage
> 	  (e.g. cat zImage <filename>.dtb > zImage_w_dtb).
> ...
>=20
> So, DTB is placed immediately after the kernel.

Yes, in the case where you have APPENDED_DTB, the decompressor relocates
the DTB before doing the decompression.

The trouble is when you don't have APPENDED_DTB enabled, when there is
no such relocation happening.

--=20
Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

--+NAfxSaP7cKOSWOx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJSAkBWAAoJEBx+YmzsjxAgmvEQAKazrJtfydevUZD9kj5rKZaq
1GYEbn+ZtNzbeOM92nfl0H3Wau4Ag7kII7/rhT9o/7NfLwld6+ZJpntUIK4BhXOV
oirXnObgFbbBFCkXzq9bXqySprRrGHukBi5FTHc+Nfd7mJ5HKx3hpbe8eSU57Oa1
5V68eLhb99EmcrxaFEjWwUbad2ybBF6xZvaJizlEl30O+nWY/pEyHPZ9h+IfZW8F
jf+dwdz2DnanU9KUlOUkMhR/jStV0bFW7BCqcIAEGIfX594ACWN4IjzK7gqK46NL
21JNbb99xO2RqH/nipbGWcw3aPn7WvDatRQRhl5naUFulTy3aZt4vzsNX8E8ebNM
XNWm3f1mry/cgWJAp4FN737y4TLnCoW3xfS9RNwy57NNxePY3qlBYaapINN3/Cee
ZXJks13Kfjtwax1TRoxIsAdOwEMThqlvX9WDn8VbQuXsqvauE4mAyH8ojF/zICSc
M1CZA6ezKaj9+PRtcgBWSKqtPO2f+/zRRIMRYZfZU7oHmB7/oZPVZLachA96uGR1
3GkI5A6PrrWWliKG5m4i+U3JnvSs4RO+amCyZv/C+lzEtRmiUMV/8+HtqreZLtbe
H1DHJrB7fOipfDEhyJtVbwnaJFyASCNfAbB66dwoVvMYsdhx3Wyg+WKBSXZqj19s
X8bHQfrENToYDbM9dC9c
=Jrwa
-----END PGP SIGNATURE-----

--+NAfxSaP7cKOSWOx--


--===============0400671057188722657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0400671057188722657==--
