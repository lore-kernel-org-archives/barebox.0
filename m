Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2XEG-00027h-Qp
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 07:48:58 +0000
Date: Wed, 19 Sep 2018 09:48:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180919074844.GN4097@pengutronix.de>
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
 <20180918054148.8878-7-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180918054148.8878-7-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 6/8] ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 17, 2018 at 10:41:46PM -0700, Andrey Smirnov wrote:
> Add appropriate DT node and a fixup routine needed for i.MX8MQ EVK
> board.
> 
> diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
> index 3ac13baa1..bdc340a8b 100644
> --- a/arch/arm/dts/imx8mq-evk.dts
> +++ b/arch/arm/dts/imx8mq-evk.dts
> @@ -43,7 +43,18 @@
>  	            <&pinctrl_fec1_data_tx>, <&pinctrl_fec1_data_rx>,
>  	            <&pinctrl_fec1_phy_reset>;
>  	phy-mode = "rgmii-id";
> +	phy-handle = <&fec_phy>;
> +	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		fec_phy: ethernet-phy@1 {
> +			reg = <1>;
> +		};
> +	};

What's the reason for adding a phy node here? It shouldn't be needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
