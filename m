Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtAOi-00022i-W3
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 08:23:25 +0000
Date: Mon, 2 Nov 2015 09:23:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102082303.GB17132@pengutronix.de>
References: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
 <1446297909-2001-4-git-send-email-anton.bondarenko.sama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446297909-2001-4-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: Re: [PATCH 3/3] embedsky-e9: cleanup and reorder DTS nodes
To: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 31, 2015 at 02:25:09PM +0100, Anton Bondarenko wrote:
> Removed duplicate ldb node. Removed disabled nodes
> 
> Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
> ---
>  arch/arm/dts/imx6q-embedsky-e9.dtsi | 77 ++++++++++++++++---------------------
>  1 file changed, 33 insertions(+), 44 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6q-embedsky-e9.dtsi b/arch/arm/dts/imx6q-embedsky-e9.dtsi
> index f117cae..e4d9c12 100644
> --- a/arch/arm/dts/imx6q-embedsky-e9.dtsi
> +++ b/arch/arm/dts/imx6q-embedsky-e9.dtsi
> @@ -91,41 +91,6 @@
>  
>  };
>  
> -&audmux {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_audmux>;
> -	status = "okay";
> -};
> -
> -&fec {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_enet>;
> -	phy-mode = "rgmii";
> -	phy-supply=<&reg_3p3v>;
> -	status = "okay";
> -};
> -
> -&i2c1 {
> -	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c1>;
> -	status = "okay";
> -
> -};
> -
> -&i2c2 {
> -	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c2>;
> -	status = "okay";
> -};
> -
> -&i2c3 {
> -	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c3>;
> -	status = "okay";
> -};
>  
>  &iomuxc {
>  	pinctrl-names = "default";
> @@ -302,7 +267,39 @@
>  	};
>  };
>  
> -&ldb {
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux>;
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +	phy-supply=<&reg_3p3v>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
>  	status = "okay";
>  };
>  
> @@ -382,11 +379,3 @@
>  &sata {
>  	status = "okay";
>  };
> -
> -&usdhc3 {
> -	status = "disabled";
> -};
> -
> -&ecspi1 {
> -	status = "disabled";
> -};
> -- 
> 2.6.2
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
