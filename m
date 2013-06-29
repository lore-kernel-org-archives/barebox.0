Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Usw9P-0000bh-Ok
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 14:29:20 +0000
Date: Sat, 29 Jun 2013 16:28:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130629142857.GC10414@pengutronix.de>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-8-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372152047-28134-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 7/9] OF: remove device and resource pointer from struct
 device_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 25, 2013 at 11:20:45AM +0200, Sebastian Hesselbarth wrote:
> diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
> index 41e91ec..7f6d99c 100644
> --- a/drivers/of/gpio.c
> +++ b/drivers/of/gpio.c
> @@ -10,6 +10,10 @@ int of_get_named_gpio(struct device_node *np,
>  {
>  	int ret;
>  	struct of_phandle_args out_args;
> +	struct device_d *dev = of_find_device_by_node(np);
> +
> +	if (!dev)
> +		return -EINVAL;
>  
>  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
>  					index, &out_args);
> @@ -18,7 +22,7 @@ int of_get_named_gpio(struct device_node *np,
>  		return -EINVAL;
>  	}
>  
> -	ret = gpio_get_num(out_args.np->device, out_args.args[0]);
> +	ret = gpio_get_num(dev, out_args.args[0]);

This doesn't work. What gpio_get_num needs is the device pointer from
the gpio device, not from the device from the node we pass to this
function. You would have to use of_find_device_by_node(out_args.np) here
I guess.

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
