Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sugos-0003nE-1K
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 09:26:50 +0000
Date: Fri, 27 Jul 2012 11:26:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727092621.GC30009@pengutronix.de>
References: <1343378484-19963-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343378484-19963-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM/imx/pcm043: increase size of "self" partition
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 10:41:24AM +0200, Uwe Kleine-K=F6nig wrote:
> A barebox image generated from pcm043_defconfig doesn't fit into the
> 0x40000 byte sized self partition as of
> =

> 	v2012.07.0-153-g14c8c60 (command: add missing EXPORT_SYMBOL for find_cmd)

You also must adjust the size in the defconfig.

Sascha

> =

> .
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/pcm043/pcm043.c |    8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm=
043.c
> index b1bf8ef..7ccd973 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -153,15 +153,15 @@ static int imx35_devices_init(void)
>  	if ((reg & 0xc00) =3D=3D 0x800) {   /* reset mode: external boot */
>  		switch ( (reg >> 25) & 0x3) {
>  		case 0x01:              /* NAND is the source */
> -			devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED,=
 "self_raw");
> +			devfs_add_partition("nand0", 0x00000, 0x60000, DEVFS_PARTITION_FIXED,=
 "self_raw");
>  			dev_add_bb_dev("self_raw", "self0");
> -			devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED,=
 "env_raw");
> +			devfs_add_partition("nand0", 0x60000, 0x20000, DEVFS_PARTITION_FIXED,=
 "env_raw");
>  			dev_add_bb_dev("env_raw", "env0");
>  			break;
>  =

>  		case 0x00:              /* NOR is the source */
> -			devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, =
"self0"); /* ourself */
> -			devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, =
"env0");  /* environment */
> +			devfs_add_partition("nor0", 0x00000, 0x60000, DEVFS_PARTITION_FIXED, =
"self0"); /* ourself */
> +			devfs_add_partition("nor0", 0x60000, 0x20000, DEVFS_PARTITION_FIXED, =
"env0");  /* environment */
>  			protect_file("/dev/env0", 1);
>  			break;
>  		}
> -- =

> 1.7.10.4
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
