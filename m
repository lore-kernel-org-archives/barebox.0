Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4q8m-0006Z9-UH
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 13:11:14 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 04 Dec 2015 14:10:48 +0100
Message-ID: <2170900.IVDfPRBNAK@adelgunde>
In-Reply-To: <20151202213713.5023ecefad709dc2d3e260a7@gmail.com>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-10-git-send-email-mpa@pengutronix.de>
 <20151202213713.5023ecefad709dc2d3e260a7@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6920739087908388038=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] fs: Add pstore filesystem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


--===============6920739087908388038==
Content-Type: multipart/signed; boundary="nextPart2619363.9TjEQ92fCV"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart2619363.9TjEQ92fCV
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

On Wednesday 02 December 2015 21:37:13 Antony Pavlov wrote:
> On Wed,  2 Dec 2015 14:48:51 +0100
> Markus Pargmann <mpa@pengutronix.de> wrote:
>=20
> > pstore is a persistent storage filesystem used for RAMOOPS. It is u=
sed
> > to store console logs, panics, ftrace and other information in case=
 of a
> > crash/panic/oops/reboot.
> >=20
> > pstore is implemented for barebox as a read-only filesystem at the
> > moment. It may be extended later on. The idea is to provide a way t=
o
> > extract essential data from the last running kernel.
> >=20
> > Most of the code is copied from the kernel. However this is only a
> > lightweight implementation without real write support yet.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  common/startup.c           |   5 +
> >  fs/Kconfig                 |   2 +
> >  fs/Makefile                |   1 +
> >  fs/pstore/Kconfig          |  88 ++++++++
> >  fs/pstore/Makefile         |  10 +
> >  fs/pstore/fs.c             | 280 +++++++++++++++++++++++++
> >  fs/pstore/internal.h       |  19 ++
> >  fs/pstore/platform.c       | 138 ++++++++++++
> >  fs/pstore/ram.c            | 507 +++++++++++++++++++++++++++++++++=
++++++++++++
> >  fs/pstore/ram_core.c       | 426 +++++++++++++++++++++++++++++++++=
++++
> >  include/linux/pstore.h     |  90 ++++++++
> >  include/linux/pstore_ram.h |  87 ++++++++
> >  12 files changed, 1653 insertions(+)
> >  create mode 100644 fs/pstore/Kconfig
> >  create mode 100644 fs/pstore/Makefile
> >  create mode 100644 fs/pstore/fs.c
> >  create mode 100644 fs/pstore/internal.h
> >  create mode 100644 fs/pstore/platform.c
> >  create mode 100644 fs/pstore/ram.c
> >  create mode 100644 fs/pstore/ram_core.c
> >  create mode 100644 include/linux/pstore.h
> >  create mode 100644 include/linux/pstore_ram.h
> >=20
> > diff --git a/common/startup.c b/common/startup.c
> > index 4a303b297aaf..093a23ba08c9 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -60,6 +60,11 @@ static int mount_root(void)
> >  =09=09mount("none", "efivarfs", "/efivars", NULL);
> >  =09}
> > =20
> > +=09if (IS_ENABLED(CONFIG_FS_PSTORE)) {
> > +=09=09mkdir("/pstore", 0);
> > +=09=09mount("none", "pstore", "/pstore", NULL);
> > +=09}
> > +
> >  =09return 0;
> >  }
> >  fs_initcall(mount_root);
> > diff --git a/fs/Kconfig b/fs/Kconfig
> > index 9217bc81ea1e..5413a9295ccc 100644
> > --- a/fs/Kconfig
> > +++ b/fs/Kconfig
> > @@ -89,4 +89,6 @@ config FS_SMHFS
> >  =09  located on a debugging host connected to the target running
> >  =09  Barebox
> > =20
> > +source fs/pstore/Kconfig
> > +
> >  endmenu
> > diff --git a/fs/Makefile b/fs/Makefile
> > index 46932057c1b7..590c068e6045 100644
> > --- a/fs/Makefile
> > +++ b/fs/Makefile
> > @@ -14,3 +14,4 @@ obj-$(CONFIG_FS_UIMAGEFS)=09+=3D uimagefs.o
> >  obj-$(CONFIG_FS_EFI)=09 +=3D efi.o
> >  obj-$(CONFIG_FS_EFIVARFS) +=3D efivarfs.o
> >  obj-$(CONFIG_FS_SMHFS) +=3D smhfs.o
> > +obj-y=09=09=09+=3D pstore/
>=20
> Can we use=20
>=20
>    obj-$(CONFIG_FS_PSTORE) +=3D pstore/
>=20
> ?

Yes, changed it so that this Makefile uses the config symbol and
pstore/Makefile is unconditional then.

Best Regards,

Markus

>=20
> > diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
> > new file mode 100644
> > index 000000000000..2455b5629cb1
> > --- /dev/null
> > +++ b/fs/pstore/Kconfig
> > @@ -0,0 +1,88 @@
> > +menuconfig FS_PSTORE
> > +=09bool
> > +=09prompt "pstore fs support"
>=20
> --=20
> Best regards,
>   Antony Pavlov
>=20

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart2619363.9TjEQ92fCV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWYZDYAAoJEEpcgKtcEGQQtocP/0K7OoxrYiLorAUZl4LlREc7
00vNYyzsoLFBh8n6JA+SwqJuYeDVIT2ZXYn0buJaCM+qJWZAYqwqQtb62N0P8ZU4
YX8Urb4G4+au+6/z6LzEfYN0qkyNDftjVkZifXu3HYNxCL2PEunHnWNEvKNRajb9
iFDXurto/sFUfi0AMeqSsfV7aQdPHvNEq3Z/SrLR3bsxMurehwylPmMdIKEKDbq1
BHx0qXhIwMTGm6rPjX32h4er0uJHhx8uf5EQcU2bZeI8mY3NOVIcBCBLddWMS/8b
MV4X0CkP4K7v44PD8QcH5eXRtntlpmUcB6IddPcesb3Od5nkwOHr+SfoKKB4VHvJ
O7j2DtPOt0nukLsuD7nHlhLAqnohd7f7PY1WagZaWx4/KYz5GubLXsduJGpz7NRQ
NvMoo5TOHK+o2xjmkqCnWqMZsV05djS/lCq70yj9LUE6CIFGSA/2M3eBvB3xNtn9
bclBKNqe0aGLXkztJdC9M7+6VNwP2inPt/UfiJa+XHV4dTtyl3rciGQ+W6wWoIAT
tme5uTJbpMC5SUZd5EGJTICPVu0neYhpJWLL7Q10q33AOyM4DB7izxl3NaPkF4wB
dSOWtIWd4ZVHELXKmPPXEeplphnlchTMAI2NGGFhpJHamIyrbBEW7B+HrFfXWXCR
+yunlHnh817X2sPEXgZC
=XY6i
-----END PGP SIGNATURE-----

--nextPart2619363.9TjEQ92fCV--



--===============6920739087908388038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6920739087908388038==--
