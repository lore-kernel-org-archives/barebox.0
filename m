Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlQRA-0007j0-Pb
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 20:40:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TlQR9-0002Hk-FH
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:40:19 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TlQR9-0006bJ-EP
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:40:19 +0100
Date: Wed, 19 Dec 2012 21:40:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121219204019.GH26326@pengutronix.de>
References: <1355820338-5911-1-git-send-email-barebox@lists.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355820338-5911-1-git-send-email-barebox@lists.infradead.org>
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
Subject: Re: [PATCH] ARM OMAP: add help text for OMAP_BUILD_IFT
To: barebox@lists.infradead.org

On Tue, Dec 18, 2012 at 09:45:38AM +0100, barebox@lists.infradead.org wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-omap/Kconfig |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 451783e..27626a2 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -67,8 +67,12 @@ config OMAP_GPMC
>  	  NAND, OneNAND etc.
>  
>  config OMAP_BUILD_IFT
> -	prompt "build ift binary"
> +	prompt "build ift binary (MLO)"
>  	bool
> +	help
> +	  Say Y here if you want to build an MLO binary. On TI SoCs, this
> +	  binary is loaded to SRAM. It is responsible for initializing
> +	  the SDRAM and possibly chainloading a full-featured barebox.
>  
>  config OMAP_BUILD_SPI
>  	prompt "build SPI binary"
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
