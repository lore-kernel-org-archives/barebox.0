Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVbCi-000221-UG
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 05:28:17 +0000
Date: Fri, 26 Apr 2013 07:28:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426052815.GO32299@pengutronix.de>
References: <1366906170-4509-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366906170-4509-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] of: fix typos
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 25, 2013 at 08:09:30PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/of/base.c |    4 ++--
>  drivers/of/gpio.c |    1 -
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index fde91b3..5661e8d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -902,13 +902,13 @@ int of_add_memory(struct device_node *node, bool dump)
>  
>  		sprintf(str, "ram%d", r);
>  
> -                barebox_add_memory_bank(str, base, size);
> +		barebox_add_memory_bank(str, base, size);
>  
>  		if (dump)
>  			pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
>  
>  		r++;
> -        }
> +	}
>  
>  	return 0;
>  }
> diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
> index d4314f3..83b72c0 100644
> --- a/drivers/of/gpio.c
> +++ b/drivers/of/gpio.c
> @@ -25,4 +25,3 @@ int of_get_named_gpio(struct device_node *np,
>  
>  	return ret;
>  }
> -
> -- 
> 1.7.10.4
> 
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
