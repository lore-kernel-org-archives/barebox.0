Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdcu-0004Sw-0n
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 06:57:21 +0000
Date: Fri, 12 Jun 2020 08:57:18 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200612065718.ebc2tb74fwbrqhm3@pengutronix.de>
References: <20200611080207.6482-1-cleger@kalray.eu>
 <20200612052234.dafdsfq6yuoeakjn@pengutronix.de>
 <962943155.6989814.1591944921269.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
In-Reply-To: <962943155.6989814.1591944921269.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4091667866541732375=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5 0/7] elf: add better bootm support
To: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>, Oleksij Rempel <linux@rempel-privat.de>


--===============4091667866541732375==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ap7yta7ud73yvj5h"
Content-Disposition: inline


--ap7yta7ud73yvj5h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 08:55:21AM +0200, Cl=C3=A9ment Leger wrote:
> Hi Oleksij,
>=20
> ----- On 12 Jun, 2020, at 07:22, Oleksij Rempel o.rempel@pengutronix.de w=
rote:
>=20
> > Hi Clement,
> >=20
> > suddenly I was not able to apply you changes on current barebox/master
> > branch. There seems to be some missing changes?
>=20
> Sorry, I forgot the '^' on the base sha1 during my git format-patch.
> So patch 1 adding elf boundary computation is missing in this serie.
> Should I resend a V5 [RESEND] or a V6 ?

Better V6, to avoid confusion.

> >=20
> > For example, you patch is changing this struct:
> > @@ -405,7 +405,8 @@ struct elf_image {
> > 	u64 entry;
> > 	void *low_addr;
> > 	void *high_addr;
> > -	void *buf;
> > +	void *hdr_buf;
> > +	char *filename;
> > };
> >=20
> > But, current version of it is:
> > struct elf_image {
> >	struct list_head list;
> >	u8 class;
> >	u64 entry;
> >	void *buf;
> > };
> >=20
> > On Thu, Jun 11, 2020 at 10:02:00AM +0200, Clement Leger wrote:
> >> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> >> simply pass the file to the bootm handler and the read done on it will
> >> read the entire flash partition. This series starts by some cleanup and
> >> then modify the elf loader to load the elf file without copying the wh=
ole
> >> elf file to an intermediate buffer. Only the elf header is copied in
> >> order to parse the elf file into a list of segment and then, the segme=
nts
> >> are loaded directly from the file.
> >>=20
> >> A special handling for the elf file is also added in bootm data to all=
ow
> >> using directly the elf file structure. Finally the mips bootm handler =
is
> >> modified to use bootm_load_os directly instead of manual elf loading.
> >>=20
> >> Compilation for both mips and arm has been tested but run on qemu-malt=
a was not
> >> possible. Changes have been tested on kvx architecture for which bootm=
 support
> >> has been added and will be submitted.
> >>=20
> >> Changes v4 -> v5
> >>  - Rework elf loading to load from file rather than a buffer
> >>  - Use calloc instead of xzalloc in elf file loading
> >>  - Add check of program headers in elf check
> >>=20
> >> Changes v3 -> v4
> >>  - Fix init of elf entry address to be used by bootm_load_elf
> >>=20
> >> Changes v2 -> v3
> >>  - Integrate elf loading in bootm_load_os
> >>  - Add patch to remove now unused elf_load_image/elf_release_image
> >>  - Use malloc instead of xmalloc and check return value
> >>=20
> >> Changes v1 -> v2
> >>  - Add BOOTM_ELF config to select elf support and add checks in code
> >>  - Add an elf_get_mem_size function to avoid computing elf size in boo=
tm.c
> >>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
> >>  - Fix data->elf NULL reset
> >>  - Remove elf struct entirely from mips bootm code
> >>=20
> >> Clement Leger (7):
> >>   common: elf: fix warning on 32 bits architectures
> >>   common: elf: use calloc instead of xzalloc
> >>   common: elf: check number of elf program headers
> >>   common: elf: load elf directly from file
> >>   common: elf: add elf_open, elf_close and elf_load
> >>   common: bootm: add support for elf file loading
> >>   mips: lib: bootm: use bootm elf loading capabilities
> >>=20
> >>  arch/mips/lib/bootm.c |  25 ++---
> >>  common/Kconfig        |   8 ++
> >>  common/bootm.c        |  33 ++++++
> >>  common/elf.c          | 226 +++++++++++++++++++++++++++++++++++-------
> >>  include/bootm.h       |   3 +
> >>  include/elf.h         |   9 +-
> >>  6 files changed, 248 insertions(+), 56 deletions(-)
> >>=20
> >> --
> >> 2.17.1
> >>=20
> >>=20
> >> _______________________________________________
> >> barebox mailing list
> >> barebox@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/barebox
> >>=20
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
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ap7yta7ud73yvj5h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7jJzkACgkQ4omh9DUa
UbMUixAArTd2n56K/Qe3gl3PR1sazqjGwxO+kI6reC/GtzWXFlr2n/6x9ZdvmGR8
9tQ2Y9PcDnXqgAY5vSv80L1hQDyFOL6e2O9fAkWiZzQCW3DGrnlwjQSG8ulwU6I1
oKrVNTm0Gc5scHUKVV55dPAfXPub7vFOspFqHL6HVfcLHQvak3jjseTGhQMPkDVL
bOX3Ci4T+Thf0om+gJENvBaNx9qEVCG+LaAfD+mMpRuMQ+KxgZicguStmlAhJ0kb
5O9ZasQ6xzdg4yuA/57yEIm3HssCIt2J4ohc3OuXCWH6sH5nD4fBl2dnd/g3v3q/
qV84F4SJjfSsDWWUBRDMZOvI9g8xHsX4YTQ+zp2Rt0LrBWrJrpmq+BZxjKpzwuXV
9niElZ8+BOA1u89XGZ5TmES3llVvjIDHq/FoIa1eziyHkuEenNt8bLF+0SPoEl07
vfyAldujt7PFck4TC5w7HW+vvhd1k8ZejUcktpsCJeWWz3zjFX+3qevuVqLQUqeU
KjSLt5M0k+EHeuemHr9vG9TNikhfTJsZtd3/6vPkE/coxajvamWkP9Yx5n7K2fk5
cAM5yO1wJA4SJSs7goaPyT4ftryX50g39j6ZzV1gPDVZbXh3iL1YvLg4AT+wJdyF
cXnTii7FmtoK4YftOrTcOanoUsT0OmKjYk444D47hfSj7L90BqA=
=9d9n
-----END PGP SIGNATURE-----

--ap7yta7ud73yvj5h--


--===============4091667866541732375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4091667866541732375==--
