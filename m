Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprmQ-0005gq-2q
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:31:05 +0000
Date: Mon, 20 Mar 2017 08:30:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320073039.fo5uix7cnkd2pzu2@pengutronix.de>
References: <1489942917-16190-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489942917-16190-1-git-send-email-akurz@blala.de>
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
 PINCTRL_IMX_IOMUX_V3
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 19, 2017 at 06:01:57PM +0100, Alexander Kurz wrote:
> fsl,imx7d-iomuxc is provided by selecting PINCTRL_IMX_IOMUX_V3. Select it
> since a system without it will not be very usefull.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 831755c..e1459d2 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -165,6 +165,7 @@ config ARCH_IMX6UL
>  config ARCH_IMX7
>  	bool
>  	select CPU_V7
> +	select PINCTRL_IMX_IOMUX_V3
>  	select OFTREE
>  	select COMMON_CLK_OF_PROVIDER
>  
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
