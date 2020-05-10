Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXdcu-0003uS-J5
 for barebox@lists.infradead.org; Sun, 10 May 2020 04:31:46 +0000
Date: Sun, 10 May 2020 06:31:41 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200510043141.377gvmlruxwsggrm@pengutronix.de>
References: <20200508170411.26841-1-cleger@kalray.eu>
 <20200509145142.roleuli4nuccngfz@pengutronix.de>
 <20200509165110.bl5xsqcpqckvqay6@pengutronix.de>
 <773934153.1746354.1589052295027.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <773934153.1746354.1589052295027.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1574288216884462571=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 0/7] elf: add better bootm support
To: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>


--===============1574288216884462571==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vjgo6pie42or6nyw"
Content-Disposition: inline


--vjgo6pie42or6nyw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Clement,

just in case it makes a difference. I load this file over tftp (boot
net)

On Sat, May 09, 2020 at 09:24:55PM +0200, Cl=C3=A9ment Leger wrote:
> Hi Oleksij,
>=20
> ----- On 9 May, 2020, at 18:51, Oleksij Rempel o.rempel@pengutronix.de wr=
ote:
>=20
> > On Sat, May 09, 2020 at 04:51:42PM +0200, Oleksij Rempel wrote:
> >> Hi Clement,
> >>=20
> >> suddenly it is still exploding. I'll try to investigate the reason.
> >=20
> > common/elf.c:
> >  load_elf_image_phdr()
> >    elf_hdr_e_phnum() <-- returns 0
> >    for (i =3D 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
> >      ... so we will never get here.
> >=20
> > Probably we should add a sanity check here and be more verbose in this
> > case.
>=20
> There is something odd because your elf is correct and has 2 program
> headers. So this should not be a problem (but a sanity check makes
> sense !).
>=20
> I suspect that the elf size computation is wrong with your elf file
> and leads to incompletely loaded elf file but I tried to compute
> it using the sequence of code used in barebox and everything seems ok.
> Maybe there is something with the endianess/elfclass going wrong.
> I tried again on kvx to be sure I did not made a mistake but it works
> and the elf entry address is correctly used.
> I'll try to add handling for different endianess and load your elf
> file on kvx to debug that.
>=20
> >=20
> > here is my elf image:
> > https://github.com/olerem/barebox/blob/new-elf/ore-linux-dpt-module
>=20
> I succeeded in building Distrokit images but I can't get it under barebox.
> There is only 4M oof RAM and each time I tries to modify it, it won't boot
> anymore.
> I tried integrating the kernel (and your eore-linux-dpt-module elf) in
> the environment but it also won't boot. Do you have any idea on how to
> do it ?
> Even if the kernel won't start under qemu , at least I'll be able to
> understand what is wrong.
>=20
> Thanks for testing,
>=20
> Cl=C3=A9ment
>=20
> >=20
> >> On Fri, May 08, 2020 at 07:04:04PM +0200, Clement Leger wrote:
> >> > Currently, when booting an elf file using "bootm /dev/mtdx", bootm w=
ill
> >> > simply pass the file to the bootm and the read done on it will read =
the
> >> > entire flash partition. This series starts by some cleanup and then =
add an
> >> > elf_open function to load the elf file size only based on the elf he=
ader.
> >> > A special handling for the elf file is also added in bootm data to a=
llow
> >> > using directly the elf file structure. Finally the mips bootm is mod=
ified
> >> > to use bootm_load_os directly instead of manual elf loading.
> >> >=20
> >> > Compilation for both mips and arm has been tested but run on qemu-ma=
lta was not
> >> > possible. Changing the MALLOC_SIZE to allow loading a kernel always =
lead to a
> >> > non-bootable system. Changes have been tested on kvx architecture fo=
r which
> >> > bootm support has been added and will be submitted.
> >> >=20
> >> > Changes v3 -> v4
> >> >  - Fix init of elf entry address to be used by bootm_load_elf
> >> >=20
> >> > Changes v2 -> v3
> >> >  - Integrate elf loading in bootm_load_os
> >> >  - Add patch to remove now unused elf_load_image/elf_release_image
> >> >  - Use malloc instead of xmalloc and check return value
> >> >=20
> >> > Changes v1 -> v2
> >> >  - Add BOOTM_ELF config to select elf support and add checks in code
> >> >  - Add an elf_get_mem_size function to avoid computing elf size in b=
ootm.c
> >> >  - Use xmalloc and read_full in elf_open instead of xzalloc/read
> >> >  - Fix data->elf NULL reset
> >> >  - Remove elf struct entirely from mips bootm code
> >> >=20
> >> > Clement Leger (7):
> >> >   common: elf: add computation of elf boundaries
> >> >   common: elf: fix warning on 32 bits architectures
> >> >   common: elf: split init to be reused from other function
> >> >   common: elf: add elf_open, elf_close and elf_load
> >> >   common: bootm: add support for elf file loading
> >> >   mips: lib: bootm: use bootm elf loading capabilities
> >> >   common: elf: remove elf_load_image/elf_release_image
> >> >=20
> >> >  arch/mips/lib/bootm.c |  31 +++++-------
> >> >  common/Kconfig        |   8 +++
> >> >  common/bootm.c        |  33 +++++++++++++
> >> >  common/elf.c          | 111 +++++++++++++++++++++++++++++++++++----=
---
> >> >  include/bootm.h       |   3 ++
> >> >  include/elf.h         |  16 +++++-
> >> >  6 files changed, 163 insertions(+), 39 deletions(-)
> >> >=20
> >> > --
> >> > 2.17.1
> >> >=20
> >> >=20
> >> > _______________________________________________
> >> > barebox mailing list
> >> > barebox@lists.infradead.org
> >> > http://lists.infradead.org/mailman/listinfo/barebox
> >> >=20
> >>=20
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >=20
> >=20
> >=20
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--vjgo6pie42or6nyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl63g6kACgkQ4omh9DUa
UbP7Eg//XipmtBhEN/ilKMBWaxaiiITVUaGUcLIjB3xcWDTaSfITC1ne6luV31tI
kCZrHXxz9CmbDjOqPIa+rcO2Ks5ViEhazhV5RD/Ra0LyHEkw1JrNxa+4itjv/aNS
h1kxOi1cPNAlEGjFqwil0XQILSVwZflwwKkO8Cb+M2aiGL5GcTS4r2eAd1qCDdeB
0z/QlP5/KmHjKoY8nMQY7OXnYU6bbpbRg15Y+dw8uSULVMU+zf/SSxdKQYeldPeK
pEIWvayENVTcRvTrbmniD7AEsjd7zQuwKSR0NkYCEZnP/Xv+9Nf2RZtJBsNRezHy
R7T56U4yeHrm+GTGNsUta6ZETcwNTz4gXmzLnrrPKJMGzSKo/BfSD3a8lCkB37Pn
03YBuKgzwk/P32p7t7nHmLBVXvl5GweAQo4jBasGV9RnKSTFLQWFyl2geB4A5kFc
6jvLZ1A5vC2Cps4PWA3gJy3qfpZDkYAAFQexO3vcSp0/qM3AXgKdWfbuUC5IjPTN
KdRgrIBuOaojGD+vFOV+miAS73kq5iwptsXJoI4dEMX9eUp6KwthRUcChqigScP+
qA9+dfqd4Ecao+trkwIT1j625xbiM+Poo9PuDmvUxibo7NgbbqA3J19DNOzVwtIP
x8x9PaEytGBGrKKBdFaqxsHoEaKjKBT42brWVh1ZXJBDRLx8x7g=
=idC9
-----END PGP SIGNATURE-----

--vjgo6pie42or6nyw--


--===============1574288216884462571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1574288216884462571==--
