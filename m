Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfmIt-0007HS-9s
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 07:52:59 +0000
Date: Mon, 11 Nov 2013 08:52:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111075236.GA24559@pengutronix.de>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/6] ARM: at91: Fix signed/unsigned arguments for printf
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Nov 08, 2013 at 10:12:52PM +0400, Alexander Shiyan wrote:
> "%d" in format string requires a signed integer.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

I like Cleanups ;)

Sascha

> ---
>  arch/arm/mach-at91/gpio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
> index b111373..91de85d 100644
> --- a/arch/arm/mach-at91/gpio.c
> +++ b/arch/arm/mach-at91/gpio.c
> @@ -438,7 +438,7 @@ static void at91mux_dump_pio_config(unsigned bank, unsigned pin)
>  	void __iomem *pio = at91_gpio->regbase;
>  	u32 div;
>  
> -	printf("pio%c%d configuration\n\n", bank + 'A', pin);
> +	printf("pio%c%u configuration\n\n", bank + 'A', pin);
>  
>  	at91mux_printf_mode(bank, pin);
>  	printf("\n");
> @@ -499,7 +499,7 @@ static int do_at91mux(int argc, char *argv[])
>  	}
>  
>  	if (pin >= 32) {
> -		printf("pin %d >= supported %d pins\n", pin, 32);
> +		printf("pin %u >= supported %d pins\n", pin, 32);
>  		return 1;
>  	}
>  
> -- 
> 1.8.1.5
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
