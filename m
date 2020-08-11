Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5PA1-0002Dl-6m
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 07:57:30 +0000
Date: Tue, 11 Aug 2020 09:57:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811075727.GJ9475@pengutronix.de>
References: <20200715092656.27253-1-christian.mauderer@embedded-brains.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715092656.27253-1-christian.mauderer@embedded-brains.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5] FIT: Parse `load` and `entry` addresses.
To: Christian Mauderer <christian.mauderer@embedded-brains.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

Hi Christian,

On Wed, Jul 15, 2020 at 11:26:56AM +0200, Christian Mauderer wrote:
> According to the U-Boot documentation for the FIT file format, the load
> and entry have to be allways defined for a "kernel" or "standalone".
> But Barebox ignored the parameters. That changes with this patch.
> 
> For backward compatibility the default address is still used for images
> without `load` or `entry`.
> 
> Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
> ---
>  common/blspec.c     |  1 +
>  common/boot.c       |  1 +
>  common/bootm.c      | 24 ++++++++++-
>  common/image-fit.c  | 97 ++++++++++++++++++++++++++++++++++++++-------
>  include/image-fit.h |  3 ++
>  5 files changed, 110 insertions(+), 16 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 7fb62d310..050aed26a 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -142,6 +142,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	globalvar_set_match("bootm.initrd", "");
>  
>  	bootm_data_init_defaults(&data);
> +	data.os_entry = 0;

You set data.os_entry explicitly to 0 here...

>  
>  	devicetree = blspec_entry_var_get(entry, "devicetree");
>  	initrd = blspec_entry_var_get(entry, "initrd");
> diff --git a/common/boot.c b/common/boot.c
> index dcbe5cc2e..93ac1612d 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -104,6 +104,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  
>  	bootm_data_init_defaults(&data);
>  
> +	data.os_entry = 0;

...and here. Why is this done? I think these should be left to the
default UIMAGE_SOME_ADDRESS. In the end the kernels bootet from blspec
or a boot script could be a FIT image as well.

> +int fit_get_image_address(struct fit_handle *handle, void *configuration,
> +			  const char *name, const char *property,
> +			  unsigned long *address)
> +{
> +	struct device_node *image;
> +	const char *unit = name;
> +	int ret;
> +
> +	if (!address || !property || !name)
> +		return -EINVAL;
> +
> +	ret = fit_get_image(handle, configuration, &unit, &image);
> +	if (ret)
> +		return ret;
> +
> +	pr_info("%s/%s: ", image->full_name, property);
> +
> +	ret = fit_get_address(image, property, address);
> +	if (ret < 0)
> +		pr_cont("<not found>\n");
> +	else
> +		pr_cont("0x%lx\n", *address);

pr_cont() doesn't work well in barebox and should be avoided.

Also I think this function shouldn't print anything, the caller should
if it wishes to.

Otherwise the patch looks fine to me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
