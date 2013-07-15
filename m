Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uydpy-0005gF-Jq
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 08:08:51 +0000
Date: Mon, 15 Jul 2013 10:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130715080823.GM14452@pengutronix.de>
References: <1373574210-19462-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373574210-19462-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] base: Transform "platform_match" into "device_match"
 and make this function public
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jul 12, 2013 at 12:23:28AM +0400, Alexander Shiyan wrote:
> This change will allow reuse this function for other buses.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/base/bus.c      | 24 ++++++++++++++++++++++++
>  drivers/base/platform.c | 26 +-------------------------
>  include/driver.h        |  1 +
>  3 files changed, 26 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/base/bus.c b/drivers/base/bus.c
> index 5251be6..4357020 100644
> --- a/drivers/base/bus.c
> +++ b/drivers/base/bus.c
> @@ -46,3 +46,27 @@ int bus_register(struct bus_type *bus)
>  
>  	return 0;
>  }
> +
> +int device_match(struct device_d *dev, struct driver_d *drv)
> +{
> +	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
> +	    drv->of_compatible)
> +		return of_match(dev, drv);
> +
> +	if (!strcmp(dev->name, drv->name))
> +		return 0;
> +
> +	if (drv->id_table) {
> +		struct platform_device_id *id = drv->id_table;
> +
> +		while (id->name) {
> +			if (!strcmp(id->name, dev->name)) {
> +				dev->id_entry = id;
> +				return 0;
> +			}
> +			id++;
> +		}
> +	}
> +
> +	return -1;
> +}
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index e1a8472..34a79b2 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -21,30 +21,6 @@
>  #include <errno.h>
>  #include <init.h>
>  
> -static int platform_match(struct device_d *dev, struct driver_d *drv)
> -{
> -	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
> -			drv->of_compatible)
> -		return of_match(dev, drv);
> -
> -	if (!strcmp(dev->name, drv->name))
> -		return 0;
> -
> -	if (drv->id_table) {
> -		struct platform_device_id *id = drv->id_table;
> -
> -		while (id->name) {
> -			if (!strcmp(id->name, dev->name)) {
> -				dev->id_entry = id;
> -				return 0;
> -			}
> -			id++;
> -		}
> -	}
> -
> -	return -1;
> -}
> -
>  static int platform_probe(struct device_d *dev)
>  {
>  	return dev->driver->probe(dev);
> @@ -71,7 +47,7 @@ int platform_device_register(struct device_d *new_device)
>  
>  struct bus_type platform_bus = {
>  	.name = "platform",
> -	.match = platform_match,
> +	.match = device_match,
>  	.probe = platform_probe,
>  	.remove = platform_remove,
>  };
> diff --git a/include/driver.h b/include/driver.h
> index b18318f..d15c9dd 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -384,6 +384,7 @@ struct bus_type {
>  };
>  
>  int bus_register(struct bus_type *bus);
> +int device_match(struct device_d *dev, struct driver_d *drv);
>  
>  extern struct list_head bus_list;
>  
> -- 
> 1.8.1.5
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
