Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QosDb-00018d-9d
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 07:19:48 +0000
Date: Thu, 4 Aug 2011 09:19:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110804071940.GW31404@pengutronix.de>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] serial_ns16550: move switch from ns16550_{read,
	write}() to ns16550_probe()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 03, 2011 at 10:37:45PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c |   87 ++++++++++++++++++++++++---------------
>  1 files changed, 54 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 4ed2671..ec93750 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -48,6 +48,23 @@
>  
>  /*********** Private Functions **********************************/
>  
> +#define NS16550_READ_WRITE_UART_FUNC(pfx, cmdr, cmdw, mask) \
> +static unsigned int ns16550_generic_##pfx##_read(unsigned long base, \
> +		unsigned char reg_idx)		\
> +{						\
> +	return cmdr((char *)base + reg_idx);	\
> +}						\
> +						\
> +static void ns16550_generic_##pfx##_write(unsigned int val, unsigned long base, \
> +		unsigned char reg_idx)			\
> +{							\
> +	cmdw((mask val), (char *)base + reg_idx);	\
> +}
> +
> +NS16550_READ_WRITE_UART_FUNC(8bit, readb, writeb, 0xff &)
> +NS16550_READ_WRITE_UART_FUNC(16bit, readw, writew, 0xffff &)
> +NS16550_READ_WRITE_UART_FUNC(32bit, readl, writel, )

Please don't do such preprocessor tricks if not necessary. we can afford
the 8 additional lines for making this readable.

> +
>  /**
>   * @brief read register
>   *
> @@ -60,22 +77,10 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
>  {
>  	struct device_d *dev = cdev->dev;
>  	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
> -	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
>  
>  	off <<= plat->shift;
>  
> -	if (plat->reg_read)
> -		return plat->reg_read((unsigned long)dev->priv, off);
> -
> -	switch (width) {
> -	case IORESOURCE_MEM_8BIT:
> -		return readb(dev->priv + off);
> -	case IORESOURCE_MEM_16BIT:
> -		return readw(dev->priv + off);
> -	case IORESOURCE_MEM_32BIT:
> -		return readl(dev->priv + off);
> -	}
> -	return -1;
> +	return plat->reg_read((unsigned long)dev->priv, off);
>  }
>  
>  /**
> @@ -90,26 +95,10 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
>  {
>  	struct device_d *dev = cdev->dev;
>  	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
> -	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
>  
>  	off <<= plat->shift;
>  
> -	if (plat->reg_write) {
> -		plat->reg_write(val, (unsigned long)dev->priv, off);
> -		return;
> -	}
> -
> -	switch (width) {
> -	case IORESOURCE_MEM_8BIT:
> -		writeb(val & 0xff, dev->priv + off);
> -		break;
> -	case IORESOURCE_MEM_16BIT:
> -		writew(val & 0xffff, dev->priv + off);
> -		break;
> -	case IORESOURCE_MEM_32BIT:
> -		writel(val, dev->priv + off);
> -		break;
> -	}
> +	plat->reg_write(val, (unsigned long)dev->priv, off);
>  }
>  
>  /**
> @@ -239,9 +228,41 @@ static int ns16550_probe(struct device_d *dev)
>  	/* we do expect platform specific data */
>  	if (plat == NULL)
>  		return -EINVAL;
> -	if (!(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) &&
> -	    ((plat->reg_read == NULL) || (plat->reg_write == NULL)))
> -		return -EINVAL;
> +
> +	if (plat->reg_read == NULL) {
> +		int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> +
> +		switch (width) {
> +		default:
> +		case IORESOURCE_MEM_8BIT:
> +			plat->reg_read = ns16550_generic_8bit_read;
> +			break;
> +		case IORESOURCE_MEM_16BIT:
> +			plat->reg_read = ns16550_generic_16bit_read;
> +			break;
> +		case IORESOURCE_MEM_32BIT:
> +			plat->reg_read = ns16550_generic_32bit_read;
> +			break;
> +		}
> +	}
> +
> +	if (plat->reg_write == NULL) {
> +		int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> +
> +		switch (width) {
> +		default:
> +		case IORESOURCE_MEM_8BIT:
> +			plat->reg_write = ns16550_generic_8bit_write;
> +			break;
> +		case IORESOURCE_MEM_16BIT:
> +			plat->reg_write = ns16550_generic_16bit_write;
> +			break;
> +		case IORESOURCE_MEM_32BIT:
> +			plat->reg_write = ns16550_generic_32bit_write;
> +			break;
> +		}
> +	}

Passing one of the register access function without the other shouldn't
be a valid usecase. Jean is right, there should be only one if().

Generally platform_data shouldn't be used after device probe and for
sure it shouldn't be modified. This may be the point where this driver
needs a private data struct.

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
