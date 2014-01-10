Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1WhJ-0002EF-CI
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 07:40:06 +0000
Date: Fri, 10 Jan 2014 08:39:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110073940.GQ6750@pengutronix.de>
References: <1389120497-26828-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389120497-26828-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] of: platform: Fix possible crash
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jan 07, 2014 at 10:48:17PM +0400, Alexander Shiyan wrote:
> "dev" may uninitialized or points to incorrect device.

Nice catch. Applied and while at it made the message more informative:

	debug("%s: register device %s, io=0x%08x\n", __func__, dev_name(dev),
		(num_reg) ? dev->resource[0].start : (-1));

Sascha

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/of/platform.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index e75a69b..5cd32fc 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -174,9 +174,6 @@ static struct device_d *of_platform_device_create(struct device_node *np,
>  		}
>  	}
>  
> -	debug("register device 0x%08x\n",
> -		(num_reg) ? dev->resource[0].start : (-1));
> -
>  	/* setup generic device info */
>  	dev = xzalloc(sizeof(*dev));
>  	dev->id = DEVICE_ID_SINGLE;
> @@ -186,6 +183,9 @@ static struct device_d *of_platform_device_create(struct device_node *np,
>  	dev->num_resources = num_reg;
>  	of_device_make_bus_id(dev);
>  
> +	debug("register device 0x%08x\n",
> +		(num_reg) ? dev->resource[0].start : (-1));
> +
>  	ret = platform_device_register(dev);
>  	if (!ret)
>  		return dev;
> -- 
> 1.8.3.2
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
