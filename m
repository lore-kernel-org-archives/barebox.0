Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVGbK-0004Bp-Px
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 13:23:16 +0000
Date: Tue, 19 Jun 2018 15:23:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180619132301.mltgdl2ifmrqvroe@pengutronix.de>
References: <1529242121.2422.1.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1529242121.2422.1.camel@googlemail.com>
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
Subject: Re: [PATCH] ARM: dts: advantech-rom-7421: add hog pinctrl node
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Sun, Jun 17, 2018 at 03:28:41PM +0200, Christoph Fritz wrote:
> The Advantech ROM-7421 has a custom watchdog reset i2c chip that has
> some control gpios. This watchdog is currently not used, therefore mux
> its control pins as pull-downs to be sure that the watchdog is disabled
> after e.g. a reboot.
> 
> For debug purposes this patch also adds i2c1 node.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---

Applied, thanks

Sascha

>  arch/arm/dts/imx6dl-advantech-rom-7421.dts | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> index 1d5fd89..cdf3781 100755
> --- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> +++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> @@ -79,6 +79,13 @@
>  	status = "okay";
>  };
>  
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	clock-frequency = <100000>;
> +	status = "okay";
> +};
> +
>  &uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart1>;
> @@ -144,6 +151,17 @@
>  
>  &iomuxc {
>  	pinctrl-names = "default";
> +        pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* custom watchdog controls disabled */
> +			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10        0x130b0
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09           0x130b0
> +			MX6QDL_PAD_GPIO_17__GPIO7_IO12          0x130b0
> +
> +		>;
> +        };
>  
>  	pinctrl_ecspi1: ecspi1grp {
>  		fsl,pins = <
> @@ -175,6 +193,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
> +			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_uart1: uart1grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
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
