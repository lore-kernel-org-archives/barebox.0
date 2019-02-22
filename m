Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5vp-0006Mf-Ut
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 08:11:43 +0000
Date: Fri, 22 Feb 2019 09:11:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222081139.wf775ytgd6zerdsv@pengutronix.de>
References: <20190221102531.25291-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190221102531.25291-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] imd: create new helper macro to add data from oftree
 to image meta data
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, "Thorsten K . Scherer" <t.scherer@eckelmann.de>

Hi Uwe,

On Thu, Feb 21, 2019 at 11:25:30AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  include/image-metadata.h | 4 ++++
>  scripts/gen-dtb-s        | 4 ++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
> =

> diff --git a/include/image-metadata.h b/include/image-metadata.h
> index 8739bffb92e1..5904d95acd37 100644
> --- a/include/image-metadata.h
> +++ b/include/image-metadata.h
> @@ -118,6 +118,10 @@ static inline void imd_used(const void *unused)
>  =

>  #define IMD_USED(_name) \
>  	imd_used(&__barebox_imd_##_name)
> +#define IMD_USED_OF(_name) ({ \
> +	extern char __barebox_imd_OF_ ## _name[]; \
> +	imd_used(&__barebox_imd_OF_ ## _name); \
> +	})
>  =

>  #endif /* __BAREBOX__ */
>  =

> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index 2b44ffb361eb..c3144df851bf 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -18,8 +18,8 @@ FDTGET=3Dscripts/dtc/fdtget
>  =

>  if [ "$imd" =3D "y" ]; then
>  	echo ".section .barebox_imd_0.${name},\"a\""
> -	echo ".global __imd_${name}_start"
> -	echo "__imd_${name}_start:"
> +	echo ".global __barebox_imd_OF_${name}"
> +	echo "__barebox_imd_OF_${name}:"

This breaks somewhere when the compressed variants of the dtbs are used.
Building imx_v7_defconfig fails here with:

arch/arm/dts/built-in-pbl.o: In function `__dtb_z_imx6dl_wandboard_end':
arch/arm/dts/pbl-vf610-zii-ssmb-spu3.dtb.o:(.dtbz.rodata.imx6dl_wandboard+0=
x2340): undefined reference to `__imd_imx6dl_wandboard_start'
  OBJCOPYB images/start_imx6dl_nitrogen6x_1g.pblb
arch/arm/dts/built-in-pbl.o: In function `__dtb_z_imx6q_wandboard_end':
arch/arm/dts/pbl-vf610-zii-ssmb-spu3.dtb.o:(.dtbz.rodata.imx6q_wandboard+0x=
2320): undefined reference to `__imd_imx6q_wandboard_start'

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
