Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTG6-00041g-0K
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:12:34 +0000
Date: Fri, 13 Nov 2020 08:12:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201113071232.GN29830@pengutronix.de>
References: <20201112102231.12580-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112102231.12580-1-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl: pfla02: Use upstream som_flash node
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Nov 12, 2020 at 01:22:30PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 52 ++++++++++++-------------
>  1 file changed, 25 insertions(+), 27 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> index d0b056b2f..3eb510d43 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -21,7 +21,7 @@
>  
>  		environment-spinor {
>  			compatible = "barebox,environment";
> -			device-path = &flash, "partname:barebox-environment";
> +			device-path = &som_flash, "partname:barebox-environment";
>  			status = "disabled";
>  		};
>  
> @@ -53,32 +53,30 @@
>  
>  /delete-node/ &{/memory@10000000};
>  
> -&ecspi3 {
> -	flash: flash@0 {
> -		partitions {
> -			compatible = "fixed-partitions";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			partition@0 {
> -				label = "barebox";
> -				reg = <0x0 0x100000>;
> -			};
> -
> -			partition@100000 {
> -				label = "barebox-environment";
> -				reg = <0x100000 0x20000>;
> -			};
> -
> -			partition@120000 {
> -				label = "oftree";
> -				reg = <0x120000 0x20000>;
> -			};
> -
> -			partition@140000 {
> -				label = "kernel";
> -				reg = <0x140000 0x0>;
> -			};
> +&som_flash {
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0x0 0x100000>;
> +		};
> +
> +		partition@100000 {
> +			label = "barebox-environment";
> +			reg = <0x100000 0x20000>;
> +		};
> +
> +		partition@120000 {
> +			label = "oftree";
> +			reg = <0x120000 0x20000>;
> +		};
> +
> +		partition@140000 {
> +			label = "kernel";
> +			reg = <0x140000 0x0>;
>  		};
>  	};
>  };
> -- 
> 2.26.2
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
