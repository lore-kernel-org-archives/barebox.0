Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgTSy-0004r0-19
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 05:58:17 +0000
Date: Wed, 13 Nov 2013 06:57:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131113055752.GP24559@pengutronix.de>
References: <1384231502-1101-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384231502-1101-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: i.MX boards: Remove useless select
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Nov 12, 2013 at 08:45:01AM +0400, Alexander Shiyan wrote:
> Symbols HAVE_DEFAULT_ENVIRONMENT_NEW & HAVE_PBL_MULTI_IMAGES
> are already selected by IMX_MULTI_BOARDS.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/Kconfig | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index aa650f8..33108ac 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -184,8 +184,6 @@ if IMX_MULTI_BOARDS
>  config MACH_EFIKA_MX_SMARTBOOK
>  	bool "Efika MX smartbook"
>  	select ARCH_IMX51
> -	select HAVE_DEFAULT_ENVIRONMENT_NEW
> -	select HAVE_PBL_MULTI_IMAGES
>  	help
>  	  Choose this to compile barebox for the Efika MX Smartbook
>  
> @@ -208,8 +206,6 @@ config MACH_DFI_FS700_M60
>  config MACH_REALQ7
>  	bool "DataModul i.MX6Q Real Qseven Board"
>  	select ARCH_IMX6
> -	select HAVE_DEFAULT_ENVIRONMENT_NEW
> -	select HAVE_PBL_MULTI_IMAGES
>  
>  config MACH_GK802
>  	bool "Zealz GK802 Mini PC"
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
