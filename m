Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U074F-0007z5-Ju
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:01:24 +0000
Date: Tue, 29 Jan 2013 10:01:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130129090119.GO1906@pengutronix.de>
References: <1359365527-31452-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359365527-31452-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91sam9m10ihd: set missing lcd power control
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 10:32:07AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/at91sam9m10ihd/init.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
> index da32a04..6d9a4ad 100644
> --- a/arch/arm/boards/at91sam9m10ihd/init.c
> +++ b/arch/arm/boards/at91sam9m10ihd/init.c
> @@ -223,6 +223,7 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
>  	.default_lcdcon2		= AT91SAM9G45_DEFAULT_LCDCON2,
>  	.guard_time			= 9,
>  	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
> +	.atmel_lcdfb_power_control	= at91_lcdc_power_control,
>  	.mode_list			= at91fb_default_monspecs,
>  	.num_modes			= ARRAY_SIZE(at91fb_default_monspecs),
>  };
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
