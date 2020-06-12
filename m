Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeJD-0000ep-57
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:41:04 +0000
Date: Fri, 12 Jun 2020 09:41:01 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200612074101.o7pqzl2t7f45r4ee@pengutronix.de>
References: <20200612071036.27864-1-cleger@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <20200612071036.27864-1-cleger@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8306889891514393419=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v6 0/8] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>


--===============8306889891514393419==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2kxadihy4c3ekuxy"
Content-Disposition: inline


--2kxadihy4c3ekuxy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Nice work. Thank you!
Following variants was tested:
- net boot
- boot from local ram copy
- boot from spi flash

Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>

On Fri, Jun 12, 2020 at 09:10:28AM +0200, Clement Leger wrote:
> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> simply pass the file to the bootm handler and the read done on it will
> read the entire flash partition. This series starts by some cleanup and
> then modify the elf loader to load the elf file without copying the whole
> elf file to an intermediate buffer. Only the elf header is copied in
> order to parse the elf file into a list of segment and then, the segments
> are loaded directly from the file.
>=20
> A special handling for the elf file is also added in bootm data to allow
> using directly the elf file structure. Finally the mips bootm handler is
> modified to use bootm_load_os directly instead of manual elf loading.
>=20
> Compilation for both mips and arm has been tested but run on qemu-malta w=
as not
> possible. Changes have been tested on kvx architecture for which bootm su=
pport
> has been added and will be submitted.
>=20
> Changes v5 -> v6
>  - Add missing elf boundaries computation patch
>=20
> Changes v4 -> v5
>  - Rework elf loading to load from file rather than a buffer
>  - Use calloc instead of xzalloc in elf file loading
>  - Add check of program headers in elf check
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
> Clement Leger (8):
>   common: elf: add computation of elf boundaries
>   common: elf: fix warning on 32 bits architectures
>   common: elf: use calloc instead of xzalloc
>   common: elf: check number of elf program headers
>   common: elf: load elf directly from file
>   common: elf: add elf_open, elf_close and elf_load
>   common: bootm: add support for elf file loading
>   mips: lib: bootm: use bootm elf loading capabilities
>=20
>  arch/mips/lib/bootm.c |  25 ++---
>  common/Kconfig        |   8 ++
>  common/bootm.c        |  33 ++++++
>  common/elf.c          | 231 +++++++++++++++++++++++++++++++++++-------
>  include/bootm.h       |   3 +
>  include/elf.h         |  16 ++-
>  6 files changed, 261 insertions(+), 55 deletions(-)
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

--2kxadihy4c3ekuxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7jMYMACgkQ4omh9DUa
UbMQKg//dDtUFuPGMuYzVWDKZGuM3Quu7IP+3w+RKNW4lGiBiiGrSaZMq//k05Kt
djM6mUVQkj7cP7zq+jkzrythpJfFiZ5lH0t5QxK2u2qcy5Ji5S8JP2MvJK3XuO3v
Uxce5x8dr2uMQoCogHV9kPLKuZVRuyktP3WT6IVfcmWLLO9gkHGGJzXomWncKlbs
HsvL4gK847l+xP3TX56bliCBVPf2NC8Gt20WPGu3H3rEuTc9ylxAGbxtIuKxUf/b
oKefEtOwmsTDnexvk7ieRE1bM7oE4e4nzuOgamQsWfEyPdblBnlz5iza5+eJMA0H
PKn6f49x4ZAJlIcr1GSyd28AyFeU5vbb0DRJEUx0HKfKTHWFackPac6WDRAnQrYS
vEIkDr+rYJW0obhB5S7Xys9XQYymlFt5eIpgQBKQFplE1TOqg6Wcl622/dHT5hDL
EFgwAWeuMm69zoyQBrPwxuqpqSuXVO++9SNc6T6Cp6CdxyxfVOiTPaMZcrmJMDd6
McgBWD9HSEt/UH9UYq6+THsv7DilUbB53JPPSbdt8eurPShIZRFm8sN912wi3ppG
/xS0U9YuDmvBdQY3SG9bGn8cGT9I7qiYEScRwAYCCi3lz14veRotG9dtI0B2ap4W
EgLRGxtDQxY1byw6wFwB/0ZeZORaoQUguO4aGp/QQiKHOhSLbgs=
=T2hl
-----END PGP SIGNATURE-----

--2kxadihy4c3ekuxy--


--===============8306889891514393419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8306889891514393419==--
