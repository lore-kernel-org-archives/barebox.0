Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eolBy-00047P-A0
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 07:21:24 +0000
Date: Thu, 22 Feb 2018 08:21:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222072110.bm66vgptrv2raish@pengutronix.de>
References: <20180220111706.5199-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180220111706.5199-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH] efi: add bootsource detection
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 20, 2018 at 12:17:06PM +0100, Enrico Jorns wrote:
> We check the supported protocol of the parent EFI device of
> 'efi_loaded_image' to see if we are booted from USB or not (HD)
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/efi/efi-device.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> index 9975aea6f7..3a27323a00 100644
> --- a/drivers/efi/efi-device.c
> +++ b/drivers/efi/efi-device.c
> @@ -17,6 +17,7 @@
>   *
>   */
>  
> +#include <bootsource.h>
>  #include <command.h>
>  #include <common.h>
>  #include <driver.h>
> @@ -385,6 +386,51 @@ static int efi_is_setup_mode(void)
>  	return ret != 1;
>  }
>  
> +static int is_bio_usbdev(struct efi_device *efidev)
> +{
> +	int i;
> +
> +	for (i = 0; i < efidev->num_guids; i++) {
> +		if (!efi_guidcmp(efidev->guids[i], EFI_USB_IO_PROTOCOL_GUID))
> +			return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +static void efi_set_bootsource(void)
> +{
> +	enum bootsource src = BOOTSOURCE_UNKNOWN;
> +	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> +
> +	efi_handle_t *efi_parent;
> +	struct efi_device *bootdev;
> +
> +	if (!efi_loaded_image->parent_handle)
> +		goto out;
> +
> +	efi_parent = efi_find_parent(efi_loaded_image->device_handle);
> +
> +	if (!efi_parent)
> +		goto out;
> +
> +	bootdev = efi_find_device(efi_parent);
> +
> +	if (!bootdev)
> +		goto out;
> +
> +	if (is_bio_usbdev(bootdev)) {
> +		src = BOOTSOURCE_USB;
> +	} else {
> +		src = BOOTSOURCE_HD;
> +	}
> +
> +out:
> +
> +	bootsource_set(src);
> +	bootsource_set_instance(instance);
> +}
> +
>  static int efi_init_devices(void)
>  {
>  	char *fw_vendor = NULL;
> @@ -415,6 +461,8 @@ static int efi_init_devices(void)
>  
>  	efi_register_devices();
>  
> +	efi_set_bootsource();
> +
>  	return 0;
>  }
>  core_initcall(efi_init_devices);
> -- 
> 2.16.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
