Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqhn-0005wk-Gq
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:44:53 +0000
Date: Mon, 2 Jul 2018 06:44:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702044439.usqxvbcm7ngroxmo@pengutronix.de>
References: <20180630034737.2820-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180630034737.2820-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: dts: rdu1: Add nodes for RAVE SP EEPROM
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 08:47:35PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/dts/imx51-zii-rdu1.dts | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
> index 7984e5b32..b0e1d0276 100644
> --- a/arch/arm/dts/imx51-zii-rdu1.dts
> +++ b/arch/arm/dts/imx51-zii-rdu1.dts
> @@ -24,6 +24,13 @@
>  			device-path = &spinor, "partname:barebox-environment";
>  		};
>  	};
> +	aliases {
> +		/*
> +		 * Aliases to match Linux kernel naming in /dev/
> +		 */
> +		main-eeprom = &main_eeprom;
> +		dds-eeprom = &dds_eeprom;
> +	};
>  };
>  
>  &ecspi1 {
> @@ -50,3 +57,24 @@
>  		};
>  	};
>  };
> +
> +&uart3 {
> +	rave-sp {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		dds_eeprom: eeprom@a3 {
> +			compatible = "zii,rave-sp-eeprom";
> +			reg = <0xa3 0x4000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +
> +		main_eeprom: eeprom@a4 {
> +			compatible = "zii,rave-sp-eeprom";
> +			reg = <0xa4 0x4000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +	};
> +};
> -- 
> 2.17.1
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
