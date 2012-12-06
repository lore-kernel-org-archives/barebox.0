Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tghfj-0000y6-5w
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 20:03:52 +0000
Date: Thu, 6 Dec 2012 21:03:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121206200347.GY10369@pengutronix.de>
References: <1354792603-15915-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354792603-15915-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v2] at91: reorder BOARDINFO alphabetically
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2012 at 12:16:43PM +0100, Fabio Porcedda wrote:
> This is to have a nicely ordered list and to decrease the
> likelihood of a conflict when adding a new board.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
> v2:
>  - add Cc: Jean-Christophe
>  - add comment to remember the ordering
> 
>  arch/arm/mach-at91/Kconfig | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 6fea903..a192f7c 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -6,7 +6,9 @@ config ARCH_TEXT_BASE
>  	default 0x26f00000 if ARCH_AT91SAM9X5
>  	default 0x23f00000
>  
> +# This list is sorted alphanumerically
>  config BOARDINFO
> +	default "Aizo dSS11" if MACH_DSS11
>  	default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
>  	default "Atmel at91sam9260-ek" if MACH_AT91SAM9260EK
>  	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
> @@ -17,17 +19,16 @@ config BOARDINFO
>  	default "Atmel at91sam9n12-ek" if MACH_AT91SAM9N12EK
>  	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
>  	default "Bucyrus MMC-CPU" if MACH_MMCCPU
> +	default "Calao QIL-A9260" if MACH_QIL_A9260
> +	default "Calao TNY-A9260" if MACH_TNY_A9260
> +	default "Calao TNY-A9263" if MACH_TNY_A9263
> +	default "Calao TNY-A9G20" if MACH_TNY_A9G20
>  	default "Calao USB-A9260" if MACH_USB_A9260
>  	default "Calao USB-A9263" if MACH_USB_A9263
>  	default "Calao USB-A9G20" if MACH_USB_A9G20
>  	default "Ronetix PM9261" if MACH_PM9261
>  	default "Ronetix PM9263" if MACH_PM9263
>  	default "Ronetix PM9G45" if MACH_PM9G45
> -	default "Aizo dSS11" if MACH_DSS11
> -	default "Calao TNY-A9260" if MACH_TNY_A9260
> -	default "Calao TNY-A9263" if MACH_TNY_A9263
> -	default "Calao TNY-A9G20" if MACH_TNY_A9G20
> -	default "Calao QIL-A9260" if MACH_QIL_A9260
>  
>  config HAVE_NAND_ATMEL_BUSWIDTH_16
>  	bool
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
