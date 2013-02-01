Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1Bm6-0006qc-TE
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:15:07 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7090510201B8
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 09:25:13 +0100 (CET)
Date: Fri, 1 Feb 2013 09:13:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201081351.GK26329@game.jcrosoft.org>
References: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
 <1359668796-22835-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359668796-22835-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 3/5] gpiolib: gpio_request(): add error message
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Nack the is need to handle by the caller not here

Best Regards,
J.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/gpio/gpio.c |   29 ++++++++++++++++++++++-------
>  1 file changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> index 5876454..179fc7b 100644
> --- a/drivers/gpio/gpio.c
> +++ b/drivers/gpio/gpio.c
> @@ -29,22 +29,37 @@ int gpio_request(unsigned gpio, const char *label)
>  	struct gpio_chip *chip = gi->chip;
>  	int ret;
>  
> -	if (!gpio_is_valid(gpio))
> -		return -EINVAL;
> -	if (!chip)
> -		return -EINVAL;
> -	if (gi->requested)
> -		return -EBUSY;
> +	if (!gpio_is_valid(gpio)) {
> +		ret = -EINVAL;
> +		goto err;
> +	}
> +
> +	if (!chip) {
> +		ret = -EINVAL;
> +		goto err;
> +	}
> +
> +	if (gi->requested) {
> +		ret = -EBUSY;
> +		goto err;
> +	}
> +
>  	if (chip->ops->request) {
>  		ret = chip->ops->request(chip, gpio - chip->base);
>  		if (ret)
> -			return ret;
> +			goto err;
>  	}
>  
>  	gi->requested = true;
>  	gi->label = xstrdup(label);
>  
>  	return 0;
> +
> +err:
> +	pr_err("can't request gpio %d as %s (%d)\n",
> +		gpio, label, ret);
> +
> +	return ret;
>  }
>  
>  int gpio_request_input(unsigned gpio, const char *label)
> -- 
> 1.7.10.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
