Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Bkj-0002E1-Oa
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 09:02:17 +0000
Date: Tue, 12 Feb 2013 10:02:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130212090211.GU1906@pengutronix.de>
References: <1360619537-2963-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360619537-2963-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] amba: add oftree probe support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2013 at 10:52:17PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

This breaks some configs:

 config:     arm              imx233-olinuxino_defconfig
drivers/built-in.o: In function `add_of_amba_device':
/home/sha/dude/barebox/barebox-test/drivers/of/base.c:672: undefined reference to `amba_device_add'
make: *** [barebox] Error 1

Sascha

> ---
> v2: fix platform not platfrom
> 
> Best Regards,
> J.
>  drivers/amba/bus.c |    1 +
>  drivers/of/base.c  |   60 +++++++++++++++++++++++++++++++++++++++++++++-------
>  2 files changed, 53 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index d1ab53c..dcb52bf 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -212,6 +212,7 @@ struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t
>  	dev->res.start = base;
>  	dev->res.end = base + size - 1;
>  	dev->res.flags = IORESOURCE_MEM;
> +	dev->dev.resource = &dev->res;
>  
>  	return dev;
>  }
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index eaaeaf4..813b26d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -26,6 +26,7 @@
>  #include <memory.h>
>  #include <sizes.h>
>  #include <linux/ctype.h>
> +#include <linux/amba/bus.h>
>  
>  /**
>   * struct alias_prop - Alias property in 'aliases' node
> @@ -641,18 +642,44 @@ void of_delete_property(struct property *pp)
>  	free(pp);
>  }
>  
> -static struct device_d *add_of_device(struct device_node *node)
> +static struct device_d *add_of_amba_device(struct device_node *node)
>  {
> -	struct device_d *dev;
> +	struct amba_device *dev;
>  	char *name, *at;
> -	const struct property *cp;
>  
> -	if (of_node_disabled(node))
> -		return NULL;
> +	dev = xzalloc(sizeof(*dev));
>  
> -	cp = of_get_property(node, "compatible", NULL);
> -	if (!cp)
> -		return NULL;
> +	name = xstrdup(node->name);
> +	at = strchr(name, '@');
> +	if (at) {
> +		*at = 0;
> +		snprintf(dev->dev.name, MAX_DRIVER_NAME, "%s.%s", at + 1, name);
> +	} else {
> +		strncpy(dev->dev.name, node->name, MAX_DRIVER_NAME);
> +	}
> +
> +	dev->dev.id = DEVICE_ID_SINGLE;
> +	memcpy(&dev->res, &node->resource[0], sizeof(struct resource));
> +	dev->dev.resource = node->resource;
> +	dev->dev.num_resources = 1;
> +	dev->dev.device_node = node;
> +	node->device = &dev->dev;
> +
> +	of_property_read_u32(node, "arm,primecell-periphid", &dev->periphid);
> +
> +	debug("register device 0x%08x\n", node->resource[0].start);
> +
> +	amba_device_add(dev);
> +
> +	free(name);
> +
> +	return &dev->dev;
> +}
> +
> +static struct device_d *add_of_platform_device(struct device_node *node)
> +{
> +	struct device_d *dev;
> +	char *name, *at;
>  
>  	dev = xzalloc(sizeof(*dev));
>  
> @@ -679,6 +706,23 @@ static struct device_d *add_of_device(struct device_node *node)
>  
>  	return dev;
>  }
> +
> +static struct device_d *add_of_device(struct device_node *node)
> +{
> +	const struct property *cp;
> +
> +	if (of_node_disabled(node))
> +		return NULL;
> +
> +	cp = of_get_property(node, "compatible", NULL);
> +	if (!cp)
> +		return NULL;
> +
> +	if (of_device_is_compatible(node, "arm,primecell") == 1)
> +		return add_of_amba_device(node);
> +	else
> +		return add_of_platform_device(node);
> +}
>  EXPORT_SYMBOL(add_of_device);
>  
>  u64 dt_mem_next_cell(int s, const __be32 **cellp)
> -- 
> 1.7.10.4
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
