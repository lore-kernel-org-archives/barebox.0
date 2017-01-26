Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWe7U-0000LT-98
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 07:05:22 +0000
Date: Thu, 26 Jan 2017 08:02:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170126070248.6xgcypp4x75ai6ia@pengutronix.de>
References: <1485343497-24753-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485343497-24753-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX7: Kconfig: ARCH_IMX7 selects
 COMMON_CLK_OF_PROVIDER
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 25, 2017 at 12:24:57PM +0100, Alexander Kurz wrote:
> Build of clk-imx7 depends on selection of COMMON_CLK_OF_PROVIDER
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/mach-imx/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 0e3c7de..4dc1098 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -161,6 +161,8 @@ config ARCH_IMX6UL
>  config ARCH_IMX7
>  	bool
>  	select CPU_V7
> +	select OFTREE
> +	select COMMON_CLK_OF_PROVIDER
>  
>  config ARCH_VF610
>  	bool
> -- 
> 2.1.4
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
