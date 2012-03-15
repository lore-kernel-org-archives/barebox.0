Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8Gls-0006kF-EB
 for barebox@lists.infradead.org; Thu, 15 Mar 2012 19:55:40 +0000
Date: Thu, 15 Mar 2012 20:55:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120315195527.GF3852@pengutronix.de>
References: <1331815606-15113-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331815606-15113-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pcm038: increase size of barebox partition
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 15, 2012 at 01:46:46PM +0100, Teresa G=E1mez wrote:
> The image built with pcm038_defconfig is >256k so increase
> the size of the barebox partition.
> =


Applied, thanks.

Sascha

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm038/env/config |    5 +++--
>  arch/arm/boards/pcm038/pcm038.c   |   12 ++++++++----
>  2 files changed, 11 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/e=
nv/config
> index eb0f9c1..b1a5f42 100644
> --- a/arch/arm/boards/pcm038/env/config
> +++ b/arch/arm/boards/pcm038/env/config
> @@ -40,11 +40,12 @@ autoboot_timeout=3D3
>  =

>  bootargs=3D"console=3Dttymxc0,115200"
>  =

> -nor_parts=3D"256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
> +nor_parts=3D"512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
>  rootfs_mtdblock_nor=3D3
>  =

> -nand_parts=3D"256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
> +nand_parts=3D"512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
>  rootfs_mtdblock_nand=3D7
> +nand_device=3D"mxc_nand"
>  =

>  # set a fancy prompt (if support is compiled in)
>  PS1=3D"\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm=
038.c
> index 8dd6521..58dacae 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -274,16 +274,20 @@ static int pcm038_devices_init(void)
>  	case GPCR_BOOT_16BIT_NAND_2k:
>  	case GPCR_BOOT_16BIT_NAND_512:
>  	case GPCR_BOOT_8BIT_NAND_512:
> -		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_=
raw");
> +		devfs_add_partition("nand0", 0x00000, 0x80000,
> +					PARTITION_FIXED, "self_raw");
>  		dev_add_bb_dev("self_raw", "self0");
>  =

> -		devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_r=
aw");
> +		devfs_add_partition("nand0", 0x80000, 0x100000,
> +					PARTITION_FIXED, "env_raw");
>  		dev_add_bb_dev("env_raw", "env0");
>  		envdev =3D "NAND";
>  		break;
>  	default:
> -		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0"=
);
> -		devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
> +		devfs_add_partition("nor0", 0x00000, 0x80000,
> +					PARTITION_FIXED, "self0");
> +		devfs_add_partition("nor0", 0x80000, 0x100000,
> +					PARTITION_FIXED, "env0");
>  		protect_file("/dev/env0", 1);
>  =

>  		envdev =3D "NOR";
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
