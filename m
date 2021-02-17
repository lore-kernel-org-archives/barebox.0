Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCJ3H-0008Qs-Ac
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 09:23:20 +0000
References: <20210216173811.4550-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <43bf5ba1-1383-aa9a-3335-5e6eb598ed75@pengutronix.de>
Date: Wed, 17 Feb 2021 10:23:13 +0100
MIME-Version: 1.0
In-Reply-To: <20210216173811.4550-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] usb: otg: Add support to register more than one otg dev
To: Jules Maselbas <jmaselbas@kalray.eu>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On 16.02.21 18:38, Jules Maselbas wrote:
> This allow each otg controller to register one otg device for
> host/peripheral mode switch. The first otg device registered
> "otg0" will also be aliased by "otg" for compatibility.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/otg/otgdev.c | 63 +++++++++++++++++++++++++++-------------
>  1 file changed, 43 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
> index 52f43b75d..734b87266 100644
> --- a/drivers/usb/otg/otgdev.c
> +++ b/drivers/usb/otg/otgdev.c
> @@ -4,28 +4,33 @@
>  #include <driver.h>
>  #include <usb/usb.h>
>  
> -static int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
> -static unsigned int otg_mode;
> +struct otg_mode {
> +	struct device_d dev;
> +	unsigned int var_mode;
> +	unsigned int cur_mode;
> +	int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
> +	void *ctx;
> +};
>  
>  static int otg_set_mode(struct param_d *param, void *ctx)
>  {
> -	static int cur_mode = USB_DR_MODE_OTG;
> +	struct otg_mode *otg = ctx;
>  	int ret;
>  
> -	if (otg_mode == USB_DR_MODE_UNKNOWN)
> +	if (otg->var_mode == USB_DR_MODE_UNKNOWN)
>  		return -EINVAL;
>  
> -	if (otg_mode == cur_mode)
> +	if (otg->var_mode == otg->cur_mode)
>  		return 0;
>  
> -	if (cur_mode != USB_DR_MODE_OTG)
> +	if (otg->cur_mode != USB_DR_MODE_OTG)
>  		return -EBUSY;
>  
> -	ret = set_mode_callback(ctx, otg_mode);
> +	ret = otg->set_mode_callback(otg->ctx, otg->var_mode);
>  	if (ret)
>  		return ret;
>  
> -	cur_mode = otg_mode;
> +	otg->cur_mode = otg->var_mode;
>  
>  	return 0;
>  }
> @@ -47,20 +52,38 @@ int usb_register_otg_device(struct device_d *parent,
>  {
>  	int ret;
>  	struct param_d *param_mode;
> -
> -	if (otg_device.parent)
> -		return -EBUSY;
> -
> -	otg_device.parent = parent;
> -	set_mode_callback = set_mode;
> -	otg_mode = USB_DR_MODE_OTG;
> -
> -	ret = register_device(&otg_device);
> +	struct otg_mode *otg;
> +
> +	otg = xmalloc(sizeof(*otg));
> +	otg->dev.priv = otg;
> +	otg->dev.parent = parent;
> +	otg->dev.id = DEVICE_ID_DYNAMIC;
> +	dev_set_name(&otg->dev, "otg");

dev_set_name frees dev->name, so you should be using xzalloc above.

> +
> +	otg->var_mode = USB_DR_MODE_OTG;
> +	otg->cur_mode = USB_DR_MODE_OTG;
> +	otg->set_mode_callback = set_mode;
> +	otg->ctx = ctx;
> +
> +	/* register otg.mode as an alias of otg0.mode */
> +	if (otg_device.parent == NULL) {
> +		otg_device.parent = parent;
> +		ret = register_device(&otg_device);
> +		if (ret)
> +			return ret;
> +
> +		param_mode = dev_add_param_enum(&otg_device, "mode",
> +				otg_set_mode, NULL, &otg->var_mode,
> +				otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
> +	}
> +
> +	ret = register_device(&otg->dev);
>  	if (ret)
>  		return ret;
>  
> -	param_mode = dev_add_param_enum(&otg_device, "mode",
> -			otg_set_mode, NULL, &otg_mode,
> -			otg_mode_names, ARRAY_SIZE(otg_mode_names), ctx);
> +	param_mode = dev_add_param_enum(&otg->dev, "mode",
> +			otg_set_mode, NULL, &otg->var_mode,
> +			otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
> +
>  	return PTR_ERR_OR_ZERO(param_mode);
>  }
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
