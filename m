Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSgy-0008V1-Bh
 for barebox@lists.infradead.org; Sat, 09 May 2020 16:51:13 +0000
Date: Sat, 9 May 2020 18:51:10 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200509165110.bl5xsqcpqckvqay6@pengutronix.de>
References: <20200508170411.26841-1-cleger@kalray.eu>
 <20200509145142.roleuli4nuccngfz@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200509145142.roleuli4nuccngfz@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2452711013496826182=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 0/7] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org


--===============2452711013496826182==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tfb3bnwjvow4yg26"
Content-Disposition: inline


--tfb3bnwjvow4yg26
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 09, 2020 at 04:51:42PM +0200, Oleksij Rempel wrote:
> Hi Clement,
>=20
> suddenly it is still exploding. I'll try to investigate the reason.

common/elf.c:
  load_elf_image_phdr()
    elf_hdr_e_phnum() <-- returns 0
    for (i =3D 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
      ... so we will never get here.

Probably we should add a sanity check here and be more verbose in this
case.

here is my elf image:
https://github.com/olerem/barebox/blob/new-elf/ore-linux-dpt-module

> On Fri, May 08, 2020 at 07:04:04PM +0200, Clement Leger wrote:
> > Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> > simply pass the file to the bootm and the read done on it will read the
> > entire flash partition. This series starts by some cleanup and then add=
 an
> > elf_open function to load the elf file size only based on the elf heade=
r.
> > A special handling for the elf file is also added in bootm data to allow
> > using directly the elf file structure. Finally the mips bootm is modifi=
ed
> > to use bootm_load_os directly instead of manual elf loading.
> >=20
> > Compilation for both mips and arm has been tested but run on qemu-malta=
 was not
> > possible. Changing the MALLOC_SIZE to allow loading a kernel always lea=
d to a=20
> > non-bootable system. Changes have been tested on kvx architecture for w=
hich
> > bootm support has been added and will be submitted.
> >=20
> > Changes v3 -> v4
> >  - Fix init of elf entry address to be used by bootm_load_elf
> >=20
> > Changes v2 -> v3
> >  - Integrate elf loading in bootm_load_os
> >  - Add patch to remove now unused elf_load_image/elf_release_image
> >  - Use malloc instead of xmalloc and check return value
> >=20
> > Changes v1 -> v2
> >  - Add BOOTM_ELF config to select elf support and add checks in code
> >  - Add an elf_get_mem_size function to avoid computing elf size in boot=
m.c
> >  - Use xmalloc and read_full in elf_open instead of xzalloc/read
> >  - Fix data->elf NULL reset
> >  - Remove elf struct entirely from mips bootm code
> >=20
> > Clement Leger (7):
> >   common: elf: add computation of elf boundaries
> >   common: elf: fix warning on 32 bits architectures
> >   common: elf: split init to be reused from other function
> >   common: elf: add elf_open, elf_close and elf_load
> >   common: bootm: add support for elf file loading
> >   mips: lib: bootm: use bootm elf loading capabilities
> >   common: elf: remove elf_load_image/elf_release_image
> >=20
> >  arch/mips/lib/bootm.c |  31 +++++-------
> >  common/Kconfig        |   8 +++
> >  common/bootm.c        |  33 +++++++++++++
> >  common/elf.c          | 111 +++++++++++++++++++++++++++++++++++-------
> >  include/bootm.h       |   3 ++
> >  include/elf.h         |  16 +++++-
> >  6 files changed, 163 insertions(+), 39 deletions(-)
> >=20
> > --=20
> > 2.17.1
> >=20
> >=20
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--tfb3bnwjvow4yg26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6233kACgkQ4omh9DUa
UbMwUxAAkDsHifk580GEEcAS523pvZT/AY4weWIxPljj/1go5X0gbK1kCDgwXKWV
PvMyYQAsIzXjciJyH2e5zNrzDOJKx+LJGy8McxM9w/NcVcIxnYiCy3QR/9B3rkAO
SyHLJXD2WQcBn9eXcIHnh8MzY3PUJzv3Xh669E6Ks/o0YyYbBgrx9QP8E2pN8ZmI
W+7eM+vCqukoDph7H1drxxp/ipOpL4bqat+rqjzkz4H/UXrhVrL8zyAYuZTbKbRt
XDCLS42fLSmkPfS+mgZ1RNWdgQokHc5mYFYqus1aQKYCWgy3oquqoJXqnyr/ZlJT
8mTxCpfSnIlcnn/iShaHuxFZRCsijdyBbmq41TqNBFlUqV313riC1bKwxQVvYJRY
GwuLJTt1JBMl7EnxYzQutsBRvthVTNCXUSS5hRdp1/aIVcWI/5zsFrQHWmWX2zoy
iCIw6KXhaohBbVxS+QwqkHz4dpCYGEIcQpXTVzWRzWYnMKyebuKoXmC47fZRlUBH
LJQEXKetllgmJPbpOnPgXZxOyDJlAK9N15aXYSrLbt+MMQc7eSCiovBjB3gAeFQ5
LW7xD1i78jplyJKZYGVNZ8NmGPiNIeIg/AhZquSFvl19ahesJpufK6pYvHAMhLDj
NoE0YhRqiHnr0SUH/iKqiuRbV/Mtt6Xj8X3wlfwQPXI1t79QgeQ=
=l3kr
-----END PGP SIGNATURE-----

--tfb3bnwjvow4yg26--


--===============2452711013496826182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2452711013496826182==--
