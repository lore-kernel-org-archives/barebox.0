Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiBF-0000nf-29
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 08:34:58 +0000
Date: Wed, 29 Apr 2020 10:34:55 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200429083455.wpx47lw74dd6tpni@pengutronix.de>
References: <20200428075100.17565-1-cleger@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <20200428075100.17565-1-cleger@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6688310236607224151=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/7] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org


--===============6688310236607224151==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kkghjco554syxlnn"
Content-Disposition: inline


--kkghjco554syxlnn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Clement,

i tested you patches on my MIPS board. I get following ooops:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
barebox@DPTechnics DPT-Module:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x18020000 - 0x18020013 (size 0x00000014) 18020000.uart@18020000.of
  0x18040000 - 0x18040033 (size 0x00000034) 18040000.gpio@18040000.of
  0x18050000 - 0x180500ff (size 0x00000100) 18050000.pll-controller@1805000=
0.of
  0x18060008 - 0x1806000f (size 0x00000008) 18060008.wdt@18060008.of
  0x18070000 - 0x180700ff (size 0x00000100) 19000000.ethernet@19000000.of
  0x19000000 - 0x190001ff (size 0x00000200) 19000000.ethernet@19000000.of
  0x1f000000 - 0x1f00000f (size 0x00000010) 1f000000.spi@1f000000.of
  0x80000000 - 0x83ffffff (size 0x04000000) kseg0_ram0
    0x80000000 - 0x80007fff (size 0x00008000) vector
    0x83788000 - 0x8378ffff (size 0x00008000) stack
    0x83790000 - 0x83f8ffff (size 0x00800000) malloc space
    0x83f90000 - 0x83fe66df (size 0x000566e0) barebox
    0x83fe66e0 - 0x83feb0bf (size 0x000049e0) barebox data
    0x83ff30c0 - 0x83ff5fe7 (size 0x00002f28) bss
barebox@DPTechnics DPT-Module:/ boot net
Booting entry 'net'
eth0: DHCP client bound to address 192.168.26.229
Entry Point:  00000000

Loading ELF '/mnt/tftp/ore-linux-dpt-module'
Loading devicetree from '/mnt/tftp/ore-oftree-dpt-module'
Starting application at 0x80000000, dts 0x837c325c...

Ooops, TLB miss on load or ifetch!

$ 0   : 00000000 00000020 00000000 80010000
$ 4   : fffffffe 83a80000 00010000 00008000
$ 8   : 83790008 8379b440 8379b440 8379b5ec
$12   : 83790000 00010000 00000060 00000011
$16   : 837c3728 ffffffea 83a80000 80000000
$20   : 00000000 00000000 00000000 00000000
$24   : 00000000 00000000
$28   : 83e6c000 8378fc30 83fdfa20 83fd55cc
Hi    : 00063c6c
Lo    : 60000000
epc   : 00000000
ra    : 83fd55cc
Status: 10000002
Cause : 40008008
Config: 80208483

### ERROR ### Please RESET the board ###
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

The same test without patches looks like this:=20
rebox@DPTechnics DPT-Module:/ boot net
Booting entry 'net'
eth0: DHCP client bound to address 192.168.26.229

Loading ELF '/mnt/tftp/ore-linux-dpt-module'
Loading devicetree from '/mnt/tftp/ore-oftree-dpt-module'
Starting application at 0x80980000, dts 0x837c2e54...
[    0.000000] Linux version 5.7.0-rc1-rt7-00316-g9b716caac68c9 (ptxdist@pt=
xdist) (gcc version 9.2.1 20191130 (OSELAS.Toolchain-2019.09.1 9-20191130),=
 GNU ld (GNU Binutils) 2.32) #1 PREEMPT 2020-04-23T06:16:46+00:00
[    0.000000] printk: bootconsole [early0] enabled
[

The main difference is:
Starting application at 0x80980000, dts 0x837c2e54... <<- works
Starting application at 0x80000000, dts 0x837c325c... <<- oops

Even with applied patch to protect exception vectore code, we still
overwriting it:
    0x80000000 - 0x80007fff (size 0x00008000) vector

Any ideas?

On Tue, Apr 28, 2020 at 09:50:53AM +0200, Clement Leger wrote:
> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> simply pass the file to the bootm and the read done on it will read the
> entire flash partition. This series starts by some cleanup and then add an
> elf_open function to load the elf file size only based on the elf header.
> A special handling for the elf file is also added in bootm data to allow
> using directly the elf file structure. Finally the mips bootm is modified
> to use bootm_load_os directly instead of manual elf loading.
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
>  common/Kconfig        |   8 ++++
>  common/bootm.c        |  33 +++++++++++++
>  common/elf.c          | 107 ++++++++++++++++++++++++++++++++++++------
>  include/bootm.h       |   3 ++
>  include/elf.h         |  16 ++++++-
>  6 files changed, 161 insertions(+), 37 deletions(-)
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

--kkghjco554syxlnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6pPCoACgkQ4omh9DUa
UbMU2w//W017ikPJOUYNjyCfjHUaK80Z6WI5SUBYs8Vu7WC3gXfVyXI9fXD19QkL
RH3ctAAdsfmlorWfeVRdDtDvyouHa3ZYbgeBoO7ySjI+6nISkGAlO+2c7qnKLPEm
FaggM94KMqGOr3fAy4SYr9kZ6PlPWSxipwp/UG2KufnrUKh3x3pPw8tTIjQnmo2L
tGFlBDz07KVs/7KeLO/yQjE1WXYVV4tIIexLu15DUOBxcevSwG8UCt0r7ILoKVff
ORV1tlG/oliVcRnisNFs/lClPgBrUdCtbDechPeg/bUENtSTRezAQL4/nckMqC6v
xIIx9eI4xoVrSafqP6uepfRBB41P724R5slCQXRzUgay2lvkxVZtNqv2TfodV85J
e2OB23rUAJELQknmP2PMCKCvzI74PmbJhkNooys/wzKA4j7U6AMCxkP4S6mPGKO7
M1kAKxOt5U6QtYdGJUUV4767l/4faGGRSIqz0WCnxioD7z1BPjxpwmTCtbbW0z6W
XL45wQIl7bbMmmtYqrrYd6QJD0tG4wCl/62a51vK0tftVhFWZOfK3T9sReGz6vsv
9v6xIIM9PF5csMw/kv5yekClqGaxDiZT227XePEqzZvh0l5/IUyFZzwOBaczUk3t
EpRj2wQyyQnLs0gyEQSJY6Gh/jAXcEJByRicpkT8/KFdLdMLqD4=
=T63N
-----END PGP SIGNATURE-----

--kkghjco554syxlnn--


--===============6688310236607224151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6688310236607224151==--
