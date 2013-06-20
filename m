Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpaJw-0007Dl-F4
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 08:34:20 +0000
Date: Thu, 20 Jun 2013 10:33:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130620083358.GQ32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371632991-1504-17-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371632991-1504-17-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 16/22] OF: base: import parse phandle functions from
 Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

> diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
> index 83b72c0..87b9c0c 100644
> --- a/drivers/of/gpio.c
> +++ b/drivers/of/gpio.c
> @@ -9,17 +9,16 @@ int of_get_named_gpio(struct device_node *np,
>                                     const char *propname, int index)
>  {
>  	int ret;
> -	struct device_node *gpio_np;
> -	const void *gpio_spec;
> +	struct of_phandle_args out_args;
>  
> -	ret = of_parse_phandles_with_args(np, propname, "#gpio-cells", index,
> -					  &gpio_np, &gpio_spec);
> +	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> +					index, &out_args);
>  	if (ret) {
>  		pr_debug("%s: can't parse gpios property: %d\n", __func__, ret);
>  		return -EINVAL;
>  	}
>  
> -	ret = gpio_get_num(gpio_np->device, be32_to_cpup(gpio_spec));
> +	ret = gpio_get_num(out_args.np->device, outargs.args[0]);

Typo: s/outargs/out_args/

(No need to resend atm)

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
