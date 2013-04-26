Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVm4G-0000UI-5a
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 17:04:16 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D6EA1104F2E2
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2013 19:04:14 +0200 (CEST)
Date: Fri, 26 Apr 2013 18:59:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130426165946.GI13393@game.jcrosoft.org>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366994474-21325-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/9] ARM: at91 gpio: Fix possible null pointer dereference
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 20:41 Fri 26 Apr     , Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-at91/gpio.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
> index c2618c7..0e39a52 100644
> --- a/arch/arm/mach-at91/gpio.c
> +++ b/arch/arm/mach-at91/gpio.c
> @@ -185,10 +185,10 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
>  int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
>  {
>  	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
> -	void __iomem *pio = at91_gpio->regbase;
> +	void __iomem *pio;
> +	struct device_d *dev;
>  	unsigned mask = pin_to_mask(pin);
>  	int bank = pin_to_bank(pin);
> -	struct device_d *dev = at91_gpio->chip.dev;
so crash
>  
>  	if (!at91_gpio)
>  		return -EINVAL;
> @@ -197,6 +197,7 @@ int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
>  	if (!pio)
>  		return -EINVAL;
>  
> +	dev = at91_gpio->chip.dev;
>  	at91_mux_disable_interrupt(pio, mask);
>  
>  	pin %= MAX_NB_GPIO_PER_BANK;
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
