Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoC2w-00024e-Aq
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:03:51 +0000
Date: Tue, 11 Nov 2014 15:03:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141111140328.GW30369@pengutronix.de>
References: <1415641504-19358-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415641504-19358-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: Make NAND related Kconfig options depend on MTD
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 10, 2014 at 09:45:04AM -0800, Andrey Smirnov wrote:
> ARCH_IMX_EXTERNAL_BOOT_NAND, BAREBOX_UPDATE_IMX_EXTERNAL_NAND and
> BAREBOX_UPDATE_IMX6_NAND all enable features that make use of API
> provided by MTD subsystem, so to prevent those features breaking the
> build when MTD is disabled make them dependent on it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index ef7c0a1..8dce491 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -102,17 +102,20 @@ endchoice
>  
>  config ARCH_IMX_EXTERNAL_BOOT_NAND
>  	bool
> +	depends on MTD
>  	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
>  	prompt "Support Starting barebox from NAND in external bootmode"
>  
>  config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
>  	bool
> +	depends on MTD
>  	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
>  	depends on BAREBOX_UPDATE
>  	default y
>  
>  config BAREBOX_UPDATE_IMX6_NAND
>  	bool
> +	depends on MTD
>  	depends on ARCH_IMX6
>  	depends on BAREBOX_UPDATE
>  	default y
> -- 
> 1.9.3
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
