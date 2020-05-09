Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXQpO-00052I-NC
 for barebox@lists.infradead.org; Sat, 09 May 2020 14:51:48 +0000
Date: Sat, 9 May 2020 16:51:42 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200509145142.roleuli4nuccngfz@pengutronix.de>
References: <20200508170411.26841-1-cleger@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <20200508170411.26841-1-cleger@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1996431927138246178=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 0/7] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org


--===============1996431927138246178==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mlzpq7o2njxq3nw3"
Content-Disposition: inline


--mlzpq7o2njxq3nw3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Clement,

suddenly it is still exploding. I'll try to investigate the reason.

On Fri, May 08, 2020 at 07:04:04PM +0200, Clement Leger wrote:
> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> simply pass the file to the bootm and the read done on it will read the
> entire flash partition. This series starts by some cleanup and then add an
> elf_open function to load the elf file size only based on the elf header.
> A special handling for the elf file is also added in bootm data to allow
> using directly the elf file structure. Finally the mips bootm is modified
> to use bootm_load_os directly instead of manual elf loading.
>=20
> Compilation for both mips and arm has been tested but run on qemu-malta w=
as not
> possible. Changing the MALLOC_SIZE to allow loading a kernel always lead =
to a=20
> non-bootable system. Changes have been tested on kvx architecture for whi=
ch
> bootm support has been added and will be submitted.
>=20
> Changes v3 -> v4
>  - Fix init of elf entry address to be used by bootm_load_elf
>=20
> Changes v2 -> v3
>  - Integrate elf loading in bootm_load_os
>  - Add patch to remove now unused elf_load_image/elf_release_image
>  - Use malloc instead of xmalloc and check return value
>=20
> Changes v1 -> v2
>  - Add BOOTM_ELF config to select elf support and add checks in code
>  - Add an elf_get_mem_size function to avoid computing elf size in bootm.c
>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
>  - Fix data->elf NULL reset
>  - Remove elf struct entirely from mips bootm code
>=20
> Clement Leger (7):
>   common: elf: add computation of elf boundaries
>   common: elf: fix warning on 32 bits architectures
>   common: elf: split init to be reused from other function
>   common: elf: add elf_open, elf_close and elf_load
>   common: bootm: add support for elf file loading
>   mips: lib: bootm: use bootm elf loading capabilities
>   common: elf: remove elf_load_image/elf_release_image
>=20
>  arch/mips/lib/bootm.c |  31 +++++-------
>  common/Kconfig        |   8 +++
>  common/bootm.c        |  33 +++++++++++++
>  common/elf.c          | 111 +++++++++++++++++++++++++++++++++++-------
>  include/bootm.h       |   3 ++
>  include/elf.h         |  16 +++++-
>  6 files changed, 163 insertions(+), 39 deletions(-)
>=20
> --=20
> 2.17.1
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--mlzpq7o2njxq3nw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl62w3oACgkQ4omh9DUa
UbNN8xAAp5UivWlqMvWKMD0CMiX1Uz5gHZ54NL7uGtlc82yOxK5K0hzAlEdXlcAP
+Nb9Z7j/NGShtTcVI8no/ugzSzCBf4UIY9LISpInyxIB6o71eY4CSZ7t2GBSC/ad
ZjAfVdPEWLPstTHJ3sbDvGuYpMWlF/xTmxv5CHObX1yH8i0+2pIzeSD2JxHuWghh
lEHKeFxHUTSHzEImQIzUwqa/2E8Mg2aZ2PEJLU1mdOAWAOAaVAqNDsEma/gLMgOU
2rH032exY/gtizjOuDpLgi/Zz74E57n3qvAgqeQ/4R+M9Fse3nVfmwqawkE2E+WU
QLRFVFes1wXDe3qrVunuo/+hYy2swLMkeh8bLog5d09uNiNUAmmcy1WipQvhmJYh
q/YiZ4XpumVF+nT8BATztsWjW0H1/s0u01p6MkZWMU+/+OF0C6rfA5BMlDjlgapt
cdra63O1h/s7b71gAbnIYWH0yhvLkI8dkYBYZeTIfRZeXPt2rpc1hfHaZl/zp3P1
UujID6PEcr4rmjwvh7Us8lSKAJ6dn99s0pownLCAWK9krZPkwRsIHaJxz72FCuf1
xuF98zrrF412uWn/OcB0mg30ZEPow2m7y6xi6O0xIRXD8GJ+PK0tAbffa+MEuYHS
BwQ/yUSfsQ1GK3vJlNUtOLiCosMo6xTtmDTbh4AfAWU4t3fVl+Y=
=EKHX
-----END PGP SIGNATURE-----

--mlzpq7o2njxq3nw3--


--===============1996431927138246178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1996431927138246178==--
