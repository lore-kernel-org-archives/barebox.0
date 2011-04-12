Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Yla-0005pm-Bv
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:16:07 +0000
Message-ID: <4DA40A41.30601@pengutronix.de>
Date: Tue, 12 Apr 2011 10:16:01 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
	<1302532791-20664-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-9-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0658109698=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/12] ARM omap4: Add pcm049 board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0658109698==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig278F02AB9450906DA6D03B40"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig278F02AB9450906DA6D03B40
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/11/2011 04:39 PM, Sascha Hauer wrote:
> This patch adds support for Phytecs pcm049 board
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Makefile                             |    1 +
>  arch/arm/boards/pcm049/Makefile               |    1 +
>  arch/arm/boards/pcm049/board.c                |  200 +++++++++++++++++=
++
>  arch/arm/boards/pcm049/config.h               |    1 +
>  arch/arm/boards/pcm049/env/bin/nand_bootstrap |   31 +++
>  arch/arm/boards/pcm049/env/config             |   53 +++++
>  arch/arm/boards/pcm049/lowlevel.c             |  127 ++++++++++++
>  arch/arm/boards/pcm049/mux.c                  |  254 +++++++++++++++++=
++++++++
>  arch/arm/mach-omap/Kconfig                    |   11 +
>  9 files changed, 679 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/pcm049/Makefile
>  create mode 100644 arch/arm/boards/pcm049/board.c
>  create mode 100644 arch/arm/boards/pcm049/config.h
>  create mode 100644 arch/arm/boards/pcm049/env/bin/nand_bootstrap
>  create mode 100644 arch/arm/boards/pcm049/env/config
>  create mode 100644 arch/arm/boards/pcm049/lowlevel.c
>  create mode 100644 arch/arm/boards/pcm049/mux.c
>=20

[...]

> new file mode 100644
> index 0000000..e9258e1
> --- /dev/null
> +++ b/arch/arm/boards/pcm049/env/config
> @@ -0,0 +1,53 @@
> +#!/bin/sh
> +
> +machine=3Dpcm049
> +eth0.serverip=3D
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
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=3Dubifs
> +rootfsimage=3Droot-$machine.$rootfs_type
                    ^^^^^^^^^^^^^^^^^^^^^

you need to quote here:

${machine}.$rootfs_type

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

dito

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
> +nand_parts=3D"128k(xload)ro,256k(barebox),128k(bareboxenv),2M(kernel),=
-(root)"
> +rootfs_mtdblock_nand=3D4
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


--------------enig278F02AB9450906DA6D03B40
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2kCkQACgkQjTAFq1RaXHMKBgCfXsWUO9b5+Vgeiys3GV8sr7B9
uFgAn2K/ZSNvisVik5m5EnuRyfrTa06F
=dGMM
-----END PGP SIGNATURE-----

--------------enig278F02AB9450906DA6D03B40--


--===============0658109698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0658109698==--
