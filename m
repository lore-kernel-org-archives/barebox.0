Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbbs-0008KF-Ar
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:35:31 +0000
Date: Thu, 6 Dec 2012 14:35:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121206133526.GV10369@pengutronix.de>
References: <1354788214-11192-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354788214-11192-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH] at91sam9260ek: fix BOARDINFO text
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2012 at 11:03:34AM +0100, Fabio Porcedda wrote:
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-at91/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 3a985f7..3de6061 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -8,7 +8,7 @@ config ARCH_TEXT_BASE
>  
>  config BOARDINFO
>  	default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
> -	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
> +	default "Atmel at91sam9260-ek" if MACH_AT91SAM9260EK
>  	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
>  	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
>  	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
> -- 
> 1.8.0
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
