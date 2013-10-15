Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVyGh-0006X2-Mw
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 06:38:12 +0000
Date: Tue, 15 Oct 2013 08:37:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131015063750.GF30088@pengutronix.de>
References: <1381767340-23992-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381767340-23992-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] at91: fix typo in Kconfig description
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 14, 2013 at 06:15:40PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-at91/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 5fb3ead..6ab374e 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -549,7 +549,7 @@ config AT91_BOOTSTRAP
>  	select BOOTSTRAP
>  
>  config AT91_LOAD_BAREBOX_SRAM
> -	bool "at91 laad barebox in sram"
> +	bool "at91 load barebox in sram"
>  	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
>  	default y if SHELL_NONE
>  
> -- 
> 1.8.4.rc3
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
