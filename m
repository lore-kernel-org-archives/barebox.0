Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhYGH-0002bj-Pl
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 06:54:26 +0000
Date: Mon, 13 Apr 2015 08:54:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413065403.GX9742@pengutronix.de>
References: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627766-17178-2-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428627766-17178-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 1/4] base: Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 10, 2015 at 03:02:43AM +0200, Sebastian Hesselbarth wrote:
> As expected, we would need deferred probing sooner or later. This is
> a first approach to allow devices to return -EPROBE_DEFER and get
> sorted into a list of deferred devices that will be re-probed later.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  drivers/base/driver.c       | 42 +++++++++++++++++++++++++++++++++++++++---
>  include/asm-generic/errno.h |  1 +
>  2 files changed, 40 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 590c97c96424..5eac21f3c950 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -29,6 +29,7 @@
>  #include <console.h>
>  #include <linux/ctype.h>
>  #include <errno.h>
> +#include <init.h>
>  #include <fs.h>
>  #include <of.h>
>  #include <linux/list.h>
> @@ -43,6 +44,7 @@ LIST_HEAD(driver_list);
>  EXPORT_SYMBOL(driver_list);
>  
>  static LIST_HEAD(active);
> +static LIST_HEAD(deferred);
>  
>  struct device_d *get_device_by_name(const char *name)
>  {
> @@ -88,13 +90,20 @@ int device_probe(struct device_d *dev)
>  	list_add(&dev->active, &active);
>  
>  	ret = dev->bus->probe(dev);
> -	if (ret) {
> +	if (ret == 0)
> +		return 0;
> +
> +	if (ret == -EPROBE_DEFER) {
>  		list_del(&dev->active);
> -		dev_err(dev, "probe failed: %s\n", strerror(-ret));
> +		list_add(&dev->active, &deferred);
> +		dev_dbg(dev, "probe deferred\n");
>  		return ret;
>  	}
>  
> -	return 0;
> +	list_del(&dev->active);
> +	dev_err(dev, "probe failed: %s\n", strerror(-ret));
> +
> +	return ret;
>  }
>  
>  int device_detect(struct device_d *dev)
> @@ -213,6 +222,33 @@ int unregister_device(struct device_d *old_dev)
>  }
>  EXPORT_SYMBOL(unregister_device);
>  
> +static int device_probe_deferred(void)
> +{
> +	struct device_d *dev, *tmp;
> +	struct driver_d *drv;
> +	int retries = 10;
> +
> +	do {
> +		if (list_empty(&deferred))
> +			break;
> +
> +		list_for_each_entry_safe(dev, tmp, &deferred, active) {
> +			list_del(&dev->active);
> +
> +			if (dev->bus) {
> +				bus_for_each_driver(dev->bus, drv) {
> +					if (!match(drv, dev))
> +						break;
> +				}
> +				device_probe(dev);
> +			}
> +		}
> +	} while (retries--);

Instead of a hardcoded loop counter I think this should be "while at least
one device successfully probed". Also if probe fails and the return
value is still -EPROBE_DEFER you have to add the device to the deferred
list again.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
