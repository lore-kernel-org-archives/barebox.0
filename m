Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqLDR-0006t8-9r
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:06:30 +0000
Date: Wed, 2 Jan 2013 11:06:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102100624.GZ26326@pengutronix.de>
References: <1356539636-12782-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356539636-12782-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] at91sam9x5ek: switch heartbeat to d2 (pioD21)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 26, 2012 at 05:33:55PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as d1 pioB18 is used for the one wire too
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> Hi,
> 
> 	to be applied before led-gpio switch to gpio_request/free
> 	otherwise we have a nice crash.
> 
> Best Regards,
> J.

Applied, thanks

Sascha

> 
>  arch/arm/boards/at91sam9x5ek/init.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
> index 6d1ebe5..77c3ee3 100644
> --- a/arch/arm/boards/at91sam9x5ek/init.c
> +++ b/arch/arm/boards/at91sam9x5ek/init.c
> @@ -224,7 +224,7 @@ static void __init ek_add_led(void)
>  		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
>  		led_gpio_register(&leds[i]);
>  	}
> -	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
> +	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[1].led);
>  }
>  
>  static int at91sam9x5ek_mem_init(void)
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
