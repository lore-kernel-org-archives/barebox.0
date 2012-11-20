Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TavVk-0004it-BN
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 21:37:40 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id AF8A3FF9CE8
 for <barebox@lists.infradead.org>; Tue, 20 Nov 2012 22:48:54 +0100 (CET)
Date: Tue, 20 Nov 2012 22:35:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121120213538.GM8327@game.jcrosoft.org>
References: <20121120212326.GO4398@game.jcrosoft.org>
 <1353446789-30819-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353446789-30819-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/5] pinctrl: at91: provide gpio names
To: barebox@lists.infradead.org

HI,

	wrong ml

	sorry

Best Regards,
J.
On 22:26 Tue 20 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/pinctrl/pinctrl-at91.c |   15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> index b9e2cbd..401fc96 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -1364,9 +1364,10 @@ static int __devinit at91_gpio_probe(struct platform_device *pdev)
>  	struct gpio_chip *chip;
>  	struct pinctrl_gpio_range *range;
>  	int ret = 0;
> -	int irq;
> +	int irq, i;
>  	int alias_idx = of_alias_get_id(np, "gpio");
>  	uint32_t ngpio;
> +	char **names;
>  
>  	BUG_ON(alias_idx >= ARRAY_SIZE(gpio_chips));
>  	if (gpio_chips[alias_idx]) {
> @@ -1436,6 +1437,18 @@ static int __devinit at91_gpio_probe(struct platform_device *pdev)
>  			chip->ngpio = ngpio;
>  	}
>  
> +	names = devm_kzalloc(&pdev->dev, sizeof(char*) * chip->ngpio, GFP_KERNEL);
> +
> +	if (!names) {
> +		ret = -ENOMEM;
> +		goto clk_err;
> +	}
> +
> +	for (i = 0; i < chip->ngpio; i++)
> +		names[i] = kasprintf(GFP_KERNEL, "pio%c%d", alias_idx + 'A', i);
> +
> +	chip->names = (const char*const*)names;
> +
>  	range = &at91_chip->range;
>  	range->name = chip->label;
>  	range->id = alias_idx;
> -- 
> 1.7.10.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
