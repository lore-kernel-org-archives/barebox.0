Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEic3-0006bK-3B
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:14:48 +0000
Date: Wed, 7 Dec 2016 21:14:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207201425.5qk5scdapyuuu5n5@pengutronix.de>
References: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: Re: [PATCH 1/3] ARM: dts: phycore-imx6: refactor fec nodes
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 28, 2016 at 09:44:58AM +0100, Stefan Lengfeld wrote:
> Refactor the common settings for device tree node 'fec' into the generic
> phycore i.MX6 device tree file. This avoid redundant settings and makes
> common fixes easier. Our kernel device tree files have the same layout.
> 
> Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
> ---
>  arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 17 ++++-------------
>  arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 17 ++++-------------
>  arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 17 ++++-------------
>  arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 17 ++++-------------
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    | 13 +++++++++++++
>  5 files changed, 29 insertions(+), 52 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> index fc153a6..bffee5f 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> @@ -29,21 +29,12 @@
>  	status = "okay";
>  };
>  
> +&ethphy {
> +	max-speed = <100>;
> +};
> +
>  &fec {
>  	status = "okay";
> -	phy-handle = <&ethphy>;
> -	phy-mode = "rgmii";
> -	phy-reset-gpios = <&gpio1 14 1>;
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy: ethernet-phy@3 {
> -			reg = <3>;
> -			max-speed = <100>;
> -		};
> -	};
>  };
>  
>  &flash {
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> index 3f2f1c7..1b66fda 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> @@ -24,21 +24,12 @@
>  	status = "okay";
>  };
>  
> +&ethphy {
> +	max-speed = <100>;
> +};
> +
>  &fec {
>  	status = "okay";
> -	phy-handle = <&ethphy>;
> -	phy-mode = "rgmii";
> -	phy-reset-gpios = <&gpio1 14 1>;
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy: ethernet-phy@3 {
> -			reg = <3>;
> -			max-speed = <100>;
> -		};
> -	};
>  };
>  
>  &gpmi {
> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> index 74bc09b..ecc5aa3 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> @@ -28,21 +28,12 @@
>  	status = "okay";
>  };
>  
> +&ethphy {
> +	max-speed = <1000>;
> +};
> +
>  &fec {
>  	status = "okay";
> -	phy-handle = <&ethphy>;
> -	phy-mode = "rgmii";
> -	phy-reset-gpios = <&gpio1 14 1>;
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy: ethernet-phy@3 {
> -			reg = <3>;
> -			max-speed = <1000>;
> -		};
> -	};
>  };
>  
>  &flash {
> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> index aa2c94a..9ad7eda 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> @@ -29,21 +29,12 @@
>  	status = "okay";
>  };
>  
> +&ethphy {
> +	max-speed = <1000>;
> +};
> +
>  &fec {
>  	status = "okay";
> -	phy-handle = <&ethphy>;
> -	phy-mode = "rgmii";
> -	phy-reset-gpios = <&gpio1 14 1>;
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy: ethernet-phy@3 {
> -			reg = <3>;
> -			max-speed = <1000>;
> -		};
> -	};
>  };
>  
>  &flash {
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> index d446a5e..9649817 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -10,6 +10,7 @@
>   */
>  
>  #include "imx6qdl.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	chosen {
> @@ -76,7 +77,19 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> +	phy-handle = <&ethphy>;
> +	phy-mode = "rgmii";
> +	phy-reset-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
>  	status = "disabled";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@3 {
> +			reg = <3>;
> +		};
> +	};
>  };
>  
>  &gpmi {
> -- 
> 1.9.1
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
