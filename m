Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dc7X5-0008Pq-5T
 for barebox@lists.infradead.org; Mon, 31 Jul 2017 10:02:41 +0000
Message-ID: <1501495333.2431.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 31 Jul 2017 12:02:13 +0200
In-Reply-To: <20170727050055.14188-1-o.rempel@pengutronix.de>
References: <20170727050055.14188-1-o.rempel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1 1/2] of: base: port of_device_is_big_endian from linux
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 27.07.2017, 07:00 +0200 schrieb Oleksij Rempel:
> > commit 37786c7fee40771d13901de129af7e084ed48b55
> > Author: Kevin Cernekee <cernekee@gmail.com>
> > Date:   Thu Apr 9 13:05:14 2015 -0700
> > 
> >    of: Add helper function to check MMIO register endianness
> > 
> >    SoC peripherals can come in several different flavors:
> > 
> >     - little-endian: registers always need to be accessed in LE
> > mode (so the
> >       kernel should perform a swap if the CPU is running BE)
> > 
> >     - big-endian: registers always need to be accessed in BE mode
> > (so the
> >       kernel should perform a swap if the CPU is running LE)
> > 
> >     - native-endian: the bus will automatically swap accesses, so
> > the kernel
> >       should never swap
> > 
> >    Introduce a function that checks an OF device node to see
> > whether it
> >    contains a "big-endian" or "native-endian" property.  For the
> > former case,
> >    always return true.  For the latter case, return true iff the
> > kernel was
> >    built for BE (implying that the BE MMIO accessors do not perform
> > a swap).
> >    Otherwise return false, assuming LE registers.
> > 
> >    LE registers are assumed by default because most existing
> > drivers (libahci,
> >    serial8250, usb) always use readl/writel in the absence of
> > instructions
> >    to the contrary, so that will be our fallback.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

I guess this should be your private mail address?

> ---
>  drivers/of/base.c | 23 +++++++++++++++++++++++
>  include/of.h      |  1 +
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index ea330d1310..95bea4ee83 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1622,6 +1622,29 @@ int of_device_is_available(const struct
> device_node *device)
>  EXPORT_SYMBOL(of_device_is_available);
>  
>  /**
> + *  of_device_is_big_endian - check if a device has BE registers
> + *
> + *  @device: Node to check for endianness
> + *
> + *  Returns true if the device has a "big-endian" property, or if
> the kernel
> + *  was compiled for BE *and* the device has a "native-endian"
> property.
> + *  Returns false otherwise.
> + *
> + *  Callers would nominally use ioread32be/iowrite32be if
> + *  of_device_is_big_endian() == true, or readl/writel otherwise.
> + */
> +bool of_device_is_big_endian(const struct device_node *device)
> +{
> +	if (of_property_read_bool(device, "big-endian"))
> +		return true;
> +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN) &&
> +	    of_property_read_bool(device, "native-endian"))
> +		return true;
> +	return false;
> +}
> +EXPORT_SYMBOL(of_device_is_big_endian);
> +
> +/**
>   *	of_get_parent - Get a node's parent if any
>   *	@node:	Node to get parent
>   *
> diff --git a/include/of.h b/include/of.h
> index 0ba73f197f..4563cbeddd 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -150,6 +150,7 @@ extern int of_machine_is_compatible(const char
> *compat);
>  extern int of_device_is_compatible(const struct device_node *device,
>  		const char *compat);
>  extern int of_device_is_available(const struct device_node *device);
> +extern bool of_device_is_big_endian(const struct device_node
> *device);

This misses a stub implementation for !CONFIG_OFTREE

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
