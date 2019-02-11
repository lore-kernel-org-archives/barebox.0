Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt6pH-0002IQ-DB
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 08:20:29 +0000
Date: Mon, 11 Feb 2019 09:20:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211082023.up4tbownps6yyvmo@pengutronix.de>
References: <20190206184122.14423-1-christian.hemp@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190206184122.14423-1-christian.hemp@posteo.de>
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
Subject: Re: [PATCH] ARM: phyCORE-i.MX8M SOM support
To: Christian Hemp <christian.hemp@posteo.de>
Cc: barebox@lists.infradead.org

Hi Christian,

On Wed, Feb 06, 2019 at 07:41:22PM +0100, Christian Hemp wrote:
> The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.
> 
> phyCORE-i.MX8M:
>  - 1GB LPDDR4 RAM
>  - eMMC
>  - microSD
>  - Ethernet
> > +
> diff --git a/arch/arm/dts/imx8mq-phytec-phycore-som.dts b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
> new file mode 100644
> index 000000000..7b566e32b
> --- /dev/null
> +++ b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
> @@ -0,0 +1,328 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2018 Christian Hemp <christian.hemp@posteo.de>
> + */
> +
> +/dts-v1/;
> +
> +#include <arm64/freescale/imx8mq.dtsi>
> +#include <dt-bindings/net/ti-dp83867.h>
> +#include "imx8mq.dtsi"
> +#include "imx8mq-ddrc.dtsi"
> +
> +/ {
> +	model = "Phytec phyCORE-i.MX8";
> +	compatible = "phytec,imx8mq-pcl066", "fsl,imx8mq";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc1, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";
> +			status = "disabled";
> +		};

I pretty much prefer adding a phandle to the partition itself rather
than using this "partname:" mechanism.

Otherwise the patch looks good to me.

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
