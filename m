Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAyNc-0005Nv-LA
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 07:26:01 +0000
Date: Mon, 10 Sep 2012 09:25:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910072558.GT18243@pengutronix.de>
References: <20120901102248.GJ18708@game.jcrosoft.org>
 <1346502990-21603-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346502990-21603-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] Introduce ARM AMBA bus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 01, 2012 at 02:36:28PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to detect the amba device and use the right driver for it at
> runtime.
> 
> The code is base on linux 3.5.
> 
> +
> +int amba_driver_register(struct amba_driver *drv)
> +{
> +	drv->drv.bus = &amba_bustype;
> +#define SETFN(fn)	if (drv->fn) drv->drv.fn = amba_##fn
> +	SETFN(probe);
> +	SETFN(remove);

Can we please drop this SETFN and just open code it? Being able to grep
for amba_probe and finding its users is quite convenient. No, I don't
care that in Linux it's also done like this.

> +struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t base,
> +	size_t size)
> +{
> +	struct amba_device *dev;
> +
> +	dev = xzalloc(sizeof(*dev));
> +	if (dev) {

xzalloc always returns a valid pointer.

> +		strcpy(dev->dev.name, name);
> +		dev->dev.id = id;
> +		dev->res.start = base;
> +		dev->res.end = base + size - 1;
> +		dev->res.flags = IORESOURCE_MEM;
> +	}
> +
> +	return dev;
> +}
> +
> +/**
> + * struct amba_id - identifies a device on an AMBA bus
> + * @id: The significant bits if the hardware device ID
> + * @mask: Bitmask specifying which bits of the id field are significant when
> + *	matching.  A driver binds to a device when ((hardware device ID) & mask)
> + *	== id.
> + * @data: Private data used by the driver.
> + */
> +struct amba_id {
> +	unsigned int		id;
> +	unsigned int		mask;
> +#ifndef __KERNEL__
> +	kernel_ulong_t		data;
> +#else
> +	void			*data;
> +#endif

Drop this ifdef.

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
