Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRy5h-0000LV-1a
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 09:56:27 +0000
Message-ID: <1499075760.2308.14.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 03 Jul 2017 11:56:00 +0200
In-Reply-To: <1499027092-2522-1-git-send-email-akurz@blala.de>
References: <1499027092-2522-1-git-send-email-akurz@blala.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] gpiolib: fix: do not access oftree on non-OFDEVICE boards
To: Alexander Kurz <akurz@blala.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Am Sonntag, den 02.07.2017, 22:24 +0200 schrieb Alexander Kurz:
> Non-OFDEVICE boards may have OFTREE=y set, e.g. by BOOTM_OFTREE.
> Attempts to browse the oftree will crash barebox on those boards.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/gpio/gpiolib.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index a3e17ad..a1ff965 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -416,7 +416,10 @@ int gpiochip_add(struct gpio_chip *chip)
>  	for (i = chip->base; i < chip->base + chip->ngpio; i++)
>  		gpio_desc[i].chip = chip;
>  
> -	return of_gpiochip_scan_hogs(chip);
> +	if (IS_ENABLED(CONFIG_OFDEVICE))
> +		return of_gpiochip_scan_hogs(chip);
> +	else
> +		return 0;

This may also crash in mixed oftree/board file based systems (however
unlikely that is). I think an early return from of_gpiochip_scan_hogs ()
if chip->dev->device_node is NULL would be more robust.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
