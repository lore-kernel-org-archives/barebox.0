Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbif-0000KH-5Y
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:42:29 +0000
Date: Thu, 6 Dec 2012 14:42:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121206134227.GW10369@pengutronix.de>
References: <1354781558-15463-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354781558-15463-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] at91: add_gpio_keys_device: fix missing conversion to
 DEVICE_ID_DYNAMIC
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2012 at 12:12:38PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/at91sam9261ek/init.c    |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
> index 636da12..8842cfe 100644
> --- a/arch/arm/boards/at91sam9261ek/init.c
> +++ b/arch/arm/boards/at91sam9261ek/init.c
> @@ -180,7 +180,7 @@ static void ek_add_device_keyboard_buttons(void)
>  		at91_set_deglitch(keys[i].gpio, 1);
>  	}
>  
> -	add_gpio_keys_device(-1, &gk_pdata);
> +	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_pdata);
>  }
>  #else
>  static void ek_add_device_keyboard_buttons(void) {}
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index 0c03dea..4b6d5c4 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -204,7 +204,7 @@ static void ek_device_add_keyboard(void)
>  		at91_set_deglitch(keys[i].gpio, 1);
>  	}
>  
> -	add_gpio_keys_device(-1, &gk_pdata);
> +	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_pdata);
>  }
>  #else
>  static void ek_device_add_keyboard(void) {}
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
