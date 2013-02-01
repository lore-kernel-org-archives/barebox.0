Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1LKc-0008Ly-Er
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:27:23 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9873BFF90EA
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 19:41:34 +0100 (CET)
Date: Fri, 1 Feb 2013 19:26:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201182607.GB18068@game.jcrosoft.org>
References: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
 <1359742941-30516-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359742941-30516-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 2/4] gpiolib: add gpio_request_{in,out}put support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 22:22 Fri 01 Feb     , Antony Pavlov wrote:
> gpio_request() followed by gpio_direction_{in,out}put
> is a gpio usage pattern (e.g. the similar functions
> are used in a ARM boards code).
NACK again

NO PRINT ERROR in generic code

this MUST be handled by the board code

I DO wand duplicated code
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/gpio/gpio.c |   40 ++++++++++++++++++++++++++++++++++++++++
>  include/gpio.h      |   13 +++++++++++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> index d37f5a0..c0c66ae 100644
> --- a/drivers/gpio/gpio.c
> +++ b/drivers/gpio/gpio.c
> @@ -47,6 +47,46 @@ int gpio_request(unsigned gpio, const char *label)
>  	return 0;
>  }
>  
> +int gpio_request_input(unsigned gpio, const char *label)
> +{
> +	int ret;
> +
> +	ret = gpio_request(gpio, label);
> +	if (ret) {
> +		pr_err("can't request gpio %d as %s (%d)\n",
> +			gpio, label, ret);
> +		return ret;
> +	}
> +
> +	ret = gpio_direction_input(gpio);
> +	if (ret) {
> +		pr_err("can't configure gpio %d (%s) as input (%d)\n",
> +			gpio, label, ret);
> +	}
> +
> +	return ret;
> +}
> +
> +int gpio_request_output(unsigned gpio, const char *label, int value)
> +{
> +	int ret;
> +
> +	ret = gpio_request(gpio, label);
> +	if (ret) {
> +		pr_err("can't request gpio %d as %s (%d)\n",
> +			gpio, label, ret);
> +		return ret;
> +	}
> +
> +	ret = gpio_direction_output(gpio, value);
> +	if (ret) {
> +		pr_err("can't configure gpio %d (%s) as output (%d)\n",
> +			gpio, label, ret);
> +	}
> +
> +	return ret;
> +}
> +
>  void gpio_free(unsigned gpio)
>  {
>  	struct gpio_info *gi = &gpio_desc[gpio];
> diff --git a/include/gpio.h b/include/gpio.h
> index 794d959..309c1c5 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -9,11 +9,24 @@ static inline int gpio_request(unsigned gpio, const char *label)
>  	return 0;
>  }
>  
> +static inline int gpio_request_input(unsigned gpio, const char *label)
> +{
> +	return 0;
> +}
> +
> +static inline int gpio_request_output(unsigned gpio, const char *label,
> +		int value)
> +{
> +	return 0;
> +}
> +
>  static inline void gpio_free(unsigned gpio)
>  {
>  }
>  #else
>  int gpio_request(unsigned gpio, const char *label);
> +int gpio_request_input(unsigned gpio, const char *label);
> +int gpio_request_output(unsigned gpio, const char *label, int value);
>  void gpio_free(unsigned gpio);
>  #endif
>  
> -- 
> 1.7.10.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
