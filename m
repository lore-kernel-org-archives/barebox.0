Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzE0o-0003mY-51
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 22:14:11 +0000
Date: Sat, 26 Jan 2013 23:14:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130126221408.GT1906@pengutronix.de>
References: <1359211229-15058-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359211229-15058-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] gpio_keys: fix loop on buttons for request and
 configuration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 03:40:29PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/input/gpio_keys.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
> index 6f3c912..543ad1a 100644
> --- a/drivers/input/gpio_keys.c
> +++ b/drivers/input/gpio_keys.c
> @@ -79,7 +79,7 @@ static int __init gpio_keys_probe(struct device_d *dev)
>  	pdata->recv_fifo = kfifo_alloc(pdata->fifo_size);
>  
>  	for (i = 0; i < pdata->nbuttons; i++) {
> -		gpio = pdata->buttons->gpio;
> +		gpio = pdata->buttons[i].gpio;
>  		ret = gpio_request(gpio, "gpio_keys");
>  		if (ret) {
>  			pr_err("gpio_keys: (%d) can not be requested\n", gpio);
> -- 
> 1.7.10.4
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
