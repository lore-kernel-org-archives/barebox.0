Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb4AC-0000ac-9C
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 07:56:32 +0000
Date: Tue, 29 Oct 2013 08:56:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131029075608.GQ30088@pengutronix.de>
References: <1382695912-27795-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382695912-27795-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: i.MX5x: Make IIM driver kernel-compatible
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2013 at 02:11:52PM +0400, Alexander Shiyan wrote:
> Since kernel uses "imx27-iim" compatible string in i.MX5x DTS templates,
> do IIM driver compatible.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/imx53.dtsi | 2 +-
>  arch/arm/mach-imx/iim.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
> index 5c8608b..09c5772 100644
> --- a/arch/arm/dts/imx53.dtsi
> +++ b/arch/arm/dts/imx53.dtsi
> @@ -962,7 +962,7 @@
>  			ranges;
>  
>  			iim: iim@63f98000 {
> -				compatible = "fsl,imx53-iim", "fsl,imx-iim";
> +				compatible = "fsl,imx53-iim", "fsl,imx27-iim";
>  				reg = <0x63f98000 0x4000>;
>  				interrupts = <69>;
>  				clocks = <&clks 107>;
> diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> index 956811c..938c3f3 100644
> --- a/arch/arm/mach-imx/iim.c
> +++ b/arch/arm/mach-imx/iim.c
> @@ -296,7 +296,7 @@ static int imx_iim_probe(struct device_d *dev)
>  
>  static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
>  	{
> -		.compatible = "fsl,imx-iim",
> +		.compatible = "fsl,imx27-iim",
>  	}, {
>  		/* sentinel */
>  	}
> -- 
> 1.8.1.5
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
