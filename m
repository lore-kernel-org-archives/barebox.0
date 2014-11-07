Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmdVp-0004mi-GM
 for barebox@lists.infradead.org; Fri, 07 Nov 2014 06:59:14 +0000
Date: Fri, 7 Nov 2014 07:58:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141107065851.GW30369@pengutronix.de>
References: <1415274063-1925-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415274063-1925-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] arm: mach-imx: fix Eukrea CPUIMX51 Kconfig string
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 06, 2014 at 12:41:03PM +0100, Lucas Stach wrote:
> Was accidently preplaced by the Karo-TX 51 string,
> restore the previous state.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> This is broken pretty much since the introduction of
> imx multiimage, whatever this means for the popularity
> of this board support.

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index ef7c0a196381..46d0f3d11af0 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -442,7 +442,7 @@ config MACH_GUF_CUPID
>  comment "i.MX51 Boards"
>  
>  config MACH_EUKREA_CPUIMX51SD
> -	bool "Ka-Ro TX51"
> +	bool "EUKREA CPUIMX51"
>  	select ARCH_IMX51
>  	help
>  	  Say Y here if you are using Eukrea's CPUIMX51 equipped
> -- 
> 2.1.1
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
