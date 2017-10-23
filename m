Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6X2g-0005Q6-D3
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 07:21:00 +0000
Date: Mon, 23 Oct 2017 09:20:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171023072036.23nneaapd7orpopv@pengutronix.de>
References: <20171018134117.20289-1-uwe@kleine-koenig.org>
 <20171018134117.20289-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171018134117.20289-2-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: bbu-internal: new handler to make use of
 mmc boot partitions
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Wed, Oct 18, 2017 at 03:41:16PM +0200, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> This handler updates the non-active MMC boot partition and after a
> successful update makes the updated partition the active one. This way
> the machine should continue to be bootable when the update fails.

Adding something like this as a comment above
imx6_bbu_internal_mmcboot_register_handler() would be nice.

> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 71 ++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 71 insertions(+)
> =

> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx=
-bbu-internal.c
> index 254ccb6369e6..c8a8b5b689fc 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -29,6 +29,7 @@
>  #include <linux/mtd/mtd-abi.h>
>  #include <linux/stat.h>
>  #include <ioctl.h>
> +#include <environment.h>
>  #include <mach/bbu.h>
>  =

>  #define FLASH_HEADER_OFFSET_MMC		0x400
> @@ -369,6 +370,63 @@ static int imx_bbu_internal_v2_update(struct bbu_han=
dler *handler, struct bbu_da
>  	return ret;
>  }
>  =

> +static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handle=
r,
> +					      struct bbu_data *data)
> +{
> +	struct imx_internal_bbu_handler *imx_handler =3D
> +		container_of(handler, struct imx_internal_bbu_handler, handler);
> +	int ret;
> +	uint32_t *barker;
> +	char *bootpartvar;
> +	const char *bootpart;
> +	char *devicefile;
> +
> +	barker =3D data->image + imx_handler->flash_header_offset;
> +
> +	if (*barker !=3D IVT_BARKER) {
> +		printf("Board does not provide DCD data and this image is no imximage\=
n");
> +		return -EINVAL;
> +	}
> +
> +	ret =3D asprintf(&bootpartvar, "%s.boot", data->devicefile);
> +	if (ret < 0) {
> +		printf("Failed to allocate string for boot variable\n");

I think messages for failed memory allocations which eat more space than
the actual allocation should be avoided. Just return -ENOMEM without a
message.

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
