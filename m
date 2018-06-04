Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPjSs-00071j-6h
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 06:59:40 +0000
Date: Mon, 4 Jun 2018 08:59:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180604065925.eiy63htthletpens@pengutronix.de>
References: <20180601054409.19579-1-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180601054409.19579-1-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX50: fix Kindle-MX50 DT issues and warnings
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 01, 2018 at 05:44:09AM +0000, Alexander Kurz wrote:
> Fix warnings generated from the kindle-mx50 dts when used in linux with W=1:
> unit names should not have leading "0x"; reg property given, but no unit name;
> use stdout-path instead of linux,stdout-path.
> Also move the regulator-fixed node to the root node to match the convention.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/dts/imx50-kindle-common.dtsi | 31 ++++++++++++-------------------
>  arch/arm/dts/imx50-kindle-d01100.dts  |  4 ++--
>  arch/arm/dts/imx50-kindle-d01200.dts  |  4 ++--
>  arch/arm/dts/imx50-kindle-ey21.dts    |  4 ++--
>  4 files changed, 18 insertions(+), 25 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx50-kindle-common.dtsi b/arch/arm/dts/imx50-kindle-common.dtsi
> index 048e95389..92933e691 100644
> --- a/arch/arm/dts/imx50-kindle-common.dtsi
> +++ b/arch/arm/dts/imx50-kindle-common.dtsi
> @@ -21,19 +21,12 @@
>  	/* this is a dummy fixed-voltage "regulator", mainly to satisfy
>  	* the esdhc implementation requiring vmmc-supply and vqmmc-supply
>  	*/
> -	regulators {
> -		compatible = "simple-bus";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		reg_3p3v: regulator@0 {
> -			compatible = "regulator-fixed";
> -			reg = <0>;
> -			regulator-name = "3P3V";
> -			regulator-min-microvolt = <3300000>;
> -			regulator-max-microvolt = <3300000>;
> -			regulator-always-on;
> -		};
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3P3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
>  	};
>  };
>  
> @@ -149,12 +142,12 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  
> -		kernel: kernel@0x41000 {
> +		kernel: kernel@41000 {
>  			label = "kernel";
>  			reg = <0x41000 0xe00000>;
>  		};
>  
> -		diags_kernel: diags_kernel@0xe41000 {
> +		diags_kernel: diags_kernel@e41000 {
>  			label = "diags_kernel";
>  			reg = <0xe41000 0xe00000>;
>  		};
> @@ -165,17 +158,17 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  
> -		imx_header: imx_header@0x400 {
> +		imx_header: imx_header@400 {
>  			label = "imx_header";
>  			reg = <0x400 0x800>;
>  		};
>  
> -		self: self@0x1000 {
> +		self: self@1000 {
>  			label = "self";
>  			reg = <0x1000 0x3e000>;
>  		};
>  
> -		userdata: userdata@0x3f000 {
> +		userdata: userdata@3f000 {
>  			label = "userdata";
>  			reg = <0x3f000 0x1400>;
>  		};
> @@ -306,7 +299,7 @@
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			led-control = <0 0xff8 0 0>;
> -			ledg {
> +			ledg@2 {
>  				reg = <2>;
>  				label = "pmic_ledsg";
>  				linux,default-trigger = "heartbeat";
> diff --git a/arch/arm/dts/imx50-kindle-d01100.dts b/arch/arm/dts/imx50-kindle-d01100.dts
> index 55171d7f2..bfec71910 100644
> --- a/arch/arm/dts/imx50-kindle-d01100.dts
> +++ b/arch/arm/dts/imx50-kindle-d01100.dts
> @@ -20,10 +20,10 @@
>  	compatible = "amazon,kindle-d01100", "fsl,imx50";
>  
>  	chosen {
> -		linux,stdout-path = &uart1;
> +		stdout-path = &uart1;
>  	};
>  
> -	memory {
> +	memory@70000000 {
>  		device_type = "memory";
>  		reg = <0x70000000 0x10000000>;
>  	};
> diff --git a/arch/arm/dts/imx50-kindle-d01200.dts b/arch/arm/dts/imx50-kindle-d01200.dts
> index cf65966a7..57eb9ba73 100644
> --- a/arch/arm/dts/imx50-kindle-d01200.dts
> +++ b/arch/arm/dts/imx50-kindle-d01200.dts
> @@ -20,10 +20,10 @@
>  	compatible = "amazon,kindle-d01200", "fsl,imx50";
>  
>  	chosen {
> -		linux,stdout-path = &uart1;
> +		stdout-path = &uart1;
>  	};
>  
> -	memory {
> +	memory@70000000 {
>  		device_type = "memory";
>  		reg = <0x70000000 0x10000000>;
>  	};
> diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
> index 3b8b5d8fc..603f6bead 100644
> --- a/arch/arm/dts/imx50-kindle-ey21.dts
> +++ b/arch/arm/dts/imx50-kindle-ey21.dts
> @@ -20,10 +20,10 @@
>  	compatible = "amazon,kindle-ey21", "fsl,imx50";
>  
>  	chosen {
> -		linux,stdout-path = &uart1;
> +		stdout-path = &uart1;
>  	};
>  
> -	memory {
> +	memory@70000000 {
>  		device_type = "memory";
>  		reg = <0x70000000 0x10000000>;
>  	};
> -- 
> 2.11.0
> 
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
