Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGYE-0003XE-N2
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:43:40 +0000
Date: Mon, 11 Jun 2018 08:43:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611064326.zkre4wacg2zkluov@pengutronix.de>
References: <20180608084244.12816-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180608084244.12816-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mvebu: create bbu handler for kwb images and use it on
 cubox
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 08, 2018 at 10:42:44AM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> together with the fixup for write_file_flash to not use O_TRUNC and
> O_CREAT, this was tested on top of next.
> =

> Best regards
> Uwe
> =

>  arch/arm/boards/solidrun-cubox/board.c | 15 ++++++-
>  arch/arm/mach-mvebu/Makefile           |  1 +
>  arch/arm/mach-mvebu/include/mach/bbu.h |  3 ++
>  arch/arm/mach-mvebu/kwb_bbu.c          | 54 ++++++++++++++++++++++++++
>  4 files changed, 72 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-mvebu/include/mach/bbu.h
>  create mode 100644 arch/arm/mach-mvebu/kwb_bbu.c
> =

> diff --git a/arch/arm/boards/solidrun-cubox/board.c b/arch/arm/boards/sol=
idrun-cubox/board.c
> index a28f4197dfd4..aac93afb0c89 100644
> --- a/arch/arm/boards/solidrun-cubox/board.c
> +++ b/arch/arm/boards/solidrun-cubox/board.c
> @@ -14,4 +14,17 @@
>   *
>   */
>  =

> -/* empty */
> +#include <common.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +
> +static int cubox_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("solidrun,cubox"))
> +		return 0;
> +
> +	mvebu_bbu_flash_register_handler("flash", "/dev/m25p0", 0, true);
> +
> +	return 0;
> +}
> +device_initcall(cubox_devices_init);
> diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
> index 87a85119193e..cc2b926438e4 100644
> --- a/arch/arm/mach-mvebu/Makefile
> +++ b/arch/arm/mach-mvebu/Makefile
> @@ -1,4 +1,5 @@
>  obj-pbl-y			+=3D common.o
> +obj-y				+=3D kwb_bbu.o
>  obj-$(CONFIG_ARCH_ARMADA_370)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_ARMADA_XP)	+=3D armada-370-xp.o
>  obj-$(CONFIG_ARCH_ARMADA_38X)	+=3D armada-370-xp.o
> diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/arch/arm/mach-mvebu=
/include/mach/bbu.h
> new file mode 100644
> index 000000000000..f1021e52ce9f
> --- /dev/null
> +++ b/arch/arm/mach-mvebu/include/mach/bbu.h
> @@ -0,0 +1,3 @@
> +int mvebu_bbu_flash_register_handler(const char *name,
> +				     char *devicefile, int version,
> +				     bool isdefault);
> diff --git a/arch/arm/mach-mvebu/kwb_bbu.c b/arch/arm/mach-mvebu/kwb_bbu.c
> new file mode 100644
> index 000000000000..f79464fe53e4
> --- /dev/null
> +++ b/arch/arm/mach-mvebu/kwb_bbu.c
> @@ -0,0 +1,54 @@
> +#include <bbu.h>
> +#include <libfile.h>
> +#include <printk.h>
> +
> +#include <mach/bbu.h>
> +
> +struct mvebu_bbu_handler {
> +	struct bbu_handler bbuh;
> +	int version;
> +};
> +
> +static int mvebu_bbu_flash_update_handler(struct bbu_handler *bbuh,
> +					  struct bbu_data *data)
> +{
> +	struct mvebu_bbu_handler *mbbuh =3D
> +		container_of(bbuh, struct mvebu_bbu_handler, bbuh);
> +	const void *image =3D data->image;
> +	size_t size =3D data->len;
> +	enum filetype ft =3D file_detect_type(image, size);
> +
> +	if ((mbbuh->version =3D=3D 0 && ft =3D=3D filetype_kwbimage_v0) ||
> +	    (mbbuh->version =3D=3D 1 && ft =3D=3D filetype_kwbimage_v1) ||
> +	    data->flags & BBU_FLAG_FORCE) {
> +		int ret =3D bbu_confirm(data);
> +		if (ret)
> +			return ret;
> +
> +		return write_file_flash(bbuh->devicefile, image, size);
> +	} else {
> +		pr_err("%s is not a valid kwbimage\n", data->imagefile);
> +		return -EINVAL;
> +	}
> +}

Could this code be shared with other boards?

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
