Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OOSCh-0001qA-Pa
	for barebox@lists.infradead.org; Tue, 15 Jun 2010 09:13:09 +0000
Date: Tue, 15 Jun 2010 11:13:03 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100615091303.GB17595@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
	<1276508921-3264-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1276508921-3264-8-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/11] add a generic default environment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> new file mode 100644
> index 0000000..8c300a3
> --- /dev/null
> +++ b/defaultenv/bin/boot
> @@ -0,0 +1,110 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +if [ x$1 =3D xnand ]; then
> +	rootfs_loc=3Dnand
> +	kernel_loc=3Dnand
> +elif [ x$1 =3D xnor ]; then
> +	rootfs_loc=3Dnor
> +	kernel_loc=3Dnor
> +elif [ x$1 =3D xnet ]; then
> +	rootfs_loc=3Dnet
> +	kernel_loc=3Dnet
> +fi
case "$1" in
nand|nor|net)
	rootfs_loc=3D$1;
	kernel_loc=3D$1;
	;;
esac

> +
> +
> +if [ x$ip =3D xdhcp ]; then
> +	bootargs=3D"$bootargs ip=3Ddhcp"
> +elif [ x$ip =3D xnone ]; then
> +	bootargs=3D"ip=3Dnone"
> +else
> +	bootargs=3D"$bootargs ip=3D$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
> +fi
> +
> +
> +if [ $rootfs_loc =3D net ]; then
"x$rootfs_loc" =3D "xnet"

> +	bootargs=3D"$bootargs root=3D/dev/nfs nfsroot=3D$nfsroot,v3,tcp noinitr=
d"
> +elif [ $rootfs_loc =3D initrd ]; then
> +	bootargs=3D"$bootargs root=3D/dev/ram0 rdinit=3D/sbin/init"
Wouldn't it be nice to load the initrd into /dev/ram0, too?

> +else
> +	if [ x$rootfs_loc =3D xnand ]; then
> +		rootfs_mtdblock=3D$rootfs_mtdblock_nand
> +	else
> +		rootfs_mtdblock=3D$rootfs_mtdblock_nor
> +	fi
> +
> +	if [ $rootfs_type =3D ubifs ]; then
> +		bootargs=3D"$bootargs root=3Dubi0:root ubi.mtd=3D$rootfs_mtdblock"
> +	else
> +		bootargs=3D"$bootargs root=3D/dev/mtdblock$rootfs_mtdblock"
> +	fi
> +
> +	bootargs=3D"$bootargs rootfstype=3D$rootfs_type noinitrd"
> +fi
> +
> +if [ -n $nor_parts ]; then
> +	mtdparts=3D"${mtdparts}physmap-flash.o:${nor_parts};"
> +fi
> +
> +if [ -n $nand_parts ]; then
> +	mtdparts=3D"${mtdparts}$nand_device:${nor_parts};"
> +fi
> +
> +if [ -n $mtdparts ]; then
> +	bootargs=3D"${bootargs} mtdparts=3D\"${mtdparts}\""
> +fi
> +
> +if [ ! -e /dev/ram0.kernelraw ]; then
> +	# arm raw kernel images are usually located at sdram start + 0x8000
> +	addpart dev/ram0 8M@0x8000(kernelraw)
> +fi
> +
> +if [ ! -e /dev/ram0.kernel ]; then
> +	# Here we can safely put the kernel without risking of overwriting it
> +	# while extracting
> +	addpart dev/ram0 8M(kernel)
> +fi
> +
> +if [ $kernel_loc =3D net ]; then
> +	if [ x$ip =3D xdhcp ]; then
> +		dhcp
> +	fi
> +	if [ $kernelimage_type =3D uimage ]; then
> +		netload=3D"/dev/ram0.kernel"
> +	elif [ $kernelimage_type =3D zimage ]; then
> +		netload=3D"/dev/ram0.kernel"
> +	elif [ $kernelimage_type =3D raw ]; then
> +		netload=3D"/dev/ram0.kernelraw"
> +	elif [ $kernelimage_type =3D raw_lzo ]; then
> +		netload=3D"/dev/ram0.kernel"
> +	else
> +		echo "error: missing kernel_image_type"
> +		exit 1
> +	fi
> +	tftp $kernelimage $netload || exit 1
> +	kdev=3D"$netload"
> +elif [ $kernel_loc =3D nor ]; then
> +	kdev=3D"/dev/nor0.kernel"
> +elif [ $kernel_loc =3D nand ]; then
> +	kdev=3D"/dev/nand0.kernel.bb"
> +else
> +	echo "error: missing kernel_loc"
> +	exit 1
> +fi
> +
> +if [ $kernelimage_type =3D uimage ]; then
> +	bootm $kdev
> +elif [ $kernelimage_type =3D zimage ]; then
> +	bootz $kdev
> +elif [ $kernelimage_type =3D raw ]; then
> +	if [ $kernel_loc !=3D net ]; then
> +		ec
maybe better spell that out?

> +		cp $kdev /dev/ram0.kernelraw
> +	fi
> +	bootu /dev/ram0.kernelraw
> +elif [ $kernelimage_type =3D raw_lzo ]; then
> +	unlzo $kdev /dev/ram0.kernelraw
> +	bootu /dev/ram0.kernelraw
> +fi
> +
trailing new line

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
