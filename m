Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6FfR-0004KF-JQ
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 10:38:46 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue, 08 Dec 2015 11:38:23 +0100
Message-ID: <1563794.ZGoa3k9mEj@adelgunde>
In-Reply-To: <20151208133552.eded730b31053a53a7115a53@gmail.com>
References: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
 <1449567572-21758-10-git-send-email-mpa@pengutronix.de>
 <20151208133552.eded730b31053a53a7115a53@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2310187454417216171=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 9/9] fs: Add pstore filesystem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


--===============2310187454417216171==
Content-Type: multipart/signed; boundary="nextPart2569050.WXKUEc6y4t"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart2569050.WXKUEc6y4t
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

On Tuesday 08 December 2015 13:35:52 Antony Pavlov wrote:
> On Tue,  8 Dec 2015 10:39:32 +0100
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
> >=20
> > Notes:
> >     Changes in v2:
> >     - Moved the config symbol from the pstore Makefile to the upper=
 level Makefile
> >=20
> >  common/startup.c           |   5 +
> >  fs/Kconfig                 |   2 +
> >  fs/Makefile                |   1 +
> >  fs/pstore/Kconfig          |  86 ++++++++
> >  fs/pstore/Makefile         |   9 +
> >  fs/pstore/fs.c             | 280 +++++++++++++++++++++++++
> >  fs/pstore/internal.h       |  19 ++
> >  fs/pstore/platform.c       | 138 ++++++++++++
> >  fs/pstore/ram.c            | 507 +++++++++++++++++++++++++++++++++=
++++++++++++
> >  fs/pstore/ram_core.c       | 426 +++++++++++++++++++++++++++++++++=
++++
> >  include/linux/pstore.h     |  90 ++++++++
> >  include/linux/pstore_ram.h |  87 ++++++++
> >  12 files changed, 1650 insertions(+)
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
> > --- /dev/null
> > +++ b/fs/pstore/fs.c
> > @@ -0,0 +1,280 @@
> > +/*
> > + * Persistent Storage Barebox filesystem layer
> > + * Copyright =A9 2015 Pengutronix, Markus Pargmann <mpa@pengutroni=
x.de>
> > + *
> > + * This program is free software; you can redistribute it and/or m=
odify
> > + * it under the terms of the GNU General Public License as publish=
ed by
> > + * the Free Software Foundation; either version 2 of the License, =
or
> > + * (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,=

> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public Licen=
se
> > + * along with this program; if not, see <http://www.gnu.org/licens=
es/>.
> > + */
> > +
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <fs.h>
> > +#include <errno.h>
> > +#include <fcntl.h>
> > +#include <fs.h>
> > +#include <malloc.h>
> > +#include <init.h>
> > +#include <linux/stat.h>
> > +#include <linux/err.h>
> > +#include <linux/pstore.h>
> > +#include <libbb.h>
> > +#include <rtc.h>
> > +#include <libfile.h>
> > +#include <linux/pstore.h>
>=20
> <linux/psstore.h> and <fs.h> are included twice.

Oh thanks. Removed these and sorted the includes.

Best Regards,

Markus

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart2569050.WXKUEc6y4t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWZrMfAAoJEEpcgKtcEGQQ46MP/AqxwT70xlCB4XY+ynI5NkaV
dyls0vh5HL7W3lXcQICzJnld9dAOqyOUZQd4RaJnU7DI5pKAZnily68us7WKD/lr
CuiVGf7tX7dYRykTi6BLhkO64I9GmR9eQXGwVN/W36YYRjyY7aEVVObN5yLauw9p
BGBnUPXWRb2Wy0cIZYd//jY89jb/INWybTGT8kIZmTr/rHltp8Mj76sDZJF4WtzL
fzEwGhRGeaPxUEppnPa1afn7XgX131CzcyokOMZKFGdajQS5K5AgDuIFfZPlGzfv
vJ5oW9p2ia0vyhLZXEIvpxaQNpajAY438yLWI/OCxCV28/aLLtVRtto3x1FVQzwx
G6TStnBAjWisYG3qjaw7pvuIzdj++W39GARWW4QpdDZ210/kfiaTAggy9tINmM7J
OFOMSRKxpUUlCzH8/fHDtbzUs/3waQkjAYI1Vtl9kP4Wc3ba67PyWLevPa8bj8f9
1MRn5+odyS+z4ZUO/c8fTMcYTLFlkhaHmbS1X17b9GltHMIn4rAie1EkbxdiDrnI
vdFuUV0Lfds85O2ZwMI1FaV+s4pB0WlUlKxgTHLfVeMXGHRdY0i3I+A8nAhDMLkc
+kC9Rv58Wkvox8FNiA7KB9MOjES+NFnqhRPU4gQiPqLWaMyh15gE1QB6sEW3DpYm
HqVx7/5ePuJfgxv6u2Tu
=K8Bp
-----END PGP SIGNATURE-----

--nextPart2569050.WXKUEc6y4t--



--===============2310187454417216171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2310187454417216171==--
