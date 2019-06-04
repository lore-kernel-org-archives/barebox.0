Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4IF-00084M-Ce
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 07:55:44 +0000
Date: Tue, 4 Jun 2019 09:55:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604075536.jo6su7f7hid5t3bf@pengutronix.de>
References: <20190531094730.8265-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531094730.8265-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: zii-imx8mq-dev: add barebox and environment
 partition
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2019 at 11:47:28AM +0200, Lucas Stach wrote:
> While barebox itself should be on the eMMC boot partitions eventually
> it's nice to have this set up, so one can dd a prebuilt SD card image
> to the eMMC and have something working. A working Barebox env is also
> very convinient to have around during development.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/zii-imx8mq-dev/board.c |  6 +++++
>  arch/arm/dts/imx8mq-zii-ultra.dtsi     | 37 ++++++++++++++++++++++++++
>  2 files changed, 43 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
> index 94e71f58ceb7..4dbe23f58ce2 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/board.c
> +++ b/arch/arm/boards/zii-imx8mq-dev/board.c
> @@ -4,6 +4,7 @@
>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
>   */
>  
> +#include <bootsource.h>
>  #include <common.h>
>  #include <init.h>
>  #include <asm/memory.h>
> @@ -19,6 +20,11 @@ static int zii_imx8mq_dev_init(void)
>  
>  	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
>  
> +	if (bootsource_get_instance() == 0)
> +		of_device_enable_path("/chosen/environment-emmc");
> +	else
> +		of_device_enable_path("/chosen/environment-sd");
> +
>  	return 0;
>  }
>  device_initcall(zii_imx8mq_dev_init);
> diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> index ccf80d3de838..53679b0d3c40 100644
> --- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
> +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> @@ -10,6 +10,17 @@
>  / {
>  	chosen {
>  		stdout-path = &uart1;
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc1, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";
> +			status = "disabled";
> +		};
>  	};
>  
>  	mdio0: bitbang-mdio {
> @@ -348,6 +359,19 @@
>  	no-sd;
>  	no-sdio;
>  	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
>  };
>  
>  &usdhc2 {
> @@ -358,6 +382,19 @@
>  	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
>  	vmmc-supply = <&reg_usdhc2_vmmc>;
>  	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
>  };
>  
>  &iomuxc {
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
