Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPjOe-0004dl-NM
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 06:55:18 +0000
Date: Mon, 4 Jun 2018 08:55:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180604065504.d6dxbhhhh4o5jgcb@pengutronix.de>
References: <20180531212817.32604-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180531212817.32604-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] kwbimage_v0: add support to detect and boot a mvebu v0
 image
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2018 at 11:28:17PM +0200, Uwe Kleine-K=F6nig wrote:
> The differences between v0 and v1 of the mvebu kwbimage are small enough
> that the function to boot such an image can be shared between both
> variants.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/kwbootimage.c | 11 +++++++++--
>  common/filetype.c                 | 22 +++++++++++++++++-----
>  include/filetype.h                |  1 +
>  3 files changed, 27 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-mvebu/kwbootimage.c b/arch/arm/mach-mvebu/kwbo=
otimage.c
> index 8d364ceb7b31..e379d732fed6 100644
> --- a/arch/arm/mach-mvebu/kwbootimage.c
> +++ b/arch/arm/mach-mvebu/kwbootimage.c
> @@ -10,7 +10,7 @@
>  #include <asm/unaligned.h>
>  #include <mach/common.h>
>  =

> -static int do_bootm_kwbimage_v1(struct image_data *data)
> +static int do_bootm_kwbimage_v0_v1(struct image_data *data)
>  {
>  	int fd, ret;
>  	loff_t offset;
> @@ -69,14 +69,21 @@ out_free:
>  	return ret;
>  }
>  =

> +static struct image_handler image_handler_kwbimage_v0_handler =3D {
> +	.name =3D "MVEBU kwbimage v0",
> +	.bootm =3D do_bootm_kwbimage_v0_v1,
> +	.filetype =3D filetype_kwbimage_v0,
> +};
> +
>  static struct image_handler image_handler_kwbimage_v1_handler =3D {
>  	.name =3D "MVEBU kwbimage v1",
> -	.bootm =3D do_bootm_kwbimage_v1,
> +	.bootm =3D do_bootm_kwbimage_v0_v1,
>  	.filetype =3D filetype_kwbimage_v1,
>  };
>  =

>  static int mvebu_register_kwbimage_image_handler(void)
>  {
> +	register_image_handler(&image_handler_kwbimage_v0_handler);
>  	register_image_handler(&image_handler_kwbimage_v1_handler);
>  =

>  	return 0;
> diff --git a/common/filetype.c b/common/filetype.c
> index 444ec14cc4b6..bb807df721d9 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -65,7 +65,8 @@ static const struct filetype_str filetype_str[] =3D {
>  	[filetype_exe] =3D { "MS-DOS executable", "exe" },
>  	[filetype_mxs_bootstream] =3D { "Freescale MXS bootstream", "mxsbs" },
>  	[filetype_socfpga_xload] =3D { "SoCFPGA prebootloader image", "socfpga-=
xload" },
> -	[filetype_kwbimage_v1] =3D { "MVEBU kwbimage (v1)", "kwb" },
> +	[filetype_kwbimage_v0] =3D { "MVEBU kwbimage (v0)", "kwb0" },
> +	[filetype_kwbimage_v1] =3D { "MVEBU kwbimage (v1)", "kwb1" },
>  	[filetype_android_sparse] =3D { "Android sparse image", "sparse" },
>  	[filetype_arm64_linux_image] =3D { "ARM aarch64 Linux image", "aarch64-=
linux" },
>  };
> @@ -302,10 +303,21 @@ enum filetype file_detect_type(const void *_buf, si=
ze_t bufsize)
>  	if ((buf8[0] =3D=3D 0x5a || buf8[0] =3D=3D 0x69 || buf8[0] =3D=3D 0x78 =
||
>  	     buf8[0] =3D=3D 0x8b || buf8[0] =3D=3D 0x9c) &&
>  	    buf8[0x1] =3D=3D 0 && buf8[0x2] =3D=3D 0 && buf8[0x3] =3D=3D 0 &&
> -	    buf8[0x8] =3D=3D 1 && buf8[0x18] =3D=3D 0 && buf8[0x1b] =3D=3D 0 &&
> -	    buf8[0x1c] =3D=3D 0 && buf8[0x1d] =3D=3D 0 &&
> -	    (buf8[0x1e] =3D=3D 0 || buf8[0x1e] =3D=3D 1))
> -		return filetype_kwbimage_v1;
> +	    buf8[0x18] =3D=3D 0 && buf8[0x1b] =3D=3D 0 && buf8[0x1c] =3D=3D 0) {
> +		unsigned char sum =3D 0;
> +		int i;
> +
> +		for (i =3D 0; i <=3D 0x1e; ++i)
> +			sum +=3D buf8[i];
> +
> +		if (sum =3D=3D buf8[0x1f] && buf8[0x8] =3D=3D 0)
> +			return filetype_kwbimage_v0;
> +
> +		if (sum =3D=3D buf8[0x1f] &&
> +		    buf8[0x8] =3D=3D 1 && buf8[0x1d] =3D=3D 0 &&
> +		    (buf8[0x1e] =3D=3D 0 || buf8[0x1e] =3D=3D 1))
> +			return filetype_kwbimage_v1;
> +	}
>  =

>  	if (is_sparse_image(_buf))
>  		return filetype_android_sparse;
> diff --git a/include/filetype.h b/include/filetype.h
> index 9986938ddb7c..d9963a24496c 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -38,6 +38,7 @@ enum filetype {
>  	filetype_xz_compressed,
>  	filetype_mxs_bootstream,
>  	filetype_socfpga_xload,
> +	filetype_kwbimage_v0,
>  	filetype_kwbimage_v1,
>  	filetype_android_sparse,
>  	filetype_arm64_linux_image,
> -- =

> 2.17.0
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
