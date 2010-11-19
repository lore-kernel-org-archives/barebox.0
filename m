Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJLtv-0001wM-Qg
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 08:00:57 +0000
Date: Fri, 19 Nov 2010 09:00:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101119080049.GA6017@pengutronix.de>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/5] device: introduce resource structure to simplify
	resource delaration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Fri, Nov 12, 2010 at 07:18:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> introdude also some helper to manager them
> 
> and add multi resource per device support
> 
> ram device: use resource structure instead of memory_platform_data
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>


You shouldn't use a resource_size_t type to access registers. This will
lead to problems when we start to support 64bit resource sizes. Instead
we should introduce a

#define resource_size_to_iomem(size) (void __force __iomem *)(size)

macro which does the conversion to a void __iomem * type. In a more
advanced version this could also spit a warning when the resource start
is bigger than a pointer type. As an additional plus we'll get rid of
some sparse warnings where map_base is used for readl/writel.


> diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
> index 11cf2a4..e89f8bb 100644
> --- a/arch/arm/mach-imx/devices.c
> +++ b/arch/arm/mach-imx/devices.c
> @@ -9,8 +9,8 @@ static struct device_d *imx_add_device(char *name, int id, void *base, int size,
>  	dev = xzalloc(sizeof(*dev));
>  	strcpy(dev->name,name);
>  	dev->id = id;
> -	dev->map_base = (unsigned long)base;
> -	dev->size = size;
> +	dev_resource_set_start(dev, (unsigned long)base);
> +	dev_resource_set_size(dev, (unsigned long)size);
>  	dev->platform_data = pdata;

Should be a cast to resource_size_t.

> diff --git a/include/driver.h b/include/driver.h
> index b9edca0..c7dce1e 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -24,6 +24,7 @@
>  #define DRIVER_H
>  
>  #include <linux/list.h>
> +#include <linux/ioport.h>
>  
>  #define MAX_DRIVER_NAME		32
>  #define FORMAT_DRIVER_MANE_ID	"%s%d"
> @@ -70,11 +71,8 @@ struct device_d {
>  	 * something like eth0 or nor0. */
>  	int id;
>  
> -	resource_size_t size;
> -
> -	/*! For devices which are directly mapped into memory, i.e. NOR
> -	 * Flash or SDRAM. */
> -	resource_size_t map_base;
> +	struct resource *resource;
> +	int num_resources;
>  
>  	void *platform_data; /*! board specific information about this device */
>  
> @@ -184,6 +182,41 @@ static inline const char *dev_name(const struct device_d *dev)
>  	return dev_id(dev);
>  }
>  
> +/* ressource helper */

s/ressource/resource/

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
