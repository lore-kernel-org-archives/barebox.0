Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRxnW-000118-ET
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 06:24:04 +0000
Date: Thu, 11 Sep 2014 08:23:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140911062338.GG4992@pengutronix.de>
References: <1410335628-13200-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410335628-13200-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] net: dm9k: add device tree support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 10, 2014 at 11:53:48AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/dm9k.c | 46 +++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 39 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
> index e525a84..9e7b415 100644
> --- a/drivers/net/dm9k.c
> +++ b/drivers/net/dm9k.c
> @@ -707,16 +707,30 @@ static int dm9k_init_dev(struct eth_device *edev)
>  	return 0;
>  }
>  
> +static struct dm9000_platform_data *dm9000_parse_dt(struct device_d *dev)
> +{
> +	struct dm9000_platform_data *pdata;
> +	struct device_node *np = dev->device_node;
> +
> +	if (!IS_ENABLED(CONFIG_OF) || !np)
> +		return NULL;
> +
> +	pdata = xzalloc(sizeof(*pdata));
> +
> +	pdata->srom = 0;

Please don't allocate platform_data for the device tree case. Instead,
add a srom variable to struct dm9k and set it either from platform_data
or device tree.

> -	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> +	switch (resource_size(&dev->resource[0])) {
> +	case 1:
> +		priv->buswidth = IORESOURCE_MEM_8BIT;
> +		break;
> +	case 2:
> +		priv->buswidth = IORESOURCE_MEM_16BIT;
> +		break;
> +	case 4:
> +		priv->buswidth = IORESOURCE_MEM_32BIT;
> +		break;
> +	default:
> +		dev_err(dev, "Wrong io resource size\n");
> +		priv->buswidth = 0;
> +	}

Does this work for device tree?

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
