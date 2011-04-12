Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9YnZ-0005se-2v
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:18:09 +0000
Message-ID: <4DA40ABF.1010105@pengutronix.de>
Date: Tue, 12 Apr 2011 10:18:07 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
	<1302532791-20664-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-7-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0952294280=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/12] ARM omap4: panda board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0952294280==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig73A3B7911F1E2C936CC3F583"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig73A3B7911F1E2C936CC3F583
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/11/2011 04:39 PM, Sascha Hauer wrote:
> This patch adds support for the TI omap4 panda board.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Makefile                |    1 +
>  arch/arm/boards/panda/Makefile   |    1 +
>  arch/arm/boards/panda/board.c    |  230 ++++++++++++++++++++++++++++++=
++++
>  arch/arm/boards/panda/config.h   |    1 +
>  arch/arm/boards/panda/env/config |   45 +++++++
>  arch/arm/boards/panda/lowlevel.c |  121 ++++++++++++++++++
>  arch/arm/boards/panda/mux.c      |  257 ++++++++++++++++++++++++++++++=
++++++++
>  arch/arm/mach-omap/Kconfig       |    8 ++
>  8 files changed, 664 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/panda/Makefile
>  create mode 100644 arch/arm/boards/panda/board.c
>  create mode 100644 arch/arm/boards/panda/config.h
>  create mode 100644 arch/arm/boards/panda/env/config
>  create mode 100644 arch/arm/boards/panda/lowlevel.c
>  create mode 100644 arch/arm/boards/panda/mux.c
>=20

[...]

> diff --git a/arch/arm/boards/panda/env/config b/arch/arm/boards/panda/e=
nv/config
> new file mode 100644
> index 0000000..5c65d21
> --- /dev/null
> +++ b/arch/arm/boards/panda/env/config
> @@ -0,0 +1,45 @@
> +#!/bin/sh
> +
> +machine=3Dpanda
> +user=3D
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=3Ddhcp
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=3Da.b.c.d
> +#eth0.netmask=3Da.b.c.d
> +#eth0.gateway=3Da.b.c.d
> +#eth0.serverip=3Da.b.c.d
> +
> +# can be either 'nfs', 'tftp', 'nor' or 'nand'
> +kernel_loc=3Dtftp
> +# can be either 'net', 'nor', 'nand' or 'initrd'
> +rootfs_loc=3Dnet
> +
> +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo=

> +kernelimage_type=3Dzimage
> +kernelimage=3DzImage-$machine
> +#kernelimage_type=3Duimage
> +#kernelimage=3DuImage-$machine
> +#kernelimage_type=3Draw
> +#kernelimage=3DImage-$machine
> +#kernelimage_type=3Draw_lzo
> +#kernelimage=3DImage-$machine.lzo
                      ^^^^^^^^^^^^

${machine}.lzo

> +
> +if [ -n $user ]; then
> +	kernelimage=3D"$user"-"$kernelimage"
> +	nfsroot=3D"$eth0.serverip:/home/$user/nfsroot/$machine"
> +	rootfsimage=3D"$user"-"$rootfsimage"
> +else
> +	nfsroot=3D"$eth0.serverip:/path/to/nfs/root"
> +fi
> +
> +autoboot_timeout=3D3
> +
> +bootargs=3D"console=3DttyO2,115200"
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1=3D"\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> +

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig73A3B7911F1E2C936CC3F583
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2kCr8ACgkQjTAFq1RaXHOgFACfQ/1/9KN1xhHWjoyxXTGea87n
kLYAniZgEdls9u/KFY8uuCy6Sm5P1vw0
=rCQy
-----END PGP SIGNATURE-----

--------------enig73A3B7911F1E2C936CC3F583--


--===============0952294280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0952294280==--
