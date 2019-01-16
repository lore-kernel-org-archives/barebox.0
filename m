Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjfwl-00032j-9Z
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 07:49:12 +0000
Date: Wed, 16 Jan 2019 08:49:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190116074909.zrfisfxf4wothpu2@pengutronix.de>
References: <20190115090049.8361-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190115090049.8361-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] fixup! ARM: imx8mq: use upstream devicetree
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 15, 2019 at 10:00:49AM +0100, Lucas Stach wrote:
> ---
>  arch/arm/dts/imx8mq-ddrc.dtsi | 2 +-
>  arch/arm/dts/imx8mq-evk.dts   | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
> index 26d3da857951..64826b03735f 100644
> --- a/arch/arm/dts/imx8mq-ddrc.dtsi
> +++ b/arch/arm/dts/imx8mq-ddrc.dtsi
> @@ -7,7 +7,7 @@
>  
>  	/delete-node/ memory@40000000;
>  
> -	peripherals@0 {
> +	soc@0 {
>  		ddrc@3d400000 {
>  			compatible = "fsl,imx8mq-ddrc";
>  			reg = <0x3d400000 0x400000>;
> diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
> index 9593c555f926..8ef2c984ac6f 100644
> --- a/arch/arm/dts/imx8mq-evk.dts
> +++ b/arch/arm/dts/imx8mq-evk.dts
> @@ -8,6 +8,7 @@
>  
>  #include <arm64/freescale/imx8mq-evk.dts>
>  #include "imx8mq.dtsi"
> +#include "imx8mq-ddrc.dtsi"
>  
>  / {
>  	chosen {
> @@ -56,4 +57,4 @@
>  
>  &ocotp {
>  	barebox,provide-mac-address = <&fec1 0x640>;
> -};
> \ No newline at end of file
> +};
> -- 
> 2.20.1
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
