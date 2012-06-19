Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgxlT-0006KW-JR
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:42:36 +0000
Message-ID: <4FE073B8.8090309@pengutronix.de>
Date: Tue, 19 Jun 2012 14:42:32 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5165552229771390834=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] fix dma memory allocations, add dma_alloc/dma_free
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============5165552229771390834==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigAEE2AFC1689E90EC104378FA"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigAEE2AFC1689E90EC104378FA
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 06/19/2012 02:36 PM, Marc Kleine-Budde wrote:

> on ARM using dfu mode we've seen problems with dma memory allocations.
> Some drivers use dma_inv_range on allocated buffers, which corrupts mem=
ory
> around the buffer, it it's not aligned to cache lines. This series
> introduces: dma_alloc() and dma_free() that allocate memory aligned to
> cache lines. This is 64 bytes on ARM (just to be sure) and
> DCACHE_LINE_SIZE on nios2. All other arch do a transparent xmalloc.
>=20
> Feel free to add the appropriate alignment for your architecture to
> "include/asm/dma.h"

You can pull this series:

The following changes since commit 4c8d356a104d592088c6ec93b052cec9f6ff19=
ea:

  Merge branch 'for-next/mx28-ocotp' into next (2012-06-14 20:31:50 +0200=
)

are available in the git repository at:

  git.pengutronix.de:/git/mkl/barebox.git for-next/dma_alloc

Marc Kleine-Budde (4):
      ARM mmu: don't use CONFIG_MMU to disable mmu code, there are static=
 inline versions
      ARM mmu: introduce dma_alloc, dma_free
      nios: add dma_alloc, dma_free and asm/dma.h
      blackfin, mips, openrisc, ppc, sandbox, x86: add transparent dma_al=
loc, dma_free inlines

Sascha Hauer (2):
      USB gadget fsl: request cacheline aligned buffer
      USB gadget: Fix dma memory allocations

 arch/arm/cpu/mmu.c                   |    4 ----
 arch/arm/include/asm/dma.h           |    8 ++++++++
 arch/arm/include/asm/mmu.h           |   10 ++++++++++
 arch/blackfin/include/asm/dma.h      |   21 +++++++++++++++++++++
 arch/mips/include/asm/dma.h          |   21 +++++++++++++++++++++
 arch/nios2/include/asm/dma-mapping.h |   10 ++++++++++
 arch/nios2/include/asm/dma.h         |    8 ++++++++
 arch/openrisc/include/asm/dma.h      |   21 +++++++++++++++++++++
 arch/ppc/include/asm/dma.h           |   21 +++++++++++++++++++++
 arch/sandbox/include/asm/dma.h       |   21 +++++++++++++++++++++
 arch/x86/include/asm/dma.h           |   21 +++++++++++++++++++++
 drivers/usb/gadget/composite.c       |    5 +++--
 drivers/usb/gadget/dfu.c             |    5 +++--
 drivers/usb/gadget/fsl_udc.c         |    5 +++--
 14 files changed, 171 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/include/asm/dma.h
 create mode 100644 arch/blackfin/include/asm/dma.h
 create mode 100644 arch/mips/include/asm/dma.h
 create mode 100644 arch/nios2/include/asm/dma.h
 create mode 100644 arch/openrisc/include/asm/dma.h
 create mode 100644 arch/ppc/include/asm/dma.h
 create mode 100644 arch/sandbox/include/asm/dma.h
 create mode 100644 arch/x86/include/asm/dma.h

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigAEE2AFC1689E90EC104378FA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/gc7gACgkQjTAFq1RaXHMtmgCbBhDhfNPcseR7pNgftL8j5Iso
7N4An3WcZrmZVDJIKQ9othtIkg8JzulC
=bwTv
-----END PGP SIGNATURE-----

--------------enigAEE2AFC1689E90EC104378FA--


--===============5165552229771390834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5165552229771390834==--
