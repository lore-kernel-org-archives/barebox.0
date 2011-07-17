Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiTPf-0007iA-PG
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 15:37:49 +0000
Date: Sun, 17 Jul 2011 17:37:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110717153745.GQ6069@pengutronix.de>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/7] device: introduce resource structure to simplify
	resource declaration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Sat, Jul 16, 2011 at 12:45:26PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> and add multi resource per device support
> 
> for now we keep the old map_base and size temporary but will switch all of
> the used step by step to them resource way
> 
> and mirror the first resource to the map_base and size if available
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  include/driver.h       |    4 ++
>  include/linux/ioport.h |  115 ++++++++++++++++++++++++++++++++++++++++++++++++
>  lib/driver.c           |    9 ++++
>  3 files changed, 128 insertions(+), 0 deletions(-)
>  create mode 100644 include/linux/ioport.h
> 
> diff --git a/include/driver.h b/include/driver.h
> index 6a4d45e..ed3df16 100644
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
> @@ -76,6 +77,9 @@ struct device_d {
>  	 * Flash or SDRAM. */
>  	resource_size_t map_base;
>  
> +	struct resource *resource;
> +	int num_resources;
> +
>  	void *platform_data; /*! board specific information about this device */
>  
>  	/*! Devices of a particular class normaly need to store more
> diff --git a/include/linux/ioport.h b/include/linux/ioport.h
> new file mode 100644
> index 0000000..5143115
> --- /dev/null
> +++ b/include/linux/ioport.h
> @@ -0,0 +1,115 @@
> +/*
> + * ioport.h	Definitions of routines for detecting, reserving and
> + *		allocating system resources.
> + *
> + * Authors:	Linus Torvalds
> + */
> +
> +#ifndef _LINUX_IOPORT_H
> +#define _LINUX_IOPORT_H
> +
> +#ifndef __ASSEMBLY__
> +#include <linux/compiler.h>
> +#include <linux/types.h>
> +/*
> + * Resources are tree-like, allowing
> + * nesting etc..
> + */
> +struct resource {
> +	resource_size_t start;
> +	resource_size_t size;
> +	const char *name;
> +	unsigned long flags;
> +};
> +
> +/*
> + * IO resources have these defined flags.
> + */
> +#define IORESOURCE_BITS		0x000000ff	/* Bus-specific bits */
> +
> +#define IORESOURCE_TYPE_BITS	0x00001f00	/* Resource type */
> +#define IORESOURCE_IO		0x00000100
> +#define IORESOURCE_MEM		0x00000200
> +#define IORESOURCE_IRQ		0x00000400
> +#define IORESOURCE_DMA		0x00000800
> +#define IORESOURCE_BUS		0x00001000
> +
> +#define IORESOURCE_PREFETCH	0x00002000	/* No side effects */
> +#define IORESOURCE_READONLY	0x00004000
> +#define IORESOURCE_CACHEABLE	0x00008000
> +#define IORESOURCE_RANGELENGTH	0x00010000
> +#define IORESOURCE_SHADOWABLE	0x00020000
> +
> +#define IORESOURCE_SIZEALIGN	0x00040000	/* size indicates alignment */
> +#define IORESOURCE_STARTALIGN	0x00080000	/* start field is alignment */
> +
> +#define IORESOURCE_MEM_64	0x00100000
> +#define IORESOURCE_WINDOW	0x00200000	/* forwarded by bridge */
> +#define IORESOURCE_MUXED	0x00400000	/* Resource is software muxed */
> +
> +#define IORESOURCE_EXCLUSIVE	0x08000000	/* Userland may not map this resource */
> +#define IORESOURCE_DISABLED	0x10000000
> +#define IORESOURCE_UNSET	0x20000000
> +#define IORESOURCE_AUTO		0x40000000
> +#define IORESOURCE_BUSY		0x80000000	/* Driver has marked this resource busy */
> +
> +/* PnP IRQ specific bits (IORESOURCE_BITS) */
> +#define IORESOURCE_IRQ_HIGHEDGE		(1<<0)
> +#define IORESOURCE_IRQ_LOWEDGE		(1<<1)
> +#define IORESOURCE_IRQ_HIGHLEVEL	(1<<2)
> +#define IORESOURCE_IRQ_LOWLEVEL		(1<<3)
> +#define IORESOURCE_IRQ_SHAREABLE	(1<<4)
> +#define IORESOURCE_IRQ_OPTIONAL		(1<<5)
> +
> +/* PnP DMA specific bits (IORESOURCE_BITS) */
> +#define IORESOURCE_DMA_TYPE_MASK	(3<<0)
> +#define IORESOURCE_DMA_8BIT		(0<<0)
> +#define IORESOURCE_DMA_8AND16BIT	(1<<0)
> +#define IORESOURCE_DMA_16BIT		(2<<0)
> +
> +#define IORESOURCE_DMA_MASTER		(1<<2)
> +#define IORESOURCE_DMA_BYTE		(1<<3)
> +#define IORESOURCE_DMA_WORD		(1<<4)
> +
> +#define IORESOURCE_DMA_SPEED_MASK	(3<<6)
> +#define IORESOURCE_DMA_COMPATIBLE	(0<<6)
> +#define IORESOURCE_DMA_TYPEA		(1<<6)
> +#define IORESOURCE_DMA_TYPEB		(2<<6)
> +#define IORESOURCE_DMA_TYPEF		(3<<6)
> +
> +/* PnP memory I/O specific bits (IORESOURCE_BITS) */
> +#define IORESOURCE_MEM_WRITEABLE	(1<<0)	/* dup: IORESOURCE_READONLY */
> +#define IORESOURCE_MEM_CACHEABLE	(1<<1)	/* dup: IORESOURCE_CACHEABLE */
> +#define IORESOURCE_MEM_RANGELENGTH	(1<<2)	/* dup: IORESOURCE_RANGELENGTH */
> +#define IORESOURCE_MEM_TYPE_MASK	(3<<3)
> +#define IORESOURCE_MEM_8BIT		(0<<3)
> +#define IORESOURCE_MEM_16BIT		(1<<3)
> +#define IORESOURCE_MEM_8AND16BIT	(2<<3)
> +#define IORESOURCE_MEM_32BIT		(3<<3)
> +#define IORESOURCE_MEM_SHADOWABLE	(1<<5)	/* dup: IORESOURCE_SHADOWABLE */
> +#define IORESOURCE_MEM_EXPANSIONROM	(1<<6)
> +
> +/* PnP I/O specific bits (IORESOURCE_BITS) */
> +#define IORESOURCE_IO_16BIT_ADDR	(1<<0)
> +#define IORESOURCE_IO_FIXED		(1<<1)
> +
> +/* PCI ROM control bits (IORESOURCE_BITS) */
> +#define IORESOURCE_ROM_ENABLE		(1<<0)	/* ROM is enabled, same as PCI_ROM_ADDRESS_ENABLE */
> +#define IORESOURCE_ROM_SHADOW		(1<<1)	/* ROM is copy at C000:0 */
> +#define IORESOURCE_ROM_COPY		(1<<2)	/* ROM is alloc'd copy, resource field overlaid */
> +#define IORESOURCE_ROM_BIOS_COPY	(1<<3)	/* ROM is BIOS copy, resource field overlaid */
> +
> +/* PCI control bits.  Shares IORESOURCE_BITS with above PCI ROM.  */
> +#define IORESOURCE_PCI_FIXED		(1<<4)	/* Do not move resource */
> +
> +static inline resource_size_t resource_size(const struct resource *res)
> +{
> +	return res->size;
> +}
> +static inline unsigned long resource_type(const struct resource *res)
> +{
> +	return res->flags & IORESOURCE_TYPE_BITS;
> +}
> +
> +#endif /* __ASSEMBLY__ */
> +#endif	/* _LINUX_IOPORT_H */
> diff --git a/lib/driver.c b/lib/driver.c
> index 4c10a49..ee5e850 100644
> --- a/lib/driver.c
> +++ b/lib/driver.c
> @@ -103,6 +103,15 @@ int register_device(struct device_d *new_device)
>  {
>  	struct driver_d *drv;
>  
> +	/* if no map_base available use the first resource if available
> +	 * so we do not need to duplicate it
> +	 * Temporary fixup until we get rid of map_base and size
> +	 */
> +	if (new_device->map_base == 0 && new_device->resource) {
> +		new_device->map_base = new_device->resource[0].start;
> +		new_device->size = new_device->resource[0].size;
> +	}

I think we don't need this. What we need though is the other way round:

	if (new_device->map_base) {
		dev_warn(new_device, "uses map_base. Please convert to use resources\n")
		new_device->resource = xzalloc(sizeof(struct resource));
		new_device->resource[0].start = new_device->map_base;
		new_device->resource[0].size = new_device->size;
	}

This way all devices have resources, we can convert the drivers and
devices to use resources one by one.

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
