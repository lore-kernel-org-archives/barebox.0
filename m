Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeIpU-0003gZ-Lm
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:44:49 +0000
Date: Sun, 27 Apr 2014 08:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140427064427.GH5858@pengutronix.de>
References: <1398579427-24306-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398579427-24306-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: Remove excess "select GENERIC_GPIO"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 27, 2014 at 10:17:06AM +0400, Alexander Shiyan wrote:
> GENERIC_GPIO is selected automatically by GPIOLIB
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 3754646..11b9a85 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -79,7 +79,6 @@ config ARCH_HIGHBANK
>  
>  config ARCH_IMX
>  	bool "Freescale iMX-based"
> -	select GENERIC_GPIO
>  	select GPIOLIB
>  	select COMMON_CLK
>  	select CLKDEV_LOOKUP
> @@ -132,7 +131,6 @@ config ARCH_SOCFPGA
>  	select CPU_V7
>  	select COMMON_CLK
>  	select CLKDEV_LOOKUP
> -	select GENERIC_GPIO
>  	select GPIOLIB
>  	select HAVE_PBL_MULTI_IMAGES
>  
> -- 
> 1.8.3.2
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
