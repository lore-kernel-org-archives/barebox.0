Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSaQw-0008Ki-O6
 for barebox@lists.infradead.org; Wed, 14 Oct 2020 06:38:47 +0000
Date: Wed, 14 Oct 2020 08:38:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201014063844.GA13710@pengutronix.de>
References: <1602576641-91939-1-git-send-email-c.tenruh@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1602576641-91939-1-git-send-email-c.tenruh@phytec.de>
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
Subject: Re: [PATCH] imx6ul/imx6ull: include imx6ul-phytec-state.dtsi and
 enable state
To: Cem Tenruh <c.tenruh@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 13, 2020 at 10:10:41AM +0200, Cem Tenruh wrote:
> Signed-off-by: Cem Tenruh <c.tenruh@phytec.de>
> ---
>  arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts  | 5 +++++
>  arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts | 5 +++++
>  2 files changed, 10 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> index 7d29c32..50ce75f 100644
> --- a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
> @@ -10,6 +10,7 @@
>  #endif
>  #include <arm/imx6ul.dtsi>
>  #include "imx6ul-phytec-phycore-som.dtsi"
> +#include "imx6ul-phytec-state.dtsi"
>  
>  / {
>  	model = "PHYTEC phyCORE-i.MX6 Ultra Light SOM with eMMC";
> @@ -24,6 +25,10 @@
>  	status = "okay";
>  };
>  
> +&state {
> +        status = "okay";
> +};
> +
>  &uart1 {
>  	status = "okay";
>  };
> diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
> index 2201b4c..afd99a3 100644
> --- a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
> @@ -10,6 +10,7 @@
>  #endif
>  #include <arm/imx6ull.dtsi>
>  #include "imx6ul-phytec-phycore-som.dtsi"
> +#include "imx6ul-phytec-state.dtsi"
>  
>  / {
>  	model = "PHYTEC phyCORE-i.MX6 ULL SOM with eMMC";
> @@ -24,6 +25,10 @@
>  	status = "okay";
>  };
>  
> +&state {
> +        status = "okay";
> +};
> +
>  &uart1 {
>  	status = "okay";
>  };
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
