Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1juydd-0003F5-R4
 for barebox@lists.infradead.org; Mon, 13 Jul 2020 13:36:58 +0000
References: <20200713120348.4123-1-christian.mauderer@embedded-brains.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dc1462a3-2ac3-65bb-14d2-309e69ebae4c@pengutronix.de>
Date: Mon, 13 Jul 2020 15:36:55 +0200
MIME-Version: 1.0
In-Reply-To: <20200713120348.4123-1-christian.mauderer@embedded-brains.de>
Content-Language: en-US
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
Subject: Re: [PATCH] FIT: Parse `load` and `entry` addresses.
To: Christian Mauderer <christian.mauderer@embedded-brains.de>, barebox@lists.infradead.org

Hello Christian,

On 7/13/20 2:03 PM, Christian Mauderer wrote:
> According to the U-Boot documentation for the FIT file format, the load
> and entry have to be allways defined for a "kernel" or "standalone".
> But Barebox ignored the parameters. That changes with this patch.
> 
> For backward compatibility the default address is still used for images
> without `load` or `entry`.
> ---
>  arch/arm/mach-layerscape/ppa.c |  3 +-
>  common/bootm.c                 |  7 ++--
>  common/image-fit.c             | 61 +++++++++++++++++++++++++++++++++-
>  include/image-fit.h            |  3 +-
>  4 files changed, 68 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> index 477e89478..3eb7ab641 100644
> --- a/arch/arm/mach-layerscape/ppa.c
> +++ b/arch/arm/mach-layerscape/ppa.c
> @@ -82,7 +82,8 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
>  	}
>  
>  
> -	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size);
> +	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size,
> +			     NULL, NULL);
>  	if (ret) {
>  		pr_err("Cannot open firmware image in ppa FIT image: %s\n",
>  		       strerror(-ret));
> diff --git a/common/bootm.c b/common/bootm.c
> index 366f31455..94600cae3 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -222,7 +222,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
>  		unsigned long initrd_size;
>  
>  		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
> -				     &initrd, &initrd_size);
> +				     &initrd, &initrd_size, NULL, NULL);
>  
>  		data->initrd_res = request_sdram_region("initrd",
>  				load_address,
> @@ -348,7 +348,7 @@ void *bootm_get_devicetree(struct image_data *data)
>  		unsigned long of_size;
>  
>  		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
> -				     &of_tree, &of_size);
> +				     &of_tree, &of_size, NULL, NULL);
>  		if (ret)
>  			return ERR_PTR(ret);
>  
> @@ -622,7 +622,8 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		}
>  
>  		ret = fit_open_image(data->os_fit, data->fit_config, "kernel",
> -				     &data->fit_kernel, &data->fit_kernel_size);
> +				     &data->fit_kernel, &data->fit_kernel_size,
> +				     &data->os_address, &data->os_entry);
>  		if (ret)
>  			goto err_out;
>  	}
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 2681d62a9..40ee6d0d8 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -517,12 +517,43 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
>  	return 1;
>  }
>  
> +static int fit_get_address(struct device_node *image, const char *property,
> +			   unsigned long *addr)
> +{
> +	int ret = 0;
> +	uint64_t value64;
> +	uint32_t value32;
> +
> +	if (sizeof(*addr) == sizeof(value64)) {
> +		ret = of_property_read_u64(image, property, &value64);
> +		if (ret == 0) {
> +			*addr = value64;
> +		} else if (ret == -EOVERFLOW) {
> +			ret = of_property_read_u32(image, property, &value32);
> +			if (ret == 0) {
> +				*addr = value32;
> +			}
> +		}
> +	} else if (sizeof(*addr) == sizeof(value32)) {
> +		ret = of_property_read_u32(image, property, &value32);
> +		if (ret == 0) {
> +			*addr = value32;
> +		}
> +	} else {
> +		ret = -ENOTSUPP;
> +	}
> +
> +	return ret;

You can make this more concise by calling of_read_number yourself:

const __be32 *cell;
int len = 0;

cell = of_get_property(image, property, &len);
if (!cell)
	return -EINVAL;
if (len > sizeof(unsigned long))
	return -ENOTSUPP;

*addr = (unsigned long)of_read_number(cell, len / sizeof(*cell));
return 0;

> +}
> +
>  /**
>   * fit_open_image - Open an image in a FIT image
>   * @handle: The FIT image handle
>   * @name: The name of the image to open
>   * @outdata: The returned image
>   * @outsize: Size of the returned image
> + * @load: The load address given by the image
> + * @entry: The entry address given by the image
>   *
>   * Open an image in a FIT image. The returned image is freed during fit_close().
>   * @configuration holds the cookie returned from fit_open_configuration() if
> @@ -532,11 +563,16 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
>   * then only the hash is checked (because opening the configuration already
>   * checks the RSA signature of all involved nodes).
>   *
> + * The load address and entry point of the image description in the FIT will be
> + * parsed if they exist and if the @load and @entry parameters are not NULL.
> + * Otherwise @load and @entry won't be changed.
> + *
>   * Return: 0 for success, negative error code otherwise
>   */
>  int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   const char *name, const void **outdata,
> -		   unsigned long *outsize)
> +		   unsigned long *outsize, unsigned long *load,
> +		   unsigned long *entry)
>  {
>  	struct device_node *image;
>  	const char *unit, *type = NULL, *desc= "(no description)";
> @@ -573,6 +609,29 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  		return -EINVAL;
>  	}
>  
> +	if (load) {
> +		ret = fit_get_address(image, "load", load);
> +		if (ret < 0) {
> +			pr_info("Couldn't get load address in %s. Use default.\n", image->full_name);
> +			ret = 0;
> +		} else {
> +			pr_info("load: 0x%08lx\n", *load);

Fold this pr_info and the next into the already existing one?
That way, we don't print 3 separate lines every time.

> +		}
> +	}
> +
> +	if (load && entry) {
> +		ret = fit_get_address(image, "entry", entry);
> +		if (ret < 0) {
> +			pr_info("Couldn't get entry point in %s. Use default.\n", image->full_name);
> +			ret = 0;
> +		} else {
> +			/* Barebox uses an entry relative to load but the FIT
> +			 * images assume an absolute entry. */
> +			*entry -= *load;
> +			pr_info("entry: 0x%08lx\n", *entry);
> +		}
> +	}
> +
>  	if (conf_node)
>  		ret = fit_verify_hash(handle, image, data, data_len);
>  	else
> diff --git a/include/image-fit.h b/include/image-fit.h
> index 27c9e8351..038732d0d 100644
> --- a/include/image-fit.h
> +++ b/include/image-fit.h
> @@ -31,7 +31,8 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
>  		  const char *name);
>  int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   const char *name, const void **outdata,
> -		   unsigned long *outsize);
> +		   unsigned long *outsize, unsigned long *load,
> +		   unsigned long *entry);
>  
>  void fit_close(struct fit_handle *handle);
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
